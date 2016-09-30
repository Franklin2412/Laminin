package com.payu.testapp;

import android.app.Application;
import com.squareup.leakcanary.LeakCanary;

public class MainApplication extends Application {
    public void onCreate() {
        super.onCreate();
        LeakCanary.install(this);
    }
}
