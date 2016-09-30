package com.payu.custombrowser;

import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.NotificationManager;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v7.app.AlertDialog;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.TranslateAnimation;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.payu.custombrowser.analytics.CBAnalytics;
import com.payu.custombrowser.analytics.PayuDeviceAnalytics;
import com.payu.custombrowser.bean.CustomBrowserConfig;
import com.payu.custombrowser.bean.CustomBrowserData;
import com.payu.custombrowser.util.CBAnalyticsConstant;
import com.payu.custombrowser.util.CBConstant;
import com.payu.custombrowser.util.CBUtil;
import com.payu.india.Payu.PayuConstants;
import com.payu.magicretry.Helpers.MRConstant;
import com.payu.magicretry.MagicRetryFragment;
import com.payu.testapp.R;
import com.squareup.haha.perflib.StackFrame;
import com.squareup.leakcanary.watcher.BuildConfig;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Executor;
import org.json.JSONObject;

public class CustomBrowserMain extends Fragment implements CBConstant {
    public static final boolean DEBUG = true;
    final String CB_URL;
    Activity activity;
    protected boolean autoApprove;
    protected boolean autoSelectOtp;
    protected boolean backwardJourneyStarted;
    Set<String> backwardJourneyUrls;
    String bankName;
    Bundle bundle;
    FrameLayout cbBaseView;
    boolean cbOldFlow;
    View cbSlideBarView;
    View cbTransparentView;
    CBUtil cbUtil;
    private boolean cbVisibleOnce;
    ProgressBar cbWebPageProgressBar;
    WebView cbWebView;
    int checkForInput;
    CountDownTimer countDownTimer;
    protected CustomBrowserConfig customBrowserConfig;
    Drawable drawable;
    View enterOTPView;
    ArrayList<String> eventArray;
    String eventRecorded;
    protected boolean firstTouch;
    protected boolean forwardJourneyForChromeLoaderIsComplete;
    int frameState;
    boolean isSnoozeWindowVisible;
    Boolean isSuccessTransaction;
    protected boolean isTxnNBType;
    protected boolean isWebviewReloading;
    int lastProgress;
    View loadingLayout;
    int loading_height;
    CBAnalytics mAnalytics;
    JSONObject mBankJS;
    BroadcastReceiver mBroadcastReceiver;
    JSONObject mJS;
    BroadcastReceiver mReceiver;
    MagicRetryFragment magicRetryFragment;
    int maxWebview;
    String merchantResponse;
    boolean merchantSMSPermission;
    int minWebview;
    boolean nbhelpVisible;
    protected String pageType;
    protected boolean payuChromeLoaderDisabled;
    PayuDeviceAnalytics payuDeviceAnalytics;
    boolean payuPG;
    String payuReponse;
    ProgressDialog progressDialog;
    Set<String> retryUrls;
    Executor serialExecutor;
    AlertDialog snoozeDialog;
    public int snoozeMode;
    int storeOneClickHash;
    protected String timeOfArrival;
    protected String timeOfDeparture;
    protected Timer timerProgress;
    boolean verificationMsgReceived;
    String webviewUrl;

    /* renamed from: com.payu.custombrowser.CustomBrowserMain.1 */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ View val$view;

        AnonymousClass1(View view) {
            this.val$view = view;
        }

