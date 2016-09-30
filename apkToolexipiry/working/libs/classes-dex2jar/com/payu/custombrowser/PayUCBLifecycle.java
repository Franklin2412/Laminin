package com.payu.custombrowser;

import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.IBinder;
import android.support.annotation.NonNull;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v7.app.AlertDialog.Builder;
import android.telephony.SmsMessage;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.WebSettings.RenderPriority;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.payu.custombrowser.CustomBrowserMain.CBMainViewOnTouchListener;
import com.payu.custombrowser.bean.CustomBrowserConfig;
import com.payu.custombrowser.bean.CustomBrowserData;
import com.payu.custombrowser.cbinterface.MagicRetryCallbacks;
import com.payu.custombrowser.custombar.CustomProgressBar;
import com.payu.custombrowser.services.SnoozeService;
import com.payu.custombrowser.services.SnoozeService.SnoozeBinder;
import com.payu.custombrowser.util.CBAnalyticsConstant;
import com.payu.custombrowser.util.CBConstant;
import com.payu.custombrowser.util.CBUtil;
import com.payu.custombrowser.util.L;
import com.payu.custombrowser.util.SharedPreferenceUtil;
import com.payu.custombrowser.util.SnoozeConfigMap;
import com.payu.india.Payu.PayuConstants;
import com.payu.magicretry.Helpers.MRConstant;
import com.payu.testapp.R;
import com.squareup.haha.perflib.StackFrame;
import com.squareup.leakcanary.watcher.BuildConfig;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import org.json.JSONException;

public abstract class PayUCBLifecycle extends CustomBrowserMain implements MagicRetryCallbacks {
    private static boolean isFromSnoozeService;
    public static int snoozeImageDownloadTimeout;
    protected static List<String> whiteListedUrls;
    boolean SMSOTPClicked;
    private String SNOOZE_BROAD_CAST_MESSAGE;
    protected String SNOOZE_GET_WEBVIEW_STATUS_INTENT_ACTION;
    Boolean approve_flag;
    View cbBlankOverlay;
    boolean checkLoading;
    boolean checkPermissionVisibility;
    boolean checkedPermission;
    int chooseActionHeight;
    CustomProgressBar customProgressBar;
    String enterOtpParams;
    protected boolean isSnoozeBroadCastReceiverRegistered;
    protected boolean isSnoozeEnabled;
    protected boolean isSnoozeServiceBounded;
    boolean mPageReady;
    String mPassword;
    boolean permissionGranted;
    boolean pin_selected_flag;
    boolean showCB;
    protected CountDownTimer slowUserCountDownTimer;
    protected AlertDialog slowUserWarningDialog;
    protected BroadcastReceiver snoozeBroadCastReceiver;
    SnoozeConfigMap snoozeConfigMap;
    protected int snoozeCount;
    protected int snoozeCountBackwardJourney;
    int[] snoozeLoadPercentageAndTimeOut;
    protected SnoozeService snoozeService;
    protected ServiceConnection snoozeServiceConnection;
    protected int snoozeUrlLoadingPercentage;
    protected int snoozeUrlLoadingTimeout;
    protected int snoozeVisibleCountBackwdJourney;
    protected int snoozeVisibleCountFwdJourney;
    Timer waitingOTPTimer;

    /* renamed from: com.payu.custombrowser.PayUCBLifecycle.8 */
    class AnonymousClass8 implements OnClickListener {
        final /* synthetic */ TextView val$otpSMS;

        AnonymousClass8(TextView textView) {
            this.val$otpSMS = textView;
        }

