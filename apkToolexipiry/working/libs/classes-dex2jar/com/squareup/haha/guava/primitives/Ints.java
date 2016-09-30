package com.squareup.haha.guava.primitives;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import java.util.Arrays;

public final class Ints {
    private static final byte[] asciiDigits;

    static {
        int i = 0;
        byte[] bArr = new byte[AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS];
        asciiDigits = bArr;
        Arrays.fill(bArr, (byte) -1);
        for (int i2 = 0; i2 <= 9; i2++) {
            asciiDigits[i2 + 48] = (byte) i2;
        }
        while (i <= 26) {
            asciiDigits[i + 65] = (byte) (i + 10);
            asciiDigits[i + 97] = (byte) (i + 10);
            i++;
        }
    }

    public static int compare(int i, int i2) {
        return i < i2 ? -1 : i > i2 ? 1 : 0;
    }

    public static int saturatedCast(long j) {
        return j > 2147483647L ? ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : j < -2147483648L ? RtlSpacingHelper.UNDEFINED : (int) j;
    }
}
