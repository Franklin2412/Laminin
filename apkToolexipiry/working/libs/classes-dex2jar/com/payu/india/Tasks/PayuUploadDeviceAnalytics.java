package com.payu.india.Tasks;

import android.app.Activity;
import android.content.SharedPreferences.Editor;
import android.os.AsyncTask;
import com.squareup.leakcanary.watcher.BuildConfig;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class PayuUploadDeviceAnalytics {
    private static final String PRODUCTION_URL = "https://info.payu.in/merchant/mobileWebService.php";
    private static final String TEST_URL = "https://mobiletest.payu.in/merchant/mobileWebService.php";
    private static long TIMER_DELAY;
    private static boolean isProduction;
    private String ANALYTICS_URL;
    private String fileName;
    private final Activity mActivity;
    private ArrayList<String> mBuffer;
    private boolean mIsLocked;
    private Timer mTimer;

    /* renamed from: com.payu.india.Tasks.PayuUploadDeviceAnalytics.1 */
    class AnonymousClass1 implements UncaughtExceptionHandler {
        final /* synthetic */ UncaughtExceptionHandler val$defaultUEH;

        AnonymousClass1(UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.val$defaultUEH = uncaughtExceptionHandler;
        }

        public void uncaughtException(Thread thread, Throwable th) {
            do {
            } while (PayuUploadDeviceAnalytics.this.mIsLocked);
            PayuUploadDeviceAnalytics.this.setLock();
            try {
                FileOutputStream openFileOutput = PayuUploadDeviceAnalytics.this.mActivity.openFileOutput(PayuUploadDeviceAnalytics.this.fileName, 0);
                int size = PayuUploadDeviceAnalytics.this.mBuffer.size();
                for (int i = 0; i < size; i++) {
                    openFileOutput.write((((String) PayuUploadDeviceAnalytics.this.mBuffer.get(i)) + "\r\n").getBytes());
                }
                openFileOutput.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            PayuUploadDeviceAnalytics.this.releaseLock();
            this.val$defaultUEH.uncaughtException(thread, th);
        }
    }

    public class UploadData extends AsyncTask<String, Void, String> {
        private String temp;

        UploadData(String str) {
            this.temp = str;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        protected java.lang.String doInBackground(java.lang.String... r10) {
            /*
            r9 = this;
            r2 = 0;
            r4 = new org.json.JSONArray;	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0 = 0;
            r0 = r10[r0];	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r4.<init>(r0);	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r3 = r2;
            r1 = r4;
        L_0x000b:
            r0 = r4.length();	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            if (r3 >= r0) goto L_0x0051;
        L_0x0011:
            r5 = com.payu.india.Tasks.PayuUploadDeviceAnalytics.this;	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r6 = new java.lang.StringBuilder;	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r6.<init>();	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0 = r4.get(r3);	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0 = (org.json.JSONObject) r0;	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r7 = "merchant_key";
            r0 = r0.getString(r7);	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0 = r6.append(r0);	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r6 = "|";
            r6 = r0.append(r6);	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0 = r4.get(r3);	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0 = (org.json.JSONObject) r0;	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r7 = "txnid";
            r0 = r0.getString(r7);	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0 = r6.append(r0);	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0 = r0.toString();	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0 = r5.getbooleanSharedPreference(r0);	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            if (r0 == 0) goto L_0x0223;
        L_0x0048:
            r0 = com.payu.india.Tasks.PayuUploadDeviceAnalytics.removeJsonObjectAtJsonArrayIndex(r4, r3);	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
        L_0x004c:
            r1 = r3 + 1;
            r3 = r1;
            r1 = r0;
            goto L_0x000b;
        L_0x0051:
            r0 = r1.length();	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            if (r0 <= 0) goto L_0x0212;
        L_0x0057:
            r0 = new java.lang.StringBuilder;	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0.<init>();	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r3 = "mobile_data=";
            r0 = r0.append(r3);	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r3 = r1.toString();	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0 = r0.append(r3);	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r3 = r0.toString();	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0 = "UTF-8";
            r4 = r3.getBytes(r0);	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0 = new java.net.URL;	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r5 = com.payu.india.Tasks.PayuUploadDeviceAnalytics.this;	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r5 = r5.ANALYTICS_URL;	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0.<init>(r5);	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0 = r0.openConnection();	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0 = (java.net.HttpURLConnection) r0;	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r5 = "POST";
            r0.setRequestMethod(r5);	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r5 = "Content-Type";
            r6 = "application/x-www-form-urlencoded";
            r0.setRequestProperty(r5, r6);	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r5 = "Content-Length";
            r3 = r3.length();	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r3 = java.lang.String.valueOf(r3);	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0.setRequestProperty(r5, r3);	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r3 = 1;
            r0.setDoOutput(r3);	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r3 = r0.getOutputStream();	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r3.write(r4);	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r3 = r0.getResponseCode();	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0 = r0.getInputStream();	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r4 = new java.lang.StringBuffer;	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r4.<init>();	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r5 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
            r5 = new byte[r5];	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
        L_0x00ba:
            r6 = r0.read(r5);	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r7 = -1;
            if (r6 == r7) goto L_0x00d1;
        L_0x00c1:
            r7 = new java.lang.String;	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r8 = 0;
            r7.<init>(r5, r8, r6);	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r4.append(r7);	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            goto L_0x00ba;
        L_0x00cb:
            r0 = move-exception;
        L_0x00cc:
            r0.printStackTrace();	 Catch:{ Exception -> 0x01e7 }
        L_0x00cf:
            r0 = 0;
            return r0;
        L_0x00d1:
            r0 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
            if (r3 != r0) goto L_0x01ed;
        L_0x00d5:
            r0 = new org.json.JSONObject;	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r3 = r4.toString();	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0.<init>(r3);	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r3 = "status";
            r3 = r0.has(r3);	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            if (r3 == 0) goto L_0x01b7;
        L_0x00e6:
            r3 = "status";
            r3 = r0.getString(r3);	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r4 = "";
            r3 = r3.equalsIgnoreCase(r4);	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            if (r3 != 0) goto L_0x01b7;
        L_0x00f4:
            r3 = com.payu.india.Tasks.PayuUploadDeviceAnalytics.this;	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r3 = r3.mActivity;	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r4 = com.payu.india.Tasks.PayuUploadDeviceAnalytics.this;	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r4 = r4.fileName;	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r3.deleteFile(r4);	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r3 = "status";
            r3 = r0.has(r3);	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            if (r3 == 0) goto L_0x0166;
        L_0x010b:
            r3 = "status";
            r3 = r0.getString(r3);	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r4 = "1";
            r3 = r3.equalsIgnoreCase(r4);	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            if (r3 != 0) goto L_0x0127;
        L_0x0119:
            r3 = "status";
            r0 = r0.getString(r3);	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r3 = "-1";
            r0 = r0.equalsIgnoreCase(r3);	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            if (r0 == 0) goto L_0x0166;
        L_0x0127:
            r0 = r1.length();	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            if (r2 >= r0) goto L_0x00cf;
        L_0x012d:
            r3 = com.payu.india.Tasks.PayuUploadDeviceAnalytics.this;	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r4 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r4.<init>();	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0 = r1.get(r2);	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0 = (org.json.JSONObject) r0;	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r5 = "merchant_key";
            r0 = r0.getString(r5);	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0 = r4.append(r0);	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r4 = "|";
            r4 = r0.append(r4);	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0 = r1.get(r2);	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0 = (org.json.JSONObject) r0;	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r5 = "txnid";
            r0 = r0.getString(r5);	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0 = r4.append(r0);	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0 = r0.toString();	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r4 = 1;
            r3.setBooleanSharedPreference(r0, r4);	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0 = r2 + 1;
            r2 = r0;
            goto L_0x0127;
        L_0x0166:
            r0 = com.payu.india.Tasks.PayuUploadDeviceAnalytics.this;	 Catch:{ IOException -> 0x0185, Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r0 = r0.mActivity;	 Catch:{ IOException -> 0x0185, Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r1 = com.payu.india.Tasks.PayuUploadDeviceAnalytics.this;	 Catch:{ IOException -> 0x0185, Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r1 = r1.fileName;	 Catch:{ IOException -> 0x0185, Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r2 = 0;
            r0 = r0.openFileOutput(r1, r2);	 Catch:{ IOException -> 0x0185, Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r1 = r9.temp;	 Catch:{ IOException -> 0x0185, Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r1 = r1.getBytes();	 Catch:{ IOException -> 0x0185, Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r0.write(r1);	 Catch:{ IOException -> 0x0185, Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r0.close();	 Catch:{ IOException -> 0x0185, Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            goto L_0x00cf;
        L_0x0185:
            r0 = move-exception;
            r0.printStackTrace();	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            goto L_0x00cf;
        L_0x018b:
            r0 = move-exception;
            r0.printStackTrace();	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0 = com.payu.india.Tasks.PayuUploadDeviceAnalytics.this;	 Catch:{ IOException -> 0x01ae, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r0 = r0.mActivity;	 Catch:{ IOException -> 0x01ae, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r1 = com.payu.india.Tasks.PayuUploadDeviceAnalytics.this;	 Catch:{ IOException -> 0x01ae, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r1 = r1.fileName;	 Catch:{ IOException -> 0x01ae, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r2 = 0;
            r0 = r0.openFileOutput(r1, r2);	 Catch:{ IOException -> 0x01ae, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r1 = r9.temp;	 Catch:{ IOException -> 0x01ae, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r1 = r1.getBytes();	 Catch:{ IOException -> 0x01ae, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r0.write(r1);	 Catch:{ IOException -> 0x01ae, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r0.close();	 Catch:{ IOException -> 0x01ae, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            goto L_0x00cf;
        L_0x01ae:
            r0 = move-exception;
            r0.printStackTrace();	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            goto L_0x00cf;
        L_0x01b4:
            r0 = move-exception;
            goto L_0x00cc;
        L_0x01b7:
            r0 = com.payu.india.Tasks.PayuUploadDeviceAnalytics.this;	 Catch:{ IOException -> 0x01d6, Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r0 = r0.mActivity;	 Catch:{ IOException -> 0x01d6, Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r1 = com.payu.india.Tasks.PayuUploadDeviceAnalytics.this;	 Catch:{ IOException -> 0x01d6, Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r1 = r1.fileName;	 Catch:{ IOException -> 0x01d6, Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r2 = 0;
            r0 = r0.openFileOutput(r1, r2);	 Catch:{ IOException -> 0x01d6, Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r1 = r9.temp;	 Catch:{ IOException -> 0x01d6, Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r1 = r1.getBytes();	 Catch:{ IOException -> 0x01d6, Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r0.write(r1);	 Catch:{ IOException -> 0x01d6, Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r0.close();	 Catch:{ IOException -> 0x01d6, Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            goto L_0x00cf;
        L_0x01d6:
            r0 = move-exception;
            r0.printStackTrace();	 Catch:{ Exception -> 0x018b, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            goto L_0x00cf;
        L_0x01dc:
            r0 = move-exception;
            r1 = com.payu.india.Tasks.PayuUploadDeviceAnalytics.this;	 Catch:{ Exception -> 0x01e7 }
            r1.resetTimer();	 Catch:{ Exception -> 0x01e7 }
            r0.printStackTrace();	 Catch:{ Exception -> 0x01e7 }
            goto L_0x00cf;
        L_0x01e7:
            r0 = move-exception;
            r0.printStackTrace();
            goto L_0x00cf;
        L_0x01ed:
            r0 = com.payu.india.Tasks.PayuUploadDeviceAnalytics.this;	 Catch:{ IOException -> 0x020c, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r0 = r0.mActivity;	 Catch:{ IOException -> 0x020c, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r1 = com.payu.india.Tasks.PayuUploadDeviceAnalytics.this;	 Catch:{ IOException -> 0x020c, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r1 = r1.fileName;	 Catch:{ IOException -> 0x020c, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r2 = 0;
            r0 = r0.openFileOutput(r1, r2);	 Catch:{ IOException -> 0x020c, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r1 = r9.temp;	 Catch:{ IOException -> 0x020c, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r1 = r1.getBytes();	 Catch:{ IOException -> 0x020c, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r0.write(r1);	 Catch:{ IOException -> 0x020c, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            r0.close();	 Catch:{ IOException -> 0x020c, MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4 }
            goto L_0x00cf;
        L_0x020c:
            r0 = move-exception;
            r0.printStackTrace();	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            goto L_0x00cf;
        L_0x0212:
            r0 = com.payu.india.Tasks.PayuUploadDeviceAnalytics.this;	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0 = r0.mActivity;	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r1 = com.payu.india.Tasks.PayuUploadDeviceAnalytics.this;	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r1 = r1.fileName;	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            r0.deleteFile(r1);	 Catch:{ MalformedURLException -> 0x00cb, ProtocolException -> 0x01b4, IOException -> 0x01dc }
            goto L_0x00cf;
        L_0x0223:
            r0 = r1;
            goto L_0x004c;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.payu.india.Tasks.PayuUploadDeviceAnalytics.UploadData.doInBackground(java.lang.String[]):java.lang.String");
        }

        protected void onPostExecute(String str) {
            super.onPostExecute(str);
        }
    }

    static {
        TIMER_DELAY = 0;
        isProduction = false;
    }

    public PayuUploadDeviceAnalytics(Activity activity, String str) {
        this.fileName = "sdk_local_cache_device";
        this.ANALYTICS_URL = isProduction ? PRODUCTION_URL : TEST_URL;
        this.mIsLocked = false;
        this.mBuffer = new ArrayList();
        this.mActivity = activity;
        this.fileName = str;
        Thread.setDefaultUncaughtExceptionHandler(new AnonymousClass1(Thread.getDefaultUncaughtExceptionHandler()));
    }

    public static JSONArray removeJsonObjectAtJsonArrayIndex(JSONArray jSONArray, int i) throws JSONException {
        if (i < 0 || i > jSONArray.length() - 1) {
            throw new IndexOutOfBoundsException();
        }
        JSONArray jSONArray2 = new JSONArray();
        int length = jSONArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (i2 != i) {
                jSONArray2.put(jSONArray.get(i2));
            }
        }
        return jSONArray2;
    }

    private void resetTimer() {
        if (this.mTimer != null) {
            this.mTimer.cancel();
        }
        this.mTimer = new Timer();
        this.mTimer.schedule(new TimerTask() {
            public void run() {
                int read;
                String str;
                Throwable th;
                do {
                } while (PayuUploadDeviceAnalytics.this.mIsLocked);
                PayuUploadDeviceAnalytics.TIMER_DELAY = 5000;
                PayuUploadDeviceAnalytics.this.setLock();
                String str2 = BuildConfig.VERSION_NAME;
                try {
                    if (!new File(PayuUploadDeviceAnalytics.this.mActivity.getFilesDir(), PayuUploadDeviceAnalytics.this.fileName).exists()) {
                        PayuUploadDeviceAnalytics.this.mActivity.openFileOutput(PayuUploadDeviceAnalytics.this.fileName, 0);
                    }
                    FileInputStream openFileInput = PayuUploadDeviceAnalytics.this.mActivity.openFileInput(PayuUploadDeviceAnalytics.this.fileName);
                    while (true) {
                        read = openFileInput.read();
                        if (read == -1) {
                            break;
                        }
                        str2 = str2 + Character.toString((char) read);
                    }
                    openFileInput.close();
                    int size = PayuUploadDeviceAnalytics.this.mBuffer.size();
                    while (size > 0) {
                        size--;
                        str2 = str2 + ((String) PayuUploadDeviceAnalytics.this.mBuffer.get(size)) + "\r\n";
                        if (size >= 0 && PayuUploadDeviceAnalytics.this.mBuffer.size() > size) {
                            PayuUploadDeviceAnalytics.this.mBuffer.remove(size);
                        }
                    }
                    str2 = str2.trim();
                    if (str2.length() > 0) {
                        new UploadData(str2).execute(new String[]{str2});
                    }
                } catch (IOException e) {
                    IOException iOException = e;
                    str = str2;
                    iOException.printStackTrace();
                    int size2 = PayuUploadDeviceAnalytics.this.mBuffer.size();
                    while (size2 > 0) {
                        read = size2 - 1;
                        str = str + ((String) PayuUploadDeviceAnalytics.this.mBuffer.get(read)) + "\r\n";
                        if (read < 0 || PayuUploadDeviceAnalytics.this.mBuffer.size() <= read) {
                            size2 = read;
                        } else {
                            PayuUploadDeviceAnalytics.this.mBuffer.remove(read);
                            size2 = read;
                        }
                    }
                    str2 = str.trim();
                    if (str2.length() > 0) {
                        new UploadData(str2).execute(new String[]{str2});
                    }
                } catch (Throwable th2) {
                    Throwable th3 = th2;
                    str2 = str;
                    th = th3;
                    read = PayuUploadDeviceAnalytics.this.mBuffer.size();
                    while (read > 0) {
                        read--;
                        str2 = str2 + ((String) PayuUploadDeviceAnalytics.this.mBuffer.get(read)) + "\r\n";
                        PayuUploadDeviceAnalytics.this.mBuffer.remove(read);
                    }
                    str2 = str2.trim();
                    if (str2.length() > 0) {
                        new UploadData(str2).execute(new String[]{str2});
                    }
                    throw th;
                }
                if (PayuUploadDeviceAnalytics.this.mBuffer.size() > 0) {
                    PayuUploadDeviceAnalytics.this.resetTimer();
                }
                PayuUploadDeviceAnalytics.this.releaseLock();
            }
        }, TIMER_DELAY);
    }

    public boolean getbooleanSharedPreference(String str) {
        return this.mActivity.getSharedPreferences("com.payu", 0).getBoolean(str, false);
    }

    public void log(String str) {
        if (this.mIsLocked) {
            this.mBuffer.add(str);
        } else {
            setLock();
            try {
                JSONObject jSONObject = new JSONObject(str);
                JSONArray jSONArray = new JSONArray();
                String str2 = BuildConfig.VERSION_NAME;
                if (!new File(this.mActivity.getFilesDir(), this.fileName).exists()) {
                    this.mActivity.openFileOutput(this.fileName, 0);
                }
                FileInputStream openFileInput = this.mActivity.openFileInput(this.fileName);
                while (true) {
                    int read = openFileInput.read();
                    if (read == -1) {
                        break;
                    }
                    str2 = str2 + Character.toString((char) read);
                    jSONArray = new JSONArray(str2);
                }
                openFileInput.close();
                FileOutputStream openFileOutput = this.mActivity.openFileOutput(this.fileName, 0);
                jSONArray.put(jSONArray.length(), jSONObject);
                openFileOutput.write((str2 + jSONArray.toString() + "\r\n").getBytes());
                openFileOutput.close();
            } catch (IOException e) {
                e.printStackTrace();
                this.mBuffer.add(str);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            releaseLock();
        }
        resetTimer();
    }

    void releaseLock() {
        synchronized (this) {
            this.mIsLocked = false;
        }
    }

    public void setBooleanSharedPreference(String str, boolean z) {
        Editor edit = this.mActivity.getSharedPreferences("com.payu", 0).edit();
        edit.putBoolean(str, z);
        edit.apply();
    }

    void setLock() {
        synchronized (this) {
            this.mIsLocked = true;
        }
    }
}
