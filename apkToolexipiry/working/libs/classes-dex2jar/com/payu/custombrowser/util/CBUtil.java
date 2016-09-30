package com.payu.custombrowser.util;

import android.app.Activity;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.TrafficStats;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.support.v4.app.NotificationCompat.Style;
import android.support.v4.media.TransportMediator;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.app.NotificationCompat.Builder;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.payu.custombrowser.R;
import com.payu.india.Payu.PayuConstants;
import com.payu.magicretry.Helpers.MRConstant;
import com.squareup.leakcanary.watcher.BuildConfig;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.StringTokenizer;
import java.util.Timer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class CBUtil {
    public static final String CB_PREFERENCE = "com.payu.custombrowser.payucustombrowser";
    private static SharedPreferences sharedPreferences;

    public static String decodeContents(FileInputStream fileInputStream) {
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        while (true) {
            int read = fileInputStream.read();
            if (read == -1) {
                break;
            }
            if (i % 2 == 0) {
                try {
                    stringBuilder.append((char) (read - ((i % 5) + 1)));
                } catch (IOException e) {
                    e.printStackTrace();
                }
            } else {
                stringBuilder.append((char) (read + ((i % 5) + 1)));
            }
            i++;
        }
        fileInputStream.close();
        return stringBuilder.toString();
    }

    public static String filterSMS(JSONObject jSONObject, String str, Context context) {
        String str2 = null;
        if (str != null) {
            try {
                if (Pattern.compile(jSONObject.getString(context.getString(R.string.cb_detect_otp)), 2).matcher(str).find()) {
                    Matcher matcher = Pattern.compile(jSONObject.getString(context.getString(R.string.cb_find_otp)), 2).matcher(str);
                    if (matcher.find()) {
                        str2 = matcher.group(1).replaceAll("[^0-9]", BuildConfig.VERSION_NAME);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return str2;
    }

    private void getDownloadSpeed() {
        String[] strArr = new String[2];
        long currentTimeMillis = System.currentTimeMillis();
        long totalTxBytes = TrafficStats.getTotalTxBytes();
        long totalRxBytes = TrafficStats.getTotalRxBytes();
        long totalTxBytes2 = TrafficStats.getTotalTxBytes();
        double currentTimeMillis2 = (double) (System.currentTimeMillis() - currentTimeMillis);
        double totalRxBytes2 = (double) (TrafficStats.getTotalRxBytes() - totalRxBytes);
        double d = (double) (totalTxBytes2 - totalTxBytes);
        if (totalRxBytes2 == 0.0d || d == 0.0d) {
            strArr[0] = "No uploaded or downloaded bytes.";
            return;
        }
        double d2 = totalRxBytes2 / (currentTimeMillis2 / 1000.0d);
        currentTimeMillis2 = d / (currentTimeMillis2 / 1000.0d);
        strArr[0] = String.valueOf(d2) + "bps. Total rx = " + totalRxBytes2;
        strArr[1] = String.valueOf(currentTimeMillis2) + "bps. Total tx = " + d;
    }

    public static HttpURLConnection getHttpsConn(String str) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty("Accept-Charset", "UTF-8");
            return httpURLConnection;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getLogMessage(Context context, String str, String str2, String str3, String str4, String str5, String str6) {
        try {
            Object obj;
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(MRConstant.PAYU_ID, new CBUtil().getCookie(MRConstant.PAYUIDCOOKIE, context));
            jSONObject.put(MRConstant.TRANSACTION_ID, str5);
            jSONObject.put(MRConstant.MERCHANT_KEY, str4);
            jSONObject.put(MRConstant.PAGE_TYPE, str6);
            jSONObject.put(CBAnalyticsConstant.KEY, str);
            jSONObject.put(CBAnalyticsConstant.VALUE, URLEncoder.encode(str2, "UTF-8"));
            if (str3 == null) {
                obj = BuildConfig.VERSION_NAME;
            }
            jSONObject.put(MRConstant.BANK_NAME, obj);
            jSONObject.put(MRConstant.PAKAGE_NAME, context.getPackageName());
            return jSONObject.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "{}";
        }
    }

    private int getMobileStrength(Context context, NetworkInfo networkInfo) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(PayuConstants.PHONE);
            if (VERSION.SDK_INT < 18) {
                return 0;
            }
            int i = 0;
            for (CellInfo cellInfo : telephonyManager.getAllCellInfo()) {
                if (cellInfo.isRegistered()) {
                    if (cellInfo instanceof CellInfoGsm) {
                        i = ((CellInfoGsm) cellInfo).getCellSignalStrength().getDbm();
                    } else if (cellInfo instanceof CellInfoCdma) {
                        i = ((CellInfoCdma) cellInfo).getCellSignalStrength().getDbm();
                    } else if (cellInfo instanceof CellInfoLte) {
                        i = ((CellInfoLte) cellInfo).getCellSignalStrength().getDbm();
                    } else if (cellInfo instanceof CellInfoWcdma) {
                        i = ((CellInfoWcdma) cellInfo).getCellSignalStrength().getDbm();
                    }
                }
            }
            return i;
        } catch (Exception e) {
            return 0;
        }
    }

    public static StringBuffer getStringBufferFromInputStream(InputStream inputStream) {
        try {
            StringBuffer stringBuffer = new StringBuffer();
            byte[] bArr = new byte[AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    return stringBuffer;
                }
                stringBuffer.append(new String(bArr, 0, read));
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private boolean hasPermission(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    public static boolean isNetworkAvailable(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isAvailable() && activeNetworkInfo.isConnected();
    }

    public static List<String> processAndAddWhiteListedUrls(String str) {
        if (!(str == null || str.equalsIgnoreCase(BuildConfig.VERSION_NAME))) {
            String[] split = str.split("\\|");
            for (String str2 : split) {
                L.v("#### PAYU", "Split Url: " + str2);
            }
            if (split != null && split.length > 0) {
                return Arrays.asList(split);
            }
            L.v("#### PAYU", "Whitelisted URLs from JS: " + str);
        }
        return new ArrayList();
    }

    public static void setAlpha(float f, View view) {
        if (VERSION.SDK_INT < 11) {
            Animation alphaAnimation = new AlphaAnimation(f, f);
            alphaAnimation.setDuration(10);
            alphaAnimation.setFillAfter(true);
            view.startAnimation(alphaAnimation);
            return;
        }
        view.setAlpha(f);
    }

    private static void setRetryData(String str, Context context) {
        if (str == null) {
            SharedPreferenceUtil.addStringToSharedPreference(context, CBConstant.SP_RETRY_FILE_NAME, CBConstant.SP_RETRY_WHITELISTED_URLS, BuildConfig.VERSION_NAME);
        } else {
            SharedPreferenceUtil.addStringToSharedPreference(context, CBConstant.SP_RETRY_FILE_NAME, CBConstant.SP_RETRY_WHITELISTED_URLS, str);
        }
        L.v("#### PAYU", "DATA UPDATED IN SHARED PREFERENCES");
    }

    public static void setVariableReflection(String str, String str2, String str3) {
        if (str2 != null) {
            try {
                if (!str2.trim().equals(BuildConfig.VERSION_NAME)) {
                    Field declaredField = Class.forName(str).getDeclaredField(str3);
                    declaredField.setAccessible(true);
                    declaredField.set(null, str2);
                    declaredField.setAccessible(false);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private SnoozeConfigMap storeSnoozeConfigInSharedPref(Context context, JSONArray jSONArray, SnoozeConfigMap snoozeConfigMap) {
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            String obj = jSONObject.get(CBConstant.URL).toString();
            String obj2 = jSONObject.get(CBConstant.PROGRESS_PERCENT).toString();
            String obj3 = jSONObject.get(CBConstant.TIME_OUT).toString();
            StringTokenizer stringTokenizer = new StringTokenizer(obj, CBConstant.CB_DELIMITER);
            while (stringTokenizer.hasMoreTokens()) {
                obj = stringTokenizer.nextToken();
                SharedPreferenceUtil.addStringToSharedPreference(context, CBConstant.SNOOZE_SHARED_PREF, obj.contentEquals(CBConstant.DEFAULT_PAYMENT_URLS) ? CBConstant.DEFAULT_PAYMENT_URLS : obj.trim(), obj2.trim() + CBConstant.CB_DELIMITER + obj3.trim());
                try {
                    snoozeConfigMap.put(obj.contentEquals(CBConstant.DEFAULT_PAYMENT_URLS) ? CBConstant.DEFAULT_PAYMENT_URLS : obj.trim(), obj2.trim() + CBConstant.CB_DELIMITER + obj3.trim());
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
        return snoozeConfigMap;
    }

    public static String updateLastUrl(String str) {
        try {
            if (!str.contains(CBConstant.CB_DELIMITER)) {
                return str.length() > AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS ? str.substring(0, TransportMediator.KEYCODE_MEDIA_PAUSE) : str;
            } else {
                StringTokenizer stringTokenizer = new StringTokenizer(str, CBConstant.CB_DELIMITER);
                String nextToken = stringTokenizer.nextToken();
                String nextToken2 = stringTokenizer.nextToken();
                if (nextToken.length() > AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
                    nextToken = nextToken.substring(0, 125);
                }
                if (nextToken2.length() > AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
                    nextToken2 = nextToken2.substring(0, 125);
                }
                return nextToken + CBConstant.CB_DELIMITER + nextToken2;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return BuildConfig.VERSION_NAME;
        }
    }

    public static List<String> updateRetryData(String str, Context context) {
        setRetryData(str, context);
        return processAndAddWhiteListedUrls(str);
    }

    public void cancelTimer(Timer timer) {
        if (timer != null) {
            timer.cancel();
            timer.purge();
        }
    }

    public SnoozeConfigMap convertToSnoozeConfigMap(Map<String, ?> map) {
        SnoozeConfigMap snoozeConfigMap = new SnoozeConfigMap();
        for (Entry entry : map.entrySet()) {
            snoozeConfigMap.put(entry.getKey(), entry.getValue());
        }
        return snoozeConfigMap;
    }

    public void deleteSharedPrefKey(Context context, String str) {
        try {
            Editor edit = context.getSharedPreferences(CB_PREFERENCE, 0).edit();
            edit.remove(str);
            edit.apply();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean getBooleanSharedPreference(String str, Context context) {
        sharedPreferences = context.getSharedPreferences(CB_PREFERENCE, 0);
        return sharedPreferences.getBoolean(str, false);
    }

    public boolean getBooleanSharedPreferenceDefaultTrue(String str, Context context) {
        sharedPreferences = context.getSharedPreferences(CB_PREFERENCE, 0);
        return sharedPreferences.getBoolean(str, true);
    }

    public String getCookie(String str, Context context) {
        String str2 = BuildConfig.VERSION_NAME;
        try {
            CookieManager instance = CookieManager.getInstance();
            if (VERSION.SDK_INT < 21) {
                CookieSyncManager.createInstance(context);
                CookieSyncManager.getInstance().sync();
            }
            String cookie = instance.getCookie(CBConstant.PAYU_DOMAIN_TEST);
            if (cookie != null) {
                for (String str3 : cookie.split(";")) {
                    Log.d("testbackward", "cokkies" + str3);
                    if (str3.contains(str)) {
                        str2 = str3.split("=")[1];
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str2;
    }

    @Deprecated
    public String getDataFromPostData(String str, String str2) {
        for (String split : str.split("&")) {
            String[] split2 = split.split("=");
            if (split2.length >= 2 && split2[0].equalsIgnoreCase(str2)) {
                return split2[1];
            }
        }
        return BuildConfig.VERSION_NAME;
    }

    public HashMap<String, String> getDataFromPostData(String str) {
        HashMap<String, String> hashMap = new HashMap();
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, "&");
            while (stringTokenizer.hasMoreTokens()) {
                String[] split = stringTokenizer.nextToken().split("=");
                if (!(split == null || split.length <= 0 || split[0] == null)) {
                    hashMap.put(split[0], split.length > 1 ? split[1] : BuildConfig.VERSION_NAME);
                }
            }
        }
        return hashMap;
    }

    public String getDeviceDensity(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.densityDpi + BuildConfig.VERSION_NAME;
    }

    public Drawable getDrawableCB(Context context, int i) {
        return VERSION.SDK_INT < 21 ? context.getResources().getDrawable(i) : context.getResources().getDrawable(i, context.getTheme());
    }

    public HttpURLConnection getHttpsConn(String str, String str2) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("Content-Type", CBConstant.HTTP_URLENCODED);
            httpURLConnection.setRequestProperty("Content-Length", String.valueOf(str2.length()));
            httpURLConnection.setDoOutput(true);
            httpURLConnection.getOutputStream().write(str2.getBytes());
            return httpURLConnection;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public NetworkInfo getNetWorkInfo(Context context) {
        NetworkInfo networkInfo = null;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkInfo networkInfo2;
        if (VERSION.SDK_INT >= 21) {
            Network[] allNetworks = connectivityManager.getAllNetworks();
            int length = allNetworks.length;
            int i = 0;
            while (i < length) {
                networkInfo2 = connectivityManager.getNetworkInfo(allNetworks[i]);
                if (!networkInfo2.getState().equals(State.CONNECTED)) {
                    networkInfo2 = networkInfo;
                }
                i++;
                networkInfo = networkInfo2;
            }
            return networkInfo;
        }
        NetworkInfo[] allNetworkInfo = connectivityManager.getAllNetworkInfo();
        if (allNetworkInfo == null) {
            return null;
        }
        int length2 = allNetworkInfo.length;
        int i2 = 0;
        networkInfo2 = null;
        while (i2 < length2) {
            NetworkInfo networkInfo3 = allNetworkInfo[i2];
            if (networkInfo3.getState() != State.CONNECTED) {
                networkInfo3 = networkInfo2;
            }
            i2++;
            networkInfo2 = networkInfo3;
        }
        return networkInfo2;
    }

    public String getNetworkStatus(Context context) {
        if (context != null) {
            try {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                    return "Not connected";
                }
                if (activeNetworkInfo.getType() == 1) {
                    return "WIFI";
                }
                if (activeNetworkInfo.getType() == 0) {
                    switch (activeNetworkInfo.getSubtype()) {
                        case com.payu.testapp.R.styleable.WaitingDots_period /*1*/:
                            return "GPRS";
                        case com.payu.testapp.R.styleable.WaitingDots_jumpHeight /*2*/:
                            return "EDGE";
                        case com.payu.testapp.R.styleable.WaitingDots_autoplay /*3*/:
                        case com.payu.testapp.R.styleable.ViewPagerIndicator_vpiUnderlinePageIndicatorStyle /*5*/:
                        case com.payu.testapp.R.styleable.Toolbar_contentInsetEnd /*6*/:
                        case com.payu.testapp.R.styleable.Toolbar_contentInsetRight /*8*/:
                        case com.payu.testapp.R.styleable.Toolbar_popupTheme /*9*/:
                        case com.payu.testapp.R.styleable.Toolbar_titleTextAppearance /*10*/:
                            return "HSPA";
                        case com.payu.testapp.R.styleable.View_theme /*4*/:
                            return "CDMA";
                        case com.payu.testapp.R.styleable.Toolbar_contentInsetLeft /*7*/:
                        case com.payu.testapp.R.styleable.Toolbar_subtitleTextAppearance /*11*/:
                            return "2G";
                        case com.payu.testapp.R.styleable.Toolbar_titleMargins /*12*/:
                        case com.payu.testapp.R.styleable.Toolbar_titleMarginEnd /*14*/:
                        case com.payu.testapp.R.styleable.Toolbar_titleMarginTop /*15*/:
                            return "3G";
                        case com.payu.testapp.R.styleable.Toolbar_titleMarginStart /*13*/:
                            return "4G";
                        default:
                            return "?";
                    }
                }
            } catch (Exception e) {
                return "?";
            }
        }
        return "?";
    }

    public int getNetworkStrength(Context context) {
        int mobileStrength;
        NetworkInfo netWorkInfo = getNetWorkInfo(context);
        if (netWorkInfo != null) {
            if (netWorkInfo.getTypeName().equalsIgnoreCase("MOBILE")) {
                mobileStrength = getMobileStrength(context, netWorkInfo);
                return mobileStrength;
            } else if (netWorkInfo.getTypeName().equalsIgnoreCase("wifi") && hasPermission(context, "android.permission.ACCESS_WIFI_STATE")) {
                try {
                    WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
                    if (connectionInfo != null) {
                        return WifiManager.calculateSignalLevel(connectionInfo.getRssi(), 5);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    return 0;
                }
            }
        }
        mobileStrength = 0;
        return mobileStrength;
    }

    public String getStringSharedPreference(Context context, String str) {
        return context.getSharedPreferences(CB_PREFERENCE, 0).getString(str, BuildConfig.VERSION_NAME);
    }

    public String readFileInputStream(Context context, String str, int i) {
        String str2 = BuildConfig.VERSION_NAME;
        try {
            if (!new File(context.getFilesDir(), str).exists()) {
                context.openFileOutput(str, i);
            }
            FileInputStream openFileInput = context.openFileInput(str);
            while (true) {
                int read = openFileInput.read();
                if (read == -1) {
                    break;
                }
                str2 = str2 + Character.toString((char) read);
            }
            openFileInput.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        return str2;
    }

    public void removeFromSharedPreferences(Context context, String str) {
        Editor edit = context.getSharedPreferences(CB_PREFERENCE, 0).edit();
        edit.remove(str);
        edit.apply();
    }

    public void setBooleanSharedPreference(String str, boolean z, Context context) {
        Editor edit = context.getSharedPreferences(CB_PREFERENCE, 0).edit();
        edit.putBoolean(str, z);
        edit.apply();
    }

    public void setStringSharedPreference(Context context, String str, String str2) {
        String stringSharedPreference = getStringSharedPreference(context, str);
        if (!stringSharedPreference.equalsIgnoreCase(BuildConfig.VERSION_NAME)) {
            if (stringSharedPreference.contains(CBConstant.CB_DELIMITER)) {
                StringTokenizer stringTokenizer = new StringTokenizer(stringSharedPreference, CBConstant.CB_DELIMITER);
                stringTokenizer.nextToken();
                str2 = stringTokenizer.nextToken() + CBConstant.CB_DELIMITER + str2;
            } else {
                str2 = stringSharedPreference + CBConstant.CB_DELIMITER + str2;
            }
        }
        storeInSharedPreferences(context, str, str2);
    }

    public void showNotification(Context context, Intent intent, String str, String str2, int i, boolean z, Style style, int i2, int i3) {
        Builder builder = new Builder(context);
        builder.setContentTitle(str).setContentText(str2).setSmallIcon(i).setPriority(1).setDefaults(2);
        if (z) {
            builder.setAutoCancel(z);
        }
        if (style != null) {
            builder.setStyle(style);
        }
        if (i2 != -1) {
            builder.setColor(i2);
        }
        builder.setContentIntent(PendingIntent.getActivity(context, 0, intent, 134217728));
        ((NotificationManager) context.getSystemService("notification")).notify(i3, builder.build());
    }

    public void storeInSharedPreferences(Context context, String str, String str2) {
        Editor edit = context.getSharedPreferences(CB_PREFERENCE, 0).edit();
        edit.putString(str, str2);
        edit.apply();
    }

    public SnoozeConfigMap storeSnoozeConfigInSharedPref(Context context, String str) {
        JSONException jSONException;
        SnoozeConfigMap snoozeConfigMap;
        JSONException jSONException2;
        SnoozeConfigMap snoozeConfigMap2 = new SnoozeConfigMap();
        try {
            JSONObject jSONObject = new JSONObject(str);
            SharedPreferenceUtil.removeAllFromSharedPref(context, CBConstant.SNOOZE_SHARED_PREF);
            snoozeConfigMap2 = storeSnoozeConfigInSharedPref(context, jSONObject.getJSONArray(PayuConstants.DEFAULT), snoozeConfigMap2);
            try {
                jSONObject.remove(PayuConstants.DEFAULT);
                Iterator keys = jSONObject.keys();
                return keys.hasNext() ? storeSnoozeConfigInSharedPref(context, jSONObject.getJSONArray((String) keys.next()), snoozeConfigMap2) : snoozeConfigMap2;
            } catch (JSONException e) {
                jSONException = e;
                snoozeConfigMap = snoozeConfigMap2;
                jSONException2 = jSONException;
                jSONException2.printStackTrace();
                return snoozeConfigMap;
            }
        } catch (JSONException e2) {
            jSONException = e2;
            snoozeConfigMap = snoozeConfigMap2;
            jSONException2 = jSONException;
            jSONException2.printStackTrace();
            return snoozeConfigMap;
        }
    }

    public void writeFileOutputStream(InputStream inputStream, Context context, String str, int i) {
        try {
            GZIPInputStream gZIPInputStream = new GZIPInputStream(inputStream);
            byte[] bArr = new byte[AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT];
            FileOutputStream openFileOutput = context.openFileOutput(str, i);
            while (true) {
                int read = gZIPInputStream.read(bArr);
                if (read > 0) {
                    openFileOutput.write(bArr, 0, read);
                } else {
                    gZIPInputStream.close();
                    openFileOutput.close();
                    return;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
