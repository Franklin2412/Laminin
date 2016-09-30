package com.squareup.haha.perflib;

import java.util.ArrayList;
import java.util.List;

public class ClassInstance extends Instance {
    private final long mValuesOffset;

    public static class FieldValue {
        private Field mField;
        private Object mValue;

        public FieldValue(Field field, Object obj) {
            this.mField = field;
            this.mValue = obj;
        }

        public Field getField() {
            return this.mField;
        }

        public Object getValue() {
            return this.mValue;
        }
    }

    public ClassInstance(long j, StackTrace stackTrace, long j2) {
        super(j, stackTrace);
        this.mValuesOffset = j2;
    }

    public final void accept(Visitor visitor) {
        visitor.visitClassInstance(this);
        for (FieldValue fieldValue : getValues()) {
            if (fieldValue.getValue() instanceof Instance) {
                if (!this.mReferencesAdded) {
                    ((Instance) fieldValue.getValue()).addReference(fieldValue.getField(), this);
                }
                visitor.visitLater(this, (Instance) fieldValue.getValue());
            }
        }
        this.mReferencesAdded = true;
    }

    List<FieldValue> getFields(String str) {
        List arrayList = new ArrayList();
        for (FieldValue fieldValue : getValues()) {
            if (fieldValue.getField().getName().equals(str)) {
                arrayList.add(fieldValue);
            }
        }
        return arrayList;
    }

    public boolean getIsSoftReference() {
        return getClassObj().getIsSoftReference();
    }

    public List<FieldValue> getValues() {
        List arrayList = new ArrayList();
        ClassObj classObj = getClassObj();
        getBuffer().setPosition(this.mValuesOffset);
        for (ClassObj classObj2 = classObj; classObj2 != null; classObj2 = classObj2.getSuperClassObj()) {
            for (Field field : classObj2.getFields()) {
                arrayList.add(new FieldValue(field, readValue(field.getType())));
            }
        }
        return arrayList;
    }

    public final String toString() {
        return String.format("%s@%d (0x%x)", new Object[]{getClassObj().getClassName(), Long.valueOf(getUniqueId()), Long.valueOf(getUniqueId())});
    }
}
