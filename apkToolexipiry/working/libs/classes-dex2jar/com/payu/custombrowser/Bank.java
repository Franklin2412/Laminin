package com.payu.custombrowser;

import android.app.AlertDialog;
import android.app.NotificationManager;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v7.app.AlertDialog.Builder;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import android.text.style.StyleSpan;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.inputmethod.InputMethodManager;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.payu.custombrowser.bean.CustomBrowserData;
import com.payu.custombrowser.custombar.CustomProgressBar;
import com.payu.custombrowser.services.SnoozeService;
import com.payu.custombrowser.util.CBAnalyticsConstant;
import com.payu.custombrowser.util.CBConstant;
import com.payu.custombrowser.util.CBUtil;
import com.payu.custombrowser.util.L;
import com.payu.custombrowser.util.MissingParamException;
import com.payu.custombrowser.widgets.SnoozeLoaderView;
import com.payu.custombrowser.widgets.SurePayCancelAsyncTaskHelper;
import com.payu.india.Payu.PayuConstants;
import com.payu.magicretry.MagicRetryFragment;
import com.payu.testapp.R;
import com.squareup.haha.perflib.StackFrame;
import com.squareup.leakcanary.watcher.BuildConfig;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Executors;
import org.json.JSONException;
import org.json.JSONObject;

public class Bank extends PayUCBLifecycle {
    public static String Version;
    public static String keyAnalytics;
    static String paymentMode;
    static String sdkVersion;
    static String transactionID;
    private static List<String> whiteListedUrls;
    private ButtonOnclickListener buttonClickListener;
    private int currentLoadingProgress;
    Runnable enterOtpRunnable;
    private boolean firstFinish;
    private boolean isFirstURLLoaded;
    private boolean isMRDataSet;
    private boolean isPageStoppedForcefully;
    private boolean isSnoozeTimerRunning;
    private boolean isTransactionStatusReceived;
    private CountDownTimer mCountDownTimer;
    private boolean mLoadingJS;
    private boolean pageStarted;
    private CountDownTimer payUChromeLoaderDisableTimer;
    private CountDownTimer payUChromeLoaderEnableTimer;
    private boolean saveUserIDCheck;
    private boolean showSnoozeWindow;
    private boolean showToggleCheck;
    public long snoozeClickedTime;
    private View snoozeLayout;
    private SnoozeLoaderView snoozeLoaderView;
    private boolean snoozeretry;
    private boolean stopOnlyOnce;
    private boolean visibilitychecked;
    private boolean webpageNotFoundError;

    /* renamed from: com.payu.custombrowser.Bank.14 */
    class AnonymousClass14 implements Runnable {
        final /* synthetic */ String val$bank;

        AnonymousClass14(String str) {
            this.val$bank = str;
        }

        public void run() {
            Exception e;
            Bank.this.mLoadingJS = true;
            String string;
            try {
                if (Bank.this.activity != null) {
                    String string2 = Bank.this.mBankJS.getString(this.val$bank);
                    if (!new File(Bank.this.activity.getFilesDir(), string2).exists()) {
                        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(CBConstant.TEST_URL + string2 + ".js").openConnection();
                        httpURLConnection.setRequestMethod("GET");
                        httpURLConnection.setRequestProperty("Accept-Charset", "UTF-8");
                        if (httpURLConnection.getResponseCode() == 200) {
                            Bank.this.cbUtil.writeFileOutputStream(httpURLConnection.getInputStream(), Bank.this.activity, string2, 0);
                        }
                    }
                }
                try {
                    if (Bank.this.activity != null) {
                        string = Bank.this.mBankJS.getString(this.val$bank);
                        Bank.this.mJS = new JSONObject(CBUtil.decodeContents(Bank.this.activity.openFileInput(string)));
                        if (Bank.this.mPageReady && Bank.this.activity != null) {
                            Bank.this.activity.runOnUiThread(new Runnable() {
                                public void run() {
                                    Bank.this.onPageFinished();
                                }
                            });
                        }
                        Bank.this.mLoadingJS = false;
                    }
                } catch (JSONException e2) {
                    e = e2;
                    e.printStackTrace();
                } catch (FileNotFoundException e3) {
                    e = e3;
                    e.printStackTrace();
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            } catch (Exception e42) {
                e42.printStackTrace();
                try {
                    if (Bank.this.activity != null) {
                        string = Bank.this.mBankJS.getString(this.val$bank);
                        Bank.this.mJS = new JSONObject(CBUtil.decodeContents(Bank.this.activity.openFileInput(string)));
                        if (Bank.this.mPageReady && Bank.this.activity != null) {
                            Bank.this.activity.runOnUiThread(new Runnable() {
                                public void run() {
                                    Bank.this.onPageFinished();
                                }
                            });
                        }
                        Bank.this.mLoadingJS = false;
                    }
                } catch (JSONException e5) {
                    e42 = e5;
                    e42.printStackTrace();
                } catch (FileNotFoundException e6) {
                    e42 = e6;
                    e42.printStackTrace();
                } catch (Exception e422) {
                    e422.printStackTrace();
                }
            } catch (Throwable th) {
                Throwable th2 = th;
                try {
                    if (Bank.this.activity != null) {
                        string = Bank.this.mBankJS.getString(this.val$bank);
                        Bank.this.mJS = new JSONObject(CBUtil.decodeContents(Bank.this.activity.openFileInput(string)));
                        if (Bank.this.mPageReady && Bank.this.activity != null) {
                            Bank.this.activity.runOnUiThread(new Runnable() {
                                public void run() {
                                    Bank.this.onPageFinished();
                                }
                            });
                        }
                        Bank.this.mLoadingJS = false;
                    }
                } catch (JSONException e7) {
                    e422 = e7;
                    e422.printStackTrace();
                } catch (FileNotFoundException e8) {
                    e422 = e8;
                    e422.printStackTrace();
                } catch (Exception e4222) {
                    e4222.printStackTrace();
                }
            }
        }
    }

    /* renamed from: com.payu.custombrowser.Bank.16 */
    class AnonymousClass16 implements Runnable {
        final /* synthetic */ String val$fields;
        final /* synthetic */ String val$params;

        /* renamed from: com.payu.custombrowser.Bank.16.1 */
        class AnonymousClass1 implements OnClickListener {
            final /* synthetic */ JSONObject val$jsonObject;

            AnonymousClass1(JSONObject jSONObject) {
                this.val$jsonObject = jSONObject;
            }

