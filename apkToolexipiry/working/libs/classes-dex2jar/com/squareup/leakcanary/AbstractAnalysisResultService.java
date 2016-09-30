package com.squareup.leakcanary;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;

public abstract class AbstractAnalysisResultService extends IntentService {
    private static final String HEAP_DUMP_EXTRA = "heap_dump_extra";
    private static final String RESULT_EXTRA = "result_extra";

    public AbstractAnalysisResultService() {
        super(AbstractAnalysisResultService.class.getName());
    }

    public static void sendResultToListener(Context context, String str, HeapDump heapDump, AnalysisResult analysisResult) {
        try {
            Intent intent = new Intent(context, Class.forName(str));
            intent.putExtra(HEAP_DUMP_EXTRA, heapDump);
            intent.putExtra(RESULT_EXTRA, analysisResult);
            context.startService(intent);
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    protected final void onHandleIntent(Intent intent) {
        HeapDump heapDump = (HeapDump) intent.getSerializableExtra(HEAP_DUMP_EXTRA);
        try {
            onHeapAnalyzed(heapDump, (AnalysisResult) intent.getSerializableExtra(RESULT_EXTRA));
        } finally {
            heapDump.heapDumpFile.delete();
        }
    }

    protected abstract void onHeapAnalyzed(HeapDump heapDump, AnalysisResult analysisResult);
}
