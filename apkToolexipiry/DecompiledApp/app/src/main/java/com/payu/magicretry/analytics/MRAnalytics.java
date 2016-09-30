package com.payu.magicretry.analytics;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import com.payu.magicretry.MagicRetryFragment;
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

public class MRAnalytics {
    private static MRAnalytics INSTANCE = null;
    private static final String PRODUCTION_URL = "http://10.50.23.170:6543/MobileAnalytics";
    private static final String TEST_URL = "http://10.50.23.170:6543/MobileAnalytics";
    private static final long TIMER_DELAY = 5000;
    private String ANALYTICS_URL;
    private String fileName;
    private ArrayList<String> mBuffer;
    private Context mContext;
    private boolean mIsLocked;
    private Timer mTimer;

    /* renamed from: com.payu.magicretry.analytics.MRAnalytics.1 */
    class AnonymousClass1 implements UncaughtExceptionHandler {
        final /* synthetic */ Context val$context;
        final /* synthetic */ UncaughtExceptionHandler val$defaultUEH;

        AnonymousClass1(Context context, UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.val$context = context;
            this.val$defaultUEH = uncaughtExceptionHandler;
        }

        public void uncaughtException(Thread thread, Throwable th) {
            do {
            } while (MRAnalytics.this.mIsLocked);
            MRAnalytics.this.setLock();
            try {
                FileOutputStream openFileOutput = this.val$context.openFileOutput(MRAnalytics.this.fileName, 0);
                int size = MRAnalytics.this.mBuffer.size();
                if (size > 0) {
                    JSONArray jSONArray = new JSONArray();
                    for (int i = 0; i < size; i++) {
                        jSONArray.put(jSONArray.length(), new JSONObject((String) MRAnalytics.this.mBuffer.get(i)));
                    }
                    openFileOutput.write(jSONArray.toString().getBytes());
                    MRAnalytics.this.mBuffer = new ArrayList();
                }
                openFileOutput.close();
            } catch (IOException e) {
                e.printStackTrace();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            MRAnalytics.this.releaseLock();
            this.val$defaultUEH.uncaughtException(thread, th);
        }
    }

    /* renamed from: com.payu.magicretry.analytics.MRAnalytics.2 */
    class AnonymousClass2 extends AsyncTask<Void, Void, Void> {
        final /* synthetic */ String val$msg;

        AnonymousClass2(String str) {
            this.val$msg = str;
        }

        protected Void doInBackground(Void... voidArr) {
            MRAnalytics.this.setLock();
            try {
                JSONObject jSONObject = new JSONObject(this.val$msg);
                String str = BuildConfig.VERSION_NAME;
                if (!new File(MRAnalytics.this.mContext.getFilesDir(), MRAnalytics.this.fileName).exists()) {
                    MRAnalytics.this.mContext.openFileOutput(MRAnalytics.this.fileName, 0);
                }
                FileInputStream openFileInput = MRAnalytics.this.mContext.openFileInput(MRAnalytics.this.fileName);
                String str2 = str;
                while (true) {
                    int read = openFileInput.read();
                    if (read == -1) {
                        break;
                    }
                    str2 = str2 + Character.toString((char) read);
                }
                JSONArray jSONArray = str2.equalsIgnoreCase(BuildConfig.VERSION_NAME) ? new JSONArray() : new JSONArray(str2);
                openFileInput.close();
                FileOutputStream openFileOutput = MRAnalytics.this.mContext.openFileOutput(MRAnalytics.this.fileName, 0);
                jSONArray.put(jSONArray.length(), jSONObject);
                openFileOutput.write(jSONArray.toString().getBytes());
                openFileOutput.close();
            } catch (IOException e) {
                e.printStackTrace();
                MRAnalytics.this.mBuffer.add(this.val$msg);
            } catch (JSONException e2) {
                e2.printStackTrace();
                MRAnalytics.this.mBuffer.add(this.val$msg);
            } catch (Exception e3) {
                e3.printStackTrace();
                MRAnalytics.this.mBuffer.add(this.val$msg);
            }
            MRAnalytics.this.releaseLock();
            return null;
        }
    }

