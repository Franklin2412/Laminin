package com.payu.custombrowser;

import android.app.AlertDialog;
import android.app.NotificationManager;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v7.app.AlertDialog.Builder;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.payu.custombrowser.bean.CustomBrowserConfig;
import com.payu.custombrowser.bean.CustomBrowserData;
import com.payu.custombrowser.util.CBAnalyticsConstant;
import com.payu.custombrowser.util.CBConstant;
import com.payu.custombrowser.util.CBUtil;
import com.payu.custombrowser.util.L;
import com.payu.india.Payu.PayuConstants;
import com.payu.magicretry.MagicRetryFragment.ActivityCallback;
import com.squareup.leakcanary.watcher.BuildConfig;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import org.json.JSONObject;

public class CBActivity extends FragmentActivity implements ActivityCallback {
    public static int STATE;
    private AlertDialog backButtonAlertDialog;
    CustomBrowserConfig customBrowserConfig;
    private Bank payUCustomBrowser;
    private android.support.v7.app.AlertDialog snoozeDialog;

    /* renamed from: com.payu.custombrowser.CBActivity.3 */
    class AnonymousClass3 implements OnDismissListener {
        final /* synthetic */ JSONObject val$jsonObject;

        AnonymousClass3(JSONObject jSONObject) {
            this.val$jsonObject = jSONObject;
        }

