package com.squareup.leakcanary;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Environment;
import com.squareup.leakcanary.internal.LeakCanaryInternals;
import com.squareup.leakcanary.internal.RequestStoragePermissionActivity;
import java.io.File;

public final class DefaultLeakDirectoryProvider implements LeakDirectoryProvider {
    private final Context context;

    public DefaultLeakDirectoryProvider(Context context) {
        this.context = context.getApplicationContext();
    }

    @TargetApi(23)
    private boolean hasStoragePermission() {
        return VERSION.SDK_INT < 23 || this.context.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    public boolean isLeakStorageWritable() {
        return !hasStoragePermission() ? false : "mounted".equals(Environment.getExternalStorageState());
    }

    public File leakDirectory() {
        File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS), "leakcanary-" + this.context.getPackageName());
        if (file.mkdirs() || file.exists()) {
            return file;
        }
        throw new UnsupportedOperationException("Could not create leak directory " + file.getPath());
    }

    public void requestWritePermission() {
        if (!hasStoragePermission()) {
            PendingIntent createPendingIntent = RequestStoragePermissionActivity.createPendingIntent(this.context);
            CharSequence string = this.context.getString(R.string.leak_canary_permission_notification_title);
            String packageName = this.context.getPackageName();
            LeakCanaryInternals.showNotification(this.context, string, this.context.getString(R.string.leak_canary_permission_notification_text, new Object[]{packageName}), createPendingIntent);
        }
    }
}
