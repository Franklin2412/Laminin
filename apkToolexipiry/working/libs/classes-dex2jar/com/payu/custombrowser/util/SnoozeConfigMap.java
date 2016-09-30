package com.payu.custombrowser.util;

import android.text.TextUtils;
import java.util.HashMap;

public class SnoozeConfigMap extends HashMap {
    public Object get(Object obj) {
        return super.get(obj);
    }

    public int[] getPercentageAndTimeout(String str) {
        Object obj;
        if (get(str) == null) {
            obj = CBConstant.DEFAULT_PAYMENT_URLS;
        }
        String[] split = get(obj) == null ? new String[0] : get(obj).toString().split("\\|\\|");
        int parseInt = (split.length <= 0 || split[0].length() <= 0 || !TextUtils.isDigitsOnly(split[0])) ? 100 : Integer.parseInt(split[0]);
        int parseInt2 = (split.length <= 1 || split[1].length() <= 0 || !TextUtils.isDigitsOnly(split[1])) ? 1 : Integer.parseInt(split[1]);
        return new int[]{parseInt, parseInt2};
    }
}
