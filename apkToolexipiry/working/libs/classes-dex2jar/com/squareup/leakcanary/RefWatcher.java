package com.squareup.leakcanary;

import com.squareup.leakcanary.ExcludedRefs.BuilderWithParams;
import com.squareup.leakcanary.HeapDump.Listener;
import com.squareup.leakcanary.watcher.BuildConfig;
import java.io.File;
import java.lang.ref.ReferenceQueue;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

public final class RefWatcher {
    public static final RefWatcher DISABLED;
    private final DebuggerControl debuggerControl;
    private final ExcludedRefs excludedRefs;
    private final GcTrigger gcTrigger;
    private final HeapDumper heapDumper;
    private final Listener heapdumpListener;
    private final ReferenceQueue<Object> queue;
    private final Set<String> retainedKeys;
    private final Executor watchExecutor;

    /* renamed from: com.squareup.leakcanary.RefWatcher.5 */
    class AnonymousClass5 implements Runnable {
        final /* synthetic */ KeyedWeakReference val$reference;
        final /* synthetic */ long val$watchStartNanoTime;

        AnonymousClass5(KeyedWeakReference keyedWeakReference, long j) {
            this.val$reference = keyedWeakReference;
            this.val$watchStartNanoTime = j;
        }

        public void run() {
            RefWatcher.this.ensureGone(this.val$reference, this.val$watchStartNanoTime);
        }
    }

    static {
        DISABLED = new RefWatcher(new Executor() {
            public void execute(Runnable runnable) {
            }
        }, new DebuggerControl() {
            public boolean isDebuggerAttached() {
                return true;
            }
        }, GcTrigger.DEFAULT, new HeapDumper() {
            public File dumpHeap() {
                return null;
            }
        }, new Listener() {
            public void analyze(HeapDump heapDump) {
            }
        }, new BuilderWithParams().build());
    }

    public RefWatcher(Executor executor, DebuggerControl debuggerControl, GcTrigger gcTrigger, HeapDumper heapDumper, Listener listener, ExcludedRefs excludedRefs) {
        this.watchExecutor = (Executor) Preconditions.checkNotNull(executor, "watchExecutor");
        this.debuggerControl = (DebuggerControl) Preconditions.checkNotNull(debuggerControl, "debuggerControl");
        this.gcTrigger = (GcTrigger) Preconditions.checkNotNull(gcTrigger, "gcTrigger");
        this.heapDumper = (HeapDumper) Preconditions.checkNotNull(heapDumper, "heapDumper");
        this.heapdumpListener = (Listener) Preconditions.checkNotNull(listener, "heapdumpListener");
        this.excludedRefs = (ExcludedRefs) Preconditions.checkNotNull(excludedRefs, "excludedRefs");
        this.retainedKeys = new CopyOnWriteArraySet();
        this.queue = new ReferenceQueue();
    }

    private boolean gone(KeyedWeakReference keyedWeakReference) {
        return !this.retainedKeys.contains(keyedWeakReference.key);
    }

    private void removeWeaklyReachableReferences() {
        while (true) {
            KeyedWeakReference keyedWeakReference = (KeyedWeakReference) this.queue.poll();
            if (keyedWeakReference != null) {
                this.retainedKeys.remove(keyedWeakReference.key);
            } else {
                return;
            }
        }
    }

    void ensureGone(KeyedWeakReference keyedWeakReference, long j) {
        long nanoTime = System.nanoTime();
        long toMillis = TimeUnit.NANOSECONDS.toMillis(nanoTime - j);
        removeWeaklyReachableReferences();
        if (!gone(keyedWeakReference) && !this.debuggerControl.isDebuggerAttached()) {
            this.gcTrigger.runGc();
            removeWeaklyReachableReferences();
            if (!gone(keyedWeakReference)) {
                long nanoTime2 = System.nanoTime();
                long toMillis2 = TimeUnit.NANOSECONDS.toMillis(nanoTime2 - nanoTime);
                File dumpHeap = this.heapDumper.dumpHeap();
                if (dumpHeap != HeapDumper.NO_DUMP) {
                    this.heapdumpListener.analyze(new HeapDump(dumpHeap, keyedWeakReference.key, keyedWeakReference.name, this.excludedRefs, toMillis, toMillis2, TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - nanoTime2)));
                }
            }
        }
    }

    public void watch(Object obj) {
        watch(obj, BuildConfig.VERSION_NAME);
    }

    public void watch(Object obj, String str) {
        Preconditions.checkNotNull(obj, "watchedReference");
        Preconditions.checkNotNull(str, "referenceName");
        if (!this.debuggerControl.isDebuggerAttached()) {
            long nanoTime = System.nanoTime();
            String uuid = UUID.randomUUID().toString();
            this.retainedKeys.add(uuid);
            this.watchExecutor.execute(new AnonymousClass5(new KeyedWeakReference(obj, uuid, str, this.queue), nanoTime));
        }
    }
}
