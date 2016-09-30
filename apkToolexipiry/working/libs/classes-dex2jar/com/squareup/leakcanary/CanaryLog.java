package com.squareup.leakcanary;

import android.util.Log;

public final class CanaryLog {
    private static volatile Logger logger;

    public interface Logger {
        void d(String str, Object... objArr);

        void d(Throwable th, String str, Object... objArr);
    }

    private static class DefaultLogger implements Logger {
        DefaultLogger() {
        }

        public void d(String str, Object... objArr) {
            String format = String.format(str, objArr);
            if (format.length() < 4000) {
                Log.d("LeakCanary", format);
                return;
            }
            for (String d : format.split("\n")) {
                Log.d("LeakCanary", d);
            }
        }

        public void d(Throwable th, String str, Object... objArr) {
            d(String.format(str, objArr) + '\n' + Log.getStackTraceString(th), new Object[0]);
        }
    }

    static {
        logger = new DefaultLogger();
    }

    private CanaryLog() {
        throw new AssertionError();
    }

    public static void d(String str, Object... objArr) {
        Logger logger = logger;
        if (logger != null) {
            logger.d(str, objArr);
        }
    }

    public static void d(Throwable th, String str, Object... objArr) {
        Logger logger = logger;
        if (logger != null) {
            logger.d(th, str, objArr);
        }
    }

    public static void setLogger(Logger logger) {
        logger = logger;
    }
}
