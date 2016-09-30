package com.squareup.leakcanary;

import com.payu.testapp.R;
import com.squareup.haha.perflib.ArrayInstance;
import com.squareup.haha.perflib.ClassInstance;
import com.squareup.haha.perflib.ClassInstance.FieldValue;
import com.squareup.haha.perflib.ClassObj;
import com.squareup.haha.perflib.Field;
import com.squareup.haha.perflib.HahaSpy;
import com.squareup.haha.perflib.Instance;
import com.squareup.haha.perflib.RootObj;
import com.squareup.haha.perflib.RootType;
import com.squareup.haha.perflib.Snapshot;
import com.squareup.leakcanary.LeakTraceElement.Type;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Queue;

final class ShortestPathFinder {
    private boolean canIgnoreStrings;
    private final ExcludedRefs excludedRefs;
    private final Queue<LeakNode> toVisitIfNoPathQueue;
    private final LinkedHashSet<Instance> toVisitIfNoPathSet;
    private final Queue<LeakNode> toVisitQueue;
    private final LinkedHashSet<Instance> toVisitSet;
    private final LinkedHashSet<Instance> visitedSet;

    /* renamed from: com.squareup.leakcanary.ShortestPathFinder.1 */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$squareup$haha$perflib$RootType;

        static {
            $SwitchMap$com$squareup$haha$perflib$RootType = new int[RootType.values().length];
            try {
                $SwitchMap$com$squareup$haha$perflib$RootType[RootType.JAVA_LOCAL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$squareup$haha$perflib$RootType[RootType.INTERNED_STRING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$squareup$haha$perflib$RootType[RootType.DEBUGGER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$squareup$haha$perflib$RootType[RootType.INVALID_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$squareup$haha$perflib$RootType[RootType.UNREACHABLE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$squareup$haha$perflib$RootType[RootType.UNKNOWN.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$squareup$haha$perflib$RootType[RootType.FINALIZING.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$squareup$haha$perflib$RootType[RootType.SYSTEM_CLASS.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$squareup$haha$perflib$RootType[RootType.VM_INTERNAL.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$squareup$haha$perflib$RootType[RootType.NATIVE_LOCAL.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$squareup$haha$perflib$RootType[RootType.NATIVE_STATIC.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$squareup$haha$perflib$RootType[RootType.THREAD_BLOCK.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$squareup$haha$perflib$RootType[RootType.BUSY_MONITOR.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$com$squareup$haha$perflib$RootType[RootType.NATIVE_MONITOR.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$com$squareup$haha$perflib$RootType[RootType.REFERENCE_CLEANUP.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$com$squareup$haha$perflib$RootType[RootType.NATIVE_STACK.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$com$squareup$haha$perflib$RootType[RootType.JAVA_STATIC.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
        }
    }

    static final class Result {
        final boolean excludingKnownLeaks;
        final LeakNode leakingNode;

        Result(LeakNode leakNode, boolean z) {
            this.leakingNode = leakNode;
            this.excludingKnownLeaks = z;
        }
    }

    ShortestPathFinder(ExcludedRefs excludedRefs) {
        this.excludedRefs = excludedRefs;
        this.toVisitQueue = new LinkedList();
        this.toVisitIfNoPathQueue = new LinkedList();
        this.toVisitSet = new LinkedHashSet();
        this.toVisitIfNoPathSet = new LinkedHashSet();
        this.visitedSet = new LinkedHashSet();
    }

    private boolean checkSeen(LeakNode leakNode) {
        return !this.visitedSet.add(leakNode.instance);
    }

    private void clearState() {
        this.toVisitQueue.clear();
        this.toVisitIfNoPathQueue.clear();
        this.toVisitSet.clear();
        this.toVisitIfNoPathSet.clear();
        this.visitedSet.clear();
    }

    private void enqueue(Exclusion exclusion, LeakNode leakNode, Instance instance, String str, Type type) {
        if (instance != null && !HahaHelper.isPrimitiveOrWrapperArray(instance) && !HahaHelper.isPrimitiveWrapper(instance) && !this.toVisitSet.contains(instance)) {
            Object obj = exclusion == null ? 1 : null;
            if (obj != null || !this.toVisitIfNoPathSet.contains(instance)) {
                if ((!this.canIgnoreStrings || !isString(instance)) && !this.visitedSet.contains(instance)) {
                    LeakNode leakNode2 = new LeakNode(exclusion, instance, leakNode, str, type);
                    if (obj != null) {
                        this.toVisitSet.add(instance);
                        this.toVisitQueue.add(leakNode2);
                        return;
                    }
                    this.toVisitIfNoPathSet.add(instance);
                    this.toVisitIfNoPathQueue.add(leakNode2);
                }
            }
        }
    }

    private void enqueueGcRoots(Snapshot snapshot) {
        for (RootObj rootObj : snapshot.getGCRoots()) {
            switch (AnonymousClass1.$SwitchMap$com$squareup$haha$perflib$RootType[rootObj.getRootType().ordinal()]) {
                case R.styleable.WaitingDots_period /*1*/:
                    Exclusion exclusion = (Exclusion) this.excludedRefs.threadNames.get(HahaHelper.threadName(HahaSpy.allocatingThread(rootObj)));
                    if (exclusion != null && exclusion.alwaysExclude) {
                        break;
                    }
                    enqueue(exclusion, null, rootObj, null, null);
                    break;
                    break;
                case R.styleable.WaitingDots_jumpHeight /*2*/:
                case R.styleable.WaitingDots_autoplay /*3*/:
                case R.styleable.View_theme /*4*/:
                case R.styleable.ViewPagerIndicator_vpiUnderlinePageIndicatorStyle /*5*/:
                case R.styleable.Toolbar_contentInsetEnd /*6*/:
                case R.styleable.Toolbar_contentInsetLeft /*7*/:
                    break;
                case R.styleable.Toolbar_contentInsetRight /*8*/:
                case R.styleable.Toolbar_popupTheme /*9*/:
                case R.styleable.Toolbar_titleTextAppearance /*10*/:
                case R.styleable.Toolbar_subtitleTextAppearance /*11*/:
                case R.styleable.Toolbar_titleMargins /*12*/:
                case R.styleable.Toolbar_titleMarginStart /*13*/:
                case R.styleable.Toolbar_titleMarginEnd /*14*/:
                case R.styleable.Toolbar_titleMarginTop /*15*/:
                case R.styleable.Toolbar_titleMarginBottom /*16*/:
                case R.styleable.Toolbar_maxButtonHeight /*17*/:
                    enqueue(null, null, rootObj, null, null);
                    break;
                default:
                    throw new UnsupportedOperationException("Unknown root type:" + rootObj.getRootType());
            }
        }
    }

    private boolean isString(Instance instance) {
        return instance.getClassObj() != null && instance.getClassObj().getClassName().equals(String.class.getName());
    }

    private Exclusion rootSuperClassAlwaysIgnored(Instance instance) {
        if (instance == null) {
            return null;
        }
        Exclusion exclusion = null;
        for (ClassObj classObj = instance.getClassObj(); classObj != null; classObj = classObj.getSuperClassObj()) {
            Exclusion exclusion2 = (Exclusion) this.excludedRefs.rootClassNames.get(classObj.getClassName());
            if (exclusion2 != null && (exclusion == null || !exclusion.alwaysExclude)) {
                exclusion = exclusion2;
            }
        }
        return exclusion;
    }

    private void visitArrayInstance(LeakNode leakNode) {
        ArrayInstance arrayInstance = (ArrayInstance) leakNode.instance;
        if (arrayInstance.getArrayType() == com.squareup.haha.perflib.Type.OBJECT) {
            Object[] values = arrayInstance.getValues();
            for (int i = 0; i < values.length; i++) {
                enqueue(null, leakNode, (Instance) values[i], "[" + i + "]", Type.ARRAY_ENTRY);
            }
        }
    }

    private void visitClassInstance(LeakNode leakNode) {
        ClassInstance classInstance = (ClassInstance) leakNode.instance;
        Map linkedHashMap = new LinkedHashMap();
        Exclusion exclusion = null;
        ClassObj classObj = classInstance.getClassObj();
        while (classObj != null) {
            Exclusion exclusion2 = (Exclusion) this.excludedRefs.classNames.get(classObj.getClassName());
            Exclusion exclusion3 = (exclusion2 == null || (exclusion != null && exclusion.alwaysExclude)) ? exclusion : exclusion2;
            Map map = (Map) this.excludedRefs.fieldNameByClassName.get(classObj.getClassName());
            if (map != null) {
                linkedHashMap.putAll(map);
            }
            classObj = classObj.getSuperClassObj();
            exclusion = exclusion3;
        }
        if (exclusion == null || !exclusion.alwaysExclude) {
            for (FieldValue fieldValue : classInstance.getValues()) {
                Field field = fieldValue.getField();
                if (field.getType() == com.squareup.haha.perflib.Type.OBJECT) {
                    Instance instance = (Instance) fieldValue.getValue();
                    String name = field.getName();
                    Exclusion exclusion4 = (Exclusion) linkedHashMap.get(name);
                    exclusion2 = (exclusion4 == null || (exclusion != null && (!exclusion4.alwaysExclude || exclusion.alwaysExclude))) ? exclusion : exclusion4;
                    enqueue(exclusion2, leakNode, instance, name, Type.INSTANCE_FIELD);
                }
            }
        }
    }

    private void visitClassObj(LeakNode leakNode) {
        ClassObj classObj = (ClassObj) leakNode.instance;
        Map map = (Map) this.excludedRefs.staticFieldNameByClassName.get(classObj.getClassName());
        for (Entry entry : classObj.getStaticFieldValues().entrySet()) {
            Field field = (Field) entry.getKey();
            if (field.getType() == com.squareup.haha.perflib.Type.OBJECT) {
                String name = field.getName();
                if (!name.equals("$staticOverhead")) {
                    Instance instance = (Instance) entry.getValue();
                    Object obj = 1;
                    if (map != null) {
                        Exclusion exclusion = (Exclusion) map.get(name);
                        if (exclusion != null) {
                            if (exclusion.alwaysExclude) {
                                obj = null;
                            } else {
                                enqueue(exclusion, leakNode, instance, name, Type.STATIC_FIELD);
                                obj = null;
                            }
                        }
                    }
                    if (obj != null) {
                        enqueue(null, leakNode, instance, name, Type.STATIC_FIELD);
                    }
                }
            }
        }
    }

    private void visitRootObj(LeakNode leakNode) {
        RootObj rootObj = (RootObj) leakNode.instance;
        Instance referredInstance = rootObj.getReferredInstance();
        Exclusion rootSuperClassAlwaysIgnored = rootSuperClassAlwaysIgnored(referredInstance);
        if (rootSuperClassAlwaysIgnored != null && rootSuperClassAlwaysIgnored.alwaysExclude) {
            return;
        }
        if (rootObj.getRootType() == RootType.JAVA_LOCAL) {
            enqueue(leakNode.exclusion != null ? leakNode.exclusion : rootSuperClassAlwaysIgnored, new LeakNode(null, HahaSpy.allocatingThread(rootObj), null, null, null), referredInstance, "<Java Local>", Type.LOCAL);
            return;
        }
        enqueue(rootSuperClassAlwaysIgnored, leakNode, referredInstance, null, null);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    com.squareup.leakcanary.ShortestPathFinder.Result findPath(com.squareup.haha.perflib.Snapshot r7, com.squareup.haha.perflib.Instance r8) {
        /*
        r6 = this;
        r1 = 1;
        r2 = 0;
        r6.clearState();
        r0 = r6.isString(r8);
        if (r0 != 0) goto L_0x0042;
    L_0x000b:
        r0 = r1;
    L_0x000c:
        r6.canIgnoreStrings = r0;
        r6.enqueueGcRoots(r7);
        r3 = 0;
    L_0x0012:
        r0 = r6.toVisitQueue;
        r0 = r0.isEmpty();
        if (r0 == 0) goto L_0x0022;
    L_0x001a:
        r0 = r6.toVisitIfNoPathQueue;
        r0 = r0.isEmpty();
        if (r0 != 0) goto L_0x00bd;
    L_0x0022:
        r0 = r6.toVisitQueue;
        r0 = r0.isEmpty();
        if (r0 != 0) goto L_0x0044;
    L_0x002a:
        r0 = r6.toVisitQueue;
        r0 = r0.poll();
        r0 = (com.squareup.leakcanary.LeakNode) r0;
        r5 = r2;
        r2 = r0;
        r0 = r5;
    L_0x0035:
        r4 = r2.instance;
        if (r4 != r8) goto L_0x006c;
    L_0x0039:
        r5 = r0;
        r0 = r2;
        r2 = r5;
    L_0x003c:
        r1 = new com.squareup.leakcanary.ShortestPathFinder$Result;
        r1.<init>(r0, r2);
        return r1;
    L_0x0042:
        r0 = r2;
        goto L_0x000c;
    L_0x0044:
        r0 = r6.toVisitIfNoPathQueue;
        r0 = r0.poll();
        r0 = (com.squareup.leakcanary.LeakNode) r0;
        r2 = r0.exclusion;
        if (r2 != 0) goto L_0x0069;
    L_0x0050:
        r1 = new java.lang.IllegalStateException;
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "Expected node to have an exclusion ";
        r2 = r2.append(r3);
        r0 = r2.append(r0);
        r0 = r0.toString();
        r1.<init>(r0);
        throw r1;
    L_0x0069:
        r2 = r0;
        r0 = r1;
        goto L_0x0035;
    L_0x006c:
        r4 = r6.checkSeen(r2);
        if (r4 != 0) goto L_0x00ba;
    L_0x0072:
        r4 = r2.instance;
        r4 = r4 instanceof com.squareup.haha.perflib.RootObj;
        if (r4 == 0) goto L_0x007d;
    L_0x0078:
        r6.visitRootObj(r2);
        r2 = r0;
        goto L_0x0012;
    L_0x007d:
        r4 = r2.instance;
        r4 = r4 instanceof com.squareup.haha.perflib.ClassObj;
        if (r4 == 0) goto L_0x0088;
    L_0x0083:
        r6.visitClassObj(r2);
        r2 = r0;
        goto L_0x0012;
    L_0x0088:
        r4 = r2.instance;
        r4 = r4 instanceof com.squareup.haha.perflib.ClassInstance;
        if (r4 == 0) goto L_0x0093;
    L_0x008e:
        r6.visitClassInstance(r2);
        r2 = r0;
        goto L_0x0012;
    L_0x0093:
        r4 = r2.instance;
        r4 = r4 instanceof com.squareup.haha.perflib.ArrayInstance;
        if (r4 == 0) goto L_0x009f;
    L_0x0099:
        r6.visitArrayInstance(r2);
        r2 = r0;
        goto L_0x0012;
    L_0x009f:
        r0 = new java.lang.IllegalStateException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r3 = "Unexpected type for ";
        r1 = r1.append(r3);
        r2 = r2.instance;
        r1 = r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x00ba:
        r2 = r0;
        goto L_0x0012;
    L_0x00bd:
        r0 = r3;
        goto L_0x003c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.leakcanary.ShortestPathFinder.findPath(com.squareup.haha.perflib.Snapshot, com.squareup.haha.perflib.Instance):com.squareup.leakcanary.ShortestPathFinder$Result");
    }
}
