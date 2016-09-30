package com.squareup.leakcanary;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.format.Formatter;
import android.util.Log;
import com.squareup.leakcanary.HeapDump.Listener;
import com.squareup.leakcanary.internal.DisplayLeakActivity;
import com.squareup.leakcanary.internal.HeapAnalyzerService;
import com.squareup.leakcanary.internal.LeakCanaryInternals;
import com.squareup.leakcanary.watcher.BuildConfig;

public final class LeakCanary {
    private LeakCanary() {
        throw new AssertionError();
    }

    public static RefWatcher androidWatcher(Context context, Listener listener, ExcludedRefs excludedRefs) {
        LeakDirectoryProvider defaultLeakDirectoryProvider = new DefaultLeakDirectoryProvider(context);
        DebuggerControl androidDebuggerControl = new AndroidDebuggerControl();
        HeapDumper androidHeapDumper = new AndroidHeapDumper(context, defaultLeakDirectoryProvider);
        androidHeapDumper.cleanup();
        return new RefWatcher(new AndroidWatchExecutor(context.getResources().getInteger(R.integer.leak_canary_watch_delay_millis)), androidDebuggerControl, GcTrigger.DEFAULT, androidHeapDumper, listener, excludedRefs);
    }

    public static void enableDisplayLeakActivity(Context context) {
        LeakCanaryInternals.setEnabled(context, DisplayLeakActivity.class, true);
    }

    public static RefWatcher install(Application application) {
        return install(application, DisplayLeakService.class, AndroidExcludedRefs.createAppDefaults().build());
    }

    public static RefWatcher install(Application application, Class<? extends AbstractAnalysisResultService> cls, ExcludedRefs excludedRefs) {
        if (isInAnalyzerProcess(application)) {
            return RefWatcher.DISABLED;
        }
        enableDisplayLeakActivity(application);
        RefWatcher androidWatcher = androidWatcher(application, new ServiceHeapDumpListener(application, cls), excludedRefs);
        ActivityRefWatcher.installOnIcsPlus(application, androidWatcher);
        return androidWatcher;
    }

    public static boolean isInAnalyzerProcess(Context context) {
        return LeakCanaryInternals.isInServiceProcess(context, HeapAnalyzerService.class);
    }

    public static String leakInfo(Context context, HeapDump heapDump, AnalysisResult analysisResult, boolean z) {
        PackageManager packageManager = context.getPackageManager();
        String packageName = context.getPackageName();
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
            String str = packageInfo.versionName;
            String str2 = "In " + packageName + ":" + str + ":" + packageInfo.versionCode + ".\n";
            packageName = BuildConfig.VERSION_NAME;
            String str3;
            if (analysisResult.leakFound) {
                if (analysisResult.excludedLeak) {
                    str2 = str2 + "* EXCLUDED LEAK.\n";
                }
                str2 = str2 + "* " + analysisResult.className;
                if (!heapDump.referenceName.equals(BuildConfig.VERSION_NAME)) {
                    str2 = str2 + " (" + heapDump.referenceName + ")";
                }
                str2 = (str2 + " has leaked:\n" + analysisResult.leakTrace.toString() + "\n") + "* Retaining: " + Formatter.formatShortFileSize(context, analysisResult.retainedHeapSize) + ".\n";
                if (z) {
                    str3 = str2;
                    str2 = "\n* Details:\n" + analysisResult.leakTrace.toDetailedString();
                    packageName = str3;
                } else {
                    str3 = str2;
                    str2 = packageName;
                    packageName = str3;
                }
            } else if (analysisResult.failure != null) {
                str3 = str2 + "* FAILURE:\n" + Log.getStackTraceString(analysisResult.failure) + "\n";
                str2 = packageName;
                packageName = str3;
            } else {
                str3 = str2 + "* NO LEAK FOUND.\n\n";
                str2 = packageName;
                packageName = str3;
            }
            if (z) {
                str2 = str2 + "* Excluded Refs:\n" + heapDump.excludedRefs;
            }
            return packageName + "* Reference Key: " + heapDump.referenceKey + "\n" + "* Device: " + Build.MANUFACTURER + " " + Build.BRAND + " " + Build.MODEL + " " + Build.PRODUCT + "\n" + "* Android Version: " + VERSION.RELEASE + " API: " + VERSION.SDK_INT + " LeakCanary: " + BuildConfig.LIBRARY_VERSION + " " + BuildConfig.GIT_SHA + "\n" + "* Durations: watch=" + heapDump.watchDurationMs + "ms, gc=" + heapDump.gcDurationMs + "ms, heap dump=" + heapDump.heapDumpDurationMs + "ms, analysis=" + analysisResult.analysisDurationMs + "ms" + "\n" + str2;
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    public static void setDisplayLeakActivityDirectoryProvider(LeakDirectoryProvider leakDirectoryProvider) {
        DisplayLeakActivity.setLeakDirectoryProvider(leakDirectoryProvider);
    }
}
