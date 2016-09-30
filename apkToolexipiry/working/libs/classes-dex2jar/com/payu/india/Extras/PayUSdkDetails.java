package com.payu.india.Extras;

import com.payu.india.BuildConfig;

public class PayUSdkDetails {
    public String getSdkApplicationId() {
        return BuildConfig.APPLICATION_ID;
    }

    public String getSdkBuildNumber() {
        return "27072015";
    }

    public String getSdkBuildType() {
        return com.squareup.leakcanary.watcher.BuildConfig.BUILD_TYPE;
    }

    public String getSdkFlavor() {
        return com.squareup.leakcanary.watcher.BuildConfig.VERSION_NAME;
    }

    public String getSdkVersionCode() {
        return "11";
    }

    public String getSdkVersionName() {
        return BuildConfig.VERSION_NAME;
    }
}
