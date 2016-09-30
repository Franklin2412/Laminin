package com.squareup.leakcanary.internal;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.Notification;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ServiceInfo;
import android.os.Build.VERSION;
import android.os.Process;
import com.squareup.leakcanary.CanaryLog;
import com.squareup.leakcanary.R;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public final class LeakCanaryInternals {
    public static final String LG = "LGE";
    public static final String MOTOROLA = "motorola";
    public static final String NVIDIA = "NVIDIA";
    public static final String SAMSUNG = "samsung";
    private static final Executor fileIoExecutor;

    /* renamed from: com.squareup.leakcanary.internal.LeakCanaryInternals.1 */
    static final class AnonymousClass1 implements Runnable {
        final /* synthetic */ Context val$appContext;
        final /* synthetic */ Class val$componentClass;
        final /* synthetic */ boolean val$enabled;

        AnonymousClass1(Context context, Class cls, boolean z) {
            this.val$appContext = context;
            this.val$componentClass = cls;
            this.val$enabled = z;
        }

        public void run() {
            LeakCanaryInternals.setEnabledBlocking(this.val$appContext, this.val$componentClass, this.val$enabled);
        }
    }

    static {
        fileIoExecutor = newSingleThreadExecutor("File-IO");
    }

    private LeakCanaryInternals() {
        throw new AssertionError();
    }

    public static String classSimpleName(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? str : str.substring(lastIndexOf + 1);
    }

    public static void executeOnFileIoThread(Runnable runnable) {
        fileIoExecutor.execute(runnable);
    }

    public static boolean isInServiceProcess(Context context, Class<? extends Service> cls) {
        PackageManager packageManager = context.getPackageManager();
        try {
            String str = packageManager.getPackageInfo(context.getPackageName(), 4).applicationInfo.processName;
            try {
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, cls), 0);
                if (serviceInfo.processName.equals(str)) {
                    CanaryLog.d("Did not expect service %s to run in main process %s", cls, str);
                    return false;
                }
                int myPid = Process.myPid();
                List<RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
                if (runningAppProcesses != null) {
                    for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                        if (runningAppProcessInfo.pid == myPid) {
                            break;
                        }
                    }
                }
                RunningAppProcessInfo runningAppProcessInfo2 = null;
                if (runningAppProcessInfo2 != null) {
                    return runningAppProcessInfo2.processName.equals(serviceInfo.processName);
                }
                CanaryLog.d("Could not find running process for %d", Integer.valueOf(myPid));
                return false;
            } catch (NameNotFoundException e) {
                return false;
            }
        } catch (Throwable e2) {
            CanaryLog.d(e2, "Could not get package info for %s", context.getPackageName());
            return false;
        }
    }

    public static Executor newSingleThreadExecutor(String str) {
        return Executors.newSingleThreadExecutor(new LeakCanarySingleThreadFactory(str));
    }

    public static void setEnabled(Context context, Class<?> cls, boolean z) {
        executeOnFileIoThread(new AnonymousClass1(context.getApplicationContext(), cls, z));
    }

    public static void setEnabledBlocking(Context context, Class<?> cls, boolean z) {
        context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, cls), z ? 1 : 2, 1);
    }

    @TargetApi(11)
    public static void showNotification(Context context, CharSequence charSequence, CharSequence charSequence2, PendingIntent pendingIntent) {
        Notification notification;
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (VERSION.SDK_INT < 11) {
            notification = new Notification();
            notification.icon = R.drawable.leak_canary_notification;
            notification.when = System.currentTimeMillis();
            notification.flags |= 16;
            try {
                Notification.class.getMethod("setLatestEventInfo", new Class[]{Context.class, CharSequence.class, CharSequence.class, PendingIntent.class}).invoke(notification, new Object[]{context, charSequence, charSequence2, pendingIntent});
            } catch (Throwable e) {
                throw new RuntimeException(e);
            }
        }
        Builder contentIntent = new Builder(context).setSmallIcon(R.drawable.leak_canary_notification).setWhen(System.currentTimeMillis()).setContentTitle(charSequence).setContentText(charSequence2).setAutoCancel(true).setContentIntent(pendingIntent);
        notification = VERSION.SDK_INT < 16 ? contentIntent.getNotification() : contentIntent.build();
        notificationManager.notify(-558907665, notification);
    }
}