        public void onClick(View view) {
            try {
                PayUCBLifecycle.this.mPassword = null;
                PayUCBLifecycle.this.eventRecorded = CBAnalyticsConstant.APPROVED_OTP;
                PayUCBLifecycle.this.addEventAnalytics(CBAnalyticsConstant.USER_INPUT, PayUCBLifecycle.this.eventRecorded);
                PayUCBLifecycle.this.addEventAnalytics(CBAnalyticsConstant.APPROVE_BTN_CLICK_TIME, CustomBrowserMain.getSystemCurrentTime());
                PayUCBLifecycle.this.prepareSmsListener();
                PayUCBLifecycle.this.checkLoading = false;
                PayUCBLifecycle.this.approve_flag = Boolean.valueOf(true);
                PayUCBLifecycle.this.onHelpUnavailable();
                PayUCBLifecycle.this.maximiseWebviewHeight();
                PayUCBLifecycle.this.frameState = 1;
                PayUCBLifecycle.this.cbWebView.loadUrl("javascript:" + PayUCBLifecycle.this.mJS.getString(PayUCBLifecycle.this.getString(R.string.cb_process_otp)) + "(\"" + this.val$otpSMS.getText().toString() + "\")");
                this.val$otpSMS.setText(BuildConfig.VERSION_NAME);
                PayUCBLifecycle.this.hideSoftKeyboard();
            } catch (JSONException e) {
                e.printStackTrace();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class PayUCBLifeCycleTouchListener extends CBMainViewOnTouchListener {
        public PayUCBLifeCycleTouchListener() {
            super();
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            L.v("sTag", "onTouch of PayUCBLifeCycleCalled");
            PayUCBLifecycle.this.dismissSlowUserWarningTimerOnTouch();
            return super.onTouch(view, motionEvent);
        }
    }

    static {
        whiteListedUrls = new ArrayList();
    }

    public PayUCBLifecycle() {
        this.SNOOZE_GET_WEBVIEW_STATUS_INTENT_ACTION = "webview_status_action";
        this.isSnoozeBroadCastReceiverRegistered = false;
        this.isSnoozeServiceBounded = false;
        this.snoozeCount = 0;
        this.snoozeCountBackwardJourney = 0;
        this.isSnoozeEnabled = true;
        this.snoozeServiceConnection = new ServiceConnection() {
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                SnoozeBinder snoozeBinder = (SnoozeBinder) iBinder;
                PayUCBLifecycle.this.snoozeService = snoozeBinder.getSnoozeService();
            }

            public void onServiceDisconnected(ComponentName componentName) {
                PayUCBLifecycle.this.snoozeService = null;
            }
        };
        this.showCB = true;
        this.approve_flag = Boolean.valueOf(false);
        this.permissionGranted = true;
        this.checkedPermission = false;
        this.mPageReady = false;
        this.SMSOTPClicked = false;
        this.SNOOZE_BROAD_CAST_MESSAGE = "snooze_broad_cast_message";
    }

    private boolean checkConfirmMessage(String str, String str2) {
        boolean z = false;
        String toLowerCase = str2.toLowerCase();
        int i = str.contains(this.bankName) ? 1 : 0;
        int i2 = toLowerCase.toLowerCase().contains(getValueFromPostData(PayuConstants.AMOUNT).replace(",", BuildConfig.VERSION_NAME)) ? i + 1 : i;
        boolean z2 = i2 == 2;
        if (i2 == 0) {
            z2 = false;
        }
        if (i2 != 0) {
            if (toLowerCase.contains("made") && toLowerCase.contains("purchase")) {
                return true;
            }
            if (toLowerCase.contains("account") && toLowerCase.contains("debited")) {
                return true;
            }
            if (toLowerCase.contains("ac") && toLowerCase.contains("debited")) {
                return true;
            }
            if (toLowerCase.contains("tranx") && toLowerCase.contains("made")) {
                return true;
            }
            if ((toLowerCase.contains("transaction") && toLowerCase.contains("made")) || toLowerCase.contains("spent") || toLowerCase.contains("Thank you using card for")) {
                return true;
            }
            if (toLowerCase.contains("charge") && toLowerCase.contains("initiated")) {
                return toLowerCase.contains("charge") && toLowerCase.contains("initiated");
            } else {
                z = z2;
            }
        }
        return z;
    }

    private void dismissSlowUserWarningTimerOnTouch() {
        if (this.forwardJourneyForChromeLoaderIsComplete) {
            this.firstTouch = true;
            dismissSlowUserWarningTimer();
        }
    }

    private void getInitializeJS() {
        prepareSmsListener();
        this.eventRecorded = CBAnalyticsConstant.PAYMENT_INITIATED;
        addEventAnalytics(CBAnalyticsConstant.USER_INPUT, this.eventRecorded);
        this.serialExecutor.execute(new Runnable() {

            /* renamed from: com.payu.custombrowser.PayUCBLifecycle.9.1 */
            class AnonymousClass1 implements Runnable {
                final /* synthetic */ String val$snoozeConfig;

                AnonymousClass1(String str) {
                    this.val$snoozeConfig = str;
                }

                public void run() {
                    PayUCBLifecycle.this.cbWebView.loadUrl("javascript:" + this.val$snoozeConfig);
                }
            }

            public void run() {
                /* JADX: method processing error */
/*
                Error: jadx.core.utils.exceptions.JadxRuntimeException: Can't find immediate dominator for block B:91:? in {5, 11, 14, 20, 21, 36, 43, 45, 46, 49, 56, 59, 64, 65, 66, 67, 68, 69, 71, 72, 74, 76, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 92} preds:[]
	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.computeDominators(BlockProcessor.java:129)
	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.processBlocksTree(BlockProcessor.java:48)
	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.rerun(BlockProcessor.java:44)
	at jadx.core.dex.visitors.blocksmaker.BlockFinallyExtract.visit(BlockFinallyExtract.java:57)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:281)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:161)
*/
                /*
                r6 = this;
                r0 = new java.lang.StringBuilder;
                r0.<init>();
                r1 = "https://mobiletest.payu.in/js/sdk_js/v3/";
                r0 = r0.append(r1);
                r1 = "initialize";
                r0 = r0.append(r1);
                r1 = ".js";
                r0 = r0.append(r1);
                r0 = r0.toString();
                r0 = com.payu.custombrowser.util.CBUtil.getHttpsConn(r0);
                if (r0 == 0) goto L_0x003b;
            L_0x0021:
                r1 = r0.getResponseCode();	 Catch:{ Exception -> 0x0108, all -> 0x01e0 }
                r2 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;	 Catch:{ Exception -> 0x0108, all -> 0x01e0 }
                if (r1 != r2) goto L_0x003b;	 Catch:{ Exception -> 0x0108, all -> 0x01e0 }
            L_0x0029:
                r1 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ Exception -> 0x0108, all -> 0x01e0 }
                r1 = r1.cbUtil;	 Catch:{ Exception -> 0x0108, all -> 0x01e0 }
                r0 = r0.getInputStream();	 Catch:{ Exception -> 0x0108, all -> 0x01e0 }
                r2 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ Exception -> 0x0108, all -> 0x01e0 }
                r2 = r2.activity;	 Catch:{ Exception -> 0x0108, all -> 0x01e0 }
                r3 = "initialize";	 Catch:{ Exception -> 0x0108, all -> 0x01e0 }
                r4 = 0;	 Catch:{ Exception -> 0x0108, all -> 0x01e0 }
                r1.writeFileOutputStream(r0, r2, r3, r4);	 Catch:{ Exception -> 0x0108, all -> 0x01e0 }
            L_0x003b:
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0 = r0.activity;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                if (r0 == 0) goto L_0x00f0;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
            L_0x0041:
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r1 = new org.json.JSONObject;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r2 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r2 = r2.activity;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r3 = "initialize";	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r2 = r2.openFileInput(r3);	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r2 = com.payu.custombrowser.util.CBUtil.decodeContents(r2);	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r1.<init>(r2);	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0.mBankJS = r1;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0.setUrlString();	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r1 = "";	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r2 = 1;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0.checkVisibilityCB(r1, r2);	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0 = r0.mBankJS;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r1 = "snooze_config";	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0 = r0.has(r1);	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                if (r0 == 0) goto L_0x02b3;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
            L_0x0071:
                r0 = new java.lang.StringBuilder;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0.<init>();	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r1 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r1 = r1.mBankJS;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r2 = "snooze_config";	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r1 = r1.get(r2);	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0 = r0.append(r1);	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r1 = "('";	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0 = r0.append(r1);	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r1 = com.payu.custombrowser.Bank.keyAnalytics;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0 = r0.append(r1);	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r1 = "')";	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0 = r0.append(r1);	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0 = r0.toString();	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r1 = r0;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
            L_0x009b:
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0 = r0.mBankJS;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r2 = "snooze_image_download_time";	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0 = r0.has(r2);	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                if (r0 == 0) goto L_0x00f1;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
            L_0x00a7:
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0 = r0.mBankJS;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r2 = "snooze_image_download_time";	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0 = r0.get(r2);	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0 = r0.toString();	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
            L_0x00b5:
                r0 = java.lang.Integer.parseInt(r0);	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                com.payu.custombrowser.PayUCBLifecycle.snoozeImageDownloadTimeout = r0;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0 = r0.activity;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0 = r0.getApplicationContext();	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r2 = "com.payu.custombrowser.payucustombrowser";	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r3 = "sp_image_download_time_out";	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r4 = com.payu.custombrowser.PayUCBLifecycle.snoozeImageDownloadTimeout;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                com.payu.custombrowser.util.SharedPreferenceUtil.addIntToSharedPreference(r0, r2, r3, r4);	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0 = r0.activity;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r2 = new com.payu.custombrowser.PayUCBLifecycle$9$1;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r2.<init>(r1);	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0.runOnUiThread(r2);	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0 = r0.mPageReady;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                if (r0 == 0) goto L_0x00f0;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
            L_0x00de:
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0 = r0.activity;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                if (r0 == 0) goto L_0x00f0;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
            L_0x00e4:
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0 = r0.activity;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r1 = new com.payu.custombrowser.PayUCBLifecycle$9$2;	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r1.<init>();	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
                r0.runOnUiThread(r1);	 Catch:{ FileNotFoundException -> 0x02bd, JSONException -> 0x00f4, Exception -> 0x00fe }
            L_0x00f0:
                return;
            L_0x00f1:
                r0 = "0";
                goto L_0x00b5;
            L_0x00f4:
                r0 = move-exception;
            L_0x00f5:
                r1 = com.payu.custombrowser.PayUCBLifecycle.this;
                r1.communicationError();
                r0.printStackTrace();
                goto L_0x00f0;
            L_0x00fe:
                r0 = move-exception;
                r1 = com.payu.custombrowser.PayUCBLifecycle.this;
                r1.communicationError();
                r0.printStackTrace();
                goto L_0x00f0;
            L_0x0108:
                r0 = move-exception;
                r0.printStackTrace();	 Catch:{ Exception -> 0x0108, all -> 0x01e0 }
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0 = r0.activity;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                if (r0 == 0) goto L_0x00f0;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
            L_0x0112:
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r1 = new org.json.JSONObject;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r2 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r2 = r2.activity;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r3 = "initialize";	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r2 = r2.openFileInput(r3);	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r2 = com.payu.custombrowser.util.CBUtil.decodeContents(r2);	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r1.<init>(r2);	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0.mBankJS = r1;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0.setUrlString();	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r1 = "";	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r2 = 1;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0.checkVisibilityCB(r1, r2);	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0 = r0.mBankJS;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r1 = "snooze_config";	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0 = r0.has(r1);	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                if (r0 == 0) goto L_0x01ce;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
            L_0x0142:
                r0 = new java.lang.StringBuilder;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0.<init>();	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r1 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r1 = r1.mBankJS;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r2 = "snooze_config";	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r1 = r1.get(r2);	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0 = r0.append(r1);	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r1 = "('";	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0 = r0.append(r1);	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r1 = com.payu.custombrowser.Bank.keyAnalytics;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0 = r0.append(r1);	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r1 = "')";	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0 = r0.append(r1);	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0 = r0.toString();	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r1 = r0;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
            L_0x016c:
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0 = r0.mBankJS;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r2 = "snooze_image_download_time";	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0 = r0.has(r2);	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                if (r0 == 0) goto L_0x01d2;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
            L_0x0178:
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0 = r0.mBankJS;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r2 = "snooze_image_download_time";	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0 = r0.get(r2);	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0 = r0.toString();	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
            L_0x0186:
                r0 = java.lang.Integer.parseInt(r0);	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                com.payu.custombrowser.PayUCBLifecycle.snoozeImageDownloadTimeout = r0;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0 = r0.activity;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0 = r0.getApplicationContext();	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r2 = "com.payu.custombrowser.payucustombrowser";	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r3 = "sp_image_download_time_out";	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r4 = com.payu.custombrowser.PayUCBLifecycle.snoozeImageDownloadTimeout;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                com.payu.custombrowser.util.SharedPreferenceUtil.addIntToSharedPreference(r0, r2, r3, r4);	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0 = r0.activity;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r2 = new com.payu.custombrowser.PayUCBLifecycle$9$1;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r2.<init>(r1);	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0.runOnUiThread(r2);	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0 = r0.mPageReady;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                if (r0 == 0) goto L_0x00f0;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
            L_0x01af:
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0 = r0.activity;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                if (r0 == 0) goto L_0x00f0;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
            L_0x01b5:
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0 = r0.activity;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r1 = new com.payu.custombrowser.PayUCBLifecycle$9$2;	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r1.<init>();	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                r0.runOnUiThread(r1);	 Catch:{ FileNotFoundException -> 0x01c3, JSONException -> 0x02b8, Exception -> 0x01d5 }
                goto L_0x00f0;
            L_0x01c3:
                r0 = move-exception;
            L_0x01c4:
                r1 = com.payu.custombrowser.PayUCBLifecycle.this;
                r1.communicationError();
                r0.printStackTrace();
                goto L_0x00f0;
            L_0x01ce:
                r0 = "";
                r1 = r0;
                goto L_0x016c;
            L_0x01d2:
                r0 = "0";
                goto L_0x0186;
            L_0x01d5:
                r0 = move-exception;
                r1 = com.payu.custombrowser.PayUCBLifecycle.this;
                r1.communicationError();
                r0.printStackTrace();
                goto L_0x00f0;
            L_0x01e0:
                r0 = move-exception;
                r1 = r0;
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0 = r0.activity;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                if (r0 == 0) goto L_0x0297;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
            L_0x01e8:
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r2 = new org.json.JSONObject;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r3 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r3 = r3.activity;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r4 = "initialize";	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r3 = r3.openFileInput(r4);	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r3 = com.payu.custombrowser.util.CBUtil.decodeContents(r3);	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r2.<init>(r3);	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0.mBankJS = r2;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0.setUrlString();	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r2 = "";	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r3 = 1;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0.checkVisibilityCB(r2, r3);	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0 = r0.mBankJS;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r2 = "snooze_config";	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0 = r0.has(r2);	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                if (r0 == 0) goto L_0x0298;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
            L_0x0218:
                r0 = new java.lang.StringBuilder;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0.<init>();	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r2 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r2 = r2.mBankJS;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r3 = "snooze_config";	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r2 = r2.get(r3);	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0 = r0.append(r2);	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r2 = "('";	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0 = r0.append(r2);	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r2 = com.payu.custombrowser.Bank.keyAnalytics;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0 = r0.append(r2);	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r2 = "')";	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0 = r0.append(r2);	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0 = r0.toString();	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r2 = r0;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
            L_0x0242:
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0 = r0.mBankJS;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r3 = "snooze_image_download_time";	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0 = r0.has(r3);	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                if (r0 == 0) goto L_0x029c;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
            L_0x024e:
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0 = r0.mBankJS;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r3 = "snooze_image_download_time";	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0 = r0.get(r3);	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0 = r0.toString();	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
            L_0x025c:
                r0 = java.lang.Integer.parseInt(r0);	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                com.payu.custombrowser.PayUCBLifecycle.snoozeImageDownloadTimeout = r0;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0 = r0.activity;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0 = r0.getApplicationContext();	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r3 = "com.payu.custombrowser.payucustombrowser";	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r4 = "sp_image_download_time_out";	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r5 = com.payu.custombrowser.PayUCBLifecycle.snoozeImageDownloadTimeout;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                com.payu.custombrowser.util.SharedPreferenceUtil.addIntToSharedPreference(r0, r3, r4, r5);	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0 = r0.activity;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r3 = new com.payu.custombrowser.PayUCBLifecycle$9$1;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r3.<init>(r2);	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0.runOnUiThread(r3);	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0 = r0.mPageReady;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                if (r0 == 0) goto L_0x0297;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
            L_0x0285:
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0 = r0.activity;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                if (r0 == 0) goto L_0x0297;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
            L_0x028b:
                r0 = com.payu.custombrowser.PayUCBLifecycle.this;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0 = r0.activity;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r2 = new com.payu.custombrowser.PayUCBLifecycle$9$2;	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r2.<init>();	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
                r0.runOnUiThread(r2);	 Catch:{ FileNotFoundException -> 0x02bb, JSONException -> 0x029f, Exception -> 0x02a9 }
            L_0x0297:
                throw r1;
            L_0x0298:
                r0 = "";
                r2 = r0;
                goto L_0x0242;
            L_0x029c:
                r0 = "0";
                goto L_0x025c;
            L_0x029f:
                r0 = move-exception;
            L_0x02a0:
                r2 = com.payu.custombrowser.PayUCBLifecycle.this;
                r2.communicationError();
                r0.printStackTrace();
                goto L_0x0297;
            L_0x02a9:
                r0 = move-exception;
                r2 = com.payu.custombrowser.PayUCBLifecycle.this;
                r2.communicationError();
                r0.printStackTrace();
                goto L_0x0297;
            L_0x02b3:
                r0 = "";
                r1 = r0;
                goto L_0x009b;
            L_0x02b8:
                r0 = move-exception;
                goto L_0x01c4;
            L_0x02bb:
                r0 = move-exception;
                goto L_0x02a0;
            L_0x02bd:
                r0 = move-exception;
                goto L_0x00f5;
                */
                throw new UnsupportedOperationException("Method not decompiled: com.payu.custombrowser.PayUCBLifecycle.9.run():void");
            }
        });
    }

    private void initCBSettings() {
        this.cbWebView.getSettings().setJavaScriptEnabled(true);
        this.cbWebView.addJavascriptInterface(this, "PayU");
        this.cbWebView.getSettings().setSupportMultipleWindows(true);
        this.cbWebView.setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                PayUCBLifecycle.this.dismissSlowUserWarningTimerOnTouch();
                if (PayUCBLifecycle.this.cbTransparentView != null) {
                    PayUCBLifecycle.this.cbTransparentView.setVisibility(8);
                }
                if (PayUCBLifecycle.this.frameState == 2) {
                    PayUCBLifecycle.this.minimizeWebviewHeight();
                }
                return false;
            }
        });
        this.cbWebView.getSettings().setDomStorageEnabled(true);
        this.cbWebView.getSettings().setRenderPriority(RenderPriority.HIGH);
        this.cbWebView.getSettings().setCacheMode(2);
        this.cbWebView.getSettings().setAppCacheEnabled(false);
    }

    private void updateSnoozeDialogWithSnoozeServiceStatus() {
        if (this.snoozeDialog != null && this.snoozeDialog.isShowing()) {
            this.snoozeDialog.cancel();
            this.snoozeDialog.dismiss();
        }
        View inflate = this.activity.getLayoutInflater().inflate(R.layout.cb_layout_snooze, null);
        ((TextView) inflate.findViewById(R.id.snooze_header_txt)).setText(getString(R.string.cb_snooze_network_error));
        inflate.findViewById(R.id.text_view_cancel_snooze_window).setVisibility(8);
        ((TextView) inflate.findViewById(R.id.text_view_snooze_message)).setText(getString(R.string.cb_snooze_network_down_message));
        inflate.findViewById(R.id.snooze_loader_view).setVisibility(8);
        inflate.findViewById(R.id.button_snooze_transaction).setVisibility(8);
        inflate.findViewById(R.id.text_view_retry_message_detail).setVisibility(8);
        inflate.findViewById(R.id.button_retry_transaction).setVisibility(8);
        inflate.findViewById(R.id.button_cancel_transaction).setVisibility(8);
        inflate.findViewById(R.id.t_confirm).setVisibility(8);
        inflate.findViewById(R.id.t_nconfirm).setVisibility(8);
        Button button = (Button) inflate.findViewById(R.id.button_go_back_snooze);
        button.setVisibility(0);
        button.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                PayUCBLifecycle.this.activity.finish();
            }
        });
        this.snoozeDialog = new Builder(this.activity).create();
        this.snoozeDialog.setView(inflate);
        this.snoozeDialog.setCanceledOnTouchOutside(false);
        this.snoozeDialog.setOnCancelListener(new OnCancelListener() {
            public void onCancel(DialogInterface dialogInterface) {
                PayUCBLifecycle.this.activity.finish();
            }
        });
        this.snoozeDialog.show();
    }

    public void cbOldFlowOnCreateView() {
        this.cbWebView = (WebView) this.activity.findViewById(getArguments().getInt(CBConstant.WEBVIEW));
        if (Bank.paymentMode != null && Bank.paymentMode.equalsIgnoreCase(CBConstant.NB)) {
            this.cbWebView.getSettings().setUseWideViewPort(true);
        } else if (this.customBrowserConfig != null && this.customBrowserConfig.getViewPortWideEnable() == 1) {
            this.cbWebView.getSettings().setUseWideViewPort(true);
        }
        this.cbWebView.setFocusable(true);
        if (getArguments().getBoolean(CBConstant.BACK_BUTTON, true)) {
            this.cbWebView.setOnKeyListener(new OnKeyListener() {
                public boolean onKey(View view, int i, KeyEvent keyEvent) {
                    if (keyEvent.getAction() == 1 && i == 4) {
                        if (PayUCBLifecycle.this.getArguments().getBoolean(CBConstant.BACK_BUTTON, true)) {
                            AlertDialog.Builder builder = new AlertDialog.Builder(PayUCBLifecycle.this.activity);
                            builder.setCancelable(false);
                            builder.setMessage("Do you really want to cancel the transaction ?");
                            builder.setPositiveButton("Ok", new DialogInterface.OnClickListener() {
                                public void onClick(DialogInterface dialogInterface, int i) {
                                    PayUCBLifecycle.this.addEventAnalytics(CBAnalyticsConstant.USER_INPUT, CBAnalyticsConstant.BACK_BUTTON_OK_CLICK);
                                    dialogInterface.dismiss();
                                    PayUCBLifecycle.this.onBackApproved();
                                    PayUCBLifecycle.this.activity.finish();
                                }
                            });
                            builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
                                public void onClick(DialogInterface dialogInterface, int i) {
                                    PayUCBLifecycle.this.addEventAnalytics(CBAnalyticsConstant.USER_INPUT, CBAnalyticsConstant.BACK_BUTTON_CANCEL_CLICK);
                                    PayUCBLifecycle.this.onBackCancelled();
                                    dialogInterface.dismiss();
                                }
                            });
                            PayUCBLifecycle.this.addEventAnalytics(CBAnalyticsConstant.USER_INPUT, CBAnalyticsConstant.PAYU_BACK_BUTTON_CLICK);
                            PayUCBLifecycle.this.onBackPressed(builder);
                            builder.show();
                            return true;
                        }
                        PayUCBLifecycle.this.addEventAnalytics(CBAnalyticsConstant.USER_INPUT, CBAnalyticsConstant.MERCHANT_BACK_BUTTON_CLICK);
                        PayUCBLifecycle.this.activity.onBackPressed();
                    }
                    return false;
                }
            });
        }
        if (Bank.paymentMode != null && Bank.paymentMode.equalsIgnoreCase(CBConstant.NB)) {
            this.cbWebView.getSettings().setUseWideViewPort(true);
        } else if (this.bundle.getBoolean(CBConstant.VIEWPORTWIDE, false)) {
            this.cbWebView.getSettings().setUseWideViewPort(true);
        }
    }

    public void cbOldOnCreate() {
        this.bundle = getArguments();
        this.autoApprove = this.bundle.getBoolean(CBAnalyticsConstant.CB_AUTO_APPROVE, false);
        this.autoSelectOtp = this.bundle.getBoolean(CBConstant.AUTO_SELECT_OTP, false);
        this.storeOneClickHash = this.bundle.getInt(PayuConstants.STORE_ONE_CLICK_HASH, 0);
        this.merchantSMSPermission = this.bundle.getBoolean(CBConstant.MERCHANT_SMS_PERMISSION, false);
        if (Bank.sdkVersion == null || Bank.sdkVersion.equalsIgnoreCase(BuildConfig.VERSION_NAME)) {
            Bank.sdkVersion = getArguments().getString(CBConstant.SDK_DETAILS);
        }
        if (Bank.transactionID == null || Bank.transactionID.equalsIgnoreCase(BuildConfig.VERSION_NAME)) {
            Bank.transactionID = getArguments().getString(MRConstant.TRANSACTION_ID);
        }
        if (Bank.keyAnalytics == null || Bank.keyAnalytics.equalsIgnoreCase(BuildConfig.VERSION_NAME)) {
            Bank.keyAnalytics = getArguments().getString(CBAnalyticsConstant.ANALYTICS_KEY);
        }
    }

    public void cbOnCreate() {
        int i = 0;
        boolean z = true;
        if (getArguments() != null && getArguments().containsKey(CBConstant.CB_CONFIG)) {
            this.customBrowserConfig = (CustomBrowserConfig) getArguments().getParcelable(CBConstant.CB_CONFIG);
            boolean z2 = this.customBrowserConfig != null && this.customBrowserConfig.getMerchantSMSPermission() == 1;
            this.merchantSMSPermission = z2;
            z2 = this.customBrowserConfig != null && this.customBrowserConfig.getAutoApprove() == 1;
            this.autoApprove = z2;
            if (this.customBrowserConfig == null || this.customBrowserConfig.getAutoSelectOTP() != 1) {
                z = false;
            }
            this.autoSelectOtp = z;
            if (this.customBrowserConfig != null) {
                i = this.customBrowserConfig.getStoreOneClickHash();
            }
            this.storeOneClickHash = i;
            if (this.customBrowserConfig != null) {
                this.customBrowserConfig.getPostURL();
            }
            if (this.customBrowserConfig != null) {
                if (Bank.keyAnalytics == null || Bank.keyAnalytics.trim().equals(BuildConfig.VERSION_NAME)) {
                    if (this.customBrowserConfig.getMerchantKey() == null && this.customBrowserConfig.getMerchantKey().trim().equals(BuildConfig.VERSION_NAME)) {
                        Bank.keyAnalytics = BuildConfig.VERSION_NAME;
                    } else {
                        Bank.keyAnalytics = this.customBrowserConfig.getMerchantKey();
                    }
                }
                if (Bank.transactionID == null || Bank.transactionID.trim().equals(BuildConfig.VERSION_NAME)) {
                    if (this.customBrowserConfig.getTransactionID() == null || this.customBrowserConfig.getTransactionID().trim().equals(BuildConfig.VERSION_NAME)) {
                        Bank.transactionID = "123";
                    } else {
                        Bank.transactionID = this.customBrowserConfig.getTransactionID();
                    }
                }
                if (Bank.sdkVersion != null && !Bank.sdkVersion.trim().equals(BuildConfig.VERSION_NAME)) {
                    return;
                }
                if (this.customBrowserConfig.getSdkVersionName() == null || this.customBrowserConfig.getSdkVersionName().trim().equals(BuildConfig.VERSION_NAME)) {
                    Bank.sdkVersion = BuildConfig.VERSION_NAME;
                } else {
                    Bank.sdkVersion = this.customBrowserConfig.getSdkVersionName();
                }
            }
        }
    }

    public void cbOnCreateView() {
        if (Bank.paymentMode != null && Bank.paymentMode.equalsIgnoreCase(CBConstant.NB)) {
            this.cbWebView.getSettings().setUseWideViewPort(true);
        } else if (this.customBrowserConfig != null && this.customBrowserConfig.getViewPortWideEnable() == 1) {
            this.cbWebView.getSettings().setUseWideViewPort(true);
        }
        this.cbWebView.setWebChromeClient(new PayUWebChromeClient((Bank) this));
        if (this.customBrowserConfig.getEnableSnooze() > 0) {
            this.cbWebView.setWebViewClient(new PayUSnoozeWebViewClient((Bank) this, Bank.keyAnalytics));
        } else {
            this.cbWebView.setWebViewClient(new PayUWebViewClient((Bank) this, Bank.keyAnalytics));
        }
        if (!(this.customBrowserConfig == null || this.customBrowserConfig.getPostURL() == null || this.customBrowserConfig.getPayuPostData() == null)) {
            this.cbWebView.postUrl(this.customBrowserConfig.getPostURL(), this.customBrowserConfig.getPayuPostData().getBytes());
        }
        if (CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback() != null) {
            CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback().setCBProperties(this.cbWebView, (Bank) this);
        }
        if (this.customBrowserConfig != null && this.customBrowserConfig.getMagicretry() == 1) {
            if (this.customBrowserConfig.getEnableSnooze() == 0) {
                initMagicRetry();
            }
            if (CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback() != null) {
                CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback().initializeMagicRetry((Bank) this, this.cbWebView, this.magicRetryFragment);
            }
        }
    }

    protected void dismissSlowUserWarning() {
        if (this.slowUserWarningDialog != null) {
            this.slowUserWarningDialog.dismiss();
        }
    }

    abstract void dismissSlowUserWarningTimer();

    abstract void enter_otp(String str);

    public void fillOTP(BroadcastReceiver broadcastReceiver) {
        if (getActivity().findViewById(R.id.otp_sms) != null) {
            TextView textView = (TextView) getActivity().findViewById(R.id.otp_sms);
            if (this.showCB && this.mPassword != null && textView.getVisibility() != 0) {
                this.cbUtil.cancelTimer(this.waitingOTPTimer);
                String str = this.eventRecorded;
                int i = -1;
                switch (str.hashCode()) {
                    case -557081102:
                        if (str.equals(CBAnalyticsConstant.PAYMENT_INITIATED)) {
                            i = 0;
                            break;
                        }
                        break;
                    case 674270068:
                        if (str.equals(CBAnalyticsConstant.OTP)) {
                            boolean z = true;
                            break;
                        }
                        break;
                    case 2084916017:
                        if (str.equals(CBAnalyticsConstant.REGENERATE)) {
                            i = 2;
                            break;
                        }
                        break;
                }
                switch (i) {
                    case StackFrame.NO_LINE_NUMBER /*0*/:
                        this.eventRecorded = CBAnalyticsConstant.RECEIVED_OTP_DIRECT;
                        break;
                    case R.styleable.WaitingDots_period /*1*/:
                        this.eventRecorded = CBAnalyticsConstant.RECEIVED_OTP_SELECTED;
                        break;
                    case R.styleable.WaitingDots_jumpHeight /*2*/:
                        this.eventRecorded = CBAnalyticsConstant.RECEIVED_OTP_REGENERATE;
                        break;
                    default:
                        this.eventRecorded = CBAnalyticsConstant.OTP_WEB;
                        break;
                }
                addEventAnalytics(CBAnalyticsConstant.OTP_RECIEVED, this.eventRecorded);
                textView.setText(this.mPassword);
                this.mPassword = null;
                this.customProgressBar.removeDialog(getActivity().findViewById(R.id.progress));
                Button button = (Button) getActivity().findViewById(R.id.approve);
                button.setClickable(true);
                CBUtil.setAlpha(1.0f, button);
                button.setVisibility(0);
                this.activity.findViewById(R.id.timer).setVisibility(8);
                this.activity.findViewById(R.id.retry_text).setVisibility(8);
                this.activity.findViewById(R.id.regenerate_layout).setVisibility(8);
                this.activity.findViewById(R.id.waiting).setVisibility(8);
                this.activity.findViewById(R.id.otp_recieved).setVisibility(0);
                textView.setVisibility(0);
                if (this.autoApprove) {
                    button.performClick();
                    this.eventRecorded = CBAnalyticsConstant.CB_AUTO_APPROVE;
                    addEventAnalytics(CBAnalyticsConstant.USER_INPUT, this.eventRecorded);
                }
                button.setOnClickListener(new AnonymousClass8(textView));
                if (this.mBroadcastReceiver != null) {
                    broadcastReceiver.abortBroadcast();
                    unregisterBroadcast(this.mBroadcastReceiver);
                    this.mBroadcastReceiver = null;
                }
            }
        }
    }

    String getValueFromPostData(String str) {
        for (String split : this.customBrowserConfig.getPayuPostData().split("&")) {
            String[] split2 = split.split("=");
            if (split2.length >= 2 && split2[0].equalsIgnoreCase(str)) {
                return split2[1];
            }
        }
        return null;
    }

    public void logOnTerminate() {
        try {
            addEventAnalytics(CBAnalyticsConstant.LAST_URL, CBUtil.updateLastUrl(this.cbUtil.getStringSharedPreference(this.activity.getApplicationContext(), CBAnalyticsConstant.LAST_URL)));
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            this.cbUtil.deleteSharedPrefKey(this.activity.getApplicationContext(), CBAnalyticsConstant.LAST_URL);
        }
        if (!this.eventArray.contains(CBAnalyticsConstant.CUSTOM_BROWSER)) {
            this.eventRecorded = CBAnalyticsConstant.NON_CUSTOM_BROWSER;
            addEventAnalytics(CBAnalyticsConstant.CB_STATUS, this.eventRecorded);
        }
        this.eventRecorded = CBAnalyticsConstant.TERMINATE_TRANSACTION;
        addEventAnalytics(CBAnalyticsConstant.USER_INPUT, this.eventRecorded);
        if (!(this.progressDialog == null || this.progressDialog.isShowing())) {
            this.progressDialog.dismiss();
        }
        if (this.mBroadcastReceiver != null) {
            unregisterBroadcast(this.mBroadcastReceiver);
            this.mBroadcastReceiver = null;
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.activity = getActivity();
        this.isSnoozeEnabled = this.cbUtil.getBooleanSharedPreferenceDefaultTrue(CBConstant.SNOOZE_ENABLED, getActivity().getApplicationContext());
        isFromSnoozeService = false;
        this.snoozeConfigMap = this.cbUtil.convertToSnoozeConfigMap(SharedPreferenceUtil.getSharedPrefMap(this.activity, CBConstant.SNOOZE_SHARED_PREF));
        this.snoozeLoadPercentageAndTimeOut = this.snoozeConfigMap.getPercentageAndTimeout(CBConstant.DEFAULT_PAYMENT_URLS);
        this.snoozeUrlLoadingPercentage = this.snoozeLoadPercentageAndTimeOut[0];
        this.snoozeUrlLoadingTimeout = this.snoozeLoadPercentageAndTimeOut[1];
        whiteListedUrls = CBUtil.processAndAddWhiteListedUrls(SharedPreferenceUtil.getStringFromSharedPreference(this.activity, CBConstant.SP_RETRY_FILE_NAME, CBConstant.SP_RETRY_WHITELISTED_URLS, BuildConfig.VERSION_NAME));
        snoozeImageDownloadTimeout = SharedPreferenceUtil.getIntFromSharedPreference(this.activity.getApplicationContext(), CBUtil.CB_PREFERENCE, CBConstant.SNOOZE_IMAGE_DOWNLOAD_TIME_OUT, 0);
        if (this.snoozeService != null) {
            this.snoozeService.killSnoozeService();
        }
        if (this.activity.getIntent().getStringExtra(CBConstant.SENDER) != null && this.activity.getIntent().getStringExtra(CBConstant.SENDER).contentEquals(CBConstant.SNOOZE_SERVICE)) {
            isFromSnoozeService = true;
        }
        this.snoozeBroadCastReceiver = new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                if (intent.hasExtra("broadcaststatus")) {
                    Intent intent2 = new Intent(PayUCBLifecycle.this.activity, CBActivity.class);
                    intent2.putExtra(CBConstant.SENDER, CBConstant.SNOOZE_SERVICE);
                    intent2.putExtra(CBConstant.VERIFICATION_MSG_RECEIVED, true);
                    intent2.putExtra(PayuConstants.PAYU_RESPONSE, intent.getExtras().getString(PayuConstants.PAYU_RESPONSE));
                    intent2.setFlags(805306368);
                    PayUCBLifecycle.this.startActivity(intent2);
                }
                if (intent.hasExtra(PayUCBLifecycle.this.SNOOZE_BROAD_CAST_MESSAGE) && PayUCBLifecycle.this.snoozeService != null) {
                    PayUCBLifecycle.this.snoozeService.updateWebviewStatus(intent.getStringExtra(PayUCBLifecycle.this.SNOOZE_BROAD_CAST_MESSAGE));
                }
                if (intent.getBooleanExtra(CBAnalyticsConstant.BROAD_CAST_FROM_SNOOZE_SERVICE, false)) {
                    PayUCBLifecycle.this.addEventAnalytics(intent.getStringExtra(CBAnalyticsConstant.KEY), intent.getStringExtra(CBAnalyticsConstant.VALUE));
                }
                if (intent.hasExtra(CBConstant.SNOOZE_SERVICE_STATUS)) {
                    PayUCBLifecycle.this.updateSnoozeDialogWithSnoozeServiceStatus();
                }
            }
        };
        if (this.activity.getClass().getSimpleName().equalsIgnoreCase("CBActivity")) {
            cbOnCreate();
        } else {
            this.cbOldFlow = true;
            cbOldOnCreate();
        }
        initAnalytics(Bank.keyAnalytics);
        if (this.activity != null) {
            this.pin_selected_flag = false;
            CookieManager instance = CookieManager.getInstance();
            if (VERSION.SDK_INT >= 21) {
                instance.removeSessionCookies(null);
            } else if (VERSION.SDK_INT >= 19) {
                instance.removeSessionCookie();
            }
        }
        if (this.customBrowserConfig != null) {
            addEventAnalytics(CBAnalyticsConstant.SNOOZE_ENABLE_COUNT, BuildConfig.VERSION_NAME + this.customBrowserConfig.getEnableSnooze());
            addEventAnalytics(CBAnalyticsConstant.SNOOZE_MODE_SET_MERCHANT, this.customBrowserConfig.getSnoozeMode() == 1 ? "WARN" : "FAIL");
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view;
        View view2;
        super.onCreateView(layoutInflater, viewGroup, bundle);
        View inflate;
        if (this.cbOldFlow) {
            inflate = layoutInflater.inflate(R.layout.bankold, viewGroup, false);
            inflate.bringToFront();
            cbOldFlowOnCreateView();
            view = inflate;
            view2 = inflate;
        } else {
            view = layoutInflater.inflate(R.layout.bank, viewGroup, false);
            this.cbTransparentView = view.findViewById(R.id.trans_overlay);
            this.cbWebView = (WebView) view.findViewById(R.id.webview);
            this.cbBlankOverlay = view.findViewById(R.id.cb_blank_overlay);
            inflate = view.findViewById(R.id.parent);
            cbOnCreateView();
            view2 = view;
            view = inflate;
        }
        CBUtil.setVariableReflection(CBConstant.MAGIC_RETRY_PAKAGE, BuildConfig.VERSION_NAME, CBConstant.CB_VERSION);
        this.cbBaseView = (FrameLayout) view2.findViewById(R.id.help_view);
        this.cbSlideBarView = view2.findViewById(R.id.view);
        this.cbWebPageProgressBar = (ProgressBar) view2.findViewById(R.id.cb_progressbar);
        initCBSettings();
        getInitializeJS();
        view.setOnTouchListener(new PayUCBLifeCycleTouchListener());
        return view2;
    }

    public void onDestroy() {
        super.onDestroy();
        this.cbUtil.cancelTimer(this.timerProgress);
        this.cbUtil.cancelTimer(this.waitingOTPTimer);
        if (this.slowUserCountDownTimer != null) {
            this.slowUserCountDownTimer.cancel();
        }
        addEventAnalytics(CBAnalyticsConstant.SNOOZE_COUNT, BuildConfig.VERSION_NAME + (this.snoozeVisibleCountBackwdJourney + this.snoozeVisibleCountFwdJourney));
        CustomBrowserData.SINGLETON.setPayuCustomBrowserCallback(null);
        if (this.snoozeDialog != null && this.snoozeDialog.isShowing()) {
            this.snoozeDialog.dismiss();
        }
        if (!(this.snoozeBroadCastReceiver == null || !this.isSnoozeBroadCastReceiverRegistered || isFromSnoozeService)) {
            LocalBroadcastManager.getInstance(this.activity.getApplicationContext()).unregisterReceiver(this.snoozeBroadCastReceiver);
        }
        if (this.snoozeServiceConnection != null && this.isSnoozeServiceBounded) {
            this.activity.unbindService(this.snoozeServiceConnection);
        }
        if (this.snoozeService != null && isFromSnoozeService) {
            this.snoozeService.killSnoozeService();
        }
        if (this.loadingLayout != null) {
            this.customProgressBar.removeProgressDialog(this.loadingLayout.findViewById(R.id.progress));
        }
        if (this.enterOTPView != null) {
            this.customProgressBar.removeProgressDialog(this.enterOTPView.findViewById(R.id.progress));
        }
        if (this.payuDeviceAnalytics != null) {
            this.cbUtil.cancelTimer(this.payuDeviceAnalytics.getmTimer());
        }
        if (this.mAnalytics != null) {
            this.cbUtil.cancelTimer(this.mAnalytics.getmTimer());
        }
        this.cbUtil.cancelTimer(this.waitingOTPTimer);
        if (this.countDownTimer != null) {
            this.countDownTimer.cancel();
        }
        logOnTerminate();
        Bank.sdkVersion = null;
        Bank.keyAnalytics = null;
        Bank.transactionID = null;
        Bank.paymentMode = null;
    }

    public void onDestroyView() {
        super.onDestroyView();
        this.cbUtil.cancelTimer(this.timerProgress);
        if (this.snoozeDialog != null && this.snoozeDialog.isShowing()) {
            this.snoozeDialog.dismiss();
        }
        if (this.progressDialog != null) {
            this.progressDialog.dismiss();
        }
    }

    abstract void onPageStarted();

    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        switch (i) {
            case R.styleable.WaitingDots_period /*1*/:
                this.checkPermissionVisibility = false;
                if (this.SMSOTPClicked) {
                    try {
                        this.cbWebView.loadUrl("javascript:" + this.mJS.getString(getString(R.string.cb_otp)));
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
                if (ContextCompat.checkSelfPermission(this.activity, "android.permission.RECEIVE_SMS") == 0) {
                    this.permissionGranted = true;
                    this.mPassword = null;
                    prepareSmsListener();
                    enter_otp(this.enterOtpParams);
                    return;
                }
                this.permissionGranted = false;
                enter_otp(this.enterOtpParams);
            default:
        }
    }

    public void onResume() {
        super.onResume();
    }

    void prepareSmsListener() {
        if (this.mBroadcastReceiver == null) {
            this.mBroadcastReceiver = new BroadcastReceiver() {
                public void onReceive(Context context, Intent intent) {
                    try {
                        if (PayUCBLifecycle.this.mBankJS != null) {
                            Bundle extras = intent.getExtras();
                            if (PayUCBLifecycle.this.getActivity() != null) {
                                Bundle extras2 = intent.getExtras();
                                if (extras2 != null) {
                                    String str;
                                    String str2;
                                    Object[] objArr = (Object[]) extras2.get("pdus");
                                    if (objArr != null) {
                                        SmsMessage[] smsMessageArr = new SmsMessage[objArr.length];
                                        str = null;
                                        int i = 0;
                                        str2 = null;
                                        while (i < smsMessageArr.length) {
                                            if (VERSION.SDK_INT >= 23) {
                                                smsMessageArr[i] = SmsMessage.createFromPdu((byte[]) objArr[i], extras.getString("format"));
                                            } else {
                                                smsMessageArr[i] = SmsMessage.createFromPdu((byte[]) objArr[i]);
                                            }
                                            String str3 = str + smsMessageArr[i].getMessageBody();
                                            str = smsMessageArr[i].getDisplayOriginatingAddress();
                                            i++;
                                            str2 = str;
                                            str = str3;
                                        }
                                    } else {
                                        str = null;
                                        str2 = null;
                                    }
                                    PayUCBLifecycle.this.mPassword = CBUtil.filterSMS(PayUCBLifecycle.this.mBankJS, str, PayUCBLifecycle.this.activity.getApplicationContext());
                                    if (PayUCBLifecycle.this.mPassword != null) {
                                        PayUCBLifecycle.this.fillOTP(this);
                                        return;
                                    }
                                    if (PayUCBLifecycle.this.payuPG) {
                                        PayUCBLifecycle.this.verificationMsgReceived = PayUCBLifecycle.this.checkConfirmMessage(str2, str);
                                    }
                                    if (PayUCBLifecycle.this.verificationMsgReceived) {
                                        PayUCBLifecycle.this.addEventAnalytics(CBAnalyticsConstant.SNOOZE_BACKWARD_WINDOW_SMS_RECEIVED, CBAnalyticsConstant.RECEIVED);
                                    }
                                }
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            };
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.setPriority(9999999);
            intentFilter.addAction("android.provider.Telephony.SMS_RECEIVED");
            registerBroadcast(this.mBroadcastReceiver, intentFilter);
        }
    }

    public void registerSMSBroadcast() {
        if (this.mBroadcastReceiver == null) {
            prepareSmsListener();
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.setPriority(9999999);
        intentFilter.addAction("android.provider.Telephony.SMS_RECEIVED");
        registerBroadcast(this.mBroadcastReceiver, intentFilter);
    }

    protected void setCbBlankOverlay(int i) {
        if (this.cbBlankOverlay != null) {
            this.cbBlankOverlay.setVisibility(i);
        }
    }

    protected void showSlowUserWarning() {
        if (this.activity != null && !this.activity.isFinishing() && !this.isSnoozeWindowVisible) {
            View inflate = this.activity.getLayoutInflater().inflate(R.layout.cb_layout_snooze_slow_user, null);
            ((TextView) inflate.findViewById(R.id.snooze_header_txt)).setText(R.string.cb_snooze_slow_user_warning_header);
            TextView textView = (TextView) inflate.findViewById(R.id.text_view_cancel_snooze_window);
            ImageView imageView = (ImageView) inflate.findViewById(R.id.snooze_status_icon);
            imageView.setVisibility(0);
            imageView.setImageDrawable(cbGetDrawable(this.activity.getApplicationContext(), R.drawable.hourglass));
            if (this.slowUserWarningDialog == null) {
                this.slowUserWarningDialog = new AlertDialog.Builder(this.activity).create();
                this.slowUserWarningDialog.setView(inflate);
                this.slowUserWarningDialog.setCanceledOnTouchOutside(true);
                this.slowUserWarningDialog.setOnDismissListener(new OnDismissListener() {
                    public void onDismiss(DialogInterface dialogInterface) {
                    }
                });
                this.slowUserWarningDialog.setOnKeyListener(new DialogInterface.OnKeyListener() {
                    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                        if (i == 4 && keyEvent.getAction() == 0) {
                            PayUCBLifecycle.this.slowUserWarningDialog.dismiss();
                        }
                        return true;
                    }
                });
                textView.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        PayUCBLifecycle.this.slowUserWarningDialog.dismiss();
                    }
                });
            }
            this.slowUserWarningDialog.show();
            CBActivity cBActivity = (CBActivity) this.activity;
            if (CBActivity.STATE == 1) {
                showSlowUserWarningNotification();
            }
        }
    }

    protected void showSlowUserWarningNotification() {
        if (this.activity != null && !this.activity.isFinishing()) {
            Intent intent = new Intent();
        }
    }

    abstract void startSlowUserWarningTimer();

    public void updateHeight(View view) {
        if (this.maxWebview == 0) {
            calculateMaximumWebViewHeight();
            maximiseWebviewHeight();
        }
        calculateCBHeight(view);
    }

    public void updateLoaderHeight() {
        if (this.chooseActionHeight == 0) {
            this.cbWebView.measure(-1, -1);
            this.chooseActionHeight = (int) (((double) this.cbWebView.getMeasuredHeight()) * 0.35d);
        }
    }
}
