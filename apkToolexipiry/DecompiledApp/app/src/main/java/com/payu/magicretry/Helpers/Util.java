package com.payu.magicretry.Helpers;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.widget.Toast;

public class Util {
    public static final int HIDE_FRAGMENT = 0;
    public static final int SHOW_FRAGMENT = 1;

    private boolean isMobileDataConnected(Context context) {
        int i = HIDE_FRAGMENT;
        NetworkInfo[] allNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getAllNetworkInfo();
        int length = allNetworkInfo.length;
        boolean z = false;
        while (i < length) {
            NetworkInfo networkInfo = allNetworkInfo[i];
            if (networkInfo.getTypeName().equalsIgnoreCase("MOBILE") && networkInfo.isConnected()) {
                z = true;
            }
            i += SHOW_FRAGMENT;
        }
        return z;
    }

    public static boolean isNetworkAvailable(Context context) {
        NetworkInfo[] allNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getAllNetworkInfo();
        int length = allNetworkInfo.length;
        boolean z = HIDE_FRAGMENT;
        boolean z2 = HIDE_FRAGMENT;
        for (int i = HIDE_FRAGMENT; i < length; i += SHOW_FRAGMENT) {
            NetworkInfo networkInfo = allNetworkInfo[i];
            if (networkInfo.getTypeName().equalsIgnoreCase("WIFI") && networkInfo.isConnected()) {
                z = true;
            }
            if (networkInfo.getTypeName().equalsIgnoreCase("MOBILE") && networkInfo.isConnected()) {
                z2 = true;
            }
        }
        return z || z2;
    }

    public static boolean isWifiConnected(Context context) {
        int i = HIDE_FRAGMENT;
        NetworkInfo[] allNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getAllNetworkInfo();
        int length = allNetworkInfo.length;
        boolean z = false;
        while (i < length) {
            NetworkInfo networkInfo = allNetworkInfo[i];
            if (networkInfo.getTypeName().equalsIgnoreCase("WIFI") && networkInfo.isConnected()) {
                z = true;
            }
            i += SHOW_FRAGMENT;
        }
        return z;
    }

    public static void showNetworkNotAvailableError(Context context) {
        Toast.makeText(context, "Not connected to internet", HIDE_FRAGMENT).show();
    }
}
