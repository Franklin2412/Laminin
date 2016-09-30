package com.payu.payuui.Activity;

import android.app.AlertDialog.Builder;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.webkit.WebView;
import com.payu.custombrowser.Bank;
import com.payu.custombrowser.CustomBrowser;
import com.payu.custombrowser.PayUCustomBrowserCallback;
import com.payu.custombrowser.PayUWebChromeClient;
import com.payu.custombrowser.bean.CustomBrowserConfig;
import com.payu.india.Model.PayuConfig;
import com.payu.india.Payu.PayuConstants;
import com.payu.india.Payu.PayuUtils;
import com.payu.magicretry.Helpers.MRConstant;
import com.payu.magicretry.MagicRetryFragment;
import com.payu.testapp.R;
import com.squareup.haha.perflib.StackFrame;
import java.util.HashMap;
import java.util.Map;

public class PaymentsActivity extends FragmentActivity {
    private String UTF;
    Bundle bundle;
    boolean cancelTransaction;
    private PayuUtils mPayuUtils;
    private BroadcastReceiver mReceiver;
    String magicRetry;
    MagicRetryFragment magicRetryFragment;
    private String merchantHash;
    String merchantKey;
    PayuConfig payuConfig;
    private int storeOneClickHash;
    String txnId;
    String url;
    private boolean viewPortWide;

    public PaymentsActivity() {
        this.cancelTransaction = false;
        this.mReceiver = null;
        this.UTF = "UTF-8";
        this.viewPortWide = false;
        this.txnId = null;
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            this.mPayuUtils = new PayuUtils();
            this.bundle = getIntent().getExtras();
            this.payuConfig = (PayuConfig) this.bundle.getParcelable(PayuConstants.PAYU_CONFIG);
            this.storeOneClickHash = this.bundle.getInt(PayuConstants.STORE_ONE_CLICK_HASH);
            this.magicRetry = this.bundle.getString("magic_retry");
            this.url = this.payuConfig.getEnvironment() == 0 ? PayuConstants.PRODUCTION_PAYMENT_URL : PayuConstants.MOBILE_TEST_PAYMENT_URL;
            for (String split : this.payuConfig.getData().split("&")) {
                String[] split2 = split.split("=");
                if (split2.length >= 2) {
                    String str = split2[0];
                    boolean z = true;
                    switch (str.hashCode()) {
                        case 3575:
                            if (str.equals(PayuConstants.PG)) {
                                z = true;
                                break;
                            }
                            break;
                        case 106079:
                            if (str.equals(MRConstant.KEY)) {
                                z = true;
                                break;
                            }
                            break;
                        case 110812421:
                            if (str.equals(MRConstant.TRANSACTION_ID)) {
                                z = false;
                                break;
                            }
                            break;
                    }
                    switch (z) {
                        case StackFrame.NO_LINE_NUMBER /*0*/:
                            this.txnId = split2[1];
                            break;
                        case R.styleable.WaitingDots_period /*1*/:
                            this.merchantKey = split2[1];
                            break;
                        case R.styleable.WaitingDots_jumpHeight /*2*/:
                            if (!split2[1].contentEquals(PayuConstants.NB)) {
                                break;
                            }
                            this.viewPortWide = true;
                            break;
                        default:
                            break;
                    }
                }
            }
            PayUCustomBrowserCallback anonymousClass1 = new PayUCustomBrowserCallback() {
                public void initializeMagicRetry(Bank bank, WebView webView, MagicRetryFragment magicRetryFragment) {
                    Log.d("leak test", "initializeMagicRetry");
                    Map hashMap = new HashMap();
                    hashMap.put(PaymentsActivity.this.url, PaymentsActivity.this.payuConfig.getData());
                    bank.setMagicRetry(hashMap);
                }

                public void onBackApprove() {
                    Log.d("leak test", "onBackApprove");
                    PaymentsActivity.this.finish();
                }

                public void onBackButton(Builder builder) {
                    Log.d("leak test", "onBackButton");
                    super.onBackButton(builder);
                }

                public void onBackDismiss() {
                    Log.d("leak test", "onBackDismiss");
                    super.onBackDismiss();
                }

                public void onCBErrorReceived(int i, String str) {
                }

                public void onPaymentFailure(String str, String str2) {
                    Log.d("leak test", "onPaymentFailure");
                    Intent intent = new Intent();
                    intent.putExtra(PaymentsActivity.this.getString(com.payu.payuui.R.string.cb_result), str2);
                    intent.putExtra(PaymentsActivity.this.getString(com.payu.payuui.R.string.cb_payu_response), str);
                    if (PaymentsActivity.this.storeOneClickHash == 1 && PaymentsActivity.this.merchantHash != null) {
                        intent.putExtra(PayuConstants.MERCHANT_HASH, PaymentsActivity.this.merchantHash);
                    }
                    PaymentsActivity.this.setResult(0, intent);
                }

                public void onPaymentSuccess(String str, String str2) {
                    Log.d("leak test", "onpaymentsuccess");
                    Intent intent = new Intent();
                    intent.putExtra(PaymentsActivity.this.getString(com.payu.payuui.R.string.cb_result), str2);
                    intent.putExtra(PaymentsActivity.this.getString(com.payu.payuui.R.string.cb_payu_response), str);
                    if (PaymentsActivity.this.storeOneClickHash == 1 && PaymentsActivity.this.merchantHash != null) {
                        intent.putExtra(PayuConstants.MERCHANT_HASH, PaymentsActivity.this.merchantHash);
                    }
                    PaymentsActivity.this.setResult(-1, intent);
                }

                public void onPaymentTerminate() {
                    Log.d("leak test", "onPaymentTerminate");
                    PaymentsActivity.this.finish();
                }

                public void setCBProperties(WebView webView, Bank bank) {
                    webView.setWebChromeClient(new PayUWebChromeClient(bank));
                }
            };
            CustomBrowserConfig customBrowserConfig = new CustomBrowserConfig(this.merchantKey, this.txnId);
            customBrowserConfig.setViewPortWideEnable(this.viewPortWide);
            customBrowserConfig.setAutoApprove(false);
            customBrowserConfig.setAutoSelectOTP(false);
            customBrowserConfig.setDisableBackButtonDialog(false);
            customBrowserConfig.setStoreOneClickHash(1);
            customBrowserConfig.setMerchantSMSPermission(true);
            try {
                customBrowserConfig.setmagicRetry(true);
            } catch (Exception e) {
                e.printStackTrace();
            }
            customBrowserConfig.setPayuPostData(this.payuConfig.getData());
            customBrowserConfig.setPostURL(this.url);
            customBrowserConfig.setMerchantCheckoutActivityPath("com.payu.payuui.Activity.MerchantCheckoutActivity");
            new CustomBrowser().addCustomBrowser(this, customBrowserConfig, anonymousClass1);
        }
    }
}
