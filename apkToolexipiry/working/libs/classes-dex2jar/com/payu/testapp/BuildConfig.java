package com.payu.testapp;

public final class BuildConfig {
    public static final String APPLICATION_ID = "com.payu.testapp";
    public static final String BUILD_TYPE = "debug";
    public static final boolean DEBUG;
    public static final String FLAVOR = "";
    public static final int VERSION_CODE = 2;
    public static final String VERSION_NAME = "2.1.1";

    static {
        DEBUG = Boolean.parseBoolean("true");
    }
}
