package com.payu.magicretry.Helpers;

import android.content.Context;
import android.content.SharedPreferences.Editor;

public class SharedPreferenceUtil {
    public static void addBooleanToSharedPreference(Context context, String str, String str2, boolean z) {
        Editor edit = context.getSharedPreferences(str, 0).edit();
        edit.putBoolean(str2, z);
        edit.commit();
    }

    public static void addIntToSharedPreference(Context context, String str, String str2, int i) {
        Editor edit = context.getSharedPreferences(str, 0).edit();
        edit.putInt(str2, i);
        edit.commit();
    }

    public static void addStringToSharedPreference(Context context, String str, String str2, String str3) {
        Editor edit = context.getSharedPreferences(str, 0).edit();
        edit.putString(str2, str3);
        edit.commit();
    }

    public static boolean getBooleanFromSharedPreference(Context context, String str, String str2, boolean z) {
        return context.getSharedPreferences(str, 0).getBoolean(str2, z);
    }

    public static int getIntFromSharedPreference(Context context, String str, String str2, int i) {
        return context.getSharedPreferences(str, 0).getInt(str2, i);
    }

    public static String getStringFromSharedPreference(Context context, String str, String str2, String str3) {
        return context.getSharedPreferences(str, 0).getString(str2, str3);
    }
}
