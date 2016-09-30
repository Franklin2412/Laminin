package com.squareup.leakcanary;

import android.app.PendingIntent;
import android.text.format.Formatter;
import com.squareup.leakcanary.internal.DisplayLeakActivity;
import com.squareup.leakcanary.internal.LeakCanaryInternals;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.Locale;

public class DisplayLeakService extends AbstractAnalysisResultService {
    private HeapDump renameHeapdump(HeapDump heapDump) {
        File file = new File(heapDump.heapDumpFile.getParent(), new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss_SSS'.hprof'", Locale.US).format(new Date()));
        if (!heapDump.heapDumpFile.renameTo(file)) {
            CanaryLog.d("Could not rename heap dump file %s to %s", heapDump.heapDumpFile.getPath(), file.getPath());
        }
        HeapDump heapDump2 = new HeapDump(file, heapDump.referenceKey, heapDump.referenceName, heapDump.excludedRefs, heapDump.watchDurationMs, heapDump.gcDurationMs, heapDump.heapDumpDurationMs);
        int max = Math.max(getResources().getInteger(R.integer.leak_canary_max_stored_leaks), 1);
        File[] listFiles = heapDump2.heapDumpFile.getParentFile().listFiles(new FilenameFilter() {
            public boolean accept(File file, String str) {
                return str.endsWith(".hprof");
            }
        });
        if (listFiles.length > max) {
            Arrays.sort(listFiles, new Comparator<File>() {
                public int compare(File file, File file2) {
                    return Long.valueOf(file.lastModified()).compareTo(Long.valueOf(file2.lastModified()));
                }
            });
            if (!listFiles[0].delete()) {
                CanaryLog.d("Could not delete old hprof file %s", listFiles[0].getPath());
            }
        }
        return heapDump2;
    }

    private boolean saveResult(HeapDump heapDump, AnalysisResult analysisResult) {
        FileOutputStream fileOutputStream;
        boolean z;
        Throwable e;
        try {
            fileOutputStream = new FileOutputStream(new File(heapDump.heapDumpFile.getParentFile(), heapDump.heapDumpFile.getName() + ".result"));
            try {
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(fileOutputStream);
                objectOutputStream.writeObject(heapDump);
                objectOutputStream.writeObject(analysisResult);
                z = true;
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e2) {
                    }
                }
            } catch (IOException e3) {
                e = e3;
                try {
                    CanaryLog.d(e, "Could not save leak analysis result to disk.", new Object[0]);
                    if (fileOutputStream == null) {
                        try {
                            fileOutputStream.close();
                            return false;
                        } catch (IOException e4) {
                            return false;
                        }
                    }
                    z = false;
                    return z;
                } catch (Throwable th) {
                    e = th;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e5) {
                        }
                    }
                    throw e;
                }
            } catch (Throwable th2) {
                e = th2;
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                }
                throw e;
            }
        } catch (IOException e6) {
            e = e6;
            fileOutputStream = null;
            CanaryLog.d(e, "Could not save leak analysis result to disk.", new Object[0]);
            if (fileOutputStream == null) {
                z = false;
                return z;
            }
            fileOutputStream.close();
            return false;
        } catch (Throwable th3) {
            e = th3;
            fileOutputStream = null;
            if (fileOutputStream != null) {
                fileOutputStream.close();
            }
            throw e;
        }
        return z;
    }

    protected void afterDefaultHandling(HeapDump heapDump, AnalysisResult analysisResult, String str) {
    }

    protected final void onHeapAnalyzed(HeapDump heapDump, AnalysisResult analysisResult) {
        boolean saveResult;
        CharSequence string;
        CharSequence string2;
        PendingIntent pendingIntent = null;
        String leakInfo = LeakCanary.leakInfo(this, heapDump, analysisResult, true);
        CanaryLog.d(leakInfo, new Object[0]);
        int i = (analysisResult.leakFound || analysisResult.failure != null) ? true : 0;
        if (i != 0) {
            heapDump = renameHeapdump(heapDump);
            saveResult = saveResult(heapDump, analysisResult);
        } else {
            saveResult = false;
        }
        if (i == 0) {
            string = getString(R.string.leak_canary_no_leak_title);
            string2 = getString(R.string.leak_canary_no_leak_text);
        } else if (saveResult) {
            pendingIntent = DisplayLeakActivity.createPendingIntent(this, heapDump.referenceKey);
            if (analysisResult.failure == null) {
                String formatShortFileSize = Formatter.formatShortFileSize(this, analysisResult.retainedHeapSize);
                String classSimpleName = LeakCanaryInternals.classSimpleName(analysisResult.className);
                string = analysisResult.excludedLeak ? getString(R.string.leak_canary_leak_excluded, new Object[]{classSimpleName, formatShortFileSize}) : getString(R.string.leak_canary_class_has_leaked, new Object[]{classSimpleName, formatShortFileSize});
            } else {
                string = getString(R.string.leak_canary_analysis_failed);
            }
            string2 = getString(R.string.leak_canary_notification_message);
        } else {
            string = getString(R.string.leak_canary_could_not_save_title);
            string2 = getString(R.string.leak_canary_could_not_save_text);
        }
        LeakCanaryInternals.showNotification(this, string, string2, pendingIntent);
        afterDefaultHandling(heapDump, analysisResult, leakInfo);
    }
}
