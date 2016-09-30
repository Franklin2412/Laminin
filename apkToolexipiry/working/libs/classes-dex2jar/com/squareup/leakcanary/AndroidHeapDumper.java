package com.squareup.leakcanary;

import android.content.Context;
import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import android.os.MessageQueue.IdleHandler;
import android.view.LayoutInflater;
import android.widget.Toast;
import com.squareup.leakcanary.internal.FutureResult;
import com.squareup.leakcanary.internal.LeakCanaryInternals;
import java.io.File;
import java.util.concurrent.TimeUnit;

public final class AndroidHeapDumper implements HeapDumper {
    private static final String HEAPDUMP_FILE = "suspected_leak_heapdump.hprof";
    final Context context;
    final LeakDirectoryProvider leakDirectoryProvider;
    private final Handler mainHandler;

    /* renamed from: com.squareup.leakcanary.AndroidHeapDumper.2 */
    class AnonymousClass2 implements Runnable {
        final /* synthetic */ FutureResult val$waitingForToast;

        /* renamed from: com.squareup.leakcanary.AndroidHeapDumper.2.1 */
        class AnonymousClass1 implements IdleHandler {
            final /* synthetic */ Toast val$toast;

            AnonymousClass1(Toast toast) {
                this.val$toast = toast;
            }

            public boolean queueIdle() {
                AnonymousClass2.this.val$waitingForToast.set(this.val$toast);
                return false;
            }
        }

        AnonymousClass2(FutureResult futureResult) {
            this.val$waitingForToast = futureResult;
        }

        public void run() {
            Toast toast = new Toast(AndroidHeapDumper.this.context);
            toast.setGravity(16, 0, 0);
            toast.setDuration(1);
            toast.setView(LayoutInflater.from(AndroidHeapDumper.this.context).inflate(R.layout.leak_canary_heap_dump_toast, null));
            toast.show();
            Looper.myQueue().addIdleHandler(new AnonymousClass1(toast));
        }
    }

    /* renamed from: com.squareup.leakcanary.AndroidHeapDumper.3 */
    class AnonymousClass3 implements Runnable {
        final /* synthetic */ Toast val$toast;

        AnonymousClass3(Toast toast) {
            this.val$toast = toast;
        }

        public void run() {
            this.val$toast.cancel();
        }
    }

    public AndroidHeapDumper(Context context, LeakDirectoryProvider leakDirectoryProvider) {
        this.leakDirectoryProvider = leakDirectoryProvider;
        this.context = context.getApplicationContext();
        this.mainHandler = new Handler(Looper.getMainLooper());
    }

    private void cancelToast(Toast toast) {
        this.mainHandler.post(new AnonymousClass3(toast));
    }

    private void showToast(FutureResult<Toast> futureResult) {
        this.mainHandler.post(new AnonymousClass2(futureResult));
    }

    public void cleanup() {
        LeakCanaryInternals.executeOnFileIoThread(new Runnable() {
            public void run() {
                if (AndroidHeapDumper.this.leakDirectoryProvider.isLeakStorageWritable()) {
                    File heapDumpFile = AndroidHeapDumper.this.getHeapDumpFile();
                    if (heapDumpFile.exists()) {
                        CanaryLog.d("Previous analysis did not complete correctly, cleaning: %s", heapDumpFile);
                        if (!heapDumpFile.delete()) {
                            CanaryLog.d("Could not delete file %s", heapDumpFile.getPath());
                            return;
                        }
                        return;
                    }
                    return;
                }
                CanaryLog.d("Could not attempt cleanup, leak storage not writable.", new Object[0]);
            }
        });
    }

    public File dumpHeap() {
        if (this.leakDirectoryProvider.isLeakStorageWritable()) {
            File heapDumpFile = getHeapDumpFile();
            try {
                if (heapDumpFile.createNewFile()) {
                    FutureResult futureResult = new FutureResult();
                    showToast(futureResult);
                    if (futureResult.wait(5, TimeUnit.SECONDS)) {
                        Toast toast = (Toast) futureResult.get();
                        try {
                            Debug.dumpHprofData(heapDumpFile.getAbsolutePath());
                            cancelToast(toast);
                            return heapDumpFile;
                        } catch (Throwable e) {
                            cleanup();
                            CanaryLog.d(e, "Could not perform heap dump", new Object[0]);
                            return NO_DUMP;
                        }
                    }
                    CanaryLog.d("Did not dump heap, too much time waiting for Toast.", new Object[0]);
                    return NO_DUMP;
                }
                CanaryLog.d("Could not dump heap, previous analysis still is in progress.", new Object[0]);
                return NO_DUMP;
            } catch (Throwable e2) {
                cleanup();
                CanaryLog.d(e2, "Could not check if heap dump file exists", new Object[0]);
                return NO_DUMP;
            }
        }
        CanaryLog.d("Could not write to leak storage to dump heap.", new Object[0]);
        this.leakDirectoryProvider.requestWritePermission();
        return NO_DUMP;
    }

    File getHeapDumpFile() {
        return new File(this.leakDirectoryProvider.leakDirectory(), HEAPDUMP_FILE);
    }
}
