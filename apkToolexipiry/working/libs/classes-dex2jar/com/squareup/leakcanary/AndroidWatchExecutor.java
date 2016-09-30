package com.squareup.leakcanary;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.MessageQueue.IdleHandler;
import java.util.concurrent.Executor;

public final class AndroidWatchExecutor implements Executor {
    static final String LEAK_CANARY_THREAD_NAME = "LeakCanary-Heap-Dump";
    final Handler backgroundHandler;
    final long delayMillis;
    private final Handler mainHandler;

    /* renamed from: com.squareup.leakcanary.AndroidWatchExecutor.1 */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ Runnable val$command;

        AnonymousClass1(Runnable runnable) {
            this.val$command = runnable;
        }

        public void run() {
            AndroidWatchExecutor.this.executeDelayedAfterIdleUnsafe(this.val$command);
        }
    }

    /* renamed from: com.squareup.leakcanary.AndroidWatchExecutor.2 */
    class AnonymousClass2 implements IdleHandler {
        final /* synthetic */ Runnable val$runnable;

        AnonymousClass2(Runnable runnable) {
            this.val$runnable = runnable;
        }

        public boolean queueIdle() {
            AndroidWatchExecutor.this.backgroundHandler.postDelayed(this.val$runnable, AndroidWatchExecutor.this.delayMillis);
            return false;
        }
    }

    public AndroidWatchExecutor(int i) {
        this.mainHandler = new Handler(Looper.getMainLooper());
        HandlerThread handlerThread = new HandlerThread(LEAK_CANARY_THREAD_NAME);
        handlerThread.start();
        this.backgroundHandler = new Handler(handlerThread.getLooper());
        this.delayMillis = (long) i;
    }

    private boolean isOnMainThread() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    public void execute(Runnable runnable) {
        if (isOnMainThread()) {
            executeDelayedAfterIdleUnsafe(runnable);
        } else {
            this.mainHandler.post(new AnonymousClass1(runnable));
        }
    }

    void executeDelayedAfterIdleUnsafe(Runnable runnable) {
        Looper.myQueue().addIdleHandler(new AnonymousClass2(runnable));
    }
}
