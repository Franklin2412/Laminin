package com.payu.india.Payu;

import android.content.Context;

public class Payu {
    private static Payu mInstance;
    private Context mContext;

    static {
        mInstance = null;
    }

    private Payu(Context context) {
        this.mContext = null;
        this.mContext = context;
    }

    public static Payu getInstance() {
        return mInstance;
    }

    public static Payu setInstance(Context context) {
        if (mInstance == null) {
            synchronized (Payu.class) {
                try {
                    if (mInstance == null) {
                        mInstance = new Payu(context);
                    }
                } catch (Throwable th) {
                    while (true) {
                        break;
                    }
                    Class cls = Payu.class;
                }
            }
        }
        return mInstance;
    }

    public Context getCallingAppContext() {
        return this.mContext;
    }
}