            public void onClick(View view) {
                Bank.this.pin_selected_flag = true;
                Bank.this.approve_flag = Boolean.valueOf(true);
                Bank.this.maximiseWebviewHeight();
                Bank.this.frameState = 1;
                if (Bank.this.cbTransparentView != null) {
                    Bank.this.cbTransparentView.setVisibility(8);
                }
                try {
                    if (this.val$jsonObject.has(Bank.this.getString(R.string.cb_register)) && this.val$jsonObject.getBoolean(Bank.this.getString(R.string.cb_register))) {
                        view = Bank.this.activity.getLayoutInflater().inflate(R.layout.register_pin, null);
                        Bank.this.cbBaseView.removeAllViews();
                        Bank.this.cbBaseView.addView(view);
                        if (Bank.this.cbBaseView.isShown()) {
                            Bank.this.frameState = 2;
                        }
                        view.findViewById(R.id.pin).setOnClickListener(new OnClickListener() {
                            public void onClick(View view) {
                                try {
                                    Bank.this.eventRecorded = CBAnalyticsConstant.PASSWORD;
                                    Bank.this.addEventAnalytics(CBAnalyticsConstant.USER_INPUT, Bank.this.eventRecorded);
                                    Bank.this.cbWebView.loadUrl("javascript:" + Bank.this.mJS.getString(Bank.this.getString(R.string.cb_pin)));
                                } catch (JSONException e) {
                                    e.printStackTrace();
                                }
                            }
                        });
                        if (this.val$jsonObject.has(Bank.this.getString(R.string.cb_otp)) && !this.val$jsonObject.getBoolean(Bank.this.getString(R.string.cb_otp))) {
                            view.findViewById(R.id.otp).setVisibility(8);
                        }
                        view.findViewById(R.id.otp).setOnClickListener(Bank.this.buttonClickListener);
                        Bank.this.updateHeight(view);
                    }
                    Bank.this.eventRecorded = CBAnalyticsConstant.PASSWORD;
                    Bank.this.addEventAnalytics(CBAnalyticsConstant.USER_INPUT, Bank.this.eventRecorded);
                    Bank.this.onHelpUnavailable();
                    Bank.this.cbWebView.loadUrl("javascript:" + Bank.this.mJS.getString(Bank.this.getString(R.string.cb_pin)));
                    Bank.this.updateHeight(view);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }

        AnonymousClass16(String str, String str2) {
            this.val$fields = str;
            this.val$params = str2;
        }

        public void run() {
            Object obj = 1;
            if (Bank.this.loadingLayout != null) {
                Bank.this.customProgressBar.removeProgressDialog(Bank.this.loadingLayout.findViewById(R.id.progress));
            }
            if (Bank.this.enterOTPView != null) {
                Bank.this.customProgressBar.removeProgressDialog(Bank.this.enterOTPView.findViewById(R.id.progress));
            }
            try {
                if (!(Bank.this.waitingOTPTimer == null || Bank.this.enterOtpRunnable == null)) {
                    Bank.this.cbUtil.cancelTimer(Bank.this.waitingOTPTimer);
                }
                if (this.val$fields.equals(Bank.this.getString(R.string.cb_error))) {
                    Bank.this.onBankError();
                } else if (this.val$fields.equals("parse error")) {
                    Bank.this.onBankError();
                } else if (this.val$fields.contentEquals(CBConstant.LOADING) && !Bank.this.pin_selected_flag && Bank.this.checkLoading) {
                    Bank.this.onHelpAvailable();
                    if (Bank.this.cbTransparentView != null) {
                        Bank.this.cbTransparentView.setVisibility(0);
                    }
                    if (Bank.this.loadingLayout == null) {
                        Bank.this.loadingLayout = Bank.this.activity.getLayoutInflater().inflate(R.layout.loading, null);
                    }
                    r0 = (ImageView) Bank.this.loadingLayout.findViewById(R.id.bank_logo);
                    if (Bank.this.drawable != null) {
                        r0.setImageDrawable(Bank.this.drawable);
                    }
                    LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, Bank.this.chooseActionHeight);
                    r1 = Bank.this.loadingLayout.findViewById(R.id.loading);
                    r1.setLayoutParams(layoutParams);
                    r1.requestLayout();
                    r1.invalidate();
                    Bank.this.customProgressBar.showDialog(Bank.this.loadingLayout.findViewById(R.id.progress));
                    Bank.this.cbBaseView.removeAllViews();
                    Bank.this.cbBaseView.addView(Bank.this.loadingLayout);
                    if (Bank.this.cbBaseView.isShown()) {
                        Bank.this.frameState = 2;
                    } else {
                        Bank.this.maximiseWebviewHeight();
                    }
                    Bank.this.updateHeight(Bank.this.loadingLayout);
                } else if (this.val$fields.equals(Bank.this.getString(R.string.cb_choose))) {
                    Bank.this.pageType = CBAnalyticsConstant.CHOOSE_SCREEN;
                    Bank.this.addCustomBrowserEventAnalytics();
                    Bank.this.frameState = 2;
                    Bank.this.checkLoading = true;
                    if (Bank.this.cbTransparentView != null) {
                        Bank.this.cbTransparentView.setVisibility(0);
                    }
                    r1 = Bank.this.activity.getLayoutInflater().inflate(R.layout.choose_action, null);
                    if (Bank.this.maxWebview == 0) {
                        Bank.this.calculateMaximumWebViewHeight();
                        Bank.this.maximiseWebviewHeight();
                    }
                    Bank.this.cbBaseView.setVisibility(0);
                    if (Bank.this.cbSlideBarView != null) {
                        Bank.this.cbSlideBarView.setVisibility(8);
                    }
                    Bank.this.calculateCBHeight(r1);
                    Bank.this.onHelpAvailable();
                    r1.measure(-2, -2);
                    Bank.this.chooseActionHeight = r1.getMeasuredHeight();
                    r0 = (ImageView) r1.findViewById(R.id.bank_logo);
                    if (Bank.this.drawable != null) {
                        r0.setImageDrawable(Bank.this.drawable);
                    }
                    Bank.this.cbBaseView.removeAllViews();
                    Bank.this.cbBaseView.addView(r1);
                    if (Bank.this.cbBaseView.isShown()) {
                        Bank.this.frameState = 2;
                    }
                    CharSequence spannableStringBuilder = new SpannableStringBuilder("Select an option for Faster payment");
                    spannableStringBuilder.setSpan(new StyleSpan(1), 21, 27, 33);
                    ((TextView) r1.findViewById(R.id.choose_text)).setText(spannableStringBuilder);
                    try {
                        JSONObject jSONObject = new JSONObject(this.val$params);
                        if (!jSONObject.has(Bank.this.getString(R.string.cb_otp)) || jSONObject.getBoolean(Bank.this.getString(R.string.cb_otp))) {
                            r1.findViewById(R.id.otp).setOnClickListener(Bank.this.buttonClickListener);
                            if (Bank.this.autoSelectOtp) {
                                Bank.this.eventRecorded = CBAnalyticsConstant.CB_AUTO_OTP_SELECT;
                                Bank.this.addEventAnalytics(CBAnalyticsConstant.USER_INPUT, Bank.this.eventRecorded);
                                r1.findViewById(R.id.otp).performClick();
                                Bank.this.autoSelectOtp = false;
                            }
                        } else {
                            r1.findViewById(R.id.otp).setVisibility(8);
                            r1.findViewById(R.id.view).setVisibility(8);
                        }
                        r1.findViewById(R.id.otp).setOnClickListener(Bank.this.buttonClickListener);
                        if (!jSONObject.has(Bank.this.getString(R.string.cb_pin)) || jSONObject.getBoolean(Bank.this.getString(R.string.cb_pin))) {
                            r1.findViewById(R.id.pin).setOnClickListener(new AnonymousClass1(jSONObject));
                        } else {
                            r1.findViewById(R.id.pin).setVisibility(8);
                            r1.findViewById(R.id.view).setVisibility(8);
                        }
                        if (jSONObject.has(Bank.this.getString(R.string.cb_error))) {
                            r1.findViewById(R.id.error_message).setVisibility(0);
                            ((TextView) r1.findViewById(R.id.error_message)).setText(jSONObject.getString("error"));
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                } else if (this.val$fields.equals(Bank.this.getString(R.string.cb_incorrect_OTP_2))) {
                    Bank.this.pageType = CBAnalyticsConstant.OTP_PAGE;
                    Bank.this.addCustomBrowserEventAnalytics();
                    Bank.this.checkLoading = true;
                    Bank.this.onHelpAvailable();
                    View inflate = Bank.this.activity.getLayoutInflater().inflate(R.layout.retry_otp, null);
                    r0 = (ImageView) inflate.findViewById(R.id.bank_logo);
                    if (Bank.this.drawable != null) {
                        r0.setImageDrawable(Bank.this.drawable);
                    }
                    Bank.this.cbBaseView.removeAllViews();
                    Bank.this.cbBaseView.addView(inflate);
                    if (Bank.this.cbBaseView.isShown()) {
                        Bank.this.frameState = 2;
                    } else {
                        if (Bank.this.cbSlideBarView != null) {
                            Bank.this.cbSlideBarView.setVisibility(0);
                        }
                        Bank.this.maximiseWebviewHeight();
                    }
                    if (Bank.this.mPassword == null) {
                        inflate.findViewById(R.id.regenerate_layout).setVisibility(0);
                        inflate.findViewById(R.id.Regenerate_layout_gone).setVisibility(8);
                        try {
                            r0 = new JSONObject(this.val$params);
                            if (!(r0.has(Bank.this.getString(R.string.cb_pin)) && r0.getBoolean(Bank.this.getString(R.string.cb_pin)))) {
                                obj = null;
                            }
                            inflate.findViewById(R.id.enter_manually).setOnClickListener(Bank.this.buttonClickListener);
                            if (obj != null) {
                                inflate.findViewById(R.id.pin_layout_gone).setVisibility(0);
                            } else {
                                inflate.findViewById(R.id.pin_layout_gone).setVisibility(8);
                            }
                            inflate.findViewById(R.id.pin).setOnClickListener(Bank.this.buttonClickListener);
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    Bank.this.updateHeight(inflate);
                } else if (this.val$fields.equals(Bank.this.getString(R.string.cb_retry_otp))) {
                    Bank.this.pageType = CBAnalyticsConstant.OTP_PAGE;
                    Bank.this.addCustomBrowserEventAnalytics();
                    Bank.this.checkLoading = true;
                    Bank.this.onHelpAvailable();
                    Bank.this.hideSoftKeyboard();
                    if (Bank.this.cbTransparentView != null) {
                        Bank.this.cbTransparentView.setVisibility(0);
                    }
                    View inflate2 = Bank.this.activity.getLayoutInflater().inflate(R.layout.retry_otp, null);
                    r0 = (ImageView) inflate2.findViewById(R.id.bank_logo);
                    if (Bank.this.drawable != null) {
                        r0.setImageDrawable(Bank.this.drawable);
                    }
                    Bank.this.cbBaseView.removeAllViews();
                    Bank.this.cbBaseView.addView(inflate2);
                    if (Bank.this.cbBaseView.isShown()) {
                        Bank.this.frameState = 2;
                    } else {
                        if (Bank.this.cbSlideBarView != null) {
                            Bank.this.cbSlideBarView.setVisibility(0);
                        }
                        Bank.this.maximiseWebviewHeight();
                    }
                    try {
                        if (Bank.this.mPassword == null) {
                            r0 = new JSONObject(this.val$params);
                            Object obj2 = (r0.has(Bank.this.getString(R.string.cb_regenerate)) && r0.getBoolean(Bank.this.getString(R.string.cb_regenerate))) ? 1 : null;
                            Object obj3 = (r0.has(Bank.this.getString(R.string.cb_pin)) && r0.getBoolean(Bank.this.getString(R.string.cb_pin))) ? 1 : null;
                            inflate2.findViewById(R.id.regenerate_layout).setVisibility(0);
                            if (obj2 != null) {
                                inflate2.findViewById(R.id.Regenerate_layout_gone).setVisibility(0);
                                if (obj3 != null) {
                                    inflate2.findViewById(R.id.Enter_manually_gone).setVisibility(8);
                                    inflate2.findViewById(R.id.pin_layout_gone).setVisibility(0);
                                } else {
                                    inflate2.findViewById(R.id.Enter_manually_gone).setVisibility(0);
                                    inflate2.findViewById(R.id.pin_layout_gone).setVisibility(8);
                                }
                            } else {
                                if (obj3 != null) {
                                    inflate2.findViewById(R.id.pin_layout_gone).setVisibility(0);
                                } else {
                                    inflate2.findViewById(R.id.pin_layout_gone).setVisibility(8);
                                }
                                inflate2.findViewById(R.id.Regenerate_layout_gone).setVisibility(8);
                                inflate2.findViewById(R.id.Enter_manually_gone).setVisibility(0);
                            }
                        }
                        inflate2.findViewById(R.id.pin).setOnClickListener(Bank.this.buttonClickListener);
                        inflate2.findViewById(R.id.enter_manually).setOnClickListener(Bank.this.buttonClickListener);
                        inflate2.findViewById(R.id.retry).setOnClickListener(Bank.this.buttonClickListener);
                        Bank.this.buttonClickListener.setView(inflate2);
                        inflate2.findViewById(R.id.approve).setOnClickListener(Bank.this.buttonClickListener);
                    } catch (Exception e22) {
                        e22.printStackTrace();
                    }
                    Bank.this.updateHeight(inflate2);
                } else if (this.val$fields.equals(Bank.this.getString(R.string.cb_enter_pin))) {
                    Bank.this.pageType = CBAnalyticsConstant.PIN_PAGE;
                    Bank.this.addCustomBrowserEventAnalytics();
                    if (Bank.this.cbSlideBarView != null) {
                        Bank.this.cbSlideBarView.setVisibility(8);
                    }
                    Bank.this.onHelpUnavailable();
                    Bank.this.pin_selected_flag = true;
                    Bank.this.approve_flag = Boolean.valueOf(true);
                    Bank.this.maximiseWebviewHeight();
                    Bank.this.frameState = 1;
                    if (Bank.this.cbTransparentView != null) {
                        Bank.this.cbTransparentView.setVisibility(8);
                    }
                    Bank.this.maximiseWebviewHeight();
                    Bank.this.cbBaseView.removeAllViews();
                } else if (this.val$fields.equals(Bank.this.getString(R.string.cb_enter_otp))) {
                    Bank.this.pageType = CBAnalyticsConstant.OTP_PAGE;
                    Bank.this.SMSOTPClicked = false;
                    Bank.this.checkPermission();
                    Bank.this.enterOtpParams = this.val$params;
                    if (!Bank.this.checkPermissionVisibility) {
                        Bank.this.addCustomBrowserEventAnalytics();
                        Bank.this.enter_otp(this.val$params);
                    }
                } else if (this.val$fields.equals(Bank.this.getString(R.string.cb_incorrect_pin))) {
                    Bank.this.pageType = CBAnalyticsConstant.CHOOSE_SCREEN;
                    Bank.this.addCustomBrowserEventAnalytics();
                    try {
                        r0 = new JSONObject(this.val$params);
                        if (r0.has(Bank.this.getString(R.string.cb_otp)) && r0.getBoolean(Bank.this.getString(R.string.cb_otp))) {
                            Bank.this.checkLoading = true;
                            Bank.this.onHelpAvailable();
                            r1 = Bank.this.activity.getLayoutInflater().inflate(R.layout.choose_action, null);
                            r0 = (ImageView) r1.findViewById(R.id.bank_logo);
                            if (Bank.this.drawable != null) {
                                r0.setImageDrawable(Bank.this.drawable);
                            }
                            TextView textView = (TextView) r1.findViewById(R.id.error_message);
                            textView.setVisibility(0);
                            textView.setText(Bank.this.activity.getResources().getString(R.string.cb_incorrect_password));
                            textView = (TextView) r1.findViewById(R.id.choose_text);
                            textView.setVisibility(0);
                            textView.setText(Bank.this.activity.getResources().getString(R.string.cb_retry));
                            Bank.this.cbBaseView.removeAllViews();
                            Bank.this.cbBaseView.addView(r1);
                            r1.findViewById(R.id.otp).setOnClickListener(Bank.this.buttonClickListener);
                            r1.findViewById(R.id.pin).setOnClickListener(Bank.this.buttonClickListener);
                            Bank.this.updateHeight(r1);
                            if (Bank.this.cbBaseView.isShown()) {
                                Bank.this.frameState = 2;
                            } else {
                                Bank.this.maximiseWebviewHeight();
                            }
                        }
                    } catch (Exception e222) {
                        e222.printStackTrace();
                    }
                } else if (this.val$fields.equals(Bank.this.getString(R.string.cb_register_option))) {
                    Bank.this.pageType = CBAnalyticsConstant.REGISTER_PAGE;
                    Bank.this.addCustomBrowserEventAnalytics();
                    Bank.this.onHelpAvailable();
                    r1 = Bank.this.activity.getLayoutInflater().inflate(R.layout.register, null);
                    Bank.this.cbBaseView.removeAllViews();
                    Bank.this.cbBaseView.addView(r1);
                    r0 = (ImageView) r1.findViewById(R.id.bank_logo);
                    if (Bank.this.drawable != null) {
                        r0.setImageDrawable(Bank.this.drawable);
                    }
                    Bank.this.updateHeight(r1);
                    if (Bank.this.cbBaseView.isShown()) {
                        Bank.this.frameState = 2;
                    } else {
                        Bank.this.maximiseWebviewHeight();
                    }
                } else {
                    Bank.this.maximiseWebviewHeight();
                    Bank.this.frameState = 1;
                    if (Bank.this.cbSlideBarView != null) {
                        Bank.this.cbSlideBarView.setVisibility(8);
                    }
                    Bank.this.onHelpUnavailable();
                }
            } catch (Exception e2222) {
                e2222.printStackTrace();
            }
            if (Bank.this.pageType != null && !Bank.this.pageType.equalsIgnoreCase(BuildConfig.VERSION_NAME)) {
                Bank.this.addEventAnalytics(CBAnalyticsConstant.ARRIVAL, Bank.this.timeOfArrival);
            }
        }
    }

    /* renamed from: com.payu.custombrowser.Bank.17 */
    class AnonymousClass17 implements Runnable {
        final /* synthetic */ String val$result;

        AnonymousClass17(String str) {
            this.val$result = str;
        }

        public void run() {
            if (Bank.this.activity != null && !Bank.this.activity.isFinishing() && Bank.this.isAdded()) {
                Intent intent = new Intent();
                intent.putExtra(Bank.this.getString(R.string.cb_result), this.val$result);
                Bank.this.activity.setResult(0, intent);
                Bank.this.activity.finish();
            }
        }
    }

    /* renamed from: com.payu.custombrowser.Bank.18 */
    class AnonymousClass18 implements TextWatcher {
        final /* synthetic */ Button val$approveButton;
        final /* synthetic */ EditText val$otpSms;

        AnonymousClass18(EditText editText, Button button) {
            this.val$otpSms = editText;
            this.val$approveButton = button;
        }

        public void afterTextChanged(Editable editable) {
        }

        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (this.val$otpSms.getText().toString().length() > 5) {
                Bank.this.buttonClickListener.setView(Bank.this.enterOTPView);
                this.val$approveButton.setOnClickListener(Bank.this.buttonClickListener);
                this.val$approveButton.setClickable(true);
                CBUtil.setAlpha(1.0f, this.val$approveButton);
                return;
            }
            this.val$approveButton.setClickable(false);
            CBUtil.setAlpha(1.0f, this.val$approveButton);
            this.val$approveButton.setOnClickListener(null);
        }
    }

    /* renamed from: com.payu.custombrowser.Bank.1 */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ boolean val$showCustomBrowser;

        AnonymousClass1(boolean z) {
            this.val$showCustomBrowser = z;
        }

        public void run() {
            if (!this.val$showCustomBrowser) {
                Bank.this.maximiseWebviewHeight();
                Bank.this.frameState = 1;
                try {
                    if (Bank.this.cbSlideBarView != null) {
                        Bank.this.cbSlideBarView.setVisibility(8);
                    }
                    Bank.this.onHelpUnavailable();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* renamed from: com.payu.custombrowser.Bank.20 */
    class AnonymousClass20 implements TextWatcher {
        final /* synthetic */ Button val$approveButton;
        final /* synthetic */ EditText val$otpSms;

        AnonymousClass20(EditText editText, Button button) {
            this.val$otpSms = editText;
            this.val$approveButton = button;
        }

        public void afterTextChanged(Editable editable) {
        }

        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (this.val$otpSms.getText().toString().length() > 5) {
                Bank.this.buttonClickListener.setView(Bank.this.enterOTPView);
                this.val$approveButton.setOnClickListener(Bank.this.buttonClickListener);
                this.val$approveButton.setClickable(true);
                CBUtil.setAlpha(1.0f, this.val$approveButton);
                return;
            }
            this.val$approveButton.setClickable(false);
            CBUtil.setAlpha(0.3f, this.val$approveButton);
            this.val$approveButton.setOnClickListener(null);
        }
    }

    /* renamed from: com.payu.custombrowser.Bank.21 */
    class AnonymousClass21 implements Runnable {
        int i;
        final /* synthetic */ Button val$approveButton;
        final /* synthetic */ View val$enterManuallyButton;
        final /* synthetic */ View val$enterManuallyGone;
        final /* synthetic */ EditText val$otpSms;
        final /* synthetic */ String val$params;
        final /* synthetic */ View val$pinButton;
        final /* synthetic */ View val$pinLayoutGone;
        final /* synthetic */ View val$regenerateLayout;
        final /* synthetic */ View val$regenerateLayoutGone;
        final /* synthetic */ View val$retryButton;
        final /* synthetic */ View val$retryText;
        final /* synthetic */ int val$time_wait_for_sms;
        final /* synthetic */ TextView val$timerView;
        final /* synthetic */ View val$waiting;

        AnonymousClass21(int i, TextView textView, String str, View view, View view2, View view3, View view4, View view5, Button button, View view6, EditText editText, View view7, View view8, View view9) {
            this.val$time_wait_for_sms = i;
            this.val$timerView = textView;
            this.val$params = str;
            this.val$regenerateLayoutGone = view;
            this.val$pinLayoutGone = view2;
            this.val$enterManuallyGone = view3;
            this.val$retryText = view4;
            this.val$regenerateLayout = view5;
            this.val$approveButton = button;
            this.val$waiting = view6;
            this.val$otpSms = editText;
            this.val$pinButton = view7;
            this.val$retryButton = view8;
            this.val$enterManuallyButton = view9;
            this.i = this.val$time_wait_for_sms;
        }

        public void run() {
            int i = 1;
            if (this.i == 0) {
                try {
                    if (Bank.this.activity != null && Bank.this.enterOTPView.isShown() && Bank.this.activity.findViewById(R.id.otp_sms) != null) {
                        this.val$timerView.setVisibility(8);
                        JSONObject jSONObject = new JSONObject(this.val$params);
                        int i2 = (jSONObject.has(Bank.this.getString(R.string.cb_regenerate)) && jSONObject.getBoolean(Bank.this.getString(R.string.cb_regenerate))) ? 1 : 0;
                        if (!(jSONObject.has(Bank.this.getString(R.string.cb_pin)) && jSONObject.getBoolean(Bank.this.getString(R.string.cb_pin)))) {
                            i = 0;
                        }
                        if (i2 != 0) {
                            this.val$regenerateLayoutGone.setVisibility(0);
                            this.val$pinLayoutGone.setVisibility(8);
                            this.val$enterManuallyGone.setVisibility(0);
                        } else {
                            if (i != 0) {
                                this.val$pinLayoutGone.setVisibility(0);
                            } else {
                                this.val$pinLayoutGone.setVisibility(8);
                            }
                            this.val$regenerateLayoutGone.setVisibility(8);
                            this.val$enterManuallyGone.setVisibility(0);
                        }
                        this.val$retryText.setVisibility(0);
                        this.val$regenerateLayout.setVisibility(0);
                        this.val$approveButton.setVisibility(8);
                        this.val$waiting.setVisibility(8);
                        this.val$otpSms.setVisibility(8);
                        this.val$pinButton.setOnClickListener(Bank.this.buttonClickListener);
                        this.val$retryButton.setOnClickListener(Bank.this.buttonClickListener);
                        this.val$enterManuallyButton.setOnClickListener(Bank.this.buttonClickListener);
                        Bank.this.updateHeight(Bank.this.enterOTPView);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else if (!this.val$otpSms.hasFocus() && this.val$otpSms.getText().toString().matches(BuildConfig.VERSION_NAME)) {
                if (this.i == this.val$time_wait_for_sms) {
                    this.val$timerView.setVisibility(0);
                }
                r0 = (VERSION.SDK_INT < 23 || Bank.this.permissionGranted) ? this.i + BuildConfig.VERSION_NAME : this.i != 1 ? this.i + "  secs remaining to regenerate OTP\n" : this.i + " sec remaining to regenerate OTP\n";
                this.val$timerView.setText(r0);
                this.i--;
            }
        }
    }

    /* renamed from: com.payu.custombrowser.Bank.22 */
    class AnonymousClass22 extends CountDownTimer {
        AnonymousClass22(long j, long j2) {
            super(j, j2);
        }

        public void onFinish() {
            Bank.this.isSnoozeTimerRunning = false;
            if (Bank.this.cbWebView.getProgress() < Bank.this.snoozeUrlLoadingPercentage && !Bank.this.isSnoozeWindowVisible && Bank.this.showSnoozeWindow && !Bank.this.isTransactionStatusReceived) {
                Bank.this.launchSnoozeWindow();
            }
            Bank.this.stopSnoozeCountDownTimer();
        }

        public void onTick(long j) {
            Bank.this.isSnoozeTimerRunning = true;
        }
    }

    /* renamed from: com.payu.custombrowser.Bank.23 */
    class AnonymousClass23 implements OnClickListener {
        final /* synthetic */ TextView val$snoozeDialogHeaderText;
        final /* synthetic */ TextView val$snoozeMessageTextView;
        final /* synthetic */ Button val$snoozeTransactionButton;
        final /* synthetic */ TextView val$tConfirm;
        final /* synthetic */ TextView val$tNConfirm;
        final /* synthetic */ TextView val$transactionSnoozedMessageTextView1;

        AnonymousClass23(TextView textView, TextView textView2, Button button, TextView textView3, TextView textView4, TextView textView5) {
            this.val$snoozeDialogHeaderText = textView;
            this.val$snoozeMessageTextView = textView2;
            this.val$snoozeTransactionButton = button;
            this.val$transactionSnoozedMessageTextView1 = textView3;
            this.val$tConfirm = textView4;
            this.val$tNConfirm = textView5;
        }

        public void onClick(View view) {
            Bank.this.addEventAnalytics(CBAnalyticsConstant.SNOOZE_BACKWARD_WINDOW_ACTION, CBAnalyticsConstant.SNOOZE_CONFIRM_DEDUCTION_Y);
            if (Bank.this.waitingOTPTimer != null) {
                Bank.this.waitingOTPTimer.cancel();
                Bank.this.waitingOTPTimer.purge();
            }
            Bank bank = Bank.this;
            bank.snoozeCountBackwardJourney++;
            Bank.this.snoozeDialog.setCanceledOnTouchOutside(false);
            this.val$snoozeDialogHeaderText.setText(Bank.this.activity.getResources().getString(R.string.cb_confirm_transaction));
            this.val$snoozeMessageTextView.setText(Bank.this.activity.getString(R.string.cb_transaction_status));
            Bank.this.snoozeLoaderView.setVisibility(0);
            Bank.this.snoozeLoaderView.startAnimation();
            this.val$snoozeTransactionButton.setVisibility(8);
            this.val$transactionSnoozedMessageTextView1.setVisibility(8);
            this.val$tConfirm.setVisibility(8);
            this.val$tNConfirm.setVisibility(8);
            Bank.this.startSnoozeServiceVerifyPayment(Bank.this.activity.getResources().getString(R.string.cb_confirm_transaction));
        }
    }

    /* renamed from: com.payu.custombrowser.Bank.27 */
    class AnonymousClass27 implements OnClickListener {
        final /* synthetic */ TextView val$cancelTxnSnooze;
        final /* synthetic */ TextView val$dismissSnoozeWindow;
        final /* synthetic */ Button val$retryAnywayButton;
        final /* synthetic */ Button val$retryTransactionButton;
        final /* synthetic */ TextView val$snoozeDialogHeaderText;
        final /* synthetic */ TextView val$snoozeMessageTextView;
        final /* synthetic */ TextView val$snoozeRetryDetailText;
        final /* synthetic */ Button val$snoozeTransactionButton;
        final /* synthetic */ TextView val$transactionSnoozedMessageTextView1;

        AnonymousClass27(TextView textView, TextView textView2, Button button, Button button2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, Button button3) {
            this.val$cancelTxnSnooze = textView;
            this.val$dismissSnoozeWindow = textView2;
            this.val$snoozeTransactionButton = button;
            this.val$retryTransactionButton = button2;
            this.val$snoozeMessageTextView = textView3;
            this.val$snoozeRetryDetailText = textView4;
            this.val$snoozeDialogHeaderText = textView5;
            this.val$transactionSnoozedMessageTextView1 = textView6;
            this.val$retryAnywayButton = button3;
        }

        public void onClick(View view) {
            Bank bank = Bank.this;
            bank.snoozeCount++;
            Bank.this.addEventAnalytics(CBAnalyticsConstant.SNOOZE_INTERACTION_TIME, CustomBrowserMain.getSystemCurrentTime());
            Bank.this.maximiseWebviewHeight();
            Bank.this.frameState = 1;
            if (Bank.this.cbSlideBarView != null) {
                Bank.this.cbSlideBarView.setVisibility(8);
            }
            Bank.this.onHelpUnavailable();
            Bank.this.snoozeClickedTime = System.currentTimeMillis();
            Bank.this.isSnoozeBroadCastReceiverRegistered = true;
            Bank.this.isPageStoppedForcefully = true;
            Bank.this.cbWebView.stopLoading();
            if (!(CustomBrowserData.SINGLETON == null || CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback() == null)) {
                Bank.this.bindService();
            }
            Bank.this.mPassword = null;
            Bank.this.unregisterBroadcast(Bank.this.mBroadcastReceiver);
            this.val$cancelTxnSnooze.setVisibility(8);
            this.val$dismissSnoozeWindow.setVisibility(8);
            this.val$snoozeTransactionButton.setVisibility(8);
            this.val$retryTransactionButton.setVisibility(8);
            this.val$snoozeMessageTextView.setText("We have paused your transaction because the network was unable to process it now. We will notify you when the network improves.");
            this.val$snoozeRetryDetailText.setVisibility(8);
            this.val$snoozeDialogHeaderText.setText(Bank.this.activity.getResources().getString(R.string.cb_transaction_paused));
            this.val$transactionSnoozedMessageTextView1.setVisibility(0);
            this.val$retryAnywayButton.setVisibility(0);
            Bank.this.progressBarVisibilityPayuChrome(8, BuildConfig.VERSION_NAME);
            Bank.this.addEventAnalytics(CBAnalyticsConstant.SNOOZE_WINDOW_ACTION, CBAnalyticsConstant.SNOOZE_CLICK);
            Bank.this.addEventAnalytics(CBAnalyticsConstant.SNOOZE_LOAD_URL, Bank.this.cbWebView.getUrl());
            Bank.this.slowUserCountDownTimer = null;
            Bank.this.setCbBlankOverlay(0);
        }
    }

    /* renamed from: com.payu.custombrowser.Bank.3 */
    class AnonymousClass3 implements Runnable {
        final /* synthetic */ String val$result;

        AnonymousClass3(String str) {
            this.val$result = str;
        }

        public void run() {
            switch (Bank.this.storeOneClickHash) {
                case R.styleable.WaitingDots_jumpHeight /*2*/:
                    try {
                        JSONObject jSONObject = new JSONObject(this.val$result);
                        Bank.this.cbUtil.storeInSharedPreferences(Bank.this.getActivity().getApplicationContext(), jSONObject.getString(PayuConstants.CARD_TOKEN), jSONObject.getString(PayuConstants.MERCHANT_HASH));
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                default:
            }
        }
    }

    /* renamed from: com.payu.custombrowser.Bank.4 */
    class AnonymousClass4 implements OnGlobalLayoutListener {
        private final int DefaultKeyboardDP;
        private final int EstimatedKeyboardDP;
        private final Rect r;
        final /* synthetic */ View val$activityRootView;

        AnonymousClass4(View view) {
            this.val$activityRootView = view;
            this.DefaultKeyboardDP = 100;
            this.EstimatedKeyboardDP = (VERSION.SDK_INT >= 21 ? 48 : 0) + 100;
            this.r = new Rect();
        }

        public void onGlobalLayout() {
            if (Bank.this.activity != null && !Bank.this.activity.isFinishing() && !Bank.this.isRemoving() && Bank.this.isAdded()) {
                int applyDimension = (int) TypedValue.applyDimension(1, (float) this.EstimatedKeyboardDP, this.val$activityRootView.getResources().getDisplayMetrics());
                this.val$activityRootView.getWindowVisibleDisplayFrame(this.r);
                if ((this.val$activityRootView.getRootView().getHeight() - (this.r.bottom - this.r.top) >= applyDimension ? 1 : 0) != 0 && Bank.this.checkForInput == 0) {
                    ((InputMethodManager) Bank.this.activity.getSystemService("input_method")).toggleSoftInput(3, 0);
                    Bank.this.checkForInput = 1;
                }
            }
        }
    }

    /* renamed from: com.payu.custombrowser.Bank.6 */
    class AnonymousClass6 extends CountDownTimer {
        AnonymousClass6(long j, long j2) {
            super(j, j2);
        }

        public void onFinish() {
            Bank.this.dismissPayULoader();
        }

        public void onTick(long j) {
        }
    }

    /* renamed from: com.payu.custombrowser.Bank.7 */
    class AnonymousClass7 extends CountDownTimer {
        AnonymousClass7(long j, long j2) {
            super(j, j2);
        }

        public void onFinish() {
            Bank.this.progressBarVisibilityPayuChrome(0, BuildConfig.VERSION_NAME);
            Bank.this.forwardJourneyForChromeLoaderIsComplete = true;
        }

        public void onTick(long j) {
        }
    }

    /* renamed from: com.payu.custombrowser.Bank.9 */
    class AnonymousClass9 implements Runnable {
        final /* synthetic */ String val$fields;
        final /* synthetic */ String val$params;

        /* renamed from: com.payu.custombrowser.Bank.9.1 */
        class AnonymousClass1 implements OnClickListener {
            final /* synthetic */ CheckBox val$checkBox;

            AnonymousClass1(CheckBox checkBox) {
                this.val$checkBox = checkBox;
            }

            public void onClick(View view) {
                Bank.this.saveUserIDCheck = this.val$checkBox.isChecked();
                if (Bank.this.saveUserIDCheck) {
                    Bank.this.addEventAnalytics(CBAnalyticsConstant.USER_INPUT, CBAnalyticsConstant.USER_NAME_CHECKBOX_STATUS + "y");
                } else {
                    Bank.this.addEventAnalytics(CBAnalyticsConstant.USER_INPUT, CBAnalyticsConstant.USER_NAME_CHECKBOX_STATUS + "n");
                }
            }
        }

        /* renamed from: com.payu.custombrowser.Bank.9.2 */
        class AnonymousClass2 implements OnClickListener {
            final /* synthetic */ Button val$bContinue;

            AnonymousClass2(Button button) {
                this.val$bContinue = button;
            }

            public void onClick(View view) {
                try {
                    Bank.this.addEventAnalytics(CBAnalyticsConstant.USER_INPUT, CBAnalyticsConstant.NB_BUTTON_CLICK + this.val$bContinue.getText());
                    Bank.this.cbWebView.loadUrl("javascript:" + Bank.this.mJS.getString(Bank.this.getString(R.string.cb_btn_action)));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        /* renamed from: com.payu.custombrowser.Bank.9.3 */
        class AnonymousClass3 implements OnClickListener {
            final /* synthetic */ CheckBox val$checkBox;

            AnonymousClass3(CheckBox checkBox) {
                this.val$checkBox = checkBox;
            }

            public void onClick(View view) {
                Bank.this.showToggleCheck = this.val$checkBox.isChecked();
                if (this.val$checkBox.isChecked()) {
                    try {
                        Bank.this.cbWebView.loadUrl("javascript:" + Bank.this.mJS.getString(Bank.this.getString(R.string.cb_toggle_field)) + "(\"" + true + "\")");
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                }
                try {
                    Bank.this.cbWebView.loadUrl("javascript:" + Bank.this.mJS.getString(Bank.this.getString(R.string.cb_toggle_field)) + "(\"" + false + "\")");
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }

        AnonymousClass9(String str, String str2) {
            this.val$fields = str;
            this.val$params = str2;
        }

        public void run() {
            try {
                if (Bank.this.isSnoozeWindowVisible) {
                    Bank.this.dismissSnoozeWindow();
                    Bank.this.addEventAnalytics(CBAnalyticsConstant.SNOOZE_WINDOW_ACTION, CBAnalyticsConstant.SNOOZE_WINDOW_DISMISSED_BY_CB);
                    Bank.this.addEventAnalytics(CBAnalyticsConstant.SNOOZE_WINDOW_AUTOMATICALLY_DISAPPEAR_TIME, CustomBrowserMain.getSystemCurrentTime());
                }
                Bank.this.pageType = CBAnalyticsConstant.NBLOGIN_PAGE;
                Bank.this.timeOfArrival = CustomBrowserMain.getSystemCurrentTime();
                Bank.this.addEventAnalytics(CBAnalyticsConstant.ARRIVAL, Bank.this.timeOfArrival);
                Bank.this.onHelpAvailable();
                Bank.this.addEventAnalytics(CBAnalyticsConstant.CB_STATUS, CBAnalyticsConstant.NB_CUSTOM_BROWSER);
                if (this.val$fields != null && Bank.this.activity != null) {
                    Bank.this.dismissSnoozeWindow();
                    View inflate = Bank.this.activity.getLayoutInflater().inflate(R.layout.nb_layout, null);
                    Button button = (Button) inflate.findViewById(R.id.b_continue);
                    CheckBox checkBox = (CheckBox) inflate.findViewById(R.id.checkbox);
                    JSONObject jSONObject = new JSONObject(this.val$params);
                    String string = Bank.this.getString(R.string.cb_btn_text);
                    if (!jSONObject.has(string) || jSONObject.getString(string) == null || jSONObject.getString(string).equalsIgnoreCase(BuildConfig.VERSION_NAME)) {
                        Bank.this.onHelpUnavailable();
                        Bank.this.cbBaseView.removeAllViews();
                    } else if (this.val$fields.equals(Bank.this.getString(R.string.cb_button))) {
                        if (!jSONObject.has(Bank.this.getString(R.string.cb_checkbox))) {
                            checkBox.setVisibility(8);
                        } else if (jSONObject.getBoolean(Bank.this.getString(R.string.cb_checkbox))) {
                            if (Bank.this.saveUserIDCheck) {
                                Bank.this.addEventAnalytics(CBAnalyticsConstant.INITIAL_USER_NAME_CHECKBOX_STATUS, "y");
                                checkBox.setChecked(true);
                            } else {
                                Bank.this.addEventAnalytics(CBAnalyticsConstant.INITIAL_USER_NAME_CHECKBOX_STATUS, "n");
                                checkBox.setChecked(false);
                            }
                            checkBox.setOnClickListener(new AnonymousClass1(checkBox));
                            checkBox.setVisibility(0);
                        } else {
                            checkBox.setVisibility(8);
                        }
                        button.setText(jSONObject.getString(string));
                        button.setTransformationMethod(null);
                        button.setOnClickListener(new AnonymousClass2(button));
                        Bank.this.cbBaseView.removeAllViews();
                        Bank.this.cbBaseView.addView(inflate);
                        Bank.this.nbhelpVisible = true;
                    } else if (this.val$fields.equals(Bank.this.getString(R.string.cb_pwd_btn))) {
                        button.setText(jSONObject.getString(string));
                        if (Bank.this.showToggleCheck) {
                            checkBox.setChecked(true);
                        } else {
                            checkBox.setChecked(false);
                        }
                        if (checkBox.isChecked()) {
                            try {
                                Bank.this.cbWebView.loadUrl("javascript:" + Bank.this.mJS.getString(Bank.this.getString(R.string.cb_toggle_field)) + "(\"" + true + "\")");
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                        checkBox.setText(Bank.this.getString(R.string.cb_show_password));
                        checkBox.setVisibility(0);
                        checkBox.setOnClickListener(new AnonymousClass3(checkBox));
                        button.setOnClickListener(new OnClickListener() {
                            public void onClick(View view) {
                                try {
                                    Bank.this.cbWebView.loadUrl("javascript:" + Bank.this.mJS.getString(Bank.this.getString(R.string.cb_btn_action)));
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            }
                        });
                        Bank.this.nbhelpVisible = true;
                        Bank.this.cbBaseView.removeAllViews();
                        Bank.this.cbBaseView.addView(inflate);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class ButtonOnclickListener implements OnClickListener {
        private View view_edit;

        /* renamed from: com.payu.custombrowser.Bank.ButtonOnclickListener.1 */
        class AnonymousClass1 implements TextWatcher {
            final /* synthetic */ Button val$approveButton;
            final /* synthetic */ View val$view;

            AnonymousClass1(View view, Button button) {
                this.val$view = view;
                this.val$approveButton = button;
            }

            public void afterTextChanged(Editable editable) {
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (((EditText) this.val$view.findViewById(R.id.otp_sms)).getText().toString().length() > 5) {
                    Bank.this.buttonClickListener.setView(this.val$view);
                    this.val$approveButton.setOnClickListener(Bank.this.buttonClickListener);
                    this.val$approveButton.setClickable(true);
                    CBUtil.setAlpha(1.0f, this.val$approveButton);
                    return;
                }
                this.val$approveButton.setClickable(false);
                CBUtil.setAlpha(0.3f, this.val$approveButton);
                this.val$approveButton.setOnClickListener(null);
            }
        }

        public void onClick(View view) {
            String str = BuildConfig.VERSION_NAME;
            if (view instanceof Button) {
                str = ((Button) view).getText().toString();
            } else if (view instanceof TextView) {
                str = ((TextView) view).getText().toString();
            }
            switch (Bank.this.getCode(str.toLowerCase())) {
                case StackFrame.NO_LINE_NUMBER /*0*/:
                    Toast.makeText(Bank.this.activity, "button text not matching any click listener option", 0).show();
                case R.styleable.WaitingDots_period /*1*/:
                case R.styleable.WaitingDots_autoplay /*3*/:
                    Bank.this.pin_selected_flag = true;
                    Bank.this.approve_flag = Boolean.valueOf(true);
                    Bank.this.maximiseWebviewHeight();
                    Bank.this.frameState = 1;
                    Bank.this.onHelpUnavailable();
                    if (Bank.this.cbSlideBarView != null) {
                        Bank.this.cbSlideBarView.setVisibility(8);
                    }
                    if (Bank.this.cbTransparentView != null) {
                        Bank.this.cbTransparentView.setVisibility(8);
                    }
                    try {
                        Bank.this.cbWebView.loadUrl("javascript:" + Bank.this.mJS.getString(Bank.this.getString(R.string.cb_pin)));
                        Bank.this.eventRecorded = CBAnalyticsConstant.PASSWORD;
                        Bank.this.addEventAnalytics(CBAnalyticsConstant.USER_INPUT, Bank.this.eventRecorded);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                case R.styleable.WaitingDots_jumpHeight /*2*/:
                    try {
                        Bank.this.eventRecorded = CBAnalyticsConstant.REGENERATE;
                        Bank.this.addEventAnalytics(CBAnalyticsConstant.USER_INPUT, Bank.this.eventRecorded);
                        Bank.this.mPassword = null;
                        Bank.this.cbWebView.loadUrl("javascript:" + Bank.this.mJS.getString(Bank.this.getString(R.string.cb_regen_otp)));
                        Bank.this.prepareSmsListener();
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                case R.styleable.View_theme /*4*/:
                    View inflate = Bank.this.activity.getLayoutInflater().inflate(R.layout.wait_for_otp, null);
                    Bank.this.eventRecorded = CBAnalyticsConstant.ENTER_MANUALLY;
                    Bank.this.addEventAnalytics(CBAnalyticsConstant.USER_INPUT, Bank.this.eventRecorded);
                    if (Bank.this.chooseActionHeight == 0) {
                        inflate.measure(-2, -2);
                        Bank.this.chooseActionHeight = inflate.getMeasuredHeight();
                    }
                    Bank.this.cbBaseView.removeAllViews();
                    Bank.this.cbBaseView.addView(inflate);
                    if (Bank.this.cbBaseView.isShown()) {
                        Bank.this.frameState = 2;
                    } else {
                        Bank.this.maximiseWebviewHeight();
                    }
                    ImageView imageView = (ImageView) inflate.findViewById(R.id.bank_logo);
                    if (Bank.this.drawable != null) {
                        imageView.setImageDrawable(Bank.this.drawable);
                    }
                    inflate.findViewById(R.id.waiting).setVisibility(8);
                    Button button = (Button) inflate.findViewById(R.id.approve);
                    button.setClickable(false);
                    EditText editText = (EditText) inflate.findViewById(R.id.otp_sms);
                    Bank.this.showSoftKeyboard(editText);
                    CBUtil.setAlpha(0.3f, button);
                    button.setVisibility(0);
                    editText.setVisibility(0);
                    inflate.findViewById(R.id.regenerate_layout).setVisibility(8);
                    inflate.findViewById(R.id.progress).setVisibility(4);
                    Bank.this.showSoftKeyboard(editText);
                    editText.addTextChangedListener(new AnonymousClass1(inflate, button));
                    Bank.this.updateHeight(inflate);
                case R.styleable.ViewPagerIndicator_vpiUnderlinePageIndicatorStyle /*5*/:
                    try {
                        Bank.this.hideKeyboardForcefully();
                        Bank.this.mPassword = null;
                        Bank.this.checkLoading = false;
                        Bank.this.approve_flag = Boolean.valueOf(true);
                        Bank.this.onHelpUnavailable();
                        Bank.this.maximiseWebviewHeight();
                        Bank.this.frameState = 1;
                        Bank.this.prepareSmsListener();
                        if (((EditText) this.view_edit.findViewById(R.id.otp_sms)).getText().toString().length() > 5) {
                            Bank.this.eventRecorded = CBAnalyticsConstant.APPROVED_OTP;
                            Bank.this.addEventAnalytics(CBAnalyticsConstant.USER_INPUT, Bank.this.eventRecorded);
                            Bank.this.addEventAnalytics(CBAnalyticsConstant.APPROVE_BTN_CLICK_TIME, CustomBrowserMain.getSystemCurrentTime());
                            Bank.this.cbWebView.loadUrl("javascript:" + Bank.this.mJS.getString(Bank.this.getString(R.string.cb_process_otp)) + "(\"" + ((TextView) Bank.this.activity.findViewById(R.id.otp_sms)).getText().toString() + "\")");
                            ((EditText) this.view_edit.findViewById(R.id.otp_sms)).setText(BuildConfig.VERSION_NAME);
                        }
                    } catch (JSONException e22) {
                        e22.printStackTrace();
                    }
                case R.styleable.Toolbar_contentInsetEnd /*6*/:
                case R.styleable.Toolbar_contentInsetLeft /*7*/:
                    Bank.this.SMSOTPClicked = true;
                    Bank.this.checkPermission();
                    Bank.this.eventRecorded = CBAnalyticsConstant.OTP;
                    Bank.this.addEventAnalytics(CBAnalyticsConstant.USER_INPUT, Bank.this.eventRecorded);
                    if (VERSION.SDK_INT < 23) {
                        Bank.this.mPassword = null;
                        Bank.this.prepareSmsListener();
                    }
                default:
            }
        }

        public void setView(View view) {
            this.view_edit = view;
        }
    }

    static {
        Version = BuildConfig.VERSION_NAME;
        whiteListedUrls = new ArrayList();
        Version = BuildConfig.VERSION_NAME;
    }

    public Bank() {
        this.mCountDownTimer = null;
        this.isSnoozeTimerRunning = false;
        this.isPageStoppedForcefully = false;
        this.firstFinish = true;
        this.mLoadingJS = false;
        this.saveUserIDCheck = true;
        this.isMRDataSet = false;
        this.showSnoozeWindow = true;
        this.pageStarted = false;
        this.webpageNotFoundError = false;
        this.buttonClickListener = new ButtonOnclickListener();
        this.showToggleCheck = false;
        this.customProgressBar = new CustomProgressBar();
        this.backwardJourneyUrls = new HashSet();
        this.cbUtil = new CBUtil();
        this.serialExecutor = Executors.newCachedThreadPool();
        this.retryUrls = new HashSet();
    }

    private void checkPermission() {
        boolean z = false;
        if (this.checkedPermission || VERSION.SDK_INT < 23 || !this.merchantSMSPermission) {
            onHelpAvailable();
            if (ContextCompat.checkSelfPermission(this.activity, "android.permission.RECEIVE_SMS") == 0) {
                z = true;
            }
            this.permissionGranted = z;
            if (this.SMSOTPClicked) {
                try {
                    this.cbWebView.loadUrl("javascript:" + this.mJS.getString(getString(R.string.cb_otp)));
                    return;
                } catch (JSONException e) {
                    e.printStackTrace();
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            }
            return;
        }
        this.checkedPermission = true;
        if (ContextCompat.checkSelfPermission(this.activity, "android.permission.RECEIVE_SMS") != 0) {
            requestPermissions(new String[]{"android.permission.RECEIVE_SMS"}, 1);
            this.checkPermissionVisibility = true;
            return;
        }
        this.permissionGranted = true;
        if (this.SMSOTPClicked) {
            try {
                this.cbWebView.loadUrl("javascript:" + this.mJS.getString(getString(R.string.cb_otp)));
            } catch (JSONException e3) {
                e3.printStackTrace();
            } catch (Exception e22) {
                e22.printStackTrace();
            }
        }
    }

    private void initializeSnoozeTimer() {
        if (CustomBrowserData.SINGLETON != null && CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback() != null && this.customBrowserConfig != null && this.cbUtil.getBooleanSharedPreferenceDefaultTrue(CBConstant.SNOOZE_ENABLED, this.activity.getApplicationContext()) && this.customBrowserConfig.getEnableSnooze() > this.snoozeCount) {
            if (this.isSnoozeTimerRunning) {
                stopSnoozeCountDownTimer();
            }
            startSnoozeCountDownTimer();
        }
    }

    public static boolean isUrlWhiteListed(String str) {
        if ((str.contains(CBConstant.PAYU_DOMAIN_PROD) || str.contains(CBConstant.PAYU_DOMAIN_TEST)) && str.contains(CBConstant.RESPONSE_BACKWARD)) {
            return true;
        }
        for (String str2 : whiteListedUrls) {
            if (str != null && str.contains(str2)) {
                return true;
            }
        }
        return false;
    }

    private void jellyBeanOnReceivedError() {
        setIsPageStoppedForcefully(true);
    }

    private void retryPayment(View view) {
        if (view.getId() == R.id.button_retry_transaction) {
            this.snoozeCount++;
            addEventAnalytics(CBAnalyticsConstant.SNOOZE_INTERACTION_TIME, CustomBrowserMain.getSystemCurrentTime());
            addEventAnalytics(CBAnalyticsConstant.SNOOZE_WINDOW_ACTION, CBAnalyticsConstant.SNOOZE_RETRY_CLICK);
        } else if (view.getId() == R.id.button_retry_anyway) {
            addEventAnalytics(CBAnalyticsConstant.SNOOZE_TXN_PAUSED_USER_INTERACTION_TIME, CustomBrowserMain.getSystemCurrentTime());
            addEventAnalytics(CBAnalyticsConstant.SNOOZE_TXN_PAUSED_WINDOW_ACTION, CBAnalyticsConstant.RETRY_ANYWAY_CLICK);
        }
        this.isTransactionStatusReceived = false;
        if (CBUtil.isNetworkAvailable(this.activity.getApplicationContext())) {
            if (this.cbWebView.getUrl() == null || this.cbWebView.getUrl().contentEquals(PayuConstants.PRODUCTION_PAYMENT_URL) || !isUrlWhiteListed(this.cbWebView.getUrl())) {
                if (this.customBrowserConfig.getPostURL().contentEquals(PayuConstants.PRODUCTION_PAYMENT_URL) || this.customBrowserConfig.getPostURL().contentEquals(PayuConstants.MOBILE_TEST_PAYMENT_URL)) {
                    markPreviousTxnAsUserCanceled(CBUtil.getLogMessage(this.activity.getApplicationContext(), CBAnalyticsConstant.SURE_PAY_CANCELLED, this.customBrowserConfig.getTransactionID(), BuildConfig.VERSION_NAME, keyAnalytics, this.customBrowserConfig.getTransactionID(), BuildConfig.VERSION_NAME));
                }
                reloadWebView(this.customBrowserConfig.getPostURL(), this.customBrowserConfig.getPayuPostData());
            } else {
                reloadWebView();
            }
            dismissSnoozeWindow();
            this.slowUserCountDownTimer = null;
            if (view.getId() == R.id.button_retry_anyway) {
                killSnoozeService();
                ((NotificationManager) this.activity.getSystemService("notification")).cancel(CBConstant.SNOOZE_NOTIFICATION_ID);
                return;
            }
            return;
        }
        addEventAnalytics(CBAnalyticsConstant.SNOOZE_RESUME_URL, CBConstant.MSG_NO_INTERNET);
        Toast.makeText(this.activity.getApplicationContext(), CBConstant.MSG_NO_INTERNET, 0).show();
    }

    private void showMagicRetryCB() {
        try {
            this.cbWebView.loadUrl("javascript:" + this.mBankJS.getString("getMagicRetryUrls") + "('" + keyAnalytics + "')");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void snoozeOnReceivedError() {
        setIsPageStoppedForcefully(true);
        launchSnoozeWindow(2);
    }

    private void startPayUChromeLoaderDisbaleTimer() {
        if (this.payUChromeLoaderDisableTimer != null) {
            this.payUChromeLoaderDisableTimer.cancel();
        }
        if (this.payUChromeLoaderEnableTimer != null) {
            this.payUChromeLoaderEnableTimer.cancel();
        }
        this.payUChromeLoaderDisableTimer = new AnonymousClass6(2000, 1000).start();
    }

    private void startPayUChromeLoaderEnableTimer() {
        if (this.payUChromeLoaderEnableTimer != null) {
            this.payUChromeLoaderEnableTimer.cancel();
        }
        this.payUChromeLoaderEnableTimer = new AnonymousClass7(1000, 1000).start();
    }

    private void startSnoozeCountDownTimer() {
        this.mCountDownTimer = new AnonymousClass22((long) this.snoozeUrlLoadingTimeout, 500);
        this.mCountDownTimer.start();
    }

    private void stopSnoozeCountDownTimer() {
        if (this.mCountDownTimer != null) {
            this.isSnoozeTimerRunning = false;
            this.mCountDownTimer.cancel();
            this.mCountDownTimer = null;
        }
    }

    private void stopWifi() {
        if (this.stopOnlyOnce) {
            this.stopOnlyOnce = false;
            return;
        }
        this.stopOnlyOnce = true;
        ((WifiManager) this.activity.getApplicationContext().getSystemService("wifi")).setWifiEnabled(false);
    }

    private void updateWhitelistedRetryUrls(List<String> list) {
        whiteListedUrls.clear();
        L.v("#### PAYU", "MR Cleared whitelisted urls, length: " + whiteListedUrls.size());
        whiteListedUrls.addAll(list);
        L.v("#### PAYU", "MR Updated whitelisted urls, length: " + whiteListedUrls.size());
    }

    void addCustomBrowserEventAnalytics() {
        if (!this.eventArray.contains(CBAnalyticsConstant.CUSTOM_BROWSER)) {
            this.eventRecorded = CBAnalyticsConstant.CUSTOM_BROWSER;
            this.eventArray.add(CBAnalyticsConstant.CUSTOM_BROWSER);
            addEventAnalytics(CBAnalyticsConstant.CB_STATUS, this.eventRecorded);
        }
    }

    @JavascriptInterface
    public void bankFound(String str) {
        if (!this.visibilitychecked) {
            checkVisibilityCB(str);
            this.visibilitychecked = true;
        }
        cbSetBankDrawable(str);
        CBUtil.setVariableReflection(CBConstant.MAGIC_RETRY_PAKAGE, str, CBConstant.BANKNAME);
        if (!(this.activity == null || this.activity.isFinishing())) {
            this.activity.runOnUiThread(new Runnable() {
                public void run() {
                    Bank.this.calculateMaximumWebViewHeight();
                }
            });
        }
        this.bankName = str;
        if (!this.mPageReady) {
            try {
                if (this.loadingLayout != null) {
                    this.activity.runOnUiThread(new Runnable() {
                        public void run() {
                            Bank.this.customProgressBar.removeProgressDialog(Bank.this.loadingLayout.findViewById(R.id.progress));
                        }
                    });
                }
                if (!this.isPageStoppedForcefully) {
                    if (this.loadingLayout == null) {
                        convertToNative(CBConstant.LOADING, "{}");
                    } else if (!(this.activity == null || this.loadingLayout == ((ViewGroup) this.activity.findViewById(R.id.help_view)).getChildAt(0))) {
                        convertToNative(CBConstant.LOADING, "{}");
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (!this.mLoadingJS && this.mJS == null) {
            this.serialExecutor.execute(new AnonymousClass14(str));
        }
    }

    public void bindService() {
        LocalBroadcastManager.getInstance(this.activity).unregisterReceiver(this.snoozeBroadCastReceiver);
        LocalBroadcastManager.getInstance(this.activity.getApplicationContext()).registerReceiver(this.snoozeBroadCastReceiver, new IntentFilter(this.SNOOZE_GET_WEBVIEW_STATUS_INTENT_ACTION));
        Intent intent = new Intent(this.activity, SnoozeService.class);
        intent.putExtra(CBConstant.CB_CONFIG, this.customBrowserConfig);
        intent.putExtra(CBConstant.CURRENT_URL, this.webviewUrl);
        intent.putExtra(CBConstant.MERCHANT_CHECKOUT_ACTIVITY, this.customBrowserConfig.getMerchantCheckoutActivityPath());
        this.isSnoozeServiceBounded = true;
        this.activity.bindService(intent, this.snoozeServiceConnection, 1);
        this.activity.startService(intent);
    }

    @JavascriptInterface
    public void convertToNative(String str, String str2) {
        if (this.isSnoozeWindowVisible) {
            dismissSnoozeWindow();
            addEventAnalytics(CBAnalyticsConstant.SNOOZE_WINDOW_ACTION, CBAnalyticsConstant.SNOOZE_WINDOW_DISMISSED_BY_CB);
            addEventAnalytics(CBAnalyticsConstant.SNOOZE_WINDOW_AUTOMATICALLY_DISAPPEAR_TIME, CustomBrowserMain.getSystemCurrentTime());
        }
        this.activity.runOnUiThread(new Runnable() {
            public void run() {
                Bank.this.dismissPayULoader();
            }
        });
        this.timeOfArrival = CustomBrowserMain.getSystemCurrentTime();
        if (!(this.pageType == null || this.pageType.equalsIgnoreCase(BuildConfig.VERSION_NAME))) {
            addEventAnalytics(CBAnalyticsConstant.DEPARTURE, this.timeOfArrival);
            this.pageType = BuildConfig.VERSION_NAME;
        }
        if (this.activity != null && this.showCB) {
            this.activity.runOnUiThread(new AnonymousClass16(str, str2));
        }
    }

    @JavascriptInterface
    public void dismissPayULoader() {
        if (this.activity != null && !this.activity.isFinishing() && this.progressDialog != null) {
            this.progressDialog.dismiss();
            this.progressDialog.cancel();
            if (!this.webpageNotFoundError) {
                this.forwardJourneyForChromeLoaderIsComplete = true;
                L.v("stag", "Setting forwardJourneyForChromeLoaderIsComplete = " + this.forwardJourneyForChromeLoaderIsComplete);
                startSlowUserWarningTimer();
            }
        }
    }

    protected void dismissSlowUserWarningTimer() {
        if (this.slowUserCountDownTimer != null) {
            L.v("sTag", "Shutting down slowUserCountDownTimer");
            this.slowUserCountDownTimer.cancel();
        }
    }

    public void dismissSnoozeWindow() {
        this.isSnoozeWindowVisible = false;
        if (this.snoozeDialog != null) {
            this.snoozeDialog.dismiss();
            this.snoozeDialog.cancel();
            setCbBlankOverlay(8);
        }
    }

    void enter_otp(String str) {
        prepareSmsListener();
        if (this.eventRecorded.equals(CBAnalyticsConstant.PAYMENT_INITIATED)) {
            this.eventRecorded = CBAnalyticsConstant.CUSTOM_BROWSER;
            this.eventArray.add(CBAnalyticsConstant.CUSTOM_BROWSER);
            addEventAnalytics(CBAnalyticsConstant.CB_STATUS, this.eventRecorded);
        }
        if (this.enterOTPView != null) {
            this.customProgressBar.removeProgressDialog(this.enterOTPView.findViewById(R.id.progress));
        }
        this.checkLoading = true;
        onHelpAvailable();
        if (this.cbTransparentView != null) {
            this.cbTransparentView.setVisibility(0);
        }
        if (this.enterOTPView == null) {
            this.enterOTPView = this.activity.getLayoutInflater().inflate(R.layout.wait_for_otp, null);
        }
        Button button = (Button) this.enterOTPView.findViewById(R.id.approve);
        View findViewById = this.enterOTPView.findViewById(R.id.Regenerate_layout_gone);
        View findViewById2 = this.enterOTPView.findViewById(R.id.Enter_manually_gone);
        View findViewById3 = this.enterOTPView.findViewById(R.id.pin_layout_gone);
        View findViewById4 = this.enterOTPView.findViewById(R.id.regenerate_layout);
        ImageView imageView = (ImageView) this.enterOTPView.findViewById(R.id.bank_logo);
        TextView textView = (TextView) this.enterOTPView.findViewById(R.id.timer);
        EditText editText = (EditText) this.enterOTPView.findViewById(R.id.otp_sms);
        View findViewById5 = this.enterOTPView.findViewById(R.id.waiting);
        View findViewById6 = this.enterOTPView.findViewById(R.id.pin);
        View findViewById7 = this.enterOTPView.findViewById(R.id.retry);
        View findViewById8 = this.enterOTPView.findViewById(R.id.enter_manually);
        View findViewById9 = this.enterOTPView.findViewById(R.id.retry_text);
        View findViewById10 = this.enterOTPView.findViewById(R.id.progress);
        View findViewById11 = this.enterOTPView.findViewById(R.id.otp_recieved);
        button.setVisibility(0);
        CBUtil.setAlpha(0.3f, button);
        findViewById.setVisibility(8);
        findViewById2.setVisibility(0);
        findViewById3.setVisibility(8);
        findViewById4.setVisibility(8);
        textView.setVisibility(0);
        editText.setVisibility(8);
        findViewById5.setVisibility(0);
        findViewById6.setVisibility(0);
        findViewById7.setVisibility(0);
        findViewById8.setVisibility(0);
        findViewById9.setVisibility(8);
        findViewById10.setVisibility(0);
        findViewById11.setVisibility(8);
        if (this.drawable != null) {
            imageView.setImageDrawable(this.drawable);
        }
        editText.addTextChangedListener(new AnonymousClass18(editText, button));
        this.customProgressBar.showDialog(findViewById10);
        this.cbBaseView.removeAllViews();
        this.cbBaseView.addView(this.enterOTPView);
        if (this.cbBaseView.isShown()) {
            this.frameState = 2;
        } else {
            maximiseWebviewHeight();
        }
        if (this.frameState == 1 && this.cbSlideBarView != null) {
            this.cbSlideBarView.setVisibility(0);
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            Object obj = (jSONObject.has(getString(R.string.cb_regenerate)) && jSONObject.getBoolean(getString(R.string.cb_regenerate))) ? 1 : null;
            Object obj2 = (jSONObject.has(getString(R.string.cb_skip_screen)) && jSONObject.getBoolean(getString(R.string.cb_skip_screen))) ? 1 : null;
            Object obj3 = (jSONObject.has(getString(R.string.cb_pin)) && jSONObject.getBoolean(getString(R.string.cb_pin))) ? 1 : null;
            if (obj2 == null) {
                this.waitingOTPTimer = new Timer();
                this.waitingOTPTimer.scheduleAtFixedRate(new TimerTask() {
                    public void run() {
                        synchronized (this) {
                            if (Bank.this.activity != null) {
                                Bank.this.activity.runOnUiThread(Bank.this.enterOtpRunnable);
                            }
                        }
                    }
                }, 0, 1000);
            } else if (!(this.activity == null || editText == null || editText.getVisibility() == 0)) {
                findViewById9.setVisibility(0);
                if (obj != null) {
                    findViewById.setVisibility(0);
                    findViewById3.setVisibility(8);
                    findViewById2.setVisibility(0);
                } else {
                    if (obj3 != null) {
                        findViewById3.setVisibility(0);
                    } else {
                        findViewById3.setVisibility(8);
                    }
                    findViewById.setVisibility(8);
                    findViewById2.setVisibility(0);
                }
                findViewById4.setVisibility(0);
                button.setVisibility(8);
                findViewById5.setVisibility(8);
                findViewById6.setOnClickListener(this.buttonClickListener);
                findViewById7.setOnClickListener(this.buttonClickListener);
                findViewById8.setOnClickListener(this.buttonClickListener);
                updateHeight(this.enterOTPView);
            }
            if (VERSION.SDK_INT >= 23 && !this.permissionGranted) {
                button.setClickable(false);
                LinearLayout linearLayout = (LinearLayout) this.enterOTPView.findViewById(R.id.linear_layout_waiting_for_otp);
                showSoftKeyboard(editText);
                editText.setVisibility(0);
                button.setVisibility(0);
                findViewById5.setVisibility(8);
                findViewById10.setVisibility(8);
                findViewById4.setVisibility(0);
                findViewById2.setVisibility(8);
                editText.addTextChangedListener(new AnonymousClass20(editText, button));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        int i = (VERSION.SDK_INT < 23 || this.permissionGranted) ? 30 : 45;
        this.enterOtpRunnable = new AnonymousClass21(i, textView, str, findViewById, findViewById3, findViewById2, findViewById9, findViewById4, button, findViewById5, editText, findViewById6, findViewById7, findViewById8);
        if (!(this.mPassword == null || editText == null || editText.getVisibility() == 0)) {
            this.cbUtil.cancelTimer(this.waitingOTPTimer);
            this.activity.findViewById(R.id.timer).setVisibility(8);
            if (this.eventRecorded.equals(CBAnalyticsConstant.PAYMENT_INITIATED) || this.eventRecorded.equals(CBAnalyticsConstant.CUSTOM_BROWSER)) {
                this.eventRecorded = CBAnalyticsConstant.RECEIVED_OTP_DIRECT;
                addEventAnalytics(CBAnalyticsConstant.OTP_RECIEVED, this.eventRecorded);
            }
            editText.setText(this.mPassword);
            button.setText(getString(R.string.cb_approve_otp));
            button.setClickable(true);
            if (this.autoApprove) {
                button.performClick();
                this.eventRecorded = CBAnalyticsConstant.CB_AUTO_APPROVE;
                addEventAnalytics(CBAnalyticsConstant.USER_INPUT, this.eventRecorded);
            }
            CBUtil.setAlpha(1.0f, button);
            findViewById11.setVisibility(0);
            this.customProgressBar.removeDialog(findViewById10);
            findViewById9.setVisibility(8);
            findViewById4.setVisibility(8);
            button.setVisibility(0);
            findViewById5.setVisibility(8);
            editText.setVisibility(0);
            this.buttonClickListener.setView(this.enterOTPView);
            button.setOnClickListener(this.buttonClickListener);
        }
        updateHeight(this.enterOTPView);
        if (this.cbBaseView.isShown()) {
            this.frameState = 2;
        } else {
            maximiseWebviewHeight();
        }
    }

    public String getBankName() {
        return this.bankName == null ? BuildConfig.VERSION_NAME : this.bankName;
    }

    int getCode(String str) {
        return str.equalsIgnoreCase("pin") ? 3 : str.equalsIgnoreCase("password") ? 1 : str.equalsIgnoreCase("enter manually") ? 4 : str.equalsIgnoreCase("approve") ? 5 : (str.equalsIgnoreCase("otp") || str.equalsIgnoreCase("use sms otp")) ? 6 : str.equalsIgnoreCase("sms otp") ? 7 : str.equalsIgnoreCase("regenerate otp") ? 2 : 0;
    }

    public String getCurrentURL() {
        return this.cbWebView.getUrl() != null ? this.cbWebView.getUrl() : BuildConfig.VERSION_NAME;
    }

    public String getPageType() {
        return this.pageType;
    }

    public SnoozeLoaderView getSnoozeLoaderView() {
        return this.snoozeLoaderView;
    }

    @JavascriptInterface
    public void getUserId() {
        if (this.activity != null && !this.activity.isFinishing()) {
            this.activity.runOnUiThread(new Runnable() {
                public void run() {
                    try {
                        Bank.this.cbWebView.loadUrl("javascript:" + Bank.this.mJS.getString(Bank.this.getString(R.string.cb_populate_user_id)) + "(\"" + Bank.this.cbUtil.getStringSharedPreference(Bank.this.activity.getApplicationContext(), Bank.this.bankName) + "\")");
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            });
        }
    }

    public void hideMagicRetry() {
        toggleFragmentVisibility(0);
    }

    public void initMagicRetry() {
        FragmentManager supportFragmentManager = getActivity().getSupportFragmentManager();
        this.magicRetryFragment = new MagicRetryFragment();
        Bundle bundle = new Bundle();
        if (!(CustomBrowserData.SINGLETON == null || CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback() == null)) {
            bundle.putString(MagicRetryFragment.KEY_TXNID, this.customBrowserConfig.getTransactionID());
        }
        this.magicRetryFragment.setArguments(bundle);
        supportFragmentManager.beginTransaction().add(R.id.magic_retry_container, this.magicRetryFragment, "magicRetry").commit();
        toggleFragmentVisibility(0);
        this.magicRetryFragment.isWhiteListingEnabled(true);
        this.magicRetryFragment.setWebView(this.cbWebView);
        this.magicRetryFragment.initMRSettingsFromSharedPreference(this.activity);
        if (this.customBrowserConfig.getEnableSnooze() > 0) {
            this.cbWebView.setWebViewClient(new PayUSnoozeWebViewClient(this, keyAnalytics));
        } else {
            this.cbWebView.setWebViewClient(new PayUWebViewClient(this, this.magicRetryFragment, keyAnalytics));
        }
    }

    public boolean isInBackWardJourney(String str) {
        boolean z;
        try {
            if (this.backwardJourneyStarted) {
                return false;
            }
            if ((str.contains(CBConstant.PAYU_DOMAIN_PROD) || str.contains(CBConstant.PAYU_DOMAIN_TEST)) && str.contains(CBConstant.RESPONSE_BACKWARD)) {
                return true;
            }
            if (this.backwardJourneyUrls != null) {
                for (String contains : this.backwardJourneyUrls) {
                    if (str.contains(contains)) {
                        return true;
                    }
                }
                return false;
            }
            z = true;
            return z;
        } catch (Exception e) {
            e.printStackTrace();
            z = false;
        }
    }

    public void killSnoozeService() {
        if (this.snoozeService != null) {
            this.snoozeService.killSnoozeService();
        }
    }

    public void launchSnoozeWindow() {
        launchSnoozeWindow(1);
    }

    public void launchSnoozeWindow(int i) {
        setCbBlankOverlay(8);
        if (this.backwardJourneyStarted) {
            if (this.snoozeCountBackwardJourney >= this.customBrowserConfig.getEnableSnooze()) {
                return;
            }
        } else if (this.snoozeCount >= this.customBrowserConfig.getEnableSnooze()) {
            return;
        }
        this.snoozeMode = i;
        if (this.activity != null && !this.activity.isFinishing()) {
            dismissSlowUserWarning();
            progressBarVisibilityPayuChrome(8, BuildConfig.VERSION_NAME);
            this.isSnoozeWindowVisible = true;
            addEventAnalytics(CBAnalyticsConstant.SNOOZE_WINDOW_STATUS, CBAnalyticsConstant.SNOOZE_VISIBLE);
            addEventAnalytics(CBAnalyticsConstant.SNOOZE_APPEAR_URL, this.webviewUrl);
            addEventAnalytics(CBAnalyticsConstant.SNOOZE_WINDOW_LAUNCH_MODE, i == 1 ? CBConstant.STR_SNOOZE_MODE_WARN : CBConstant.STR_SNOOZE_MODE_FAIL);
            addEventAnalytics(CBAnalyticsConstant.SNOOZE_APPEAR_TIME, CustomBrowserMain.getSystemCurrentTime());
            LayoutInflater layoutInflater = this.activity.getLayoutInflater();
            if (this.snoozeLayout == null) {
                this.snoozeLayout = layoutInflater.inflate(R.layout.cb_layout_snooze, null);
            }
            TextView textView = (TextView) this.snoozeLayout.findViewById(R.id.text_view_snooze_message);
            TextView textView2 = (TextView) this.snoozeLayout.findViewById(R.id.text_view_transaction_snoozed_message1);
            TextView textView3 = (TextView) this.snoozeLayout.findViewById(R.id.button_cancel_transaction);
            Button button = (Button) this.snoozeLayout.findViewById(R.id.button_snooze_transaction);
            Button button2 = (Button) this.snoozeLayout.findViewById(R.id.button_retry_transaction);
            TextView textView4 = (TextView) this.snoozeLayout.findViewById(R.id.text_view_cancel_snooze_window);
            TextView textView5 = (TextView) this.snoozeLayout.findViewById(R.id.t_confirm);
            TextView textView6 = (TextView) this.snoozeLayout.findViewById(R.id.t_nconfirm);
            TextView textView7 = (TextView) this.snoozeLayout.findViewById(R.id.snooze_header_txt);
            TextView textView8 = (TextView) this.snoozeLayout.findViewById(R.id.text_view_retry_message_detail);
            Button button3 = (Button) this.snoozeLayout.findViewById(R.id.button_retry_anyway);
            this.snoozeLoaderView = (SnoozeLoaderView) this.snoozeLayout.findViewById(R.id.snooze_loader_view);
            this.snoozeLoaderView.setVisibility(8);
            textView4.setVisibility(0);
            textView3.setVisibility(0);
            button.setVisibility(0);
            button2.setVisibility(0);
            textView.setVisibility(0);
            textView2.setVisibility(8);
            textView8.setVisibility(0);
            textView5.setVisibility(8);
            textView6.setVisibility(8);
            button3.setVisibility(8);
            textView.setText(this.activity.getString(R.string.cb_slownetwork_status));
            textView7.setText(this.activity.getString(R.string.cb_try_later));
            textView8.setText(this.activity.getString(R.string.cb_retry_restart));
            if (this.backwardJourneyStarted && this.payuPG) {
                textView.setText(this.activity.getResources().getString(R.string.cb_slow_internet_confirmation));
                textView2.setText(this.activity.getResources().getString(R.string.cb_receive_sms));
                textView7.setText(this.activity.getResources().getString(R.string.cb_confirm_transaction));
                button.setVisibility(8);
                textView8.setVisibility(8);
                button2.setVisibility(8);
                textView3.setVisibility(8);
                textView.setVisibility(0);
                textView2.setVisibility(0);
                textView5.setVisibility(0);
                textView6.setVisibility(0);
                button3.setVisibility(8);
                this.snoozeVisibleCountBackwdJourney++;
                addEventAnalytics(CBAnalyticsConstant.SNOOZE_BACKWARD_VISIBLE, "Y");
            } else {
                this.snoozeVisibleCountFwdJourney++;
            }
            textView5.setOnClickListener(new AnonymousClass23(textView7, textView, button, textView2, textView5, textView6));
            textView6.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    Bank bank = Bank.this;
                    bank.snoozeCountBackwardJourney++;
                    Bank.this.dismissSnoozeWindow();
                    Bank.this.addEventAnalytics(CBAnalyticsConstant.SNOOZE_BACKWARD_WINDOW_ACTION, CBAnalyticsConstant.SNOOZE_CONFIRM_DEDUCTION_N);
                }
            });
            textView4.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    Bank bank;
                    if (Bank.this.backwardJourneyStarted) {
                        bank = Bank.this;
                        bank.snoozeCountBackwardJourney++;
                    } else {
                        bank = Bank.this;
                        bank.snoozeCount++;
                    }
                    Bank.this.addEventAnalytics(CBAnalyticsConstant.SNOOZE_INTERACTION_TIME, CustomBrowserMain.getSystemCurrentTime());
                    if (!Bank.this.backwardJourneyStarted) {
                        Bank.this.addEventAnalytics(CBAnalyticsConstant.SNOOZE_WINDOW_ACTION, CBAnalyticsConstant.SNOOZE_CANCEL_WINDOW_CLICK);
                    }
                    Bank.this.dismissSnoozeWindow();
                }
            });
            button2.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    Bank.this.hideCB();
                    Bank.this.retryPayment(view);
                }
            });
            button.setOnClickListener(new AnonymousClass27(textView4, textView3, button, button2, textView, textView8, textView7, textView2, button3));
            textView3.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    Bank bank;
                    if (Bank.this.backwardJourneyStarted) {
                        bank = Bank.this;
                        bank.snoozeCountBackwardJourney++;
                    } else {
                        bank = Bank.this;
                        bank.snoozeCount++;
                    }
                    Bank.this.addEventAnalytics(CBAnalyticsConstant.SNOOZE_INTERACTION_TIME, CustomBrowserMain.getSystemCurrentTime());
                    Bank.this.addEventAnalytics(CBAnalyticsConstant.SNOOZE_WINDOW_ACTION, CBAnalyticsConstant.SNOOZE_CANCEL_TRANSACTION_CLICK);
                    Bank.this.showBackButtonDialog();
                }
            });
            button3.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    Bank.this.hideCB();
                    Bank.this.retryPayment(view);
                }
            });
            if (this.snoozeDialog == null) {
                this.snoozeDialog = new Builder(this.activity).create();
                this.snoozeDialog.setView(this.snoozeLayout);
                this.snoozeDialog.setCanceledOnTouchOutside(false);
                this.snoozeDialog.setOnDismissListener(new OnDismissListener() {
                    public void onDismiss(DialogInterface dialogInterface) {
                    }
                });
                this.snoozeDialog.setOnKeyListener(new OnKeyListener() {
                    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                        if (i == 4 && keyEvent.getAction() == 0) {
                            Bank.this.showBackButtonDialog();
                        }
                        return true;
                    }
                });
            }
            this.snoozeDialog.show();
        }
    }

    public void markPreviousTxnAsUserCanceled(String str) {
        new SurePayCancelAsyncTaskHelper(str).execute();
    }

    @JavascriptInterface
    public void nativeHelperForNB(String str, String str2) {
        if (!(this.activity == null || this.activity.isFinishing())) {
            this.activity.runOnUiThread(new AnonymousClass9(str, str2));
        }
        this.activity.runOnUiThread(new Runnable() {
            public void run() {
                Bank.this.dismissPayULoader();
            }
        });
    }

    @JavascriptInterface
    public void onCancel() {
        onCancel(BuildConfig.VERSION_NAME);
    }

    @JavascriptInterface
    public void onCancel(String str) {
        this.activity.runOnUiThread(new AnonymousClass17(str));
    }

    @JavascriptInterface
    public void onFailure(String str) {
        this.merchantResponse = str;
    }

    public void onLoadResourse(WebView webView, String str) {
        if (this.activity != null && !this.activity.isFinishing() && !isRemoving() && isAdded() && !str.equalsIgnoreCase(CBConstant.rupeeURL) && !str.contains(CBConstant.rupeeURL1) && !str.contains(CBConstant.rupeeURL2)) {
        }
    }

    @JavascriptInterface
    public void onMerchantHashReceived(String str) {
        if (getActivity() != null && !getActivity().isFinishing() && !isRemoving() && isAdded()) {
            getActivity().runOnUiThread(new AnonymousClass3(str));
        }
    }

    public void onOverrideURL(String str) {
        if (this.cbWebPageProgressBar != null) {
            this.cbWebPageProgressBar.setProgress(10);
        }
    }

    public void onPageFinishWebclient(String str) {
        this.pageStarted = false;
        if (!(this.activity == null || this.activity.isFinishing() || isRemoving() || !isAdded())) {
            this.cbUtil.setStringSharedPreference(this.activity.getApplicationContext(), CBAnalyticsConstant.LAST_URL, "f:" + str);
            startPayUChromeLoaderDisbaleTimer();
            if (!(!this.firstFinish || getArguments() == null || getArguments().getInt(CBConstant.MAIN_LAYOUT, -1) == -1)) {
                try {
                    View findViewById = this.activity.findViewById(getArguments().getInt(CBConstant.MAIN_LAYOUT));
                    findViewById.getViewTreeObserver().addOnGlobalLayoutListener(new AnonymousClass4(findViewById));
                    this.firstFinish = false;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        if (!this.isPageStoppedForcefully) {
            stopSnoozeCountDownTimer();
        }
        new Handler().postDelayed(new Runnable() {
            public void run() {
                if (!Bank.this.isPageStoppedForcefully && !Bank.this.pageStarted && Bank.this.isSnoozeWindowVisible && !Bank.this.backwardJourneyStarted) {
                    if (Bank.this.isSnoozeWindowVisible) {
                        Bank.this.addEventAnalytics(CBAnalyticsConstant.SNOOZE_WINDOW_AUTOMATICALLY_DISAPPEAR_TIME, CustomBrowserMain.getSystemCurrentTime());
                    }
                    Bank.this.dismissSnoozeWindow();
                }
            }
        }, 1000);
    }

    public void onPageFinished() {
        if (isAdded() && !isRemoving() && this.activity != null) {
            this.mPageReady = true;
            if (this.approve_flag.booleanValue()) {
                onHelpUnavailable();
                this.approve_flag = Boolean.valueOf(false);
            }
            if (this.loadingLayout != null && this.loadingLayout.isShown()) {
                this.frameState = 1;
                maximiseWebviewHeight();
                onHelpUnavailable();
            }
            this.activity.getWindow().setSoftInputMode(3);
            if (!(this.mJS == null || !this.showCB || this.isPageStoppedForcefully)) {
                try {
                    this.cbWebView.loadUrl("javascript:" + this.mJS.getString(getString(R.string.cb_init)));
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
            if (this.mBankJS != null && this.mJS == null && this.cbTransparentView != null) {
                this.cbTransparentView.setVisibility(8);
            }
        }
    }

    public void onPageStarted() {
        if (this.activity != null && !this.activity.isFinishing() && !isRemoving() && isAdded()) {
            if (this.nbhelpVisible) {
                onHelpUnavailable();
                this.nbhelpVisible = false;
            }
            if (isAdded() && !isRemoving()) {
                this.mPageReady = false;
                if (this.mBankJS != null) {
                    try {
                        if (this.showCB) {
                            this.cbWebView.loadUrl("javascript:" + this.mBankJS.getString(getString(R.string.cb_detect_bank)));
                            showMagicRetryCB();
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
                if (this.cbTransparentView != null) {
                    this.cbTransparentView.setVisibility(8);
                }
            }
        }
    }

    public void onPageStartedWebclient(String str) {
        this.pageStarted = true;
        this.isPageStoppedForcefully = false;
        if ((VERSION.SDK_INT == 16 || VERSION.SDK_INT == 17 || VERSION.SDK_INT == 18) && this.webpageNotFoundError) {
            jellyBeanOnReceivedError();
        }
        this.webpageNotFoundError = false;
        dismissSlowUserWarning();
        if (!(this.payuPG || str == null || (!str.equalsIgnoreCase(PayuConstants.MOBILE_TEST_PAYMENT_URL) && !str.equalsIgnoreCase(PayuConstants.PRODUCTION_PAYMENT_URL)))) {
            this.payuPG = true;
        }
        if (!this.isFirstURLLoaded) {
            if (this.customBrowserConfig != null && this.customBrowserConfig.getPayuPostData() == null && this.customBrowserConfig.getPostURL() == null) {
                if (CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback().getPostData() == null || CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback().getPostURL() == null) {
                    throw new MissingParamException("POST Data or POST URL Missing or wrong POST URL");
                }
                this.customBrowserConfig.setPayuPostData(CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback().getPostData());
                this.customBrowserConfig.setPostURL(CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback().getPostURL());
                CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback().setPostURL(null);
                CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback().setPostData(null);
            }
            this.isTxnNBType = checkIfTransactionNBType(this.customBrowserConfig.getPayuPostData());
            this.isFirstURLLoaded = true;
        }
        this.showSnoozeWindow = true;
        if (!(this.pageType == null || this.pageType.equalsIgnoreCase(BuildConfig.VERSION_NAME))) {
            this.timeOfDeparture = CustomBrowserMain.getSystemCurrentTime();
            addEventAnalytics(CBAnalyticsConstant.DEPARTURE, this.timeOfDeparture);
            this.pageType = BuildConfig.VERSION_NAME;
        }
        if (!(this.activity == null || this.activity.isFinishing() || isRemoving() || !isAdded())) {
            this.cbUtil.setStringSharedPreference(this.activity.getApplicationContext(), CBAnalyticsConstant.LAST_URL, "s:" + str);
            if (this.cbWebPageProgressBar != null) {
                this.cbWebPageProgressBar.setVisibility(0);
            }
            if (this.payUChromeLoaderDisableTimer != null) {
                this.payUChromeLoaderDisableTimer.cancel();
            }
            if (this.cbWebPageProgressBar != null) {
                this.cbWebPageProgressBar.setVisibility(0);
                this.cbWebPageProgressBar.setProgress(10);
            }
            this.backwardJourneyStarted = isInBackWardJourney(str);
            if (!this.forwardJourneyForChromeLoaderIsComplete || this.backwardJourneyStarted) {
                progressBarVisibilityPayuChrome(0, str);
            }
            this.webviewUrl = str;
            if (!(CustomBrowserData.SINGLETON == null || CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback() == null)) {
                if (this.backwardJourneyStarted) {
                    if (this.isTxnNBType) {
                        this.isSnoozeWindowVisible = false;
                    } else {
                        dismissSnoozeWindow();
                    }
                }
                if (str.contains(CBConstant.PAYMENT_OPTION_URL_DEV)) {
                    this.mJS = null;
                }
                try {
                    if ((!this.cbUtil.getDataFromPostData(this.customBrowserConfig.getPayuPostData(), PayuConstants.SURL).equals(BuildConfig.VERSION_NAME) && str.contains(URLDecoder.decode(this.cbUtil.getDataFromPostData(this.customBrowserConfig.getPayuPostData(), PayuConstants.SURL), "UTF-8"))) || ((!this.cbUtil.getDataFromPostData(this.customBrowserConfig.getPayuPostData(), PayuConstants.FURL).equals(BuildConfig.VERSION_NAME) && str.contains(URLDecoder.decode(this.cbUtil.getDataFromPostData(this.customBrowserConfig.getPayuPostData(), PayuConstants.FURL), "UTF-8"))) || isRetryURL(str))) {
                        this.showSnoozeWindow = false;
                        dismissSnoozeWindow();
                        hideCB();
                        if (isRetryURL(str)) {
                            resetAutoSelectOTP();
                            this.backwardJourneyStarted = false;
                        }
                        stopSnoozeCountDownTimer();
                        if (this.snoozeService != null) {
                            this.snoozeService.killSnoozeService();
                        }
                    } else if (this.isSnoozeEnabled && this.customBrowserConfig.getSnoozeMode() == 1 && !this.backwardJourneyStarted) {
                        this.snoozeLoadPercentageAndTimeOut = this.snoozeConfigMap.getPercentageAndTimeout(str);
                        this.snoozeUrlLoadingPercentage = this.snoozeLoadPercentageAndTimeOut[0];
                        this.snoozeUrlLoadingTimeout = this.snoozeLoadPercentageAndTimeOut[1];
                        initializeSnoozeTimer();
                    }
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
            }
        }
        if (this.backwardJourneyStarted && this.isTxnNBType && !this.snoozeretry) {
            this.snoozeretry = true;
        }
    }

    @JavascriptInterface
    public void onPayuFailure(String str) {
        if (this.snoozeService != null) {
            this.snoozeService.killSnoozeService();
        }
        if (this.activity != null) {
            this.eventRecorded = CBAnalyticsConstant.FAILURE_TRANSACTION;
            addEventAnalytics(CBAnalyticsConstant.TRNX_STATUS, this.eventRecorded);
            this.isSuccessTransaction = Boolean.valueOf(false);
            this.payuReponse = str;
        }
        cancelTransactionNofication();
        callTimer();
    }

    @JavascriptInterface
    public void onPayuSuccess(String str) {
        if (this.snoozeService != null) {
            this.snoozeService.killSnoozeService();
        }
        this.isSuccessTransaction = Boolean.valueOf(true);
        this.eventRecorded = CBAnalyticsConstant.SUCCESS_TRANSACTION;
        addEventAnalytics(CBAnalyticsConstant.TRNX_STATUS, this.eventRecorded);
        this.payuReponse = str;
        if (this.storeOneClickHash == 2) {
            try {
                JSONObject jSONObject = new JSONObject(this.payuReponse);
                this.cbUtil.storeInSharedPreferences(this.activity.getApplicationContext(), jSONObject.getString(PayuConstants.CARD_TOKEN), jSONObject.getString(PayuConstants.MERCHANT_HASH));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        cancelTransactionNofication();
        callTimer();
    }

    public void onProgressChanged(int i) {
        if (this.activity != null && !this.activity.isFinishing() && !isRemoving() && isAdded() && this.cbWebPageProgressBar != null) {
            this.cbWebPageProgressBar.setVisibility(0);
            if (i != 100) {
                startAnimation(i);
            } else if (this.cbWebPageProgressBar != null) {
                this.cbWebPageProgressBar.setProgress(100);
                new Handler().postDelayed(new Runnable() {
                    public void run() {
                        if (Bank.this.activity != null && !Bank.this.activity.isFinishing() && !Bank.this.isRemoving() && Bank.this.isAdded()) {
                            Bank.this.cbWebPageProgressBar.setVisibility(8);
                            Bank.this.lastProgress = 0;
                        }
                    }
                }, 100);
            }
        }
    }

    public void onReceivedErrorWebClient(int i, String str) {
        this.webpageNotFoundError = true;
        try {
            if (getActivity() != null && !getActivity().isFinishing() && CustomBrowserData.SINGLETON != null && CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback() != null) {
                if (!this.backwardJourneyStarted) {
                    snoozeOnReceivedError();
                } else if (this.backwardJourneyStarted && this.isTxnNBType && this.snoozeCountBackwardJourney < this.customBrowserConfig.getEnableSnooze()) {
                    this.isPageStoppedForcefully = true;
                    dismissSnoozeWindow();
                    launchSnoozeWindow(2);
                }
                onHelpUnavailable();
                this.cbBaseView.removeAllViews();
                if (this.cbWebPageProgressBar != null) {
                    this.cbWebPageProgressBar.setVisibility(8);
                }
                if (this.maxWebview != 0) {
                    maximiseWebviewHeight();
                    this.frameState = 1;
                }
                hideCB();
                if (!this.cbOldFlow) {
                    CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback().onCBErrorReceived(i, str);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @JavascriptInterface
    public void onSuccess() {
        onSuccess(BuildConfig.VERSION_NAME);
    }

    @JavascriptInterface
    public void onSuccess(String str) {
        this.merchantResponse = str;
    }

    @JavascriptInterface
    public void reInit() {
        if (this.activity != null && !this.activity.isFinishing()) {
            this.activity.runOnUiThread(new Runnable() {
                public void run() {
                    Bank.this.onPageFinished();
                }
            });
        }
    }

    public void reloadWVNative() {
        this.cbWebView.reload();
    }

    public void reloadWVUsingJS() {
        this.cbWebView.loadUrl("javascript:window.location.reload(true)");
    }

    public void reloadWVUsingJSFromCache() {
        this.cbWebView.loadUrl("javascript:window.location.reload()");
    }

    public void reloadWebView() {
        if (this.snoozeService != null) {
            this.snoozeService.killSnoozeService();
        }
        if (this.isSnoozeWindowVisible) {
            dismissSnoozeWindow();
        }
        registerSMSBroadcast();
        this.isWebviewReloading = true;
        if (this.isSnoozeEnabled) {
            initializeSnoozeTimer();
        }
        if (this.cbWebView.getUrl() != null) {
            addEventAnalytics(CBAnalyticsConstant.SNOOZE_RESUME_URL, this.cbWebView.getUrl());
            if (19 == VERSION.SDK_INT) {
                this.cbWebView.reload();
            } else {
                reloadWVUsingJS();
            }
        }
    }

    public void reloadWebView(String str) {
        if (this.snoozeService != null) {
            this.snoozeService.killSnoozeService();
        }
        if (this.isSnoozeWindowVisible) {
            dismissSnoozeWindow();
        }
        registerSMSBroadcast();
        this.isWebviewReloading = true;
        if (this.isSnoozeEnabled) {
            initializeSnoozeTimer();
        }
        if (this.cbWebView.getUrl() != null) {
            addEventAnalytics(CBAnalyticsConstant.SNOOZE_RESUME_URL, str);
            if (19 == VERSION.SDK_INT) {
                this.cbWebView.reload();
                return;
            } else {
                reloadWVUsingJS();
                return;
            }
        }
        reloadWebView(this.customBrowserConfig.getPostURL(), this.customBrowserConfig.getPayuPostData());
    }

    public void reloadWebView(String str, String str2) {
        this.forwardJourneyForChromeLoaderIsComplete = false;
        this.backwardJourneyStarted = false;
        this.isWebviewReloading = true;
        registerSMSBroadcast();
        this.backwardJourneyStarted = false;
        if (this.snoozeService != null) {
            this.snoozeService.killSnoozeService();
        }
        if (this.isSnoozeWindowVisible) {
            dismissSnoozeWindow();
        }
        if (this.progressDialog != null) {
            this.progressDialog.dismiss();
        }
        this.progressDialog = null;
        if (VERSION.SDK_INT == 16 || VERSION.SDK_INT == 17 || VERSION.SDK_INT == 18) {
            this.cbWebView.loadUrl("about:blank");
        }
        addEventAnalytics(CBAnalyticsConstant.SNOOZE_RESUME_URL, str);
        resetAutoSelectOTP();
        this.cbWebView.postUrl(str, str2.getBytes());
    }

    public void setIsPageStoppedForcefully(boolean z) {
        this.isPageStoppedForcefully = z;
    }

    @JavascriptInterface
    public void setMRData(String str) {
        if (!this.isMRDataSet) {
            MagicRetryFragment.setMRData(str, getActivity().getApplicationContext());
            updateWhitelistedRetryUrls(CBUtil.updateRetryData(str, getActivity().getApplicationContext()));
            this.isMRDataSet = true;
        }
    }

    public void setMagicRetry(Map<String, String> map) {
        if (this.magicRetryFragment != null) {
            this.magicRetryFragment.setUrlListWithPostData(map);
        }
    }

    @JavascriptInterface
    public void setSnoozeConfig(String str) {
        this.snoozeConfigMap = this.cbUtil.storeSnoozeConfigInSharedPref(this.activity.getApplicationContext(), str);
    }

    @JavascriptInterface
    public void setSnoozeEnabled(boolean z) {
        if (!z) {
            this.customBrowserConfig.setEnableSnooze(0);
        }
        this.cbUtil.setBooleanSharedPreference(CBConstant.SNOOZE_ENABLED, z, this.activity.getApplicationContext());
    }

    public void setTransactionStatusReceived(boolean z) {
        this.isTransactionStatusReceived = z;
    }

    @JavascriptInterface
    public void setUserId(String str) {
        if (!this.saveUserIDCheck) {
            String stringSharedPreference = this.cbUtil.getStringSharedPreference(this.activity.getApplicationContext(), this.bankName);
            if (!stringSharedPreference.equals(BuildConfig.VERSION_NAME) && stringSharedPreference.equals(str)) {
                this.cbUtil.removeFromSharedPreferences(this.activity.getApplicationContext(), this.bankName);
            }
        } else if (this.activity != null && !this.activity.isFinishing()) {
            this.cbUtil.storeInSharedPreferences(this.activity.getApplicationContext(), this.bankName, str);
        }
    }

    public void showBackButtonDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.activity);
        builder.setCancelable(false);
        builder.setMessage("Do you really want to cancel the transaction ?");
        builder.setPositiveButton("Ok", new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                if (Bank.this.snoozeDialog != null && Bank.this.snoozeDialog.isShowing()) {
                    Bank.this.snoozeDialog.cancel();
                }
                Bank.this.addEventAnalytics(CBAnalyticsConstant.USER_INPUT, CBAnalyticsConstant.BACK_BUTTON_OK_CLICK);
                Bank.this.dismissSnoozeWindow();
                CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback().onPaymentTerminate();
                Bank.this.activity.finish();
                CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback().onBackApprove();
                Bank.this.activity.finish();
            }
        });
        builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                Bank.this.addEventAnalytics(CBAnalyticsConstant.USER_INPUT, CBAnalyticsConstant.BACK_BUTTON_CANCEL_CLICK);
                dialogInterface.dismiss();
                CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback().onBackDismiss();
            }
        });
        builder.create().getWindow().getAttributes().type = 2003;
        builder.show();
    }

    @JavascriptInterface
    public void showCustomBrowser(boolean z) {
        this.showCB = z;
        if (getActivity() != null) {
            getActivity().runOnUiThread(new AnonymousClass1(z));
        }
    }

    public void showMagicRetry() {
        dismissSnoozeWindow();
        toggleFragmentVisibility(1);
    }

    protected void startSlowUserWarningTimer() {
        L.v("sTag", "Attempting to start slowUserCountDownTimer");
        if (this.slowUserCountDownTimer == null) {
            L.v("sTag", "Starting slowUserCountDownTimer");
        }
    }

    public void startSnoozeServiceVerifyPayment(String str) {
        LocalBroadcastManager.getInstance(this.activity).unregisterReceiver(this.snoozeBroadCastReceiver);
        LocalBroadcastManager.getInstance(this.activity.getApplicationContext()).registerReceiver(this.snoozeBroadCastReceiver, new IntentFilter(this.SNOOZE_GET_WEBVIEW_STATUS_INTENT_ACTION));
        Intent intent = new Intent(this.activity, SnoozeService.class);
        intent.putExtra(CBConstant.CB_CONFIG, this.customBrowserConfig);
        intent.putExtra(CBConstant.VERIFICATION_MSG_RECEIVED, true);
        intent.putExtra(CBConstant.MERCHANT_CHECKOUT_ACTIVITY, this.customBrowserConfig.getMerchantCheckoutActivityPath());
        intent.putExtra(CBConstant.VERIFY_ADDON_PARAMS, str);
        this.isSnoozeServiceBounded = true;
        this.activity.bindService(intent, this.snoozeServiceConnection, 1);
        this.isSnoozeBroadCastReceiverRegistered = true;
        this.activity.startService(intent);
    }

    public void toggleFragmentVisibility(int i) {
        if (getActivity() != null && !getActivity().isFinishing() && isAdded() && !isRemoving()) {
            FragmentTransaction beginTransaction = getActivity().getSupportFragmentManager().beginTransaction();
            if (this.magicRetryFragment != null && i == 1) {
                beginTransaction.show(this.magicRetryFragment).commitAllowingStateLoss();
            } else if (this.magicRetryFragment != null && i == 0) {
                beginTransaction.hide(this.magicRetryFragment).commitAllowingStateLoss();
            }
        }
    }
}
