package com.payu.custombrowser.services;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Binder;
import android.os.Build.VERSION;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.Nullable;
import android.support.v4.app.NotificationCompat.BigTextStyle;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.app.NotificationCompat.Builder;
import com.payu.custombrowser.Bank;
import com.payu.custombrowser.CBActivity;
import com.payu.custombrowser.CustomBrowserMain;
import com.payu.custombrowser.bean.CustomBrowserConfig;
import com.payu.custombrowser.util.CBAnalyticsConstant;
import com.payu.custombrowser.util.CBConstant;
import com.payu.custombrowser.util.CBUtil;
import com.payu.india.Payu.PayuConstants;
import com.payu.magicretry.Helpers.MRConstant;
import com.squareup.leakcanary.watcher.BuildConfig;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.Random;
import javax.net.ssl.SSLException;
import org.json.JSONObject;

public class SnoozeService extends Service {
    private static int IMAGE_DOWNLOAD_TIME_OUT;
    private final String CURRENT_URL;
    private int EXPONENTIAL_BACKOFF_TIME_THRESHOLD;
    String MERCHANT_CHECKOUT_ACTIVITY;
    private final String SNOOZE_BROAD_CAST_MESSAGE;
    private final String SNOOZE_GET_WEBVIEW_STATUS_INTENT_ACTION;
    private final int SNOOZE_SERVICE_TTL;
    private final int TRACK_WEB_VIEW_TIME_INTERVAL;
    private String broadCastingMessage;
    private CBUtil cbUtil;
    private String currentUrl;
    private CustomBrowserConfig customBrowserConfig;
    private long endTime;
    private int exponentialBackOffTime;
    private Handler handler;
    private long imageDownloadTime;
    private boolean isImageDownloadTimedOut;
    private boolean isNotificationIntentPrepared;
    private boolean isServiceAlive;
    private boolean isWebViewAlive;
    private boolean isWebViewIntentPrepared;
    private CountDownTimer killSnoozeServiceCounter;
    private ServiceHandler mServiceHandler;
    private Looper mServiceLooper;
    private String merchantCheckoutActivity;
    private String payuResponse;
    private String postData;
    private HashMap<String, String> postParamsMap;
    private String postURL;
    private String receivedMessage;
    private Runnable runnable;
    private final IBinder snoozeBinder;
    private HandlerThread snoozeHandlerThread;
    private long startTime;
    private long timeToNotify;
    private Handler trackWebViewStatusHandler;
    private String verifyParam;
    private final Thread verifyPayment;
    private boolean verifyPaymentCheck;
    private String verifyURL;

    /* renamed from: com.payu.custombrowser.services.SnoozeService.3 */
    class AnonymousClass3 extends CountDownTimer {
        AnonymousClass3(long j, long j2) {
            super(j, j2);
        }

        public void onFinish() {
            cancel();
            SnoozeService.this.isImageDownloadTimedOut = true;
        }

        public void onTick(long j) {
        }
    }

    /* renamed from: com.payu.custombrowser.services.SnoozeService.4 */
    class AnonymousClass4 implements Runnable {
        final /* synthetic */ CountDownTimer val$imageDownloadTimer;
        final /* synthetic */ String val$imageURL;

        AnonymousClass4(String str, CountDownTimer countDownTimer) {
            this.val$imageURL = str;
            this.val$imageDownloadTimer = countDownTimer;
        }

