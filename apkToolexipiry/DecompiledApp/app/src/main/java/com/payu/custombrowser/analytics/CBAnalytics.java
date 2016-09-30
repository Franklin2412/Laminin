package com.payu.custombrowser.analytics;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import com.payu.custombrowser.util.CBUtil;
import com.payu.india.Payu.PayuConstants;
import com.squareup.leakcanary.watcher.BuildConfig;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.Thread.UncaughtExceptionHandler;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class CBAnalytics {
    private static CBAnalytics INSTANCE = null;
    private static final String PRODUCTION_URL = "http://10.50.23.170:6543/MobileAnalytics";
    private static final String TEST_URL = "http://10.50.23.170:6543/MobileAnalytics";
    private static final long TIMER_DELAY = 5000;
    private final String ANALYTICS_URL;
    private CBUtil cbUtil;
    private String fileName;
    private ArrayList<String> mBuffer;
    private boolean mIsLocked;
    private Timer mTimer;
    private final Context mcontext;

    /* renamed from: com.payu.custombrowser.analytics.CBAnalytics.1 */
    class AnonymousClass1 implements UncaughtExceptionHandler {
        final /* synthetic */ UncaughtExceptionHandler val$defaultUEH;

        AnonymousClass1(UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.val$defaultUEH = uncaughtExceptionHandler;
        }

        public void uncaughtException(Thread thread, Throwable th) {
            do {
            } while (CBAnalytics.this.mIsLocked);
            CBAnalytics.this.setLock();
            try {
                FileOutputStream openFileOutput = CBAnalytics.this.mcontext.openFileOutput(CBAnalytics.this.fileName, 0);
                int size = CBAnalytics.this.mBuffer.size();
                if (size > 0) {
                    JSONArray jSONArray = new JSONArray();
                    for (int i = 0; i < size; i++) {
                        jSONArray.put(jSONArray.length(), new JSONObject((String) CBAnalytics.this.mBuffer.get(i)));
                    }
                    openFileOutput.write(jSONArray.toString().getBytes());
                    CBAnalytics.this.mBuffer = new ArrayList();
                }
                openFileOutput.close();
            } catch (IOException e) {
                e.printStackTrace();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            CBAnalytics.this.releaseLock();
            this.val$defaultUEH.uncaughtException(thread, th);
        }
    }

    /* renamed from: com.payu.custombrowser.analytics.CBAnalytics.2 */
    class AnonymousClass2 extends AsyncTask<Void, Void, Void> {
        final /* synthetic */ String val$msg;

        AnonymousClass2(String str) {
            this.val$msg = str;
        }

        protected Void doInBackground(Void... voidArr) {
            CBAnalytics.this.setLock();
            try {
                JSONObject jSONObject = new JSONObject(this.val$msg);
                String readFileInputStream = CBAnalytics.this.cbUtil.readFileInputStream(CBAnalytics.this.mcontext, CBAnalytics.this.fileName, 0);
                JSONArray jSONArray = readFileInputStream.equalsIgnoreCase(BuildConfig.VERSION_NAME) ? new JSONArray() : new JSONArray(readFileInputStream);
                FileOutputStream openFileOutput = CBAnalytics.this.mcontext.openFileOutput(CBAnalytics.this.fileName, 0);
                jSONArray.put(jSONArray.length(), jSONObject);
                openFileOutput.write(jSONArray.toString().getBytes());
                openFileOutput.close();
            } catch (IOException e) {
                e.printStackTrace();
                CBAnalytics.this.mBuffer.add(this.val$msg);
            } catch (JSONException e2) {
                e2.printStackTrace();
                CBAnalytics.this.mBuffer.add(this.val$msg);
            } catch (Exception e3) {
                e3.printStackTrace();
                CBAnalytics.this.mBuffer.add(this.val$msg);
            }
            CBAnalytics.this.releaseLock();
            return null;
        }
    }

    private CBAnalytics(Context context, String str) {
        this.ANALYTICS_URL = TEST_URL;
        this.mIsLocked = false;
        this.mcontext = context;
        this.fileName = str;
        this.mBuffer = new ArrayList();
        this.cbUtil = new CBUtil();
        Thread.setDefaultUncaughtExceptionHandler(new AnonymousClass1(Thread.getDefaultUncaughtExceptionHandler()));
    }

    public static CBAnalytics getInstance(Context context, String str) {
        if (INSTANCE == null) {
            synchronized (CBAnalytics.class) {
                try {
                    if (INSTANCE == null) {
                        INSTANCE = new CBAnalytics(context, str);
                    }
                } catch (Throwable th) {
                    while (true) {
                        break;
                    }
                    Class cls = CBAnalytics.class;
                }
            }
        }
        return INSTANCE;
    }

    private boolean isOnline() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.mcontext.getSystemService("connectivity")).getActiveNetworkInfo();
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
            public void run() {
                HttpURLConnection httpsConn;
                StringBuffer stringBufferFromInputStream;
                int i = 0;
                do {
                } while (CBAnalytics.this.mIsLocked);
                CBAnalytics.this.setLock();
                if (CBAnalytics.this.isOnline()) {
                    try {
                        String readFileInputStream = CBAnalytics.this.cbUtil.readFileInputStream(CBAnalytics.this.mcontext, CBAnalytics.this.fileName, 0);
                        try {
                            if (!readFileInputStream.equalsIgnoreCase(BuildConfig.VERSION_NAME)) {
                                JSONArray jSONArray = new JSONArray(readFileInputStream);
                                if (CBAnalytics.this.mBuffer.size() > 0) {
                                    while (i < CBAnalytics.this.mBuffer.size()) {
                                        jSONArray.put(new JSONObject((String) CBAnalytics.this.mBuffer.get(i)));
                                        i++;
                                    }
                                }
                                if (jSONArray.length() > 0) {
                                    httpsConn = CBAnalytics.this.cbUtil.getHttpsConn(CBAnalytics.TEST_URL, "command=EventAnalytics&data=" + jSONArray.toString());
                                    if (!(httpsConn == null || httpsConn.getResponseCode() != 200 || httpsConn.getInputStream() == null)) {
                                        stringBufferFromInputStream = CBUtil.getStringBufferFromInputStream(httpsConn.getInputStream());
                                        if (stringBufferFromInputStream != null && new JSONObject(stringBufferFromInputStream.toString()).has(PayuConstants.STATUS)) {
                                            CBAnalytics.this.mcontext.deleteFile(CBAnalytics.this.fileName);
                                            CBAnalytics.this.mBuffer = new ArrayList();
                                        }
                                    }
                                }
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    } catch (Throwable th) {
                        Throwable th2 = th;
                        try {
                            if (!BuildConfig.VERSION_NAME.equalsIgnoreCase(BuildConfig.VERSION_NAME)) {
                                JSONArray jSONArray2 = new JSONArray(BuildConfig.VERSION_NAME);
                                if (CBAnalytics.this.mBuffer.size() > 0) {
                                    while (i < CBAnalytics.this.mBuffer.size()) {
                                        jSONArray2.put(new JSONObject((String) CBAnalytics.this.mBuffer.get(i)));
                                        i++;
                                    }
                                }
                                if (jSONArray2.length() > 0) {
                                    httpsConn = CBAnalytics.this.cbUtil.getHttpsConn(CBAnalytics.TEST_URL, "command=EventAnalytics&data=" + jSONArray2.toString());
                                    if (!(httpsConn == null || httpsConn.getResponseCode() != 200 || httpsConn.getInputStream() == null)) {
                                        stringBufferFromInputStream = CBUtil.getStringBufferFromInputStream(httpsConn.getInputStream());
                                        if (stringBufferFromInputStream != null && new JSONObject(stringBufferFromInputStream.toString()).has(PayuConstants.STATUS)) {
                                            CBAnalytics.this.mcontext.deleteFile(CBAnalytics.this.fileName);
                                            CBAnalytics.this.mBuffer = new ArrayList();
                                        }
                                    }
                                }
                            }
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                }
                if (CBAnalytics.this.mBuffer.size() > 0) {
                    CBAnalytics.this.resetTimer();
                }
                CBAnalytics.this.releaseLock();
            }
        }, TIMER_DELAY);
    }

    private void setLock() {
        synchronized (this) {
            this.mIsLocked = true;
        }
    }

    public Timer getmTimer() {
        return this.mTimer;
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
