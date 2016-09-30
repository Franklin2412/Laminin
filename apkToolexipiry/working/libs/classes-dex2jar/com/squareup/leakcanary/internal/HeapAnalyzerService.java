package com.squareup.leakcanary.internal;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import com.squareup.leakcanary.AbstractAnalysisResultService;
import com.squareup.leakcanary.CanaryLog;
import com.squareup.leakcanary.HeapAnalyzer;
import com.squareup.leakcanary.HeapDump;

public final class HeapAnalyzerService extends IntentService {
    private static final String HEAPDUMP_EXTRA = "heapdump_extra";
    private static final String LISTENER_CLASS_EXTRA = "listener_class_extra";

    public HeapAnalyzerService() {
        super(HeapAnalyzerService.class.getSimpleName());
    }

    public static void runAnalysis(Context context, HeapDump heapDump, Class<? extends AbstractAnalysisResultService> cls) {
        Intent intent = new Intent(context, HeapAnalyzerService.class);
        intent.putExtra(LISTENER_CLASS_EXTRA, cls.getName());
        intent.putExtra(HEAPDUMP_EXTRA, heapDump);
        context.startService(intent);
    }

    protected void onHandleIntent(Intent intent) {
        if (intent == null) {
            CanaryLog.d("HeapAnalyzerService received a null intent, ignoring.", new Object[0]);
            return;
        }
        HeapDump heapDump = (HeapDump) intent.getSerializableExtra(HEAPDUMP_EXTRA);
        AbstractAnalysisResultService.sendResultToListener(this, intent.getStringExtra(LISTENER_CLASS_EXTRA), heapDump, new HeapAnalyzer(heapDump.excludedRefs).checkForLeak(heapDump.heapDumpFile, heapDump.referenceKey));
    }
}