        public void run() {
            try {
//                SnoozeService.this.cbUtil;
                if (CBUtil.isNetworkAvailable(SnoozeService.this.getApplicationContext())) {
                    SnoozeService.this.startTime = System.currentTimeMillis();
                    URLConnection openConnection = new URL(this.val$imageURL).openConnection();
                    openConnection.setUseCaches(false);
                    openConnection.connect();
                    openConnection.getContentLength();
                    InputStream inputStream = openConnection.getInputStream();
                    byte[] bArr = new byte[AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT];
                    while (!SnoozeService.this.isImageDownloadTimedOut) {
                        if (inputStream.read(bArr) == -1) {
                            break;
                        }
                    }
                    if (SnoozeService.this.isImageDownloadTimedOut) {
                        this.val$imageDownloadTimer.cancel();
                        inputStream.close();
                        SnoozeService.this.imageDownloadTime = (long) (SnoozeService.IMAGE_DOWNLOAD_TIME_OUT + 1);
                    } else {
                        this.val$imageDownloadTimer.cancel();
                        SnoozeService.this.endTime = System.currentTimeMillis();
                        inputStream.close();
                        SnoozeService.this.imageDownloadTime = SnoozeService.this.endTime - SnoozeService.this.startTime;
                    }
                    if (SnoozeService.this.imageDownloadTime > ((long) SnoozeService.IMAGE_DOWNLOAD_TIME_OUT)) {
                        SnoozeService.this.exponentialBackOffTime = SnoozeService.this.exponentialBackOffTime + SnoozeService.this.exponentialBackOffTime;
                        SnoozeService.this.handler.postDelayed(SnoozeService.this.runnable, (long) Math.min(SnoozeService.this.exponentialBackOffTime, SnoozeService.this.EXPONENTIAL_BACKOFF_TIME_THRESHOLD));
                        return;
                    } else if (SnoozeService.this.isServiceAlive) {
                        SnoozeService.this.broadcastAnalyticsEvent(CBAnalyticsConstant.SNOOZE_NOTIFICATION_TYPE, CBAnalyticsConstant.INTERNET_RESTORED);
                        if (SnoozeService.this.verifyPaymentCheck) {
                            SnoozeService.this.broadcastAnalyticsEvent(CBAnalyticsConstant.SNOOZE_VERIFY_API_STATUS, CBAnalyticsConstant.SNOOZE_VERIFY_API_CALLED);
                            SnoozeService.this.verifyPayment.start();
                            return;
                        }
                        SnoozeService.this.launchNotification(SnoozeService.this.isWebViewAlive);
                        return;
                    } else {
                        return;
                    }
                }
                SnoozeService.this.handler.postDelayed(SnoozeService.this.runnable, (long) Math.min(SnoozeService.this.exponentialBackOffTime, SnoozeService.this.EXPONENTIAL_BACKOFF_TIME_THRESHOLD));
            } catch (MalformedURLException e) {
                SnoozeService.this.imageDownloadTime = -1;
                this.val$imageDownloadTimer.cancel();
                e.printStackTrace();
            } catch (SSLException e2) {
                SnoozeService.this.handler.postDelayed(SnoozeService.this.runnable, (long) Math.min(SnoozeService.this.exponentialBackOffTime, SnoozeService.this.EXPONENTIAL_BACKOFF_TIME_THRESHOLD));
                e2.printStackTrace();
            } catch (IOException e3) {
                SnoozeService.this.imageDownloadTime = -1;
                this.val$imageDownloadTimer.cancel();
                e3.printStackTrace();
            } catch (Exception e4) {
                SnoozeService.this.imageDownloadTime = -1;
                this.val$imageDownloadTimer.cancel();
            }
        }
    }

    private final class ServiceHandler extends Handler {

        /* renamed from: com.payu.custombrowser.services.SnoozeService.ServiceHandler.1 */
        class AnonymousClass1 extends CountDownTimer {
            AnonymousClass1(long j, long j2) {
                super(j, j2);
            }

            public void onFinish() {
                if (SnoozeService.this.isWebViewAlive && !SnoozeService.this.isNotificationIntentPrepared) {
                    Intent intent = new Intent("webview_status_action");
                    intent.putExtra(CBConstant.SNOOZE_SERVICE_STATUS, CBConstant.SNOOZE_SERVICE_DEAD);
                    LocalBroadcastManager.getInstance(SnoozeService.this).sendBroadcast(intent);
                }
                if (!SnoozeService.this.isNotificationIntentPrepared) {
                    SnoozeService.this.launchNoInternetNotification();
                }
                SnoozeService.this.killSnoozeService();
            }

            public void onTick(long j) {
                SnoozeService.this.timeToNotify = (1800000 - j) / 1000;
            }
        }

