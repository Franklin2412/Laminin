package com.squareup.leakcanary;

import com.payu.magicretry.Helpers.MRConstant;
import com.squareup.haha.perflib.ArrayInstance;
import com.squareup.haha.perflib.ClassInstance;
import com.squareup.haha.perflib.ClassInstance.FieldValue;
import com.squareup.haha.perflib.ClassObj;
import com.squareup.haha.perflib.Field;
import com.squareup.haha.perflib.HprofParser;
import com.squareup.haha.perflib.Instance;
import com.squareup.haha.perflib.RootObj;
import com.squareup.haha.perflib.RootType;
import com.squareup.haha.perflib.Snapshot;
import com.squareup.haha.perflib.io.MemoryMappedFileBuffer;
import com.squareup.haha.trove.THashMap;
import com.squareup.haha.trove.TObjectProcedure;
import com.squareup.leakcanary.LeakTraceElement.Holder;
import com.squareup.leakcanary.LeakTraceElement.Type;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map.Entry;
import java.util.concurrent.TimeUnit;

public final class HeapAnalyzer {
    private static final String ANONYMOUS_CLASS_NAME_PATTERN = "^.+\\$\\d+$";
    private final ExcludedRefs excludedRefs;

    /* renamed from: com.squareup.leakcanary.HeapAnalyzer.1 */
    class AnonymousClass1 implements TObjectProcedure<String> {
        final /* synthetic */ List val$gcRoots;
        final /* synthetic */ THashMap val$uniqueRootMap;

        AnonymousClass1(List list, THashMap tHashMap) {
            this.val$gcRoots = list;
            this.val$uniqueRootMap = tHashMap;
        }

        public boolean execute(String str) {
            return this.val$gcRoots.add(this.val$uniqueRootMap.get(str));
        }
    }

    public HeapAnalyzer(ExcludedRefs excludedRefs) {
        this.excludedRefs = excludedRefs;
    }

    private LeakTraceElement buildLeakElement(LeakNode leakNode) {
        if (leakNode.parent == null) {
            return null;
        }
        Instance instance = leakNode.parent.instance;
        if (instance instanceof RootObj) {
            return null;
        }
        String className;
        Holder holder;
        String str;
        Type type = leakNode.referenceType;
        String str2 = leakNode.referenceName;
        List arrayList = new ArrayList();
        if (instance instanceof ClassObj) {
            ClassObj classObj = (ClassObj) instance;
            Holder holder2 = Holder.CLASS;
            className = classObj.getClassName();
            for (Entry entry : classObj.getStaticFieldValues().entrySet()) {
                Field field = (Field) entry.getKey();
                arrayList.add("static " + field.getName() + " = " + entry.getValue());
            }
            holder = holder2;
            str = null;
        } else if (instance instanceof ArrayInstance) {
            ArrayInstance arrayInstance = (ArrayInstance) instance;
            holder = Holder.ARRAY;
            className = arrayInstance.getClassObj().getClassName();
            if (arrayInstance.getArrayType() == com.squareup.haha.perflib.Type.OBJECT) {
                Object[] values = arrayInstance.getValues();
                for (int i = 0; i < values.length; i++) {
                    arrayList.add("[" + i + "] = " + values[i]);
                }
            }
            str = null;
        } else {
            ClassInstance classInstance = (ClassInstance) instance;
            ClassObj classObj2 = instance.getClassObj();
            for (Entry fieldToString : classObj2.getStaticFieldValues().entrySet()) {
                arrayList.add("static " + HahaHelper.fieldToString(fieldToString));
            }
            for (FieldValue fieldToString2 : classInstance.getValues()) {
                arrayList.add(HahaHelper.fieldToString(fieldToString2));
            }
            className = classObj2.getClassName();
            if (HahaHelper.extendsThread(classObj2)) {
                holder = Holder.THREAD;
                str = "(named '" + HahaHelper.threadName(instance) + "')";
            } else if (className.matches(ANONYMOUS_CLASS_NAME_PATTERN)) {
                String className2 = classObj2.getSuperClassObj().getClassName();
                if (Object.class.getName().equals(className2)) {
                    holder = Holder.OBJECT;
                    try {
                        Class[] interfaces = Class.forName(classObj2.getClassName()).getInterfaces();
                        if (interfaces.length > 0) {
                            str = "(anonymous implementation of " + interfaces[0].getName() + ")";
                        } else {
                            str = "(anonymous subclass of java.lang.Object)";
                        }
                    } catch (ClassNotFoundException e) {
                        str = null;
                    }
                } else {
                    holder = Holder.OBJECT;
                    str = "(anonymous subclass of " + className2 + ")";
                }
            } else {
                holder = Holder.OBJECT;
                str = null;
            }
        }
        return new LeakTraceElement(str2, type, holder, className, str, leakNode.exclusion, arrayList);
    }

