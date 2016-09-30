package com.squareup.haha.perflib;

import com.squareup.haha.guava.collect.ArrayListMultimap;
import com.squareup.haha.guava.collect.Multimap;
import com.squareup.haha.trove.TIntObjectHashMap;
import com.squareup.haha.trove.TLongObjectHashMap;
import com.squareup.haha.trove.TObjectProcedure;
import java.util.ArrayList;
import java.util.Collection;

public class Heap {
    TLongObjectHashMap<ClassObj> mClassesById;
    Multimap<String, ClassObj> mClassesByName;
    TLongObjectHashMap<StackFrame> mFrames;
    private final int mId;
    private final TLongObjectHashMap<Instance> mInstances;
    private final String mName;
    ArrayList<RootObj> mRoots;
    Snapshot mSnapshot;
    TIntObjectHashMap<ThreadObj> mThreads;
    TIntObjectHashMap<StackTrace> mTraces;

    /* renamed from: com.squareup.haha.perflib.Heap.1 */
    class AnonymousClass1 implements TObjectProcedure<Instance> {
        final /* synthetic */ ArrayList val$result;

        AnonymousClass1(ArrayList arrayList) {
            this.val$result = arrayList;
        }

        public boolean execute(Instance instance) {
            this.val$result.add(instance);
            return true;
        }
    }

    public Heap(int i, String str) {
        this.mFrames = new TLongObjectHashMap();
        this.mTraces = new TIntObjectHashMap();
        this.mRoots = new ArrayList();
        this.mThreads = new TIntObjectHashMap();
        this.mClassesById = new TLongObjectHashMap();
        this.mClassesByName = ArrayListMultimap.create();
        this.mInstances = new TLongObjectHashMap();
        this.mId = i;
        this.mName = str;
    }

    public final void addClass(long j, ClassObj classObj) {
        this.mClassesById.put(j, classObj);
        this.mClassesByName.put(classObj.mClassName, classObj);
    }

    public final void addInstance(long j, Instance instance) {
        this.mInstances.put(j, instance);
    }

    public final void addRoot(RootObj rootObj) {
        rootObj.mIndex = this.mRoots.size();
        this.mRoots.add(rootObj);
    }

    public final void addStackFrame(StackFrame stackFrame) {
        this.mFrames.put(stackFrame.mId, stackFrame);
    }

    public final void addStackTrace(StackTrace stackTrace) {
        this.mTraces.put(stackTrace.mSerialNumber, stackTrace);
    }

    public final void addThread(ThreadObj threadObj, int i) {
        this.mThreads.put(i, threadObj);
    }

    public final void dumpInstanceCounts() {
        for (Object obj : this.mClassesById.getValues()) {
            ClassObj classObj = (ClassObj) obj;
            int instanceCount = classObj.getInstanceCount();
            if (instanceCount > 0) {
                System.out.println(classObj + ": " + instanceCount);
            }
        }
    }

    public final void dumpSizes() {
        for (Object obj : this.mClassesById.getValues()) {
            ClassObj classObj = (ClassObj) obj;
            int i = 0;
            for (Instance compositeSize : classObj.getHeapInstances(getId())) {
                i = compositeSize.getCompositeSize() + i;
            }
            if (i > 0) {
                System.out.println(classObj + ": base " + classObj.getSize() + ", composite " + i);
            }
        }
    }

    public final void dumpSubclasses() {
        for (Object obj : this.mClassesById.getValues()) {
            ClassObj classObj = (ClassObj) obj;
            if (classObj.mSubclasses.size() > 0) {
                System.out.println(classObj);
                classObj.dumpSubclasses();
            }
        }
    }

    public final ClassObj getClass(long j) {
        return (ClassObj) this.mClassesById.get(j);
    }

    public final ClassObj getClass(String str) {
        Collection collection = this.mClassesByName.get(str);
        return collection.size() == 1 ? (ClassObj) collection.iterator().next() : null;
    }

    public Collection<ClassObj> getClasses() {
        return this.mClassesByName.values();
    }

    public final Collection<ClassObj> getClasses(String str) {
        return this.mClassesByName.get(str);
    }

    public int getId() {
        return this.mId;
    }

    public final Instance getInstance(long j) {
        return (Instance) this.mInstances.get(j);
    }

    public Collection<Instance> getInstances() {
        Collection arrayList = new ArrayList(this.mInstances.size());
        this.mInstances.forEachValue(new AnonymousClass1(arrayList));
        return arrayList;
    }

    public int getInstancesCount() {
        return this.mInstances.size();
    }

    public String getName() {
        return this.mName;
    }

    public final StackFrame getStackFrame(long j) {
        return (StackFrame) this.mFrames.get(j);
    }

    public final StackTrace getStackTrace(int i) {
        return (StackTrace) this.mTraces.get(i);
    }

    public final StackTrace getStackTraceAtDepth(int i, int i2) {
        StackTrace stackTrace = (StackTrace) this.mTraces.get(i);
        return stackTrace != null ? stackTrace.fromDepth(i2) : stackTrace;
    }

    public final ThreadObj getThread(int i) {
        return (ThreadObj) this.mThreads.get(i);
    }
}