        public ServiceHandler(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            SnoozeService.this.isServiceAlive = true;
            SnoozeService.this.killSnoozeServiceCounter = new AnonymousClass1(1800000, 5000);
            SnoozeService.this.killSnoozeServiceCounter.start();
            SnoozeService.this.trackWebViewStatusHandler = new Handler();
            SnoozeService.this.trackWebViewStatusHandler.postDelayed(new Runnable() {
                public void run() {
                    if (SnoozeService.this.isServiceAlive) {
                        if (SnoozeService.this.broadCastingMessage.contentEquals(SnoozeService.this.receivedMessage)) {
                            SnoozeService.this.isWebViewAlive = true;
                        } else {
                            SnoozeService.this.isWebViewAlive = false;
                            if (SnoozeService.this.isServiceAlive && SnoozeService.this.verifyPaymentCheck && SnoozeService.this.isNotificationIntentPrepared && SnoozeService.this.isWebViewIntentPrepared) {
                                SnoozeService.this.launchNotificationTransactionUpdate(SnoozeService.this.payuResponse);
                            } else if (SnoozeService.this.isServiceAlive && SnoozeService.this.isNotificationIntentPrepared && SnoozeService.this.isWebViewIntentPrepared) {
                                SnoozeService.this.launchNotification(SnoozeService.this.isWebViewAlive);
                            }
                        }
                        SnoozeService.this.trackWebViewStatusHandler.postDelayed(this, 500);
                        Intent intent = new Intent("webview_status_action");
                        SnoozeService.this.broadCastingMessage = BuildConfig.VERSION_NAME + System.currentTimeMillis();
                        intent.putExtra("snooze_broad_cast_message", SnoozeService.this.broadCastingMessage);
                        LocalBroadcastManager.getInstance(SnoozeService.this).sendBroadcast(intent);
                    }
                }
            }, 500);
            SnoozeService.this.calculateInternetSpeed();
        }
    }

    public class SnoozeBinder extends Binder {
        public SnoozeService getSnoozeService() {
            return SnoozeService.this;
        }
    }

