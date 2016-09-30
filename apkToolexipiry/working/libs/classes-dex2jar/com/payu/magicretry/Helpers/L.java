package com.payu.magicretry.Helpers;

import android.util.Log;
import com.squareup.leakcanary.watcher.BuildConfig;

public class L {
    public static final int DEBUG = 4;
    private static final String DEFAULT_LOG_TAG = "### PAYU ####";
    private static final String DEFAULT_TIMESTAMP_TAG = "PAYU-TIMESTAMP";
    public static final int ERROR = 6;
    public static final int INFO = 3;
    public static final int NONE = 7;
    public static final int VERBOSE = 2;
    public static final int WARN = 5;
    private static int sLogLevel;

    static {
        sLogLevel = NONE;
    }

    public static void d(String str, String str2) {
        synchronized (L.class) {
            try {
                if (sLogLevel <= DEBUG) {
                    Log.d(str, str2);
                }
            } catch (Throwable th) {
                Class cls = L.class;
            }
        }
    }

    public static void e(String str, String str2) {
        synchronized (L.class) {
            try {
                if (sLogLevel <= ERROR) {
                    Log.e(str, str2);
                }
            } catch (Throwable th) {
                Class cls = L.class;
            }
        }
    }

    public static void i(String str, String str2) {
        synchronized (L.class) {
            try {
                if (sLogLevel <= INFO) {
                    Log.i(str, str2);
                }
            } catch (Throwable th) {
                Class cls = L.class;
            }
        }
    }

    public static void t(String str) {
        synchronized (L.class) {
            try {
                if (sLogLevel <= VERBOSE) {
                    Log.v(DEFAULT_TIMESTAMP_TAG, str);
                }
            } catch (Throwable th) {
                Class cls = L.class;
            }
        }
    }

    public static void v(int i) {
        synchronized (L.class) {
            try {
                if (sLogLevel <= VERBOSE) {
                    v(DEFAULT_LOG_TAG, i + BuildConfig.VERSION_NAME);
                }
            } catch (Throwable th) {
                Class cls = L.class;
            }
        }
    }

    public static void v(String str) {
        synchronized (L.class) {
            try {
                if (sLogLevel <= VERBOSE) {
                    Log.v(DEFAULT_LOG_TAG, str);
                }
            } catch (Throwable th) {
                Class cls = L.class;
            }
        }
    }

    public static void v(String str, int i) {
        synchronized (L.class) {
            try {
                if (sLogLevel <= VERBOSE) {
                    v(str, i + BuildConfig.VERSION_NAME);
                }
            } catch (Throwable th) {
                Class cls = L.class;
            }
        }
    }

    public static void v(String str, String str2) {
        synchronized (L.class) {
            try {
                if (sLogLevel <= VERBOSE) {
                    Log.v(str, str2);
                }
            } catch (Throwable th) {
                Class cls = L.class;
            }
        }
    }

    public static void w(String str, String str2) {
        synchronized (L.class) {
            try {
                if (sLogLevel <= WARN) {
                    Log.w(str, str2);
                }
            } catch (Throwable th) {
                Class cls = L.class;
            }
        }
    }
}
