package com.squareup.leakcanary.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.format.DateUtils;
import android.text.format.Formatter;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.squareup.leakcanary.AnalysisResult;
import com.squareup.leakcanary.CanaryLog;
import com.squareup.leakcanary.DefaultLeakDirectoryProvider;
import com.squareup.leakcanary.HeapDump;
import com.squareup.leakcanary.LeakCanary;
import com.squareup.leakcanary.LeakDirectoryProvider;
import com.squareup.leakcanary.R;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;

@TargetApi(11)
public final class DisplayLeakActivity extends Activity {
    private static final String SHOW_LEAK_EXTRA = "show_latest";
    private static LeakDirectoryProvider leakDirectoryProvider;
    private Button actionButton;
    private TextView failureView;
    List<Leak> leaks;
    private ListView listView;
    String visibleLeakRefKey;

    /* renamed from: com.squareup.leakcanary.internal.DisplayLeakActivity.4 */
    class AnonymousClass4 implements OnItemClickListener {
        final /* synthetic */ DisplayLeakAdapter val$adapter;

        AnonymousClass4(DisplayLeakAdapter displayLeakAdapter) {
            this.val$adapter = displayLeakAdapter;
        }

        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            this.val$adapter.toggleRow(i);
        }
    }

    static class Leak {
        final HeapDump heapDump;
        final AnalysisResult result;
        final File resultFile;

        Leak(HeapDump heapDump, AnalysisResult analysisResult, File file) {
            this.heapDump = heapDump;
            this.result = analysisResult;
            this.resultFile = file;
        }
    }

    class LeakListAdapter extends BaseAdapter {
        LeakListAdapter() {
        }

        public int getCount() {
            return DisplayLeakActivity.this.leaks.size();
        }

        public Leak getItem(int i) {
            return (Leak) DisplayLeakActivity.this.leaks.get(i);
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            CharSequence charSequence;
            if (view == null) {
                view = LayoutInflater.from(DisplayLeakActivity.this).inflate(R.layout.leak_canary_leak_row, viewGroup, false);
            }
            TextView textView = (TextView) view.findViewById(R.id.__leak_canary_row_text);
            TextView textView2 = (TextView) view.findViewById(R.id.__leak_canary_row_time);
            Leak item = getItem(i);
            String str = (DisplayLeakActivity.this.leaks.size() - i) + ". ";
            if (item.result.failure == null) {
                String classSimpleName = DisplayLeakActivity.classSimpleName(item.result.className);
                String formatShortFileSize = Formatter.formatShortFileSize(DisplayLeakActivity.this, item.result.retainedHeapSize);
                classSimpleName = DisplayLeakActivity.this.getString(R.string.leak_canary_class_has_leaked, new Object[]{classSimpleName, formatShortFileSize});
                if (item.result.excludedLeak) {
                    classSimpleName = DisplayLeakActivity.this.getString(R.string.leak_canary_excluded_row, new Object[]{classSimpleName});
                }
                charSequence = str + classSimpleName;
            } else {
                charSequence = str + item.result.failure.getClass().getSimpleName() + " " + item.result.failure.getMessage();
            }
            textView.setText(charSequence);
            textView2.setText(DateUtils.formatDateTime(DisplayLeakActivity.this, item.resultFile.lastModified(), 17));
            return view;
        }
    }

    static class LoadLeaks implements Runnable {
        static final Executor backgroundExecutor;
        static final List<LoadLeaks> inFlight;
        DisplayLeakActivity activityOrNull;
        private final File leakDirectory;
        private final Handler mainHandler;

        /* renamed from: com.squareup.leakcanary.internal.DisplayLeakActivity.LoadLeaks.3 */
        class AnonymousClass3 implements Runnable {
            final /* synthetic */ List val$leaks;

            AnonymousClass3(List list) {
                this.val$leaks = list;
            }

            public void run() {
                LoadLeaks.inFlight.remove(LoadLeaks.this);
                if (LoadLeaks.this.activityOrNull != null) {
                    LoadLeaks.this.activityOrNull.leaks = this.val$leaks;
                    LoadLeaks.this.activityOrNull.updateUi();
                }
            }
        }

        static {
            inFlight = new ArrayList();
            backgroundExecutor = LeakCanaryInternals.newSingleThreadExecutor("LoadLeaks");
        }

        LoadLeaks(DisplayLeakActivity displayLeakActivity) {
            this.activityOrNull = displayLeakActivity;
            this.leakDirectory = DisplayLeakActivity.getLeakDirectory(displayLeakActivity);
            this.mainHandler = new Handler(Looper.getMainLooper());
        }

        static void forgetActivity() {
            for (LoadLeaks loadLeaks : inFlight) {
                loadLeaks.activityOrNull = null;
            }
            inFlight.clear();
        }

        static void load(DisplayLeakActivity displayLeakActivity) {
            Runnable loadLeaks = new LoadLeaks(displayLeakActivity);
            inFlight.add(loadLeaks);
            backgroundExecutor.execute(loadLeaks);
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            /*
            r11 = this;
            r3 = 0;
            r0 = 0;
            r5 = new java.util.ArrayList;
            r5.<init>();
            r1 = r11.leakDirectory;
            r2 = new com.squareup.leakcanary.internal.DisplayLeakActivity$LoadLeaks$1;
            r2.<init>();
            r6 = r1.listFiles(r2);
            if (r6 == 0) goto L_0x0078;
        L_0x0014:
            r7 = r6.length;
            r4 = r0;
        L_0x0016:
            if (r4 >= r7) goto L_0x0070;
        L_0x0018:
            r8 = r6[r4];
            r2 = new java.io.FileInputStream;	 Catch:{ IOException -> 0x0041, ClassNotFoundException -> 0x0083, all -> 0x0092 }
            r2.<init>(r8);	 Catch:{ IOException -> 0x0041, ClassNotFoundException -> 0x0083, all -> 0x0092 }
            r1 = new java.io.ObjectInputStream;	 Catch:{ IOException -> 0x0089, ClassNotFoundException -> 0x0086, all -> 0x0090 }
            r1.<init>(r2);	 Catch:{ IOException -> 0x0089, ClassNotFoundException -> 0x0086, all -> 0x0090 }
            r9 = new com.squareup.leakcanary.internal.DisplayLeakActivity$Leak;	 Catch:{ IOException -> 0x0089, ClassNotFoundException -> 0x0086, all -> 0x0090 }
            r0 = r1.readObject();	 Catch:{ IOException -> 0x0089, ClassNotFoundException -> 0x0086, all -> 0x0090 }
            r0 = (com.squareup.leakcanary.HeapDump) r0;	 Catch:{ IOException -> 0x0089, ClassNotFoundException -> 0x0086, all -> 0x0090 }
            r1 = r1.readObject();	 Catch:{ IOException -> 0x0089, ClassNotFoundException -> 0x0086, all -> 0x0090 }
            r1 = (com.squareup.leakcanary.AnalysisResult) r1;	 Catch:{ IOException -> 0x0089, ClassNotFoundException -> 0x0086, all -> 0x0090 }
            r9.<init>(r0, r1, r8);	 Catch:{ IOException -> 0x0089, ClassNotFoundException -> 0x0086, all -> 0x0090 }
            r5.add(r9);	 Catch:{ IOException -> 0x0089, ClassNotFoundException -> 0x0086, all -> 0x0090 }
            if (r2 == 0) goto L_0x003d;
        L_0x003a:
            r2.close();	 Catch:{ IOException -> 0x008c }
        L_0x003d:
            r0 = r4 + 1;
            r4 = r0;
            goto L_0x0016;
        L_0x0041:
            r0 = move-exception;
            r1 = r3;
        L_0x0043:
            r2 = r8.delete();	 Catch:{ all -> 0x0068 }
            if (r2 == 0) goto L_0x005c;
        L_0x0049:
            r2 = "Could not read result file %s, deleted it.";
            r9 = 1;
            r9 = new java.lang.Object[r9];	 Catch:{ all -> 0x0068 }
            r10 = 0;
            r9[r10] = r8;	 Catch:{ all -> 0x0068 }
            com.squareup.leakcanary.CanaryLog.d(r0, r2, r9);	 Catch:{ all -> 0x0068 }
        L_0x0054:
            if (r1 == 0) goto L_0x003d;
        L_0x0056:
            r1.close();	 Catch:{ IOException -> 0x005a }
            goto L_0x003d;
        L_0x005a:
            r0 = move-exception;
            goto L_0x003d;
        L_0x005c:
            r2 = "Could not read result file %s, could not delete it either.";
            r9 = 1;
            r9 = new java.lang.Object[r9];	 Catch:{ all -> 0x0068 }
            r10 = 0;
            r9[r10] = r8;	 Catch:{ all -> 0x0068 }
            com.squareup.leakcanary.CanaryLog.d(r0, r2, r9);	 Catch:{ all -> 0x0068 }
            goto L_0x0054;
        L_0x0068:
            r0 = move-exception;
        L_0x0069:
            r2 = r1;
        L_0x006a:
            if (r2 == 0) goto L_0x006f;
        L_0x006c:
            r2.close();	 Catch:{ IOException -> 0x008e }
        L_0x006f:
            throw r0;
        L_0x0070:
            r0 = new com.squareup.leakcanary.internal.DisplayLeakActivity$LoadLeaks$2;
            r0.<init>();
            java.util.Collections.sort(r5, r0);
        L_0x0078:
            r0 = r11.mainHandler;
            r1 = new com.squareup.leakcanary.internal.DisplayLeakActivity$LoadLeaks$3;
            r1.<init>(r5);
            r0.post(r1);
            return;
        L_0x0083:
            r0 = move-exception;
            r1 = r3;
            goto L_0x0043;
        L_0x0086:
            r0 = move-exception;
            r1 = r2;
            goto L_0x0043;
        L_0x0089:
            r0 = move-exception;
            r1 = r2;
            goto L_0x0043;
        L_0x008c:
            r0 = move-exception;
            goto L_0x003d;
        L_0x008e:
            r1 = move-exception;
            goto L_0x006f;
        L_0x0090:
            r0 = move-exception;
            goto L_0x006a;
        L_0x0092:
            r0 = move-exception;
            r1 = r3;
            goto L_0x0069;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.squareup.leakcanary.internal.DisplayLeakActivity.LoadLeaks.run():void");
        }
    }

    static {
        leakDirectoryProvider = null;
    }

    static String classSimpleName(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? str : str.substring(lastIndexOf + 1);
    }

    public static PendingIntent createPendingIntent(Context context) {
        return createPendingIntent(context, null);
    }

    public static PendingIntent createPendingIntent(Context context, String str) {
        Intent intent = new Intent(context, DisplayLeakActivity.class);
        intent.putExtra(SHOW_LEAK_EXTRA, str);
        intent.setFlags(335544320);
        return PendingIntent.getActivity(context, 1, intent, 134217728);
    }

    static File getLeakDirectory(Context context) {
        LeakDirectoryProvider leakDirectoryProvider = leakDirectoryProvider;
        return leakDirectoryProvider != null ? leakDirectoryProvider.leakDirectory() : new DefaultLeakDirectoryProvider(context).leakDirectory();
    }

    public static void setLeakDirectoryProvider(LeakDirectoryProvider leakDirectoryProvider) {
        leakDirectoryProvider = leakDirectoryProvider;
    }

    void deleteAllLeaks() {
        File[] listFiles = getLeakDirectory(this).listFiles();
        if (listFiles != null) {
            for (File delete : listFiles) {
                if (!delete.delete()) {
                    CanaryLog.d("Could not delete file %s", listFiles[r0].getPath());
                }
            }
        }
        this.leaks = Collections.emptyList();
        updateUi();
    }

    void deleteVisibleLeak() {
        Leak visibleLeak = getVisibleLeak();
        File file = visibleLeak.heapDump.heapDumpFile;
        if (!visibleLeak.resultFile.delete()) {
            CanaryLog.d("Could not delete result file %s", visibleLeak.resultFile.getPath());
        }
        if (!file.delete()) {
            CanaryLog.d("Could not delete heap dump file %s", file.getPath());
        }
        this.visibleLeakRefKey = null;
        this.leaks.remove(visibleLeak);
        updateUi();
    }

    Leak getVisibleLeak() {
        if (this.leaks == null) {
            return null;
        }
        for (Leak leak : this.leaks) {
            if (leak.heapDump.referenceKey.equals(this.visibleLeakRefKey)) {
                return leak;
            }
        }
        return null;
    }

    public void onBackPressed() {
        if (this.visibleLeakRefKey != null) {
            this.visibleLeakRefKey = null;
            updateUi();
            return;
        }
        super.onBackPressed();
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.visibleLeakRefKey = bundle.getString("visibleLeakRefKey");
        } else {
            Intent intent = getIntent();
            if (intent.hasExtra(SHOW_LEAK_EXTRA)) {
                this.visibleLeakRefKey = intent.getStringExtra(SHOW_LEAK_EXTRA);
            }
        }
        this.leaks = (List) getLastNonConfigurationInstance();
        setContentView(R.layout.leak_canary_display_leak);
        this.listView = (ListView) findViewById(R.id.__leak_canary_display_leak_list);
        this.failureView = (TextView) findViewById(R.id.__leak_canary_display_leak_failure);
        this.actionButton = (Button) findViewById(R.id.__leak_canary_action);
        updateUi();
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        Leak visibleLeak = getVisibleLeak();
        if (visibleLeak == null) {
            return false;
        }
        menu.add(R.string.leak_canary_share_leak).setOnMenuItemClickListener(new OnMenuItemClickListener() {
            public boolean onMenuItemClick(MenuItem menuItem) {
                DisplayLeakActivity.this.shareLeak();
                return true;
            }
        });
        if (visibleLeak.heapDump.heapDumpFile.exists()) {
            menu.add(R.string.leak_canary_share_heap_dump).setOnMenuItemClickListener(new OnMenuItemClickListener() {
                public boolean onMenuItemClick(MenuItem menuItem) {
                    DisplayLeakActivity.this.shareHeapDump();
                    return true;
                }
            });
        }
        return true;
    }

    protected void onDestroy() {
        super.onDestroy();
        LoadLeaks.forgetActivity();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            this.visibleLeakRefKey = null;
            updateUi();
        }
        return true;
    }

    protected void onResume() {
        super.onResume();
        LoadLeaks.load(this);
    }

    public Object onRetainNonConfigurationInstance() {
        return this.leaks;
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("visibleLeakRefKey", this.visibleLeakRefKey);
    }

    public void setTheme(int i) {
        if (i == R.style.leak_canary_LeakCanary_Base) {
            super.setTheme(i);
        }
    }

    void shareHeapDump() {
        File file = getVisibleLeak().heapDump.heapDumpFile;
        file.setReadable(true, false);
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("application/octet-stream");
        intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(file));
        startActivity(Intent.createChooser(intent, getString(R.string.leak_canary_share_with)));
    }

    void shareLeak() {
        Leak visibleLeak = getVisibleLeak();
        String leakInfo = LeakCanary.leakInfo(this, visibleLeak.heapDump, visibleLeak.result, true);
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", leakInfo);
        startActivity(Intent.createChooser(intent, getString(R.string.leak_canary_share_with)));
    }

    void updateUi() {
        if (this.leaks == null) {
            setTitle("Loading leaks...");
            return;
        }
        if (this.leaks.isEmpty()) {
            this.visibleLeakRefKey = null;
        }
        Leak visibleLeak = getVisibleLeak();
        if (visibleLeak == null) {
            this.visibleLeakRefKey = null;
        }
        ListAdapter adapter = this.listView.getAdapter();
        this.listView.setVisibility(0);
        this.failureView.setVisibility(8);
        if (visibleLeak != null) {
            AnalysisResult analysisResult = visibleLeak.result;
            if (analysisResult.failure != null) {
                this.listView.setVisibility(8);
                this.failureView.setVisibility(0);
                this.failureView.setText(getString(R.string.leak_canary_failure_report) + Log.getStackTraceString(analysisResult.failure));
                setTitle(R.string.leak_canary_analysis_failed);
                invalidateOptionsMenu();
                getActionBar().setDisplayHomeAsUpEnabled(true);
                this.actionButton.setVisibility(0);
                this.actionButton.setText(R.string.leak_canary_delete);
                this.actionButton.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        DisplayLeakActivity.this.deleteVisibleLeak();
                    }
                });
                this.listView.setAdapter(null);
                return;
            }
            DisplayLeakAdapter displayLeakAdapter;
            if (adapter instanceof DisplayLeakAdapter) {
                displayLeakAdapter = (DisplayLeakAdapter) adapter;
            } else {
                displayLeakAdapter = new DisplayLeakAdapter();
                this.listView.setAdapter(displayLeakAdapter);
                this.listView.setOnItemClickListener(new AnonymousClass4(displayLeakAdapter));
                invalidateOptionsMenu();
                getActionBar().setDisplayHomeAsUpEnabled(true);
                this.actionButton.setVisibility(0);
                this.actionButton.setText(R.string.leak_canary_delete);
                this.actionButton.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        DisplayLeakActivity.this.deleteVisibleLeak();
                    }
                });
            }
            HeapDump heapDump = visibleLeak.heapDump;
            displayLeakAdapter.update(analysisResult.leakTrace, heapDump.referenceKey, heapDump.referenceName);
            String formatShortFileSize = Formatter.formatShortFileSize(this, analysisResult.retainedHeapSize);
            String classSimpleName = classSimpleName(analysisResult.className);
            setTitle(getString(R.string.leak_canary_class_has_leaked, new Object[]{classSimpleName, formatShortFileSize}));
            return;
        }
        if (adapter instanceof LeakListAdapter) {
            ((LeakListAdapter) adapter).notifyDataSetChanged();
        } else {
            this.listView.setAdapter(new LeakListAdapter());
            this.listView.setOnItemClickListener(new OnItemClickListener() {
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    DisplayLeakActivity.this.visibleLeakRefKey = ((Leak) DisplayLeakActivity.this.leaks.get(i)).heapDump.referenceKey;
                    DisplayLeakActivity.this.updateUi();
                }
            });
            invalidateOptionsMenu();
            setTitle(getString(R.string.leak_canary_leak_list_title, new Object[]{getPackageName()}));
            getActionBar().setDisplayHomeAsUpEnabled(false);
            this.actionButton.setText(R.string.leak_canary_delete_all);
            this.actionButton.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    DisplayLeakActivity.this.deleteAllLeaks();
                }
            });
        }
        this.actionButton.setVisibility(this.leaks.size() == 0 ? 8 : 0);
    }
}
