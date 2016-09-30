package com.squareup.leakcanary;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Build.VERSION;
import android.os.Bundle;

@TargetApi(14)
public final class ActivityRefWatcher {
    private final Application application;
    private final ActivityLifecycleCallbacks lifecycleCallbacks;
    private final RefWatcher refWatcher;

    public ActivityRefWatcher(Application application, RefWatcher refWatcher) {
        this.lifecycleCallbacks = new ActivityLifecycleCallbacks() {
            public void onActivityCreated(Activity activity, Bundle bundle) {
            }

            public void onActivityDestroyed(Activity activity) {
                ActivityRefWatcher.this.onActivityDestroyed(activity);
            }

            public void onActivityPaused(Activity activity) {
            }

            public void onActivityResumed(Activity activity) {
            }

            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            }

            public void onActivityStarted(Activity activity) {
            }

            public void onActivityStopped(Activity activity) {
            }
        };
        this.application = (Application) Preconditions.checkNotNull(application, "application");
        this.refWatcher = (RefWatcher) Preconditions.checkNotNull(refWatcher, "refWatcher");
    }

    public static void installOnIcsPlus(Application application, RefWatcher refWatcher) {
        if (VERSION.SDK_INT >= 14) {
            new ActivityRefWatcher(application, refWatcher).watchActivities();
        }
    }

    void onActivityDestroyed(Activity activity) {
        this.refWatcher.watch(activity);
    }

    public void stopWatchingActivities() {
        this.application.unregisterActivityLifecycleCallbacks(this.lifecycleCallbacks);
    }

    public void watchActivities() {
        stopWatchingActivities();
        this.application.registerActivityLifecycleCallbacks(this.lifecycleCallbacks);
    }
}
