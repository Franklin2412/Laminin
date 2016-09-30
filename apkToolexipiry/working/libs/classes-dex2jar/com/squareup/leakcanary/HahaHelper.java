package com.squareup.leakcanary;

import com.payu.magicretry.Helpers.MRConstant;
import com.squareup.haha.perflib.ArrayInstance;
import com.squareup.haha.perflib.ClassInstance;
import com.squareup.haha.perflib.ClassInstance.FieldValue;
import com.squareup.haha.perflib.ClassObj;
import com.squareup.haha.perflib.Field;
import com.squareup.haha.perflib.Instance;
import com.squareup.haha.perflib.Type;
import com.squareup.leakcanary.watcher.BuildConfig;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

public final class HahaHelper {
    private static final Set<String> WRAPPER_TYPES;

    static {
        WRAPPER_TYPES = new HashSet(Arrays.asList(new String[]{Boolean.class.getName(), Character.class.getName(), Float.class.getName(), Double.class.getName(), Byte.class.getName(), Short.class.getName(), Integer.class.getName(), Long.class.getName()}));
    }

    private HahaHelper() {
        throw new AssertionError();
    }

    static String asString(Object obj) {
        ArrayInstance arrayInstance;
        Integer valueOf;
        Instance instance = (Instance) obj;
        List classInstanceValues = classInstanceValues(instance);
        Integer num = (Integer) fieldValue(classInstanceValues, "count");
        Object fieldValue = fieldValue(classInstanceValues, MRConstant.VALUE);
        if (isCharArray(fieldValue)) {
            arrayInstance = (ArrayInstance) fieldValue;
            valueOf = Integer.valueOf(0);
            if (hasField(classInstanceValues, "offset")) {
                valueOf = (Integer) fieldValue(classInstanceValues, "offset");
            }
        } else {
            Instance instance2 = instance.getHeap().getInstance(instance.getId() + 16);
            if (isCharArray(instance2)) {
                arrayInstance = (ArrayInstance) instance2;
                valueOf = Integer.valueOf(0);
            } else {
                throw new UnsupportedOperationException("Could not find char array in " + instance);
            }
        }
        Preconditions.checkNotNull(num, "count");
        Preconditions.checkNotNull(arrayInstance, "charArray");
        Preconditions.checkNotNull(valueOf, "offset");
        return num.intValue() == 0 ? BuildConfig.VERSION_NAME : new String(arrayInstance.asCharArray(valueOf.intValue(), num.intValue()));
    }

    static List<FieldValue> classInstanceValues(Instance instance) {
        return ((ClassInstance) instance).getValues();
    }

    static boolean extendsThread(ClassObj classObj) {
        for (ClassObj classObj2 = classObj; classObj2.getSuperClassObj() != null; classObj2 = classObj2.getSuperClassObj()) {
            if (classObj.getClassName().equals(Thread.class.getName())) {
                return true;
            }
        }
        return false;
    }

    static String fieldToString(FieldValue fieldValue) {
        return fieldToString(fieldValue.getField(), fieldValue.getValue());
    }

    static String fieldToString(Field field, Object obj) {
        return field.getName() + " = " + obj;
    }

    static String fieldToString(Entry<Field, Object> entry) {
        return fieldToString((Field) entry.getKey(), entry.getValue());
    }

    static <T> T fieldValue(List<FieldValue> list, String str) {
        for (FieldValue fieldValue : list) {
            if (fieldValue.getField().getName().equals(str)) {
                return fieldValue.getValue();
            }
        }
        throw new IllegalArgumentException("Field " + str + " does not exists");
    }

    static boolean hasField(List<FieldValue> list, String str) {
        for (FieldValue field : list) {
            if (field.getField().getName().equals(str)) {
                return true;
            }
        }
        return false;
    }

    private static boolean isCharArray(Object obj) {
        return (obj instanceof ArrayInstance) && ((ArrayInstance) obj).getArrayType() == Type.CHAR;
    }

    public static boolean isPrimitiveOrWrapperArray(Object obj) {
        if (!(obj instanceof ArrayInstance)) {
            return false;
        }
        ArrayInstance arrayInstance = (ArrayInstance) obj;
        return arrayInstance.getArrayType() != Type.OBJECT ? true : WRAPPER_TYPES.contains(arrayInstance.getClassObj().getClassName());
    }

    public static boolean isPrimitiveWrapper(Object obj) {
        return !(obj instanceof ClassInstance) ? false : WRAPPER_TYPES.contains(((ClassInstance) obj).getClassObj().getClassName());
    }

    static String threadName(Instance instance) {
        return asString(fieldValue(classInstanceValues(instance), "name"));
    }
}
