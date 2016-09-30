package com.squareup.leakcanary.internal;

import java.util.concurrent.ThreadFactory;

final class LeakCanarySingleThreadFactory implements ThreadFactory {
    private final String threadName;

    LeakCanarySingleThreadFactory(String str) {
        this.threadName = "LeakCanary-" + str;
    }

    public Thread newThread(Runnable runnable) {
        return new Thread(runnable, this.threadName);
    }
}