    public MRAnalytics(Context context, String str) {
        if (MagicRetryFragment.DEBUG) {
            this.ANALYTICS_URL = TEST_URL;
            this.mIsLocked = false;
            this.mContext = context;
            this.fileName = str;
            this.mBuffer = new ArrayList();
            Thread.setDefaultUncaughtExceptionHandler(new AnonymousClass1(context, Thread.getDefaultUncaughtExceptionHandler()));
        } else {
            this.ANALYTICS_URL = TEST_URL;
            this.mIsLocked = false;
            this.mContext = context;
            this.fileName = str;
            this.mBuffer = new ArrayList();
            Thread.setDefaultUncaughtExceptionHandler(new AnonymousClass1(context, Thread.getDefaultUncaughtExceptionHandler()));
        }
    }

    private boolean isOnline() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.mContext.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
    }

    private void releaseLock() {
        synchronized (this) {
            this.mIsLocked = false;
        }
    }

    private void resetTimer() {
        if (this.mTimer != null) {
            this.mTimer.cancel();
        }
        this.mTimer = new Timer();
        this.mTimer.schedule(new TimerTask() {
            /* JADX WARNING: inconsistent code. */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void run() {
                /*
                r11 = this;
                r9 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
                r8 = -1;
                r2 = 0;
            L_0x0004:
                r0 = com.payu.magicretry.analytics.MRAnalytics.this;
                r0 = r0.mIsLocked;
                if (r0 != 0) goto L_0x0004;
            L_0x000c:
                r0 = com.payu.magicretry.analytics.MRAnalytics.this;
                r0.setLock();
                r0 = com.payu.magicretry.analytics.MRAnalytics.this;
                r0 = r0.isOnline();
                if (r0 == 0) goto L_0x012a;
            L_0x0019:
                r0 = "";
                r1 = new java.io.File;	 Catch:{ IOException -> 0x019a, all -> 0x02b7 }
                r3 = com.payu.magicretry.analytics.MRAnalytics.this;	 Catch:{ IOException -> 0x019a, all -> 0x02b7 }
                r3 = r3.mContext;	 Catch:{ IOException -> 0x019a, all -> 0x02b7 }
                r3 = r3.getFilesDir();	 Catch:{ IOException -> 0x019a, all -> 0x02b7 }
                r4 = com.payu.magicretry.analytics.MRAnalytics.this;	 Catch:{ IOException -> 0x019a, all -> 0x02b7 }
                r4 = r4.fileName;	 Catch:{ IOException -> 0x019a, all -> 0x02b7 }
                r1.<init>(r3, r4);	 Catch:{ IOException -> 0x019a, all -> 0x02b7 }
                r1 = r1.exists();	 Catch:{ IOException -> 0x019a, all -> 0x02b7 }
                if (r1 != 0) goto L_0x0046;
            L_0x0036:
                r1 = com.payu.magicretry.analytics.MRAnalytics.this;	 Catch:{ IOException -> 0x019a, all -> 0x02b7 }
                r1 = r1.mContext;	 Catch:{ IOException -> 0x019a, all -> 0x02b7 }
                r3 = com.payu.magicretry.analytics.MRAnalytics.this;	 Catch:{ IOException -> 0x019a, all -> 0x02b7 }
                r3 = r3.fileName;	 Catch:{ IOException -> 0x019a, all -> 0x02b7 }
                r4 = 0;
                r1.openFileOutput(r3, r4);	 Catch:{ IOException -> 0x019a, all -> 0x02b7 }
            L_0x0046:
                r1 = com.payu.magicretry.analytics.MRAnalytics.this;	 Catch:{ IOException -> 0x019a, all -> 0x02b7 }
                r1 = r1.mContext;	 Catch:{ IOException -> 0x019a, all -> 0x02b7 }
                r3 = com.payu.magicretry.analytics.MRAnalytics.this;	 Catch:{ IOException -> 0x019a, all -> 0x02b7 }
                r3 = r3.fileName;	 Catch:{ IOException -> 0x019a, all -> 0x02b7 }
                r1 = r1.openFileInput(r3);	 Catch:{ IOException -> 0x019a, all -> 0x02b7 }
            L_0x0056:
                r3 = r1.read();	 Catch:{ IOException -> 0x019a, all -> 0x02b7 }
                if (r3 == r8) goto L_0x0073;
            L_0x005c:
                r4 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x019a, all -> 0x02b7 }
                r4.<init>();	 Catch:{ IOException -> 0x019a, all -> 0x02b7 }
                r4 = r4.append(r0);	 Catch:{ IOException -> 0x019a, all -> 0x02b7 }
                r3 = (char) r3;	 Catch:{ IOException -> 0x019a, all -> 0x02b7 }
                r3 = java.lang.Character.toString(r3);	 Catch:{ IOException -> 0x019a, all -> 0x02b7 }
                r3 = r4.append(r3);	 Catch:{ IOException -> 0x019a, all -> 0x02b7 }
                r0 = r3.toString();	 Catch:{ IOException -> 0x019a, all -> 0x02b7 }
                goto L_0x0056;
            L_0x0073:
                r1.close();	 Catch:{ IOException -> 0x019a, all -> 0x02b7 }
                r1 = new org.json.JSONArray;	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r1.<init>(r0);	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r0 = new org.json.JSONArray;	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r0.<init>();	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r0 = com.payu.magicretry.analytics.MRAnalytics.this;	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r0 = r0.mBuffer;	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r0 = r0.size();	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                if (r0 <= 0) goto L_0x00af;
            L_0x008c:
                r0 = com.payu.magicretry.analytics.MRAnalytics.this;	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r0 = r0.mBuffer;	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r0 = r0.size();	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                if (r2 >= r0) goto L_0x00af;
            L_0x0098:
                r3 = new org.json.JSONObject;	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r0 = com.payu.magicretry.analytics.MRAnalytics.this;	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r0 = r0.mBuffer;	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r0 = r0.get(r2);	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r0 = (java.lang.String) r0;	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r3.<init>(r0);	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r1.put(r3);	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r2 = r2 + 1;
                goto L_0x008c;
            L_0x00af:
                r0 = r1.length();	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                if (r0 <= 0) goto L_0x012a;
            L_0x00b5:
                r0 = new java.lang.StringBuilder;	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r0.<init>();	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r2 = "command=EventAnalytics&data=";
                r0 = r0.append(r2);	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r1 = r1.toString();	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r0 = r0.append(r1);	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r1 = r0.toString();	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r2 = r1.getBytes();	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r0 = new java.net.URL;	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r3 = com.payu.magicretry.analytics.MRAnalytics.this;	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r3 = r3.ANALYTICS_URL;	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r0.<init>(r3);	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r0 = r0.openConnection();	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r0 = (java.net.HttpURLConnection) r0;	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r3 = "POST";
                r0.setRequestMethod(r3);	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r3 = "Content-Type";
                r4 = "application/x-www-form-urlencoded";
                r0.setRequestProperty(r3, r4);	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r3 = "Content-Length";
                r1 = r1.length();	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r1 = java.lang.String.valueOf(r1);	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r0.setRequestProperty(r3, r1);	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r1 = 1;
                r0.setDoOutput(r1);	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r1 = r0.getOutputStream();	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r1.write(r2);	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r1 = r0.getResponseCode();	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r0 = r0.getInputStream();	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r2 = new java.lang.StringBuffer;	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r2.<init>();	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r3 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
                r3 = new byte[r3];	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
            L_0x0116:
                r4 = r0.read(r3);	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                if (r4 == r8) goto L_0x0141;
            L_0x011c:
                r5 = new java.lang.String;	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r6 = 0;
                r5.<init>(r3, r6, r4);	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                r2.append(r5);	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                goto L_0x0116;
            L_0x0126:
                r0 = move-exception;
                r0.printStackTrace();
            L_0x012a:
                r0 = com.payu.magicretry.analytics.MRAnalytics.this;
                r0 = r0.mBuffer;
                r0 = r0.size();
                if (r0 <= 0) goto L_0x013b;
            L_0x0136:
                r0 = com.payu.magicretry.analytics.MRAnalytics.this;
                r0.resetTimer();
            L_0x013b:
                r0 = com.payu.magicretry.analytics.MRAnalytics.this;
                r0.releaseLock();
                return;
            L_0x0141:
                if (r1 != r9) goto L_0x012a;
            L_0x0143:
                r0 = new org.json.JSONObject;	 Catch:{ Exception -> 0x017c, MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190 }
                r1 = r2.toString();	 Catch:{ Exception -> 0x017c, MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190 }
                r0.<init>(r1);	 Catch:{ Exception -> 0x017c, MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190 }
                r1 = "status";
                r1 = r0.has(r1);	 Catch:{ Exception -> 0x017c, MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190 }
                if (r1 == 0) goto L_0x012a;
            L_0x0154:
                r1 = "status";
                r0 = r0.getString(r1);	 Catch:{ Exception -> 0x017c, MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190 }
                r1 = "1";
                r0 = r0.equals(r1);	 Catch:{ Exception -> 0x017c, MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190 }
                if (r0 == 0) goto L_0x012a;
            L_0x0162:
                r0 = com.payu.magicretry.analytics.MRAnalytics.this;	 Catch:{ Exception -> 0x017c, MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190 }
                r0 = r0.mContext;	 Catch:{ Exception -> 0x017c, MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190 }
                r1 = com.payu.magicretry.analytics.MRAnalytics.this;	 Catch:{ Exception -> 0x017c, MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190 }
                r1 = r1.fileName;	 Catch:{ Exception -> 0x017c, MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190 }
                r0.deleteFile(r1);	 Catch:{ Exception -> 0x017c, MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190 }
                r0 = com.payu.magicretry.analytics.MRAnalytics.this;	 Catch:{ Exception -> 0x017c, MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190 }
                r1 = new java.util.ArrayList;	 Catch:{ Exception -> 0x017c, MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190 }
                r1.<init>();	 Catch:{ Exception -> 0x017c, MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190 }
                r0.mBuffer = r1;	 Catch:{ Exception -> 0x017c, MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190 }
                goto L_0x012a;
            L_0x017c:
                r0 = move-exception;
                r0.printStackTrace();	 Catch:{ MalformedURLException -> 0x0126, ProtocolException -> 0x0181, UnsupportedEncodingException -> 0x0186, IOException -> 0x018b, JSONException -> 0x0190, Exception -> 0x0195 }
                goto L_0x012a;
            L_0x0181:
                r0 = move-exception;
                r0.printStackTrace();
                goto L_0x012a;
            L_0x0186:
                r0 = move-exception;
                r0.printStackTrace();
                goto L_0x012a;
            L_0x018b:
                r0 = move-exception;
                r0.printStackTrace();
                goto L_0x012a;
            L_0x0190:
                r0 = move-exception;
                r0.printStackTrace();
                goto L_0x012a;
            L_0x0195:
                r0 = move-exception;
                r0.printStackTrace();
                goto L_0x012a;
            L_0x019a:
                r1 = move-exception;
                r10 = r1;
                r1 = r0;
                r0 = r10;
                r0.printStackTrace();	 Catch:{ all -> 0x03c7 }
                r3 = new org.json.JSONArray;	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r3.<init>(r1);	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r0 = new org.json.JSONArray;	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r0.<init>();	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r0 = com.payu.magicretry.analytics.MRAnalytics.this;	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r0 = r0.mBuffer;	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r0 = r0.size();	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                if (r0 <= 0) goto L_0x01da;
            L_0x01b7:
                r0 = com.payu.magicretry.analytics.MRAnalytics.this;	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r0 = r0.mBuffer;	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r0 = r0.size();	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                if (r2 >= r0) goto L_0x01da;
            L_0x01c3:
                r1 = new org.json.JSONObject;	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r0 = com.payu.magicretry.analytics.MRAnalytics.this;	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r0 = r0.mBuffer;	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r0 = r0.get(r2);	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r0 = (java.lang.String) r0;	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r1.<init>(r0);	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r3.put(r1);	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r2 = r2 + 1;
                goto L_0x01b7;
            L_0x01da:
                r0 = r3.length();	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                if (r0 <= 0) goto L_0x012a;
            L_0x01e0:
                r0 = new java.lang.StringBuilder;	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r0.<init>();	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r1 = "command=EventAnalytics&data=";
                r0 = r0.append(r1);	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r1 = r3.toString();	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r0 = r0.append(r1);	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r1 = r0.toString();	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r2 = r1.getBytes();	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r0 = new java.net.URL;	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r3 = com.payu.magicretry.analytics.MRAnalytics.this;	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r3 = r3.ANALYTICS_URL;	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r0.<init>(r3);	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r0 = r0.openConnection();	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r0 = (java.net.HttpURLConnection) r0;	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r3 = "POST";
                r0.setRequestMethod(r3);	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r3 = "Content-Type";
                r4 = "application/x-www-form-urlencoded";
                r0.setRequestProperty(r3, r4);	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r3 = "Content-Length";
                r1 = r1.length();	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r1 = java.lang.String.valueOf(r1);	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r0.setRequestProperty(r3, r1);	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r1 = 1;
                r0.setDoOutput(r1);	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r1 = r0.getOutputStream();	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r1.write(r2);	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r1 = r0.getResponseCode();	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r0 = r0.getInputStream();	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r2 = new java.lang.StringBuffer;	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r2.<init>();	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r3 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
                r3 = new byte[r3];	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
            L_0x0241:
                r4 = r0.read(r3);	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                if (r4 == r8) goto L_0x0257;
            L_0x0247:
                r5 = new java.lang.String;	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r6 = 0;
                r5.<init>(r3, r6, r4);	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                r2.append(r5);	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                goto L_0x0241;
            L_0x0251:
                r0 = move-exception;
                r0.printStackTrace();
                goto L_0x012a;
            L_0x0257:
                if (r1 != r9) goto L_0x012a;
            L_0x0259:
                r0 = new org.json.JSONObject;	 Catch:{ Exception -> 0x0293, MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab }
                r1 = r2.toString();	 Catch:{ Exception -> 0x0293, MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab }
                r0.<init>(r1);	 Catch:{ Exception -> 0x0293, MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab }
                r1 = "status";
                r1 = r0.has(r1);	 Catch:{ Exception -> 0x0293, MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab }
                if (r1 == 0) goto L_0x012a;
            L_0x026a:
                r1 = "status";
                r0 = r0.getString(r1);	 Catch:{ Exception -> 0x0293, MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab }
                r1 = "1";
                r0 = r0.equals(r1);	 Catch:{ Exception -> 0x0293, MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab }
                if (r0 == 0) goto L_0x012a;
            L_0x0278:
                r0 = com.payu.magicretry.analytics.MRAnalytics.this;	 Catch:{ Exception -> 0x0293, MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab }
                r0 = r0.mContext;	 Catch:{ Exception -> 0x0293, MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab }
                r1 = com.payu.magicretry.analytics.MRAnalytics.this;	 Catch:{ Exception -> 0x0293, MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab }
                r1 = r1.fileName;	 Catch:{ Exception -> 0x0293, MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab }
                r0.deleteFile(r1);	 Catch:{ Exception -> 0x0293, MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab }
                r0 = com.payu.magicretry.analytics.MRAnalytics.this;	 Catch:{ Exception -> 0x0293, MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab }
                r1 = new java.util.ArrayList;	 Catch:{ Exception -> 0x0293, MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab }
                r1.<init>();	 Catch:{ Exception -> 0x0293, MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab }
                r0.mBuffer = r1;	 Catch:{ Exception -> 0x0293, MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab }
                goto L_0x012a;
            L_0x0293:
                r0 = move-exception;
                r0.printStackTrace();	 Catch:{ MalformedURLException -> 0x0251, ProtocolException -> 0x0299, UnsupportedEncodingException -> 0x029f, IOException -> 0x02a5, JSONException -> 0x02ab, Exception -> 0x02b1 }
                goto L_0x012a;
            L_0x0299:
                r0 = move-exception;
                r0.printStackTrace();
                goto L_0x012a;
            L_0x029f:
                r0 = move-exception;
                r0.printStackTrace();
                goto L_0x012a;
            L_0x02a5:
                r0 = move-exception;
                r0.printStackTrace();
                goto L_0x012a;
            L_0x02ab:
                r0 = move-exception;
                r0.printStackTrace();
                goto L_0x012a;
            L_0x02b1:
                r0 = move-exception;
                r0.printStackTrace();
                goto L_0x012a;
            L_0x02b7:
                r1 = move-exception;
            L_0x02b8:
                r3 = new org.json.JSONArray;	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r3.<init>(r0);	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r0 = new org.json.JSONArray;	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r0.<init>();	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r0 = com.payu.magicretry.analytics.MRAnalytics.this;	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r0 = r0.mBuffer;	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r0 = r0.size();	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                if (r0 <= 0) goto L_0x02f2;
            L_0x02ce:
                r0 = com.payu.magicretry.analytics.MRAnalytics.this;	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r0 = r0.mBuffer;	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r0 = r0.size();	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                if (r2 >= r0) goto L_0x02f2;
            L_0x02da:
                r4 = new org.json.JSONObject;	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r0 = com.payu.magicretry.analytics.MRAnalytics.this;	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r0 = r0.mBuffer;	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r0 = r0.get(r2);	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r0 = (java.lang.String) r0;	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r4.<init>(r0);	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r3.put(r4);	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r0 = r2 + 1;
                r2 = r0;
                goto L_0x02ce;
            L_0x02f2:
                r0 = r3.length();	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                if (r0 <= 0) goto L_0x036d;
            L_0x02f8:
                r0 = new java.lang.StringBuilder;	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r0.<init>();	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r2 = "command=EventAnalytics&data=";
                r0 = r0.append(r2);	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r2 = r3.toString();	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r0 = r0.append(r2);	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r2 = r0.toString();	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r3 = r2.getBytes();	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r0 = new java.net.URL;	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r4 = com.payu.magicretry.analytics.MRAnalytics.this;	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r4 = r4.ANALYTICS_URL;	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r0.<init>(r4);	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r0 = r0.openConnection();	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r0 = (java.net.HttpURLConnection) r0;	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r4 = "POST";
                r0.setRequestMethod(r4);	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r4 = "Content-Type";
                r5 = "application/x-www-form-urlencoded";
                r0.setRequestProperty(r4, r5);	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r4 = "Content-Length";
                r2 = r2.length();	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r2 = java.lang.String.valueOf(r2);	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r0.setRequestProperty(r4, r2);	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r2 = 1;
                r0.setDoOutput(r2);	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r2 = r0.getOutputStream();	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r2.write(r3);	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r2 = r0.getResponseCode();	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r0 = r0.getInputStream();	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r3 = new java.lang.StringBuffer;	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r3.<init>();	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r4 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
                r4 = new byte[r4];	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
            L_0x0359:
                r5 = r0.read(r4);	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                if (r5 == r8) goto L_0x036e;
            L_0x035f:
                r6 = new java.lang.String;	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r7 = 0;
                r6.<init>(r4, r7, r5);	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                r3.append(r6);	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                goto L_0x0359;
            L_0x0369:
                r0 = move-exception;
                r0.printStackTrace();
            L_0x036d:
                throw r1;
            L_0x036e:
                if (r2 != r9) goto L_0x036d;
            L_0x0370:
                r0 = new org.json.JSONObject;	 Catch:{ Exception -> 0x03a9, MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd }
                r2 = r3.toString();	 Catch:{ Exception -> 0x03a9, MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd }
                r0.<init>(r2);	 Catch:{ Exception -> 0x03a9, MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd }
                r2 = "status";
                r2 = r0.has(r2);	 Catch:{ Exception -> 0x03a9, MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd }
                if (r2 == 0) goto L_0x036d;
            L_0x0381:
                r2 = "status";
                r0 = r0.getString(r2);	 Catch:{ Exception -> 0x03a9, MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd }
                r2 = "1";
                r0 = r0.equals(r2);	 Catch:{ Exception -> 0x03a9, MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd }
                if (r0 == 0) goto L_0x036d;
            L_0x038f:
                r0 = com.payu.magicretry.analytics.MRAnalytics.this;	 Catch:{ Exception -> 0x03a9, MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd }
                r0 = r0.mContext;	 Catch:{ Exception -> 0x03a9, MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd }
                r2 = com.payu.magicretry.analytics.MRAnalytics.this;	 Catch:{ Exception -> 0x03a9, MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd }
                r2 = r2.fileName;	 Catch:{ Exception -> 0x03a9, MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd }
                r0.deleteFile(r2);	 Catch:{ Exception -> 0x03a9, MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd }
                r0 = com.payu.magicretry.analytics.MRAnalytics.this;	 Catch:{ Exception -> 0x03a9, MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd }
                r2 = new java.util.ArrayList;	 Catch:{ Exception -> 0x03a9, MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd }
                r2.<init>();	 Catch:{ Exception -> 0x03a9, MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd }
                r0.mBuffer = r2;	 Catch:{ Exception -> 0x03a9, MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd }
                goto L_0x036d;
            L_0x03a9:
                r0 = move-exception;
                r0.printStackTrace();	 Catch:{ MalformedURLException -> 0x0369, ProtocolException -> 0x03ae, UnsupportedEncodingException -> 0x03b3, IOException -> 0x03b8, JSONException -> 0x03bd, Exception -> 0x03c2 }
                goto L_0x036d;
            L_0x03ae:
                r0 = move-exception;
                r0.printStackTrace();
                goto L_0x036d;
            L_0x03b3:
                r0 = move-exception;
                r0.printStackTrace();
                goto L_0x036d;
            L_0x03b8:
                r0 = move-exception;
                r0.printStackTrace();
                goto L_0x036d;
            L_0x03bd:
                r0 = move-exception;
                r0.printStackTrace();
                goto L_0x036d;
            L_0x03c2:
                r0 = move-exception;
                r0.printStackTrace();
                goto L_0x036d;
            L_0x03c7:
                r0 = move-exception;
                r10 = r0;
                r0 = r1;
                r1 = r10;
                goto L_0x02b8;
                */
                throw new UnsupportedOperationException("Method not decompiled: com.payu.magicretry.analytics.MRAnalytics.3.run():void");
            }
        }, TIMER_DELAY);
    }

    private void setLock() {
        synchronized (this) {
            this.mIsLocked = true;
        }
    }

    public void log(String str) {
        resetTimer();
        if (this.mIsLocked) {
            try {
                this.mBuffer.add(str);
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        new AnonymousClass2(str).execute(new Void[]{null, null, null});
    }
}