        public void onDismiss(DialogInterface dialogInterface) {
            try {
                if (!(CustomBrowserData.SINGLETON == null || CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback() == null)) {
                    CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback().onPaymentSuccess(this.val$jsonObject.getString(CBConstant.RESPONSE), BuildConfig.VERSION_NAME);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            CBActivity.this.snoozeDialog.dismiss();
            CBActivity.this.snoozeDialog.cancel();
            CBActivity.this.finish();
        }
    }

    /* renamed from: com.payu.custombrowser.CBActivity.8 */
    class AnonymousClass8 implements Runnable {
        final /* synthetic */ String val$postData;
        final /* synthetic */ String val$surl;

        AnonymousClass8(String str, String str2) {
            this.val$surl = str;
            this.val$postData = str2;
        }

        public void run() {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(URLDecoder.decode(this.val$surl, "UTF-8")).openConnection();
                String str = this.val$postData;
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setRequestProperty("Content-Type", CBConstant.HTTP_URLENCODED);
                httpURLConnection.setRequestProperty("Content-Length", String.valueOf(str.length()));
                httpURLConnection.setDoOutput(true);
                httpURLConnection.getOutputStream().write(str.getBytes());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private void showTransactionStatusDialog(String str, Intent intent) {
        int i = 0;
        try {
            this.payUCustomBrowser.setTransactionStatusReceived(true);
            JSONObject jSONObject = new JSONObject(str.toString());
            if (jSONObject.has(CBConstant.API_STATUS)) {
                View inflate = getLayoutInflater().inflate(R.layout.cb_layout_snooze, null);
                Builder builder = new Builder(this);
                builder.setView(inflate);
                this.snoozeDialog = builder.create();
                if (jSONObject.has(getString(R.string.cb_snooze_verify_api_status))) {
                    i = Integer.parseInt(jSONObject.get(getString(R.string.cb_snooze_verify_api_status)).toString());
                }
                if (i == 1) {
                    this.payUCustomBrowser.addEventAnalytics(CBAnalyticsConstant.SNOOZE_NOTIFICATION_ACTION, CBAnalyticsConstant.SUCCESS_SCREEN);
                    Bank bank = this.payUCustomBrowser;
                    if (!Bank.isUrlWhiteListed(this.payUCustomBrowser.getCurrentURL()) || 19 == VERSION.SDK_INT) {
                        this.payUCustomBrowser.addEventAnalytics(CBAnalyticsConstant.SNOOZE_TRANSACTION_STATUS_UPDATE, CBAnalyticsConstant.SNOOZE_POST_SURL);
                        if (jSONObject.has(CBConstant.RESPONSE)) {
                            setCheckFURLSURL(jSONObject.getString(CBConstant.RESPONSE), new CBUtil().getDataFromPostData(this.customBrowserConfig.getPayuPostData(), PayuConstants.SURL));
                        }
                        inflate.findViewById(R.id.snooze_status_icon).setVisibility(0);
                        ((TextView) inflate.findViewById(R.id.snooze_header_txt)).setText(R.string.cb_transaction_sucess);
                        inflate.findViewById(R.id.text_view_cancel_snooze_window).setVisibility(8);
                        ((TextView) inflate.findViewById(R.id.text_view_snooze_message)).setText(getString(R.string.cb_transaction_success_msg));
                        inflate.findViewById(R.id.snooze_loader_view).setVisibility(8);
                        inflate.findViewById(R.id.button_snooze_transaction).setVisibility(8);
                        inflate.findViewById(R.id.text_view_retry_message_detail).setVisibility(8);
                        inflate.findViewById(R.id.button_retry_transaction).setVisibility(8);
                        inflate.findViewById(R.id.button_cancel_transaction).setVisibility(8);
                        inflate.findViewById(R.id.t_confirm).setVisibility(8);
                        inflate.findViewById(R.id.t_nconfirm).setVisibility(8);
                        this.snoozeDialog.setOnDismissListener(new AnonymousClass3(jSONObject));
                        this.snoozeDialog.setCanceledOnTouchOutside(false);
                        this.snoozeDialog.show();
                        new Handler().postDelayed(new Runnable() {
                            public void run() {
                                if (CBActivity.this.snoozeDialog != null && CBActivity.this.snoozeDialog.isShowing()) {
                                    CBActivity.this.snoozeDialog.cancel();
                                    CBActivity.this.snoozeDialog.dismiss();
                                    CBActivity.this.finish();
                                }
                            }
                        }, 5000);
                        return;
                    }
                    this.payUCustomBrowser.addEventAnalytics(CBAnalyticsConstant.SNOOZE_TRANSACTION_STATUS_UPDATE, CBAnalyticsConstant.SNOOZE_RELOAD);
                    this.payUCustomBrowser.dismissSnoozeWindow();
                    this.payUCustomBrowser.progressBarVisibilityPayuChrome(8, BuildConfig.VERSION_NAME);
                    this.payUCustomBrowser.reloadWebView();
                    return;
                }
                this.payUCustomBrowser.addEventAnalytics(CBAnalyticsConstant.SNOOZE_NOTIFICATION_ACTION, CBAnalyticsConstant.TXN_NOT_CONFIRMED);
                inflate.findViewById(R.id.button_snooze_transaction).setVisibility(0);
                inflate.findViewById(R.id.snooze_status_icon).setVisibility(0);
                inflate.findViewById(R.id.text_view_cancel_snooze_window).setVisibility(8);
                inflate.findViewById(R.id.button_snooze_transaction).setVisibility(8);
                ((TextView) inflate.findViewById(R.id.snooze_header_txt)).setText(R.string.cb_transaction_failed_title);
                ((TextView) inflate.findViewById(R.id.text_view_snooze_message)).setText(R.string.cb_transaction_failed);
                inflate.findViewById(R.id.button_retry_transaction).setVisibility(8);
                inflate.findViewById(R.id.button_cancel_transaction).setVisibility(0);
                inflate.findViewById(R.id.button_snooze_transaction).setVisibility(8);
                inflate.findViewById(R.id.text_view_retry_message_detail).setVisibility(8);
                inflate.findViewById(R.id.text_view_transaction_snoozed_message1).setVisibility(8);
                inflate.findViewById(R.id.text_view_ac_debited_twice).setVisibility(8);
                inflate.findViewById(R.id.button_cancel_transaction).setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        CBActivity.this.payUCustomBrowser.addEventAnalytics(CBAnalyticsConstant.SNOOZE_INTERACTION_TIME, CustomBrowserMain.getSystemCurrentTime());
                        CBActivity.this.payUCustomBrowser.addEventAnalytics(CBAnalyticsConstant.SNOOZE_WINDOW_ACTION, CBAnalyticsConstant.SNOOZE_CANCEL_TRANSACTION_CLICK);
                        CBActivity.this.snoozeDialog.dismiss();
                        CBActivity.this.snoozeDialog.cancel();
                        CBActivity.this.finish();
                    }
                });
                this.snoozeDialog.setOnDismissListener(new OnDismissListener() {
                    public void onDismiss(DialogInterface dialogInterface) {
                        CBActivity.this.snoozeDialog.dismiss();
                        CBActivity.this.snoozeDialog.cancel();
                    }
                });
                this.snoozeDialog.setCanceledOnTouchOutside(false);
                this.snoozeDialog.show();
                new Handler().postDelayed(new Runnable() {
                    public void run() {
                        if (CBActivity.this.snoozeDialog != null && CBActivity.this.snoozeDialog.isShowing()) {
                            CBActivity.this.snoozeDialog.cancel();
                            CBActivity.this.snoozeDialog.dismiss();
                            CBActivity.this.finish();
                        }
                    }
                }, 5000);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void hideMagicRetry() {
        this.payUCustomBrowser.hideMagicRetry();
    }

    public void onBackPressed() {
        if (this.customBrowserConfig == null || this.customBrowserConfig.getDisableBackButtonDialog() == 1) {
            finish();
        } else {
            showBackButtonDialog();
        }
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(null);
        setContentView(R.layout.cb_payments);
        this.payUCustomBrowser = new Bank();
        Bundle bundle2 = new Bundle();
        this.customBrowserConfig = (CustomBrowserConfig) getIntent().getParcelableExtra(CBConstant.CB_CONFIG);
        bundle2.putParcelable(CBConstant.CB_CONFIG, this.customBrowserConfig);
        this.payUCustomBrowser.setArguments(bundle2);
        getSupportFragmentManager().beginTransaction().add(R.id.main_frame, this.payUCustomBrowser).commit();
    }

    public void onDestroy() {
        if (this.backButtonAlertDialog != null && this.backButtonAlertDialog.isShowing()) {
            this.backButtonAlertDialog.dismiss();
            this.backButtonAlertDialog.cancel();
        }
        if (this.snoozeDialog != null && this.snoozeDialog.isShowing()) {
            this.snoozeDialog.dismiss();
            this.snoozeDialog.cancel();
        }
        STATE = 3;
        if (!(this.payUCustomBrowser == null || this.payUCustomBrowser.getSnoozeLoaderView() == null)) {
            this.payUCustomBrowser.getSnoozeLoaderView().cancelAnimation();
        }
        if (CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback() != null) {
            CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback().onPaymentTerminate();
        }
        NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
        notificationManager.cancel(CBConstant.SNOOZE_NOTIFICATION_ID);
        L.v("sTag", "OnDestroy CBActivity");
        notificationManager.cancel(63);
        super.onDestroy();
    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent != null && intent.getStringExtra(CBConstant.SENDER).contentEquals(CBConstant.SNOOZE_SERVICE)) {
            this.payUCustomBrowser.killSnoozeService();
            if (intent.getExtras().getBoolean(CBConstant.VERIFICATION_MSG_RECEIVED)) {
                if (this.payUCustomBrowser != null) {
                    this.payUCustomBrowser.dismissSnoozeWindow();
                }
                showTransactionStatusDialog(intent.getExtras().getString(PayuConstants.PAYU_RESPONSE), intent);
                return;
            }
            this.customBrowserConfig = (CustomBrowserConfig) intent.getExtras().getParcelable(CBConstant.CB_CONFIG);
            this.payUCustomBrowser.addEventAnalytics(CBAnalyticsConstant.SNOOZE_NOTIFICATION_ACTION, CBAnalyticsConstant.SNOOZE_TRANSACTION_RESUMED);
            if (intent.getStringExtra(CBConstant.CURRENT_URL).equalsIgnoreCase(this.customBrowserConfig.getPostURL())) {
                if (this.customBrowserConfig.getPostURL().contentEquals(PayuConstants.PRODUCTION_PAYMENT_URL) || this.customBrowserConfig.getPostURL().contentEquals(PayuConstants.MOBILE_TEST_PAYMENT_URL)) {
                    this.payUCustomBrowser.markPreviousTxnAsUserCanceled(CBUtil.getLogMessage(getApplicationContext(), CBAnalyticsConstant.SURE_PAY_CANCELLED, this.customBrowserConfig.getTransactionID(), BuildConfig.VERSION_NAME, Bank.keyAnalytics, this.customBrowserConfig.getTransactionID(), BuildConfig.VERSION_NAME));
                }
                this.payUCustomBrowser.reloadWebView(this.customBrowserConfig.getPostURL(), this.customBrowserConfig.getPayuPostData());
            } else if (Bank.isUrlWhiteListed(intent.getStringExtra(CBConstant.CURRENT_URL))) {
                this.payUCustomBrowser.reloadWebView(intent.getStringExtra(CBConstant.CURRENT_URL));
            } else {
                if (this.customBrowserConfig.getPostURL().contentEquals(PayuConstants.PRODUCTION_PAYMENT_URL) || this.customBrowserConfig.getPostURL().contentEquals(PayuConstants.MOBILE_TEST_PAYMENT_URL)) {
                    this.payUCustomBrowser.markPreviousTxnAsUserCanceled(CBUtil.getLogMessage(getApplicationContext(), CBAnalyticsConstant.SURE_PAY_CANCELLED, this.customBrowserConfig.getTransactionID(), BuildConfig.VERSION_NAME, Bank.keyAnalytics, this.customBrowserConfig.getTransactionID(), BuildConfig.VERSION_NAME));
                }
                this.payUCustomBrowser.reloadWebView(this.customBrowserConfig.getPostURL(), this.customBrowserConfig.getPayuPostData());
            }
        }
    }

    protected void onPause() {
        super.onPause();
        STATE = 2;
    }

    protected void onResume() {
        super.onResume();
        STATE = 1;
    }

    protected void onStart() {
        super.onStart();
    }

    public void setCheckFURLSURL(String str, String str2) {
        new Thread(new AnonymousClass8(str2, str)).start();
    }

    public void showBackButtonDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setCancelable(false);
        builder.setMessage("Do you really want to cancel the transaction ?");
        builder.setPositiveButton("Ok", new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                if (!(CustomBrowserData.SINGLETON == null || CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback() == null)) {
                    CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback().onBackApprove();
                }
                CBActivity.this.payUCustomBrowser.addEventAnalytics(CBAnalyticsConstant.USER_INPUT, CBAnalyticsConstant.BACK_BUTTON_OK_CLICK.toLowerCase());
                CBActivity.this.finish();
            }
        });
        builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                CBActivity.this.payUCustomBrowser.addEventAnalytics(CBAnalyticsConstant.USER_INPUT, CBAnalyticsConstant.BACK_BUTTON_CANCEL_CLICK.toLowerCase());
                if (CustomBrowserData.SINGLETON != null && CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback() != null) {
                    CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback().onBackDismiss();
                }
            }
        });
        this.payUCustomBrowser.addEventAnalytics(CBAnalyticsConstant.USER_INPUT, CBAnalyticsConstant.PAYU_BACK_BUTTON_CLICK.toLowerCase());
        if (!(CustomBrowserData.SINGLETON == null || CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback() == null)) {
            CustomBrowserData.SINGLETON.getPayuCustomBrowserCallback().onBackButton(builder);
        }
        this.backButtonAlertDialog = builder.create();
        builder.show();
    }

    public void showMagicRetry() {
        this.payUCustomBrowser.showMagicRetry();
    }
}
