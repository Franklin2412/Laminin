package com.squareup.haha.perflib;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

public class Queries {
    private static final String DEFAULT_PACKAGE = "<default>";

    public static Map<String, Set<ClassObj>> allClasses(Snapshot snapshot) {
        return classes(snapshot, null);
    }

    public static Instance[] allInstancesOf(Snapshot snapshot, String str) {
        ClassObj findClass = snapshot.findClass(str);
        if (findClass == null) {
            throw new IllegalArgumentException("Class not found: " + str);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(findClass);
        arrayList.addAll(traverseSubclasses(findClass));
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.addAll(((ClassObj) it.next()).getInstancesList());
        }
        Instance[] instanceArr = new Instance[arrayList2.size()];
        arrayList2.toArray(instanceArr);
        return instanceArr;
    }

    public static Map<String, Set<ClassObj>> classes(Snapshot snapshot, String[] strArr) {
        Iterator it;
        int lastIndexOf;
        Map treeMap = new TreeMap();
        Set<ClassObj> treeSet = new TreeSet();
        Iterator it2 = snapshot.mHeaps.iterator();
        while (it2.hasNext()) {
            treeSet.addAll(((Heap) it2.next()).getClasses());
        }
        if (strArr != null) {
            it = treeSet.iterator();
            while (it.hasNext()) {
                String classObj = ((ClassObj) it.next()).toString();
                for (String startsWith : strArr) {
                    if (classObj.startsWith(startsWith)) {
                        it.remove();
                        break;
                    }
                }
            }
        }
        for (ClassObj classObj2 : treeSet) {
            Object substring;
            String str = DEFAULT_PACKAGE;
            lastIndexOf = classObj2.mClassName.lastIndexOf(46);
            if (lastIndexOf != -1) {
                substring = classObj2.mClassName.substring(0, lastIndexOf);
            } else {
                String str2 = str;
            }
            Set set = (Set) treeMap.get(substring);
            if (set == null) {
                set = new TreeSet();
                treeMap.put(substring, set);
            }
            set.add(classObj2);
        }
        return treeMap;
    }

    public static Collection<ClassObj> commonClasses(Snapshot snapshot, Snapshot snapshot2) {
        Collection<ClassObj> arrayList = new ArrayList();
        for (Heap classes : snapshot.getHeaps()) {
            for (ClassObj classObj : classes.getClasses()) {
                if (snapshot2.findClass(classObj.getClassName()) != null) {
                    arrayList.add(classObj);
                }
            }
        }
        return arrayList;
    }

    public static ClassObj findClass(Snapshot snapshot, String str) {
        return snapshot.findClass(str);
    }

    public static Instance findObject(Snapshot snapshot, String str) {
        return snapshot.findInstance(Long.parseLong(str, 16));
    }

    public static Collection<RootObj> getRoots(Snapshot snapshot) {
        Collection hashSet = new HashSet();
        Iterator it = snapshot.mHeaps.iterator();
        while (it.hasNext()) {
            hashSet.addAll(((Heap) it.next()).mRoots);
        }
        return hashSet;
    }

    public static Instance[] instancesOf(Snapshot snapshot, String str) {
        ClassObj findClass = snapshot.findClass(str);
        if (findClass == null) {
            throw new IllegalArgumentException("Class not found: " + str);
        }
        List instancesList = findClass.getInstancesList();
        return (Instance[]) instancesList.toArray(new Instance[instancesList.size()]);
    }

    public static final Instance[] newInstances(Snapshot snapshot, Snapshot snapshot2) {
        ArrayList arrayList = new ArrayList();
        Iterator it = snapshot2.mHeaps.iterator();
        while (it.hasNext()) {
            Heap heap = (Heap) it.next();
            Heap heap2 = snapshot.getHeap(heap.getName());
            if (heap2 != null) {
                for (Instance instance : heap.getInstances()) {
                    Instance instance2 = heap2.getInstance(instance.mId);
                    if (instance2 == null || instance.getClassObj() != instance2.getClassObj()) {
                        arrayList.add(instance);
                    }
                }
            }
        }
        return (Instance[]) arrayList.toArray(new Instance[arrayList.size()]);
    }

    private static ArrayList<ClassObj> traverseSubclasses(ClassObj classObj) {
        ArrayList<ClassObj> arrayList = new ArrayList();
        for (ClassObj classObj2 : classObj.mSubclasses) {
            arrayList.add(classObj2);
            arrayList.addAll(traverseSubclasses(classObj2));
        }
        return arrayList;
    }
}
