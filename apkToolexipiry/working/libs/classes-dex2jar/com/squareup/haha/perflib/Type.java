package com.squareup.haha.perflib;

import com.payu.testapp.R;
import com.squareup.haha.guava.collect.Maps;
import java.util.Map;

public enum Type {
    OBJECT(2, 0),
    BOOLEAN(4, 1),
    CHAR(5, 2),
    FLOAT(6, 4),
    DOUBLE(7, 8),
    BYTE(8, 1),
    SHORT(9, 2),
    INT(10, 4),
    LONG(11, 8);
    
    private static Map<Integer, Type> sTypeMap;
    private int mId;
    private int mSize;

    /* renamed from: com.squareup.haha.perflib.Type.1 */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$android$tools$perflib$heap$Type;

        static {
            $SwitchMap$com$android$tools$perflib$heap$Type = new int[Type.values().length];
            try {
                $SwitchMap$com$android$tools$perflib$heap$Type[Type.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$android$tools$perflib$heap$Type[Type.CHAR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$android$tools$perflib$heap$Type[Type.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$android$tools$perflib$heap$Type[Type.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$android$tools$perflib$heap$Type[Type.BYTE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$android$tools$perflib$heap$Type[Type.SHORT.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$android$tools$perflib$heap$Type[Type.INT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$android$tools$perflib$heap$Type[Type.LONG.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    static {
        sTypeMap = Maps.newHashMap();
        Type[] values = values();
        int length = values.length;
        int i;
        while (i < length) {
            Type type = values[i];
            sTypeMap.put(Integer.valueOf(type.mId), type);
            i++;
        }
    }

    private Type(int i, int i2) {
        this.mId = i;
        this.mSize = i2;
    }

    public static String getClassNameOfPrimitiveArray(Type type) {
        switch (AnonymousClass1.$SwitchMap$com$android$tools$perflib$heap$Type[type.ordinal()]) {
            case R.styleable.WaitingDots_period /*1*/:
                return "boolean[]";
            case R.styleable.WaitingDots_jumpHeight /*2*/:
                return "char[]";
            case R.styleable.WaitingDots_autoplay /*3*/:
                return "float[]";
            case R.styleable.View_theme /*4*/:
                return "double[]";
            case R.styleable.ViewPagerIndicator_vpiUnderlinePageIndicatorStyle /*5*/:
                return "byte[]";
            case R.styleable.Toolbar_contentInsetEnd /*6*/:
                return "short[]";
            case R.styleable.Toolbar_contentInsetLeft /*7*/:
                return "int[]";
            case R.styleable.Toolbar_contentInsetRight /*8*/:
                return "long[]";
            default:
                throw new IllegalArgumentException("OBJECT type is not a primitive type");
        }
    }

    public static Type getType(int i) {
        return (Type) sTypeMap.get(Integer.valueOf(i));
    }

    public final int getSize() {
        return this.mSize;
    }

    public final int getTypeId() {
        return this.mId;
    }
}
