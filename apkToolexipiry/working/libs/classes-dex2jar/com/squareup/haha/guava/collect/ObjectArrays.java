package com.squareup.haha.guava.collect;

import java.lang.reflect.Array;

public final class ObjectArrays {
    static final Object[] EMPTY_ARRAY;

    static {
        EMPTY_ARRAY = new Object[0];
    }

    static <T> T[] arraysCopyOf(T[] tArr, int i) {
        Object newArray = newArray(tArr, i);
        System.arraycopy(tArr, 0, newArray, 0, Math.min(tArr.length, i));
        return newArray;
    }

    static Object[] checkElementsNotNull(Object... objArr) {
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            if (objArr[i] == null) {
                throw new NullPointerException("at index " + i);
            }
        }
        return objArr;
    }

    public static <T> T[] newArray(T[] tArr, int i) {
        return (Object[]) Array.newInstance(tArr.getClass().getComponentType(), i);
    }
}