        public void run() {
            this.val$view.setVisibility(0);
        }
    }

    /* renamed from: com.payu.custombrowser.CustomBrowserMain.2 */
    class AnonymousClass2 implements Runnable {
        final /* synthetic */ String val$bank;
        final /* synthetic */ boolean val$checkSnooze;

        AnonymousClass2(boolean z, String str) {
            this.val$checkSnooze = z;
            this.val$bank = str;
        }

        public void run() {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("androidosversion", VERSION.RELEASE + BuildConfig.VERSION_NAME);
                jSONObject.put("androidmanufacturer", (Build.MANUFACTURER + BuildConfig.VERSION_NAME).toLowerCase());
                jSONObject.put("model", (Build.MODEL + BuildConfig.VERSION_NAME).toLowerCase());
                jSONObject.put(CBAnalyticsConstant.ANALYTICS_KEY, Bank.keyAnalytics);
                jSONObject.put(CBConstant.SDK_DETAILS, Bank.sdkVersion);
                jSONObject.put("cbname", BuildConfig.VERSION_NAME);
                if (this.val$checkSnooze) {
                    CustomBrowserMain.this.cbWebView.loadUrl("javascript:" + (CustomBrowserMain.this.mBankJS.has("set_dynamic_snooze") ? CustomBrowserMain.this.mBankJS.getString("set_dynamic_snooze") + "(" + jSONObject + ")" : BuildConfig.VERSION_NAME));
                    return;
                }
                jSONObject.put("bankname", this.val$bank.toLowerCase());
                CustomBrowserMain.this.cbWebView.loadUrl("javascript:" + CustomBrowserMain.this.mBankJS.getString("checkVisibilityCBCall") + "(" + jSONObject + ")");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.payu.custombrowser.CustomBrowserMain.3 */
    class AnonymousClass3 extends TimerTask {
        int i;
        final /* synthetic */ Drawable[] val$drawables;
        final /* synthetic */ ImageView val$imageView;

        AnonymousClass3(Drawable[] drawableArr, ImageView imageView) {
            this.val$drawables = drawableArr;
            this.val$imageView = imageView;
            this.i = -1;
        }

        public void run() {
            synchronized (this) {
                if (CustomBrowserMain.this.activity != null) {
                    CustomBrowserMain.this.activity.runOnUiThread(new Runnable() {
                        public void run() {
                            if (CustomBrowserMain.this.activity != null) {
                                AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                anonymousClass3.i++;
                                if (AnonymousClass3.this.i >= AnonymousClass3.this.val$drawables.length) {
                                    AnonymousClass3.this.i = 0;
                                }
                                AnonymousClass3.this.val$imageView.setImageBitmap(null);
                                AnonymousClass3.this.val$imageView.destroyDrawingCache();
                                AnonymousClass3.this.val$imageView.refreshDrawableState();
                                AnonymousClass3.this.val$imageView.setImageDrawable(AnonymousClass3.this.val$drawables[AnonymousClass3.this.i]);
                            }
                        }
                    });
                }
            }
        }
    }

    /* renamed from: com.payu.custombrowser.CustomBrowserMain.5 */
    class AnonymousClass5 extends CountDownTimer {
        AnonymousClass5(long j, long j2) {
            super(j, j2);
        }

        public void onFinish() {
            if (CustomBrowserMain.this.activity != null) {
                CustomBrowserMain.this.activity.runOnUiThread(new Runnable() {
                    public void run() {
                        if (CustomBrowserMain.this.activity != null && !CustomBrowserMain.this.activity.isFinishing() && CustomBrowserMain.this.isAdded()) {
                            CustomBrowserMain.this.onMerchantUrlFinished();
                        }
                    }
                });
            }
        }

        public void onTick(long j) {
        }
    }

    public class CBMainViewOnTouchListener implements OnTouchListener {
        int height;
        float initialY;
        boolean isTouch;

        public CBMainViewOnTouchListener() {
            this.isTouch = CustomBrowserMain.DEBUG;
            this.height = 0;
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (!CustomBrowserMain.this.nbhelpVisible) {
                CustomBrowserMain.this.maximiseWebviewHeight();
                if (this.isTouch) {
                    int actionMasked = motionEvent.getActionMasked();
                    Animation translateAnimation;
                    if (CustomBrowserMain.this.cbSlideBarView.getVisibility() == 0) {
                        CustomBrowserMain.this.cbSlideBarView.setClickable(false);
                        CustomBrowserMain.this.cbSlideBarView.setOnTouchListener(null);
                        translateAnimation = new TranslateAnimation(0.0f, 0.0f, (float) this.height, 0.0f);
                        translateAnimation.setDuration(500);
                        translateAnimation.setFillBefore(CustomBrowserMain.DEBUG);
                        view.startAnimation(translateAnimation);
                        CustomBrowserMain.this.cbBaseView.setVisibility(0);
                        this.isTouch = false;
                        new Handler().postDelayed(new Runnable() {
                            public void run() {
                                CustomBrowserMain.this.cbSlideBarView.setVisibility(8);
                            }
                        }, 20);
                        new Handler().postDelayed(new Runnable() {
                            public void run() {
                                CBMainViewOnTouchListener.this.isTouch = CustomBrowserMain.DEBUG;
                                CustomBrowserMain.this.frameState = 2;
                                if (CustomBrowserMain.this.cbTransparentView != null && CustomBrowserMain.this.activity != null && !CustomBrowserMain.this.activity.isFinishing()) {
                                    CustomBrowserMain.this.showTransparentView(CustomBrowserMain.this.cbTransparentView, CustomBrowserMain.this.activity);
                                }
                            }
                        }, 500);
                        return CustomBrowserMain.DEBUG;
                    }
                    switch (actionMasked) {
                        case StackFrame.NO_LINE_NUMBER /*0*/:
                            this.initialY = motionEvent.getY();
                            return CustomBrowserMain.DEBUG;
                        case R.styleable.WaitingDots_period /*1*/:
                            float y = motionEvent.getY();
                            if (this.initialY >= y || CustomBrowserMain.this.cbBaseView.getVisibility() != 0 || y - this.initialY <= 0.0f) {
                                return CustomBrowserMain.DEBUG;
                            }
                            this.height = view.getHeight();
                            translateAnimation = new TranslateAnimation(0.0f, 0.0f, 0.0f, (float) (view.getHeight() - 30));
                            translateAnimation.setDuration(500);
                            translateAnimation.setFillBefore(false);
                            translateAnimation.setFillEnabled(CustomBrowserMain.DEBUG);
                            translateAnimation.setZAdjustment(1);
                            view.startAnimation(translateAnimation);
                            if (CustomBrowserMain.this.cbTransparentView != null) {
                                CustomBrowserMain.this.cbTransparentView.setVisibility(8);
                            }
                            this.isTouch = false;
                            this.isTouch = CustomBrowserMain.DEBUG;
                            new Handler().postDelayed(new Runnable() {
                                public void run() {
                                    CustomBrowserMain.this.frameState = 1;
                                    CustomBrowserMain.this.cbBaseView.setVisibility(8);
                                    CustomBrowserMain.this.cbSlideBarView.setVisibility(0);
                                }
                            }, 400);
                            return CustomBrowserMain.DEBUG;
                        case R.styleable.WaitingDots_jumpHeight /*2*/:
                        case R.styleable.WaitingDots_autoplay /*3*/:
                            return CustomBrowserMain.DEBUG;
                        default:
                            return CustomBrowserMain.DEBUG;
                    }
                }
            }
            return false;
        }
    }

    public CustomBrowserMain() {
        this.CB_URL = CBConstant.TEST_URL;
        this.snoozeMode = 1;
        this.payuChromeLoaderDisabled = false;
        this.backwardJourneyStarted = false;
        this.forwardJourneyForChromeLoaderIsComplete = false;
        this.firstTouch = false;
        this.pageType = BuildConfig.VERSION_NAME;
        this.isSnoozeWindowVisible = false;
        this.eventArray = new ArrayList();
        this.mReceiver = null;
    }

    private void deviceAnalytics(String str, Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(MRConstant.PAYU_ID, this.cbUtil.getCookie(MRConstant.PAYUIDCOOKIE, context));
            jSONObject.put(MRConstant.TRANSACTION_ID, Bank.transactionID);
            jSONObject.put(MRConstant.MERCHANT_KEY, str);
            jSONObject.put(CBAnalyticsConstant.DEVICE_OS_VERSION, VERSION.SDK_INT + BuildConfig.VERSION_NAME);
            jSONObject.put(CBAnalyticsConstant.DEVICE_RESOLUTION, this.cbUtil.getDeviceDensity(this.activity));
            jSONObject.put(PayuConstants.DEVICE_MANUFACTURE, Build.MANUFACTURER);
            jSONObject.put(PayuConstants.DEVICE_MODEL, Build.MODEL);
            jSONObject.put(PayuConstants.NETWORK_INFO, this.cbUtil.getNetworkStatus(this.activity.getApplicationContext()));
            jSONObject.put(PayuConstants.NETWORK_STRENGTH, this.cbUtil.getNetworkStrength(this.activity.getApplicationContext()));
            jSONObject.put(CBAnalyticsConstant.SDK_VERSION_NAME, Bank.sdkVersion);
            jSONObject.put(CBAnalyticsConstant.CB_VERSION_NAME, BuildConfig.VERSION_NAME);
            jSONObject.put(MRConstant.PAKAGE_NAME, context.getPackageName());
            CBUtil.setVariableReflection(CBConstant.MAGIC_RETRY_PAKAGE, str, CBConstant.ANALYTICS_KEY);
            this.payuDeviceAnalytics = new PayuDeviceAnalytics(this.activity.getApplicationContext(), "cb_local_cache_device");
            this.payuDeviceAnalytics.log(jSONObject.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String getSystemCurrentTime() {
        try {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis()));
        } catch (Exception e) {
            e.printStackTrace();
            return BuildConfig.VERSION_NAME;
        }
    }

    private ProgressDialog showProgress(Context context) {
        ProgressDialog progressDialog = null;
        if (!(this.activity == null || !isAdded() || context == null || this.activity.isFinishing())) {
            LayoutInflater from = LayoutInflater.from(context);
            Drawable cbGetDrawable = cbGetDrawable(this.activity.getApplicationContext(), R.drawable.l_icon1);
            Drawable cbGetDrawable2 = cbGetDrawable(this.activity.getApplicationContext(), R.drawable.l_icon2);
            Drawable cbGetDrawable3 = cbGetDrawable(this.activity.getApplicationContext(), R.drawable.l_icon3);
            Drawable cbGetDrawable4 = cbGetDrawable(this.activity.getApplicationContext(), R.drawable.l_icon4);
            View inflate = from.inflate(R.layout.cb_prog_dialog, null);
            ImageView imageView = (ImageView) inflate.findViewById(R.id.imageView);
            TextView textView = (TextView) inflate.findViewById(R.id.dialog_desc);
            if (this.isWebviewReloading) {
                textView.setText(this.activity.getText(R.string.cb_resuming_transaction));
                this.isWebviewReloading = false;
            } else {
                textView.setText(this.activity.getText(R.string.cb_please_wait));
            }
            progressDialog = this.progressDialog == null ? new ProgressDialog(context, R.style.cb_progress_dialog) : this.progressDialog;
            this.cbUtil.cancelTimer(this.timerProgress);
            this.timerProgress = new Timer();
            this.timerProgress.scheduleAtFixedRate(new AnonymousClass3(new Drawable[]{cbGetDrawable, cbGetDrawable2, cbGetDrawable3, cbGetDrawable4}, imageView), 0, 500);
            progressDialog.show();
            progressDialog.setContentView(inflate);
            progressDialog.setCancelable(DEBUG);
            progressDialog.setCanceledOnTouchOutside(false);
            progressDialog.setOnDismissListener(new OnDismissListener() {
                public void onDismiss(DialogInterface dialogInterface) {
                    CustomBrowserMain.this.cbUtil.cancelTimer(CustomBrowserMain.this.timerProgress);
                }
            });
        }
        return progressDialog;
    }

    void addEventAnalytics(String str, String str2) {
        if (str2 != null) {
            try {
                if (!str2.trim().equalsIgnoreCase(BuildConfig.VERSION_NAME)) {
                    this.mAnalytics.log(CBUtil.getLogMessage(this.activity.getApplicationContext(), str, str2.toLowerCase(), this.bankName, Bank.keyAnalytics, Bank.transactionID, this.pageType));
                }
            } catch (Exception e) {
            }
        }
    }

    void calculateCBHeight(View view) {
        view.measure(-2, -2);
        this.loading_height = view.getMeasuredHeight();
        if (this.maxWebview != 0) {
            this.minWebview = this.maxWebview - this.loading_height;
        }
    }

    void calculateMaximumWebViewHeight() {
        try {
            if (this.maxWebview == 0 && this.bankName != null) {
                Log.d("testwebview", "calculate webview height");
                this.cbWebView.measure(-1, -1);
                this.cbWebView.requestLayout();
                this.maxWebview = this.cbWebView.getMeasuredHeight();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    void callTimer() {
        this.countDownTimer = new AnonymousClass5(5000, 1000).start();
    }

    protected void cancelTransactionNofication() {
        NotificationManager notificationManager = (NotificationManager) this.activity.getSystemService("notification");
        notificationManager.cancel(CBConstant.TRANSACTION_STATUS_NOTIFICATION_ID);
        notificationManager.cancel(CBConstant.SNOOZE_NOTIFICATION_ID);
    }

    public Drawable cbGetDrawable(Context context, int i) {
        return VERSION.SDK_INT >= 21 ? context.getResources().getDrawable(i, context.getTheme()) : context.getResources().getDrawable(i);
    }

    void cbSetBankDrawable(String str) {
        if (this.drawable == null && str != null) {
            try {
                if (str.equalsIgnoreCase("sbinet") || str.equalsIgnoreCase("sbi")) {
                    this.drawable = this.cbUtil.getDrawableCB(this.activity.getApplicationContext(), R.drawable.sbi);
                } else if (str.equalsIgnoreCase("icici") || str.equalsIgnoreCase("icicinet") || str.equalsIgnoreCase("icicicc")) {
                    this.drawable = this.cbUtil.getDrawableCB(this.activity.getApplicationContext(), R.drawable.icici);
                } else if (str.equalsIgnoreCase("kotaknet") || str.equalsIgnoreCase("kotak")) {
                    this.drawable = this.cbUtil.getDrawableCB(this.activity.getApplicationContext(), R.drawable.kotak);
                } else if (str.equalsIgnoreCase("indus")) {
                    this.drawable = this.cbUtil.getDrawableCB(this.activity.getApplicationContext(), R.drawable.induslogo);
                } else if (str.equalsIgnoreCase("hdfc") || str.equalsIgnoreCase("hdfcnet")) {
                    this.drawable = this.cbUtil.getDrawableCB(this.activity.getApplicationContext(), R.drawable.hdfc_bank);
                } else if (str.equalsIgnoreCase("yesnet")) {
                    this.drawable = this.cbUtil.getDrawableCB(this.activity.getApplicationContext(), R.drawable.yesbank_logo);
                } else if (str.equalsIgnoreCase("sc")) {
                    this.drawable = this.cbUtil.getDrawableCB(this.activity.getApplicationContext(), R.drawable.scblogo);
                } else if (str.equalsIgnoreCase("axisnet") || str.equalsIgnoreCase("axis")) {
                    this.drawable = this.cbUtil.getDrawableCB(this.activity.getApplicationContext(), R.drawable.axis_logo);
                } else if (str.equalsIgnoreCase("amex")) {
                    this.drawable = this.cbUtil.getDrawableCB(this.activity.getApplicationContext(), R.drawable.cb_amex_logo);
                } else if (str.equalsIgnoreCase("hdfcnet") || str.equalsIgnoreCase("hdfc")) {
                    this.drawable = this.cbUtil.getDrawableCB(this.activity, R.drawable.hdfc_bank);
                } else if (str.equalsIgnoreCase("ing")) {
                    this.drawable = this.cbUtil.getDrawableCB(this.activity.getApplicationContext(), R.drawable.ing_logo);
                } else if (str.equalsIgnoreCase("idbi")) {
                    this.drawable = this.cbUtil.getDrawableCB(this.activity.getApplicationContext(), R.drawable.idbi);
                } else if (str.equalsIgnoreCase("citi")) {
                    this.drawable = this.cbUtil.getDrawableCB(this.activity.getApplicationContext(), R.drawable.citi);
                } else {
                    this.drawable = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    protected boolean checkIfTransactionNBType(String str) {
        try {
            return this.cbUtil.getDataFromPostData(this.customBrowserConfig.getPayuPostData(), PayuConstants.PG).equalsIgnoreCase(CBConstant.NB) ? DEBUG : false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public void checkVisibilityCB(String str) {
        checkVisibilityCB(str, false);
    }

    public void checkVisibilityCB(String str, boolean z) {
        try {
            if (getActivity() != null) {
                getActivity().runOnUiThread(new AnonymousClass2(z, str));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    void communicationError() {
        progressBarVisibilityPayuChrome(8, BuildConfig.VERSION_NAME);
    }

    void hideCB() {
        maximiseWebviewHeight();
        this.frameState = 1;
        onHelpUnavailable();
    }

    void hideKeyboardForcefully() {
        View currentFocus = this.activity.getCurrentFocus();
        if (currentFocus != null) {
            ((InputMethodManager) this.activity.getSystemService("input_method")).hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
        }
    }

    void hideSoftKeyboard() {
        this.activity.getWindow().setSoftInputMode(3);
    }

    protected void initAnalytics(String str) {
        this.mAnalytics = CBAnalytics.getInstance(this.activity.getApplicationContext(), "local_cache_analytics");
        deviceAnalytics(str, this.activity.getApplicationContext());
    }

    public boolean isRetryURL(String str) {
        if (this.retryUrls.size() == 0) {
            return str.contains(CBConstant.PAYMENT_OPTION_URL_DEV);
        }
        for (String contains : this.retryUrls) {
            if (str.contains(contains)) {
                return DEBUG;
            }
        }
        return false;
    }

    public void loadUrlWebView(JSONObject jSONObject, String str) {
    }

    void maximiseWebviewHeight() {
        if (this.maxWebview == 0) {
            calculateMaximumWebViewHeight();
        }
        if (this.maxWebview != 0) {
            this.cbWebView.getLayoutParams().height = this.maxWebview;
            this.cbWebView.requestLayout();
        }
    }

    void minimizeWebviewHeight() {
        if (this.maxWebview != 0) {
            this.cbWebView.getLayoutParams().height = this.minWebview;
            this.cbWebView.requestLayout();
        }
    }

    public void onBackApproved() {
    }

    public void onBackCancelled() {
    }

    public void onBackPressed(Builder builder) {
    }

    public void onBankError() {
        this.activity.findViewById(R.id.parent).setVisibility(8);
    }

    public void onHelpAvailable() {
        this.cbVisibleOnce = DEBUG;
        this.activity.findViewById(R.id.parent).setVisibility(0);
    }

    public void onHelpUnavailable() {
        if (this.activity != null && !this.activity.isFinishing()) {
            this.activity.findViewById(R.id.parent).setVisibility(8);
        }
    }

    void onMerchantUrlFinished() {
        if (this.activity != null) {
            this.activity.runOnUiThread(new Runnable() {
                public void run() {
                    if (CustomBrowserMain.this.activity != null && !CustomBrowserMain.this.activity.isFinishing() && CustomBrowserMain.this.isAdded()) {
                        if (CustomBrowserMain.this.cbOldFlow) {
                            Intent intent = new Intent();
                            intent.putExtra(CustomBrowserMain.this.getString(R.string.cb_result), CustomBrowserMain.this.merchantResponse);
                            intent.putExtra(CustomBrowserMain.this.getString(R.string.cb_payu_response), CustomBrowserMain.this.payuReponse);
                            if (CustomBrowserMain.this.isSuccessTransaction.booleanValue()) {
                                if (CustomBrowserMain.this.storeOneClickHash == 1) {
                                    new StoreMerchantHashTask().execute(new String[]{CustomBrowserMain.this.payuReponse});
                                }
                                CustomBrowserMain.this.activity.setResult(-1, intent);
                            } else {
                                CustomBrowserMain.this.activity.setResult(0, intent);
                            }
                        } else if (CustomBrowserMain.this.isSuccessTransaction.booleanValue()) {
                            if (CustomBrowserMain.this.customBrowserConfig.getStoreOneClickHash() == 1) {
                                new StoreMerchantHashTask().execute(new String[]{CustomBrowserMain.this.payuReponse});
                            }
                            CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback().onPaymentSuccess(CustomBrowserMain.this.payuReponse, CustomBrowserMain.this.merchantResponse);
                        } else {
                            CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback().onPaymentFailure(CustomBrowserMain.this.payuReponse, CustomBrowserMain.this.merchantResponse);
                        }
                        CustomBrowserMain.this.activity.finish();
                    }
                }
            });
        }
    }

    void progressBarVisibilityPayuChrome(int i, String str) {
        if (this.activity != null && !this.activity.isFinishing() && !isRemoving() && isAdded()) {
            if (i == 8 || i == 4) {
                if (this.progressDialog != null) {
                    this.progressDialog.dismiss();
                }
            } else if (i == 0 && !this.payuChromeLoaderDisabled && !this.isSnoozeWindowVisible) {
                this.progressDialog = showProgress(this.activity);
            }
        }
    }

    public void registerBroadcast(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        this.mReceiver = broadcastReceiver;
        getActivity().registerReceiver(broadcastReceiver, intentFilter);
    }

    protected void resetAutoSelectOTP() {
        boolean z = DEBUG;
        if (this.customBrowserConfig == null || this.customBrowserConfig.getAutoSelectOTP() != 1) {
            z = false;
        }
        this.autoSelectOtp = z;
    }

    void setUrlString() {
        if (this.mBankJS != null) {
            try {
                StringTokenizer stringTokenizer;
                if (this.mBankJS.has("postPaymentPgUrlList")) {
                    stringTokenizer = new StringTokenizer(this.mBankJS.getString("postPaymentPgUrlList").replace(" ", BuildConfig.VERSION_NAME), CBConstant.CB_DELIMITER);
                    while (stringTokenizer.hasMoreTokens()) {
                        this.backwardJourneyUrls.add(stringTokenizer.nextToken());
                    }
                }
                if (this.mBankJS.has("retryList")) {
                    stringTokenizer = new StringTokenizer(this.mBankJS.getString("retryUrlList").replace(" ", BuildConfig.VERSION_NAME), CBConstant.CB_DELIMITER);
                    while (stringTokenizer.hasMoreTokens()) {
                        this.retryUrls.add(stringTokenizer.nextToken());
                    }
                }
            } catch (Exception e) {
                communicationError();
                e.printStackTrace();
            }
        }
    }

    void showSoftKeyboard(View view) {
        view.setFocusableInTouchMode(DEBUG);
        view.requestFocus();
        ((InputMethodManager) this.activity.getSystemService("input_method")).showSoftInput(view, 2);
    }

    void showTransparentView(View view, Context context) {
        if (view != null) {
            view.startAnimation(AnimationUtils.loadAnimation(context, R.anim.cb_fade_in));
            new Handler().postDelayed(new AnonymousClass1(view), 500);
        }
    }

    void startAnimation(int i) {
        if (this.activity != null && !this.activity.isFinishing() && !isRemoving() && isAdded()) {
            if (this.lastProgress > i) {
                this.cbWebPageProgressBar.setProgress(i);
            }
            if (VERSION.SDK_INT >= 11) {
                ObjectAnimator ofInt = ObjectAnimator.ofInt(this.cbWebPageProgressBar, NotificationCompatApi21.CATEGORY_PROGRESS, new int[]{i});
                ofInt.setDuration(50);
                ofInt.setInterpolator(new AccelerateInterpolator());
                ofInt.start();
            } else {
                if (i <= 10) {
                    i = 10;
                }
                this.cbWebPageProgressBar.setProgress(i);
            }
            this.lastProgress = i;
        }
    }

    public void unregisterBroadcast(BroadcastReceiver broadcastReceiver) {
        if (this.mReceiver != null) {
            this.activity.unregisterReceiver(broadcastReceiver);
            this.mReceiver = null;
        }
    }

    public boolean wasCBVisibleOnce() {
        return this.cbVisibleOnce;
    }
}
