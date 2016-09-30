package com.squareup.haha.perflib;

import com.squareup.haha.trove.TIntObjectHashMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.Stack;

public class ClassObj extends Instance implements Comparable<ClassObj> {
    long mClassLoaderId;
    final String mClassName;
    Field[] mFields;
    TIntObjectHashMap<HeapData> mHeapData;
    private int mInstanceSize;
    private boolean mIsSoftReference;
    Field[] mStaticFields;
    private final long mStaticFieldsOffset;
    Set<ClassObj> mSubclasses;
    long mSuperClassId;

    public static class HeapData {
        public List<Instance> mInstances;
        public int mShallowSize;

        public HeapData() {
            this.mShallowSize = 0;
            this.mInstances = new ArrayList();
        }
    }

    public ClassObj(long j, StackTrace stackTrace, String str, long j2) {
        super(j, stackTrace);
        this.mIsSoftReference = false;
        this.mHeapData = new TIntObjectHashMap();
        this.mSubclasses = new HashSet();
        this.mClassName = str;
        this.mStaticFieldsOffset = j2;
    }

    public static String getReferenceClassName() {
        return "java.lang.ref.Reference";
    }

    public final void accept(Visitor visitor) {
        visitor.visitClassObj(this);
        for (Entry entry : getStaticFieldValues().entrySet()) {
            Object value = entry.getValue();
            if (value instanceof Instance) {
                if (!this.mReferencesAdded) {
                    ((Instance) value).addReference((Field) entry.getKey(), this);
                }
                visitor.visitLater(this, (Instance) value);
            }
        }
        this.mReferencesAdded = true;
    }

    public final void addInstance(int i, Instance instance) {
        if (instance instanceof ClassInstance) {
            instance.setSize(this.mInstanceSize);
        }
        HeapData heapData = (HeapData) this.mHeapData.get(i);
        if (heapData == null) {
            heapData = new HeapData();
            this.mHeapData.put(i, heapData);
        }
        heapData.mInstances.add(instance);
        heapData.mShallowSize += instance.getSize();
    }

    public final void addSubclass(ClassObj classObj) {
        this.mSubclasses.add(classObj);
    }

    public final int compareTo(ClassObj classObj) {
        if (getId() == classObj.getId()) {
            return 0;
        }
        int compareTo = this.mClassName.compareTo(classObj.mClassName);
        return compareTo == 0 ? getId() - classObj.getId() > 0 ? 1 : -1 : compareTo;
    }

    public final void dump() {
        while (true) {
            System.out.println("+----------  ClassObj dump for: " + this.mClassName);
            System.out.println("+-----  Static fields");
            Map staticFieldValues = getStaticFieldValues();
            for (Field field : staticFieldValues.keySet()) {
                System.out.println(field.getName() + ": " + field.getType() + " = " + staticFieldValues.get(field));
            }
            System.out.println("+-----  Instance fields");
            for (Field field2 : this.mFields) {
                System.out.println(field2.getName() + ": " + field2.getType());
            }
            if (getSuperClassObj() != null) {
                this = getSuperClassObj();
            } else {
                return;
            }
        }
    }

    public final void dumpSubclasses() {
        for (ClassObj classObj : this.mSubclasses) {
            System.out.println("     " + classObj.mClassName);
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ClassObj) && compareTo((ClassObj) obj) == 0;
    }

    public int getAllFieldsCount() {
        int i = 0;
        while (this != null) {
            i += getFields().length;
            this = getSuperClassObj();
        }
        return i;
    }

    public Instance getClassLoader() {
        return this.mHeap.mSnapshot.findInstance(this.mClassLoaderId);
    }

    public final String getClassName() {
        return this.mClassName;
    }

    public List<ClassObj> getDescendantClasses() {
        List<ClassObj> arrayList = new ArrayList();
        Stack stack = new Stack();
        stack.push(this);
        while (!stack.isEmpty()) {
            ClassObj classObj = (ClassObj) stack.pop();
            arrayList.add(classObj);
            for (ClassObj classObj2 : classObj2.getSubclasses()) {
                stack.push(classObj2);
            }
        }
        return arrayList;
    }

    public Field[] getFields() {
        return this.mFields;
    }

    public List<Instance> getHeapInstances(int i) {
        HeapData heapData = (HeapData) this.mHeapData.get(i);
        return heapData == null ? new ArrayList(0) : heapData.mInstances;
    }

    public int getHeapInstancesCount(int i) {
        HeapData heapData = (HeapData) this.mHeapData.get(i);
        return heapData == null ? 0 : heapData.mInstances.size();
    }

    public int getInstanceCount() {
        Object[] values = this.mHeapData.getValues();
        int i = 0;
        int i2 = 0;
        while (i2 < values.length) {
            int size = ((HeapData) values[i2]).mInstances.size() + i;
            i2++;
            i = size;
        }
        return i;
    }

    public int getInstanceSize() {
        return this.mInstanceSize;
    }

    public List<Instance> getInstancesList() {
        List arrayList = new ArrayList(getInstanceCount());
        for (int heapInstances : this.mHeapData.keys()) {
            arrayList.addAll(getHeapInstances(heapInstances));
        }
        return arrayList;
    }

    public boolean getIsSoftReference() {
        return this.mIsSoftReference;
    }

    public int getShallowSize() {
        Object[] values = this.mHeapData.getValues();
        int i = 0;
        int i2 = 0;
        while (i2 < values.length) {
            int i3 = ((HeapData) values[i2]).mShallowSize + i;
            i2++;
            i = i3;
        }
        return i;
    }

    public int getShallowSize(int i) {
        return ((HeapData) this.mHeapData.get(i)) == null ? 0 : ((HeapData) this.mHeapData.get(i)).mShallowSize;
    }

    Object getStaticField(Type type, String str) {
        return getStaticFieldValues().get(new Field(type, str));
    }

    public Map<Field, Object> getStaticFieldValues() {
        Map<Field, Object> hashMap = new HashMap();
        getBuffer().setPosition(this.mStaticFieldsOffset);
        int readUnsignedShort = readUnsignedShort();
        for (int i = 0; i < readUnsignedShort; i++) {
            Field field = this.mStaticFields[i];
            readId();
            readUnsignedByte();
            hashMap.put(field, readValue(field.getType()));
        }
        return hashMap;
    }

    public final Set<ClassObj> getSubclasses() {
        return this.mSubclasses;
    }

    public ClassObj getSuperClassObj() {
        return this.mHeap.mSnapshot.findClass(this.mSuperClassId);
    }

    public int hashCode() {
        return this.mClassName.hashCode();
    }

    public final void setClassLoaderId(long j) {
        this.mClassLoaderId = j;
    }

    public void setFields(Field[] fieldArr) {
        this.mFields = fieldArr;
    }

    public void setInstanceSize(int i) {
        this.mInstanceSize = i;
    }

    public void setIsSoftReference() {
        this.mIsSoftReference = true;
    }

    public void setStaticFields(Field[] fieldArr) {
        this.mStaticFields = fieldArr;
    }

    public final void setSuperClassId(long j) {
        this.mSuperClassId = j;
    }

    public final String toString() {
        return this.mClassName.replace('/', '.');
    }
}