    public SnoozeService() {
        this.SNOOZE_SERVICE_TTL = 1800000;
        this.TRACK_WEB_VIEW_TIME_INTERVAL = 500;
        this.SNOOZE_GET_WEBVIEW_STATUS_INTENT_ACTION = "webview_status_action";
        this.SNOOZE_BROAD_CAST_MESSAGE = "snooze_broad_cast_message";
        this.CURRENT_URL = CBConstant.CURRENT_URL;
        this.snoozeBinder = new SnoozeBinder();
        this.MERCHANT_CHECKOUT_ACTIVITY = CBConstant.MERCHANT_CHECKOUT_ACTIVITY;
        this.exponentialBackOffTime = 1000;
        this.EXPONENTIAL_BACKOFF_TIME_THRESHOLD = 60000;
        this.broadCastingMessage = BuildConfig.VERSION_NAME;
        this.receivedMessage = BuildConfig.VERSION_NAME;
        this.postData = BuildConfig.VERSION_NAME;
        this.postURL = BuildConfig.VERSION_NAME;
        this.currentUrl = BuildConfig.VERSION_NAME;
        this.isServiceAlive = true;
        this.verifyURL = PayuConstants.MOBILE_TEST_FETCH_DATA_URL;
        this.verifyPayment = new Thread(new Runnable() {
            public void run() {
                try {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(SnoozeService.this.verifyURL).openConnection();
                    String str = "command=verifyTxnStatus&var1=" + SnoozeService.this.cbUtil.getDataFromPostData(SnoozeService.this.postData, MRConstant.TRANSACTION_ID) + "&key=" + SnoozeService.this.cbUtil.getDataFromPostData(SnoozeService.this.postData, MRConstant.KEY) + "&protityparam=" + SnoozeService.this.verifyParam;
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.setRequestProperty("Content-Type", CBConstant.HTTP_URLENCODED);
                    httpURLConnection.setRequestProperty("Content-Length", String.valueOf(str.length()));
                    httpURLConnection.setRequestProperty("Cookie", "PHPSESSID=" + SnoozeService.this.cbUtil.getCookie(CBConstant.PHPSESSID, SnoozeService.this.getApplicationContext()) + "; PAYUID=" + SnoozeService.this.cbUtil.getCookie(MRConstant.PAYUIDCOOKIE, SnoozeService.this.getApplicationContext()));
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.getOutputStream().write(str.getBytes());
                    byte[] bArr = new byte[AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT];
                    if (httpURLConnection.getResponseCode() == 200 && httpURLConnection.getInputStream() != null) {
                        StringBuffer stringBufferFromInputStream = CBUtil.getStringBufferFromInputStream(httpURLConnection.getInputStream());
                        if (stringBufferFromInputStream != null) {
                            JSONObject jSONObject = new JSONObject(stringBufferFromInputStream.toString());
                            SnoozeService.this.payuResponse = stringBufferFromInputStream.toString();
                            SnoozeService.this.launchNotificationTransactionUpdate(stringBufferFromInputStream.toString());
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    private void broadcastAnalyticsEvent(String str, String str2) {
        Intent intent = new Intent("webview_status_action");
        intent.putExtra(CBAnalyticsConstant.BROAD_CAST_FROM_SNOOZE_SERVICE, true);
        intent.putExtra(CBAnalyticsConstant.KEY, str);
        intent.putExtra(CBAnalyticsConstant.VALUE, str2);
        LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
    }

    private void calculateInternetSpeed() {
        this.handler = new Handler(this.mServiceLooper);
        this.runnable = new Runnable() {
            public void run() {
                if (SnoozeService.this.isServiceAlive) {
                    SnoozeService.this.downloadImage();
                }
            }
        };
        this.handler.postDelayed(this.runnable, (long) Math.min(this.exponentialBackOffTime, this.EXPONENTIAL_BACKOFF_TIME_THRESHOLD));
    }

    private void downloadImage() {
        this.isImageDownloadTimedOut = false;
        String str = CBConstant.SNOOZE_IMAGE_DOWNLOAD_END_POINT + CBConstant.SNOOZE_IMAGE_COLLECTIONS[new Random().nextInt(2)];
        CountDownTimer anonymousClass3 = new AnonymousClass3((long) IMAGE_DOWNLOAD_TIME_OUT, 1000);
        anonymousClass3.start();
        new Thread(new AnonymousClass4(str, anonymousClass3)).start();
    }

    private void launchNoInternetNotification() {
        broadcastAnalyticsEvent(CBAnalyticsConstant.SNOOZE_NOTIFICATION_TIME, CustomBrowserMain.getSystemCurrentTime());
        broadcastAnalyticsEvent(CBAnalyticsConstant.SNOOZE_NOTIFICATION_TYPE, CBAnalyticsConstant.NO_INTERNET_FOUND);
        broadcastAnalyticsEvent(CBAnalyticsConstant.SNOOZE_NOTIFICATION_EXPECTED_ACTION, CBAnalyticsConstant.MERCHANT_CHECKOUT_PAGE);
        Builder builder = new Builder(this);
        builder.setContentTitle(this.customBrowserConfig.getsPNPoorNWTitle()).setContentText(this.customBrowserConfig.getsPNPoorNWHeader()).setSmallIcon(this.customBrowserConfig.getSurePayNotificationIcon()).setAutoCancel(true).setPriority(1).setDefaults(2).setStyle(new BigTextStyle().bigText(this.customBrowserConfig.getsPNPoorNWHeader() + this.customBrowserConfig.getsPNPoorNWBody()));
        if (VERSION.SDK_INT >= 23) {
            builder.setColor(getResources().getColor(R.color.cb_blue_button, null));
        } else {
            builder.setColor(getResources().getColor(R.color.cb_blue_button));
        }
        Intent intent = new Intent();
        intent.setClassName(getApplicationContext(), this.merchantCheckoutActivity == null ? BuildConfig.VERSION_NAME : this.merchantCheckoutActivity);
        if (intent.resolveActivityInfo(getPackageManager(), 0) != null) {
            Intent intent2 = new Intent();
            intent2.setClassName(getApplicationContext(), this.merchantCheckoutActivity);
            intent2.putExtra(CBConstant.POST_TYPE, "sure_pay_payment_data");
            intent2.putExtra(CBConstant.POST_DATA, this.customBrowserConfig.getPayuPostData());
            builder.setContentIntent(PendingIntent.getActivity(this, 0, intent2, 134217728));
            ((NotificationManager) getSystemService("notification")).notify(CBConstant.SNOOZE_NOTIFICATION_ID, builder.build());
        }
    }

    private void launchNotification(boolean z) {
        boolean z2 = true;
        Builder builder = new Builder(this);
        builder.setContentTitle(this.customBrowserConfig.getsPNGoodNWTitle()).setContentText(this.customBrowserConfig.getsPNGoodNWHeader()).setSmallIcon(this.customBrowserConfig.getSurePayNotificationIcon()).setAutoCancel(true).setPriority(1).setDefaults(2).setStyle(new BigTextStyle().bigText(this.customBrowserConfig.getsPNGoodNWHeader() + "\n\n" + this.customBrowserConfig.getsPNGoodNWBody()));
        if (VERSION.SDK_INT >= 23) {
            builder.setColor(getResources().getColor(R.color.cb_blue_button, null));
        } else {
            builder.setColor(getResources().getColor(R.color.cb_blue_button));
        }
        this.isNotificationIntentPrepared = true;
        Intent intent = new Intent();
        intent.putExtra(CBConstant.CURRENT_URL, this.currentUrl);
        intent.putExtra(CBConstant.SENDER, CBConstant.SNOOZE_SERVICE);
        if (z) {
            this.isWebViewIntentPrepared = true;
            intent.setFlags(536870912);
            intent.putExtra(CBConstant.CURRENT_URL, this.currentUrl);
            intent.putExtra(CBConstant.CB_CONFIG, this.customBrowserConfig);
            intent.setClass(getApplicationContext(), CBActivity.class);
        } else {
            boolean z3;
            Intent intent2 = new Intent();
            intent2.setClassName(getApplicationContext(), this.merchantCheckoutActivity == null ? BuildConfig.VERSION_NAME : this.merchantCheckoutActivity);
            if (intent2.resolveActivityInfo(getPackageManager(), 0) != null) {
                intent.setClassName(getApplicationContext(), this.merchantCheckoutActivity);
                intent.putExtra(CBConstant.POST_TYPE, "sure_pay_payment_data");
                intent.putExtra(CBConstant.POST_DATA, this.customBrowserConfig.getPayuPostData());
                z3 = true;
            } else {
                z3 = false;
            }
            broadcastAnalyticsEvent(CBAnalyticsConstant.SNOOZE_NOTIFICATION_EXPECTED_ACTION, CBAnalyticsConstant.MERCHANT_CHECKOUT_PAGE);
            this.isWebViewIntentPrepared = false;
            killSnoozeService();
            z2 = z3;
        }
        if (!z2) {
            try {
                throw new ActivityNotFoundException("The Activity " + this.merchantCheckoutActivity + " is not found, Please set valid activity ");
            } catch (ActivityNotFoundException e) {
                e.printStackTrace();
            }
        }
        builder.setContentIntent(PendingIntent.getActivity(this, 0, intent, 134217728));
        broadcastAnalyticsEvent(CBAnalyticsConstant.SNOOZE_NOTIFICATION_TIME, CustomBrowserMain.getSystemCurrentTime());
        ((NotificationManager) getSystemService("notification")).notify(CBConstant.SNOOZE_NOTIFICATION_ID, builder.build());
    }

    private void launchNotificationTransactionUpdate(String str) {
        try {
            JSONObject jSONObject = new JSONObject(this.payuResponse.toString());
            if (jSONObject.has(getString(R.string.cb_snooze_verify_api_status))) {
                broadcastAnalyticsEvent(CBAnalyticsConstant.SNOOZE_VERIFY_API_RESPONSE_RECEIVED, Integer.parseInt(jSONObject.get(getString(R.string.cb_snooze_verify_api_status)).toString()) + BuildConfig.VERSION_NAME);
            }
            if (jSONObject.has(getString(R.string.cb_snooze_verify_api_status))) {
                CharSequence charSequence;
                int parseInt = Integer.parseInt(jSONObject.get(getString(R.string.cb_snooze_verify_api_status)).toString());
                if (parseInt == 1) {
                    broadcastAnalyticsEvent(CBAnalyticsConstant.SNOOZE_NOTIFICATION_TIME, CustomBrowserMain.getSystemCurrentTime());
                    broadcastAnalyticsEvent(CBAnalyticsConstant.SNOOZE_NOTIFICATION_TYPE, CBAnalyticsConstant.TRANSACTION_VERIFIED);
                } else if (parseInt == 0) {
                    broadcastAnalyticsEvent(CBAnalyticsConstant.SNOOZE_NOTIFICATION_TIME, CustomBrowserMain.getSystemCurrentTime());
                    broadcastAnalyticsEvent(CBAnalyticsConstant.SNOOZE_NOTIFICATION_TYPE, CBAnalyticsConstant.TRANSACTION_STATUS_UNKNOWN);
                }
                Builder builder = new Builder(this);
                if (parseInt == 1) {
                    charSequence = this.customBrowserConfig.getsPNTxnVerifiedHeader() + "\n\n" + this.customBrowserConfig.getsPNTxnVerifiedBody();
                } else {
                    Object obj = this.customBrowserConfig.getsPNTxnNotVerifiedHeader() + "\n\n" + this.customBrowserConfig.getsPNTxnNotVerifiedBody();
                }
                builder.setContentTitle(parseInt == 1 ? this.customBrowserConfig.getsPNTxnVerifiedTitle() : this.customBrowserConfig.getsPNTxnNotVerifiedTitle()).setContentText(parseInt == 1 ? this.customBrowserConfig.getsPNTxnVerifiedHeader() : this.customBrowserConfig.getsPNTxnNotVerifiedHeader()).setSmallIcon(this.customBrowserConfig.getSurePayNotificationIcon()).setAutoCancel(true).setPriority(1).setDefaults(2).setStyle(new BigTextStyle().bigText(charSequence));
                Intent intent = new Intent();
                intent.putExtra(CBConstant.CB_CONFIG, this.customBrowserConfig);
                this.isNotificationIntentPrepared = true;
                intent.putExtra(PayuConstants.PAYU_RESPONSE, str);
                if (this.isWebViewAlive) {
                    intent.setFlags(805306368);
                    this.isWebViewIntentPrepared = true;
                    intent.putExtra(CBConstant.SENDER, CBConstant.SNOOZE_SERVICE);
                    intent.putExtra(CBConstant.VERIFICATION_MSG_RECEIVED, true);
                    intent.setClass(getApplicationContext(), CBActivity.class);
                } else {
                    broadcastAnalyticsEvent(CBAnalyticsConstant.SNOOZE_NOTIFICATION_EXPECTED_ACTION, CBAnalyticsConstant.MERCHANT_CHECKOUT_PAGE);
                    intent.putExtra(CBConstant.POST_DATA, str);
                    intent.setClassName(getApplicationContext(), this.merchantCheckoutActivity);
                    intent.putExtra(CBConstant.POST_TYPE, "verify_response_post_data");
                    this.isWebViewIntentPrepared = false;
                    killSnoozeService();
                }
                builder.setContentIntent(PendingIntent.getActivity(this, 0, intent, 134217728));
                ((NotificationManager) getSystemService("notification")).notify(CBConstant.TRANSACTION_STATUS_NOTIFICATION_ID, builder.build());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void killSnoozeService() {
        this.isServiceAlive = false;
        if (this.killSnoozeServiceCounter != null) {
            this.killSnoozeServiceCounter.cancel();
        }
        this.snoozeHandlerThread.interrupt();
        stopSelf();
    }

    @Nullable
    public IBinder onBind(Intent intent) {
        this.isWebViewAlive = true;
        return this.snoozeBinder;
    }

    public void onCreate() {
        this.snoozeHandlerThread = new HandlerThread("SnoozeServiceHandlerThread", 10);
        this.snoozeHandlerThread.start();
        this.mServiceLooper = this.snoozeHandlerThread.getLooper();
        this.mServiceHandler = new ServiceHandler(this.mServiceLooper);
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        this.cbUtil = new CBUtil();
        this.merchantCheckoutActivity = intent.getStringExtra(this.MERCHANT_CHECKOUT_ACTIVITY);
        this.customBrowserConfig = (CustomBrowserConfig) intent.getParcelableExtra(CBConstant.CB_CONFIG);
        this.postParamsMap = this.cbUtil.getDataFromPostData(this.customBrowserConfig.getPayuPostData());
        IMAGE_DOWNLOAD_TIME_OUT = Bank.snoozeImageDownloadTimeout > 0 ? Bank.snoozeImageDownloadTimeout : 10000;
        if (intent.getExtras().containsKey(CBConstant.VERIFICATION_MSG_RECEIVED) && intent.getExtras().getBoolean(CBConstant.VERIFICATION_MSG_RECEIVED)) {
            this.verifyPaymentCheck = true;
            if (intent.getExtras().containsKey(CBConstant.VERIFY_ADDON_PARAMS)) {
                this.verifyParam = intent.getExtras().getString(CBConstant.VERIFY_ADDON_PARAMS);
            }
            this.postData = this.customBrowserConfig.getPayuPostData();
            this.postURL = this.customBrowserConfig.getPostURL();
        } else {
            this.verifyPaymentCheck = false;
            this.currentUrl = intent.getStringExtra(CBConstant.CURRENT_URL);
        }
        Message obtainMessage = this.mServiceHandler.obtainMessage();
        obtainMessage.arg1 = i2;
        this.mServiceHandler.sendMessage(obtainMessage);
        return 3;
    }

    public void updateWebviewStatus(String str) {
        this.receivedMessage = str;
    }
}