    private LeakTrace buildLeakTrace(LeakNode leakNode) {
        List arrayList = new ArrayList();
        for (LeakNode leakNode2 = new LeakNode(null, null, leakNode, null, null); leakNode2 != null; leakNode2 = leakNode2.parent) {
            LeakTraceElement buildLeakElement = buildLeakElement(leakNode2);
            if (buildLeakElement != null) {
                arrayList.add(0, buildLeakElement);
            }
        }
        return new LeakTrace(arrayList);
    }

    private int computeIgnoredBitmapRetainedSize(Snapshot snapshot, Instance instance) {
        int i = 0;
        for (Instance instance2 : snapshot.findClass("android.graphics.Bitmap").getInstancesList()) {
            if (isIgnoredDominator(instance, instance2)) {
                ArrayInstance arrayInstance = (ArrayInstance) HahaHelper.fieldValue(HahaHelper.classInstanceValues(instance2), "mBuffer");
                if (arrayInstance != null) {
                    long totalRetainedSize = arrayInstance.getTotalRetainedSize();
                    long totalRetainedSize2 = instance2.getTotalRetainedSize();
                    if (totalRetainedSize2 < totalRetainedSize) {
                        totalRetainedSize2 += totalRetainedSize;
                    }
                    i = (int) (totalRetainedSize2 + ((long) i));
                }
            }
        }
        return i;
    }

    private AnalysisResult findLeakTrace(long j, Snapshot snapshot, Instance instance) {
        Result findPath = new ShortestPathFinder(this.excludedRefs).findPath(snapshot, instance);
        if (findPath.leakingNode == null) {
            return AnalysisResult.noLeak(since(j));
        }
        LeakTrace buildLeakTrace = buildLeakTrace(findPath.leakingNode);
        String className = instance.getClassObj().getClassName();
        snapshot.computeDominators();
        Instance instance2 = findPath.leakingNode.instance;
        return AnalysisResult.leakDetected(findPath.excludingKnownLeaks, className, buildLeakTrace, instance2.getTotalRetainedSize() + ((long) computeIgnoredBitmapRetainedSize(snapshot, instance2)), since(j));
    }

    private Instance findLeakingReference(String str, Snapshot snapshot) {
        ClassObj findClass = snapshot.findClass(KeyedWeakReference.class.getName());
        List arrayList = new ArrayList();
        for (Instance classInstanceValues : findClass.getInstancesList()) {
            List classInstanceValues2 = HahaHelper.classInstanceValues(classInstanceValues);
            String asString = HahaHelper.asString(HahaHelper.fieldValue(classInstanceValues2, MRConstant.KEY));
            if (asString.equals(str)) {
                return (Instance) HahaHelper.fieldValue(classInstanceValues2, "referent");
            }
            arrayList.add(asString);
        }
        throw new IllegalStateException("Could not find weak reference with key " + str + " in " + arrayList);
    }

    private String generateRootKey(RootObj rootObj) {
        return String.format("%s@0x%08x", new Object[]{rootObj.getRootType().getName(), Long.valueOf(rootObj.getId())});
    }

    private boolean isIgnoredDominator(Instance instance, Instance instance2) {
        boolean z = false;
        while (true) {
            boolean z2;
            Instance immediateDominator = instance2.getImmediateDominator();
            if ((immediateDominator instanceof RootObj) && ((RootObj) immediateDominator).getRootType() == RootType.UNKNOWN) {
                instance2 = instance2.getNextInstanceToGcRoot();
                z2 = true;
            } else {
                z2 = z;
                instance2 = immediateDominator;
            }
            if (instance2 == null) {
                return false;
            }
            if (instance2 == instance) {
                return z2;
            }
            z = z2;
        }
    }

    private long since(long j) {
        return TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - j);
    }

    public AnalysisResult checkForLeak(File file, String str) {
        long nanoTime = System.nanoTime();
        if (!file.exists()) {
            return AnalysisResult.failure(new IllegalArgumentException("File does not exist: " + file), since(nanoTime));
        }
        try {
            Snapshot parse = new HprofParser(new MemoryMappedFileBuffer(file)).parse();
            deduplicateGcRoots(parse);
            Instance findLeakingReference = findLeakingReference(str, parse);
            return findLeakingReference == null ? AnalysisResult.noLeak(since(nanoTime)) : findLeakTrace(nanoTime, parse, findLeakingReference);
        } catch (Throwable th) {
            return AnalysisResult.failure(th, since(nanoTime));
        }
    }

    void deduplicateGcRoots(Snapshot snapshot) {
        THashMap tHashMap = new THashMap();
        ArrayList<RootObj> arrayList = (ArrayList) snapshot.getGCRoots();
        for (RootObj rootObj : arrayList) {
            String generateRootKey = generateRootKey(rootObj);
            if (!tHashMap.containsKey(generateRootKey)) {
                tHashMap.put(generateRootKey, rootObj);
            }
        }
        arrayList.clear();
        tHashMap.forEach(new AnonymousClass1(arrayList, tHashMap));
    }
}
