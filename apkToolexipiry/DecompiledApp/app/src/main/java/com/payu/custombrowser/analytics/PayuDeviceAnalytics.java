package com.payu.custombrowser.analytics;

import android.content.Context;
import android.os.AsyncTask;
import com.payu.custombrowser.util.CBUtil;
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

public class PayuDeviceAnalytics {
    private static final String PRODUCTION_URL_DEVICE_ANALYTICS = "https://secure.payu.in/MobileAnalytics";
    private static final String TEST_URL_DEVICE_ANALYTICS = "http://10.50.23.170:6543/MobileAnalytics";
    private long TIMER_DELAY;
    private CBUtil cbUtil;
    private final Context context;
    private String file_name;
    private boolean isTimerCancelled;
    private ArrayList<String> mBuffer;
    private boolean mIsLocked;
    private Timer mTimer;

    /* renamed from: com.payu.custombrowser.analytics.PayuDeviceAnalytics.1 */
    class AnonymousClass1 implements UncaughtExceptionHandler {
        final /* synthetic */ UncaughtExceptionHandler val$defaultUEH;
        final /* synthetic */ String val$fileName;

        AnonymousClass1(String str, UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.val$fileName = str;
            this.val$defaultUEH = uncaughtExceptionHandler;
        }

        public void uncaughtException(Thread thread, Throwable th) {
            do {
            } while (PayuDeviceAnalytics.this.mIsLocked);
            PayuDeviceAnalytics.this.setLock();
            try {
                FileOutputStream openFileOutput = PayuDeviceAnalytics.this.context.openFileOutput(this.val$fileName, 0);
                int size = PayuDeviceAnalytics.this.mBuffer.size();
                for (int i = 0; i < size; i++) {
                    openFileOutput.write((((String) PayuDeviceAnalytics.this.mBuffer.get(i)) + "\r\n").getBytes());
                }
                openFileOutput.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            PayuDeviceAnalytics.this.releaseLock();
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
        protected String doInBackground(String... r9) {
            /*
            r8 = this;
            r2 = 0;
            r0 = com.payu.custombrowser.analytics.PayuDeviceAnalytics.this;	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0 = r0.context;	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            if (r0 == 0) goto L_0x011a;
        L_0x0009:
            r0 = com.payu.custombrowser.analytics.PayuDeviceAnalytics.this;	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0 = r0.isTimerCancelled;	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            if (r0 != 0) goto L_0x011a;
        L_0x0011:
            r4 = new org.json.JSONArray;	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0 = 0;
            r0 = r9[r0];	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r4.<init>(r0);	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r3 = r2;
            r1 = r4;
        L_0x001b:
            r0 = r4.length();	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            if (r3 >= r0) goto L_0x006d;
        L_0x0021:
            r0 = com.payu.custombrowser.analytics.PayuDeviceAnalytics.this;	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r5 = r0.cbUtil;	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r6 = new java.lang.StringBuilder;	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r6.<init>();	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0 = r4.get(r3);	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0 = (org.json.JSONObject) r0;	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r7 = "merchant_key";
            r0 = r0.getString(r7);	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0 = r6.append(r0);	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r6 = "|";
            r6 = r0.append(r6);	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0 = r4.get(r3);	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0 = (org.json.JSONObject) r0;	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r7 = "txnid";
            r0 = r0.getString(r7);	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0 = r6.append(r0);	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0 = r0.toString();	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r6 = com.payu.custombrowser.analytics.PayuDeviceAnalytics.this;	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r6 = r6.context;	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0 = r5.getBooleanSharedPreference(r0, r6);	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            if (r0 == 0) goto L_0x0153;
        L_0x0062:
            r0 = com.payu.custombrowser.analytics.PayuDeviceAnalytics.this;	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0 = r0.removeJsonObjectAtJsonArrayIndex(r4, r3);	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
        L_0x0068:
            r1 = r3 + 1;
            r3 = r1;
            r1 = r0;
            goto L_0x001b;
        L_0x006d:
            r0 = r1.length();	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            if (r0 <= 0) goto L_0x011a;
        L_0x0073:
            r0 = new java.lang.StringBuilder;	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0.<init>();	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r3 = "command=DeviceAnalytics&data=";
            r0 = r0.append(r3);	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r3 = r1.toString();	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0 = r0.append(r3);	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0 = r0.toString();	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r3 = com.payu.custombrowser.analytics.PayuDeviceAnalytics.this;	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r3 = r3.cbUtil;	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r4 = "http://10.50.23.170:6543/MobileAnalytics";
            r0 = r3.getHttpsConn(r4, r0);	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            if (r0 == 0) goto L_0x0139;
        L_0x0098:
            r3 = r0.getResponseCode();	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r4 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
            if (r3 != r4) goto L_0x012f;
        L_0x00a0:
            r0 = r0.getInputStream();	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0 = com.payu.custombrowser.util.CBUtil.getStringBufferFromInputStream(r0);	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            if (r0 == 0) goto L_0x011a;
        L_0x00aa:
            r3 = new org.json.JSONObject;	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0 = r0.toString();	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r3.<init>(r0);	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0 = "status";
            r0 = r3.has(r0);	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            if (r0 == 0) goto L_0x0113;
        L_0x00bb:
            r0 = com.payu.custombrowser.analytics.PayuDeviceAnalytics.this;	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0 = r0.context;	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r3 = com.payu.custombrowser.analytics.PayuDeviceAnalytics.this;	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r3 = r3.file_name;	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0.deleteFile(r3);	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
        L_0x00ca:
            r0 = r1.length();	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            if (r2 >= r0) goto L_0x011a;
        L_0x00d0:
            r0 = com.payu.custombrowser.analytics.PayuDeviceAnalytics.this;	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r3 = r0.cbUtil;	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r4 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r4.<init>();	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0 = r1.get(r2);	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0 = (org.json.JSONObject) r0;	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r5 = "merchant_key";
            r0 = r0.getString(r5);	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0 = r4.append(r0);	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r4 = "|";
            r4 = r0.append(r4);	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0 = r1.get(r2);	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0 = (org.json.JSONObject) r0;	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r5 = "txnid";
            r0 = r0.getString(r5);	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0 = r4.append(r0);	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0 = r0.toString();	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r4 = 1;
            r5 = com.payu.custombrowser.analytics.PayuDeviceAnalytics.this;	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r5 = r5.context;	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r3.setBooleanSharedPreference(r0, r4, r5);	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0 = r2 + 1;
            r2 = r0;
            goto L_0x00ca;
        L_0x0113:
            r0 = com.payu.custombrowser.analytics.PayuDeviceAnalytics.this;	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r1 = r8.temp;	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0.updateFile(r1);	 Catch:{ Exception -> 0x011c, MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
        L_0x011a:
            r0 = 0;
            return r0;
        L_0x011c:
            r0 = move-exception;
            r0 = com.payu.custombrowser.analytics.PayuDeviceAnalytics.this;	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r1 = r8.temp;	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0.updateFile(r1);	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            goto L_0x011a;
        L_0x0125:
            r0 = move-exception;
        L_0x0126:
            r0.printStackTrace();	 Catch:{ Exception -> 0x012a }
            goto L_0x011a;
        L_0x012a:
            r0 = move-exception;
            r0.printStackTrace();
            goto L_0x011a;
        L_0x012f:
            r0 = com.payu.custombrowser.analytics.PayuDeviceAnalytics.this;	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r1 = r8.temp;	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0.updateFile(r1);	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            goto L_0x011a;
        L_0x0137:
            r0 = move-exception;
            goto L_0x0126;
        L_0x0139:
            r0 = com.payu.custombrowser.analytics.PayuDeviceAnalytics.this;	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0 = r0.context;	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r1 = com.payu.custombrowser.analytics.PayuDeviceAnalytics.this;	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r1 = r1.file_name;	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            r0.deleteFile(r1);	 Catch:{ MalformedURLException -> 0x0125, ProtocolException -> 0x0137, IOException -> 0x0149 }
            goto L_0x011a;
        L_0x0149:
            r0 = move-exception;
            r1 = com.payu.custombrowser.analytics.PayuDeviceAnalytics.this;	 Catch:{ Exception -> 0x012a }
            r1.resetTimer();	 Catch:{ Exception -> 0x012a }
            r0.printStackTrace();	 Catch:{ Exception -> 0x012a }
            goto L_0x011a;
        L_0x0153:
            r0 = r1;
            goto L_0x0068;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.payu.custombrowser.analytics.PayuDeviceAnalytics.UploadData.doInBackground(java.lang.String[]):java.lang.String");
        }

        protected void onPostExecute(String str) {
            super.onPostExecute(str);
        }
    }

    public PayuDeviceAnalytics(Context context, String str) {
        this.TIMER_DELAY = 0;
        this.mIsLocked = false;
        this.file_name = "cb_local_cache_device";
        this.context = context;
        this.file_name = str;
        this.mBuffer = new ArrayList();
        this.cbUtil = new CBUtil();
        Thread.setDefaultUncaughtExceptionHandler(new AnonymousClass1(str, Thread.getDefaultUncaughtExceptionHandler()));
    }

    private void releaseLock() {
        synchronized (this) {
            this.mIsLocked = false;
        }
    }

    private JSONArray removeJsonObjectAtJsonArrayIndex(JSONArray jSONArray, int i) throws JSONException {
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
                String str;
                Throwable th;
                do {
                } while (PayuDeviceAnalytics.this.mIsLocked);
                PayuDeviceAnalytics.this.TIMER_DELAY = 5000;
                PayuDeviceAnalytics.this.setLock();
                String str2 = BuildConfig.VERSION_NAME;
                int read;
                try {
                    if (!new File(PayuDeviceAnalytics.this.context.getFilesDir(), PayuDeviceAnalytics.this.file_name).exists()) {
                        PayuDeviceAnalytics.this.context.openFileOutput(PayuDeviceAnalytics.this.file_name, 0);
                    }
                    FileInputStream openFileInput = PayuDeviceAnalytics.this.context.openFileInput(PayuDeviceAnalytics.this.file_name);
                    while (true) {
                        read = openFileInput.read();
                        if (read == -1) {
                            break;
                        }
                        str2 = str2 + Character.toString((char) read);
                    }
                    openFileInput.close();
                    int size = PayuDeviceAnalytics.this.mBuffer.size();
                    while (size > 0) {
                        size--;
                        str2 = str2 + ((String) PayuDeviceAnalytics.this.mBuffer.get(size)) + "\r\n";
                        if (size >= 0 && PayuDeviceAnalytics.this.mBuffer.size() > size) {
                            PayuDeviceAnalytics.this.mBuffer.remove(size);
                        }
                    }
                    str2 = str2.trim();
                    if (str2.length() > 0) {
                        new UploadData(str2).execute(new String[]{str2});
                    } else {
                        PayuDeviceAnalytics.this.mTimer.cancel();
                    }
                } catch (IOException e) {
                    IOException iOException = e;
                    str = str2;
                    iOException.printStackTrace();
                    int size2 = PayuDeviceAnalytics.this.mBuffer.size();
                    while (size2 > 0) {
                        read = size2 - 1;
                        str = str + ((String) PayuDeviceAnalytics.this.mBuffer.get(read)) + "\r\n";
                        if (read < 0 || PayuDeviceAnalytics.this.mBuffer.size() <= read) {
                            size2 = read;
                        } else {
                            PayuDeviceAnalytics.this.mBuffer.remove(read);
                            size2 = read;
                        }
                    }
                    str2 = str.trim();
                    if (str2.length() > 0) {
                        new UploadData(str2).execute(new String[]{str2});
                    } else {
                        PayuDeviceAnalytics.this.mTimer.cancel();
                    }
                } catch (Throwable th2) {
                    Throwable th3 = th2;
                    str2 = str;
                    th = th3;
                    read = PayuDeviceAnalytics.this.mBuffer.size();
                    while (read > 0) {
                        read--;
                        str2 = str2 + ((String) PayuDeviceAnalytics.this.mBuffer.get(read)) + "\r\n";
                        PayuDeviceAnalytics.this.mBuffer.remove(read);
                    }
                    str2 = str2.trim();
                    if (str2.length() <= 0) {
                        PayuDeviceAnalytics.this.mTimer.cancel();
                    } else {
                        new UploadData(str2).execute(new String[]{str2});
                    }
                    throw th;
                }
                if (PayuDeviceAnalytics.this.mBuffer.size() > 0) {
                    PayuDeviceAnalytics.this.resetTimer();
                }
                PayuDeviceAnalytics.this.releaseLock();
            }
        }, this.TIMER_DELAY);
    }

    private void setLock() {
        synchronized (this) {
            this.mIsLocked = true;
        }
    }

    private void updateFile(String str) {
        try {
            FileOutputStream openFileOutput = this.context.openFileOutput(this.file_name, 0);
            openFileOutput.write(str.getBytes());
            openFileOutput.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public Timer getmTimer() {
        this.isTimerCancelled = true;
        return this.mTimer;
    }

    public void log(String str) {
        if (this.mIsLocked) {
            this.mBuffer.add(str);
        } else {
            setLock();
            try {
                JSONObject jSONObject = new JSONObject(str);
                String str2 = BuildConfig.VERSION_NAME;
                if (!new File(this.context.getFilesDir(), this.file_name).exists()) {
                    this.context.openFileOutput(this.file_name, 0);
                }
                FileInputStream openFileInput = this.context.openFileInput(this.file_name);
                String str3 = str2;
                while (true) {
                    int read = openFileInput.read();
                    if (read == -1) {
                        break;
                    }
                    str3 = str3 + Character.toString((char) read);
                }
                JSONArray jSONArray = str3.equalsIgnoreCase(BuildConfig.VERSION_NAME) ? new JSONArray() : new JSONArray(str3);
                openFileInput.close();
                FileOutputStream openFileOutput = this.context.openFileOutput(this.file_name, 0);
                jSONArray.put(jSONArray.length(), jSONObject);
                openFileOutput.write(jSONArray.toString().getBytes());
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
}
