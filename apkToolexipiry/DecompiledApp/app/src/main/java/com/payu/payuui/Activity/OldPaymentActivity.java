package com.payu.payuui.Activity;

import android.app.AlertDialog.Builder;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import com.payu.custombrowser.Bank;
import com.payu.custombrowser.PayUWebChromeClient;
import com.payu.custombrowser.PayUWebViewClient;
import com.payu.custombrowser.util.CBAnalyticsConstant;
import com.payu.custombrowser.util.CBConstant;
import com.payu.india.Extras.PayUSdkDetails;
import com.payu.india.Model.PayuConfig;
import com.payu.india.Payu.PayuConstants;
import com.payu.india.Payu.PayuUtils;
import com.payu.magicretry.Helpers.MRConstant;
import com.payu.magicretry.MagicRetryFragment;
import com.payu.magicretry.MagicRetryFragment.ActivityCallback;
import com.squareup.haha.perflib.StackFrame;
import com.squareup.leakcanary.watcher.BuildConfig;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class OldPaymentActivity extends AppCompatActivity implements ActivityCallback {
    private String UTF;
    Bundle bundle;
    boolean cancelTransaction;
    private BroadcastReceiver mReceiver;
    private WebView mWebView;
    MagicRetryFragment magicRetryFragment;
    private String merchantHash;
    PayuConfig payuConfig;
    private Boolean smsPermission;
    private int storeOneClickHash;
    String txnId;
    String url;
    private boolean viewPortWide;

    public OldPaymentActivity() {
        this.cancelTransaction = false;
        this.mReceiver = null;
        this.UTF = "UTF-8";
        this.viewPortWide = false;
        this.txnId = null;
    }

    private void initMagicRetry() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        this.magicRetryFragment = new MagicRetryFragment();
        Bundle bundle = new Bundle();
        bundle.putString(MagicRetryFragment.KEY_TXNID, this.txnId);
        this.magicRetryFragment.setArguments(bundle);
        Map hashMap = new HashMap();
        hashMap.put(this.url, this.payuConfig.getData());
        this.magicRetryFragment.setUrlListWithPostData(hashMap);
        supportFragmentManager.beginTransaction().add(R.id.magic_retry_container, this.magicRetryFragment, "magicRetry").commit();
        toggleFragmentVisibility(0);
        this.magicRetryFragment.isWhiteListingEnabled(true);
    }

    public void hideMagicRetry() {
        toggleFragmentVisibility(0);
    }

    protected void onCreate(Bundle bundle) {
        if (bundle != null) {
            super.onCreate(null);
            finish();
        } else {
            super.onCreate(bundle);
        }
        setContentView(R.layout.activity_payments);
        this.mWebView = (WebView) findViewById(R.id.webview);
        this.bundle = getIntent().getExtras();
        this.payuConfig = (PayuConfig) this.bundle.getParcelable(PayuConstants.PAYU_CONFIG);
        this.storeOneClickHash = this.bundle.getInt(PayuConstants.STORE_ONE_CLICK_HASH);
        this.mWebView = (WebView) findViewById(R.id.webview);
        this.url = this.payuConfig.getEnvironment() == 0 ? PayuConstants.PRODUCTION_PAYMENT_URL : PayuConstants.MOBILE_TEST_PAYMENT_URL;
        String str = null;
        for (String split : this.payuConfig.getData().split("&")) {
            String[] split2 = split.split("=");
            if (split2.length >= 2) {
                String str2 = split2[0];
                int i = -1;
                switch (str2.hashCode()) {
                    case 3575:
                        if (str2.equals(PayuConstants.PG)) {
                            i = 2;
                            break;
                        }
                        break;
                    case 106079:
                        if (str2.equals(MRConstant.KEY)) {
                            boolean z = true;
                            break;
                        }
                        break;
                    case 110812421:
                        if (str2.equals(MRConstant.TRANSACTION_ID)) {
                            i = 0;
                            break;
                        }
                        break;
                }
                switch (i) {
                    case StackFrame.NO_LINE_NUMBER /*0*/:
                        this.txnId = split2[1];
                        break;
                    case com.payu.testapp.R.styleable.WaitingDots_period /*1*/:
                        str = split2[1];
                        break;
                    case com.payu.testapp.R.styleable.WaitingDots_jumpHeight /*2*/:
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
        try {
            Class.forName("com.payu.custombrowser.Bank");
            Fragment anonymousClass1 = new Bank() {
                public void onBackApproved() {
                    Toast.makeText(OldPaymentActivity.this, "payment activity onBackApproved", 0).show();
                }

                public void onBackCancelled() {
                    Toast.makeText(OldPaymentActivity.this, "payment activity onBackCancelled", 0).show();
                }

                public void onBackPressed(Builder builder) {
                    Toast.makeText(OldPaymentActivity.this, "payment activity onBackPressed", 0).show();
                }

                public void onBankError() {
                    OldPaymentActivity.this.findViewById(R.id.parent).setVisibility(8);
                    OldPaymentActivity.this.findViewById(R.id.trans_overlay).setVisibility(8);
                }

                public void onHelpAvailable() {
                    OldPaymentActivity.this.findViewById(R.id.parent).setVisibility(0);
                }

                public void onHelpUnavailable() {
                    OldPaymentActivity.this.findViewById(R.id.parent).setVisibility(8);
                    OldPaymentActivity.this.findViewById(R.id.trans_overlay).setVisibility(8);
                }

                public void registerBroadcast(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
                    OldPaymentActivity.this.mReceiver = broadcastReceiver;
                    OldPaymentActivity.this.registerReceiver(broadcastReceiver, intentFilter);
                }

                public void unregisterBroadcast(BroadcastReceiver broadcastReceiver) {
                    if (OldPaymentActivity.this.mReceiver != null) {
                        OldPaymentActivity.this.unregisterReceiver(OldPaymentActivity.this.mReceiver);
                        OldPaymentActivity.this.mReceiver = null;
                    }
                }
            };
            Bundle bundle2 = new Bundle();
            bundle2.putInt(CBConstant.WEBVIEW, R.id.webview);
            bundle2.putInt(CBConstant.TRANS_LAYOUT, R.id.trans_overlay);
            bundle2.putInt(CBConstant.MAIN_LAYOUT, R.id.r_layout);
            bundle2.putBoolean(CBConstant.VIEWPORTWIDE, this.viewPortWide);
            bundle2.putBoolean(CBConstant.AUTO_SELECT_OTP, false);
            bundle2.putBoolean(CBAnalyticsConstant.CB_AUTO_APPROVE, true);
            bundle2.putBoolean(CBConstant.BACK_BUTTON, true);
            bundle2.putString(MRConstant.TRANSACTION_ID, this.txnId == null ? String.valueOf(System.currentTimeMillis()) : this.txnId);
            bundle2.putString(CBAnalyticsConstant.ANALYTICS_KEY, str);
            this.smsPermission = Boolean.valueOf(getIntent().getBooleanExtra(PayuConstants.SMS_PERMISSION, true));
            bundle2.putBoolean(CBConstant.MERCHANT_SMS_PERMISSION, this.smsPermission.booleanValue());
            bundle2.putString(CBConstant.SDK_DETAILS, new PayUSdkDetails().getSdkVersionName());
            bundle2.putInt(PayuConstants.STORE_ONE_CLICK_HASH, this.storeOneClickHash);
            if (getIntent().getExtras().containsKey(CBConstant.SHOW_CUSTOMROWSER)) {
                bundle2.putBoolean(CBConstant.SHOW_CUSTOMROWSER, getIntent().getBooleanExtra(CBConstant.SHOW_CUSTOMROWSER, false));
            }
            bundle2.putBoolean(CBConstant.SHOW_CUSTOMROWSER, true);
            anonymousClass1.setArguments(bundle2);
            findViewById(R.id.parent).bringToFront();
            try {
                getSupportFragmentManager().beginTransaction().setCustomAnimations(R.anim.fade_in, R.anim.cb_face_out).add(R.id.parent, anonymousClass1).commit();
            } catch (Exception e) {
                e.printStackTrace();
                finish();
            }
            initMagicRetry();
            this.mWebView.setWebChromeClient(new PayUWebChromeClient(anonymousClass1));
            this.mWebView.setWebViewClient(new PayUWebViewClient(anonymousClass1, this.magicRetryFragment, str));
            this.magicRetryFragment.setWebView(this.mWebView);
            this.magicRetryFragment.initMRSettingsFromSharedPreference(this);
            this.mWebView.postUrl(this.url, this.payuConfig.getData().getBytes());
        } catch (ClassNotFoundException e2) {
            this.mWebView.getSettings().setCacheMode(2);
            this.mWebView.getSettings().setSupportMultipleWindows(true);
            this.mWebView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
            if (this.viewPortWide) {
                this.mWebView.getSettings().setUseWideViewPort(this.viewPortWide);
            }
            findViewById(R.id.trans_overlay).setVisibility(8);
            this.mWebView.addJavascriptInterface(new Object() {

                /* renamed from: com.payu.payuui.Activity.OldPaymentActivity.2.1 */
                class AnonymousClass1 implements Runnable {
                    final /* synthetic */ String val$result;

                    AnonymousClass1(String str) {
                        this.val$result = str;
                    }

                    public void run() {
                        Intent intent = new Intent();
                        intent.putExtra("result", this.val$result);
                        if (OldPaymentActivity.this.storeOneClickHash == 1 && OldPaymentActivity.this.merchantHash != null) {
                            intent.putExtra(PayuConstants.MERCHANT_HASH, OldPaymentActivity.this.merchantHash);
                        }
                        OldPaymentActivity.this.setResult(-1, intent);
                        OldPaymentActivity.this.finish();
                    }
                }

                /* renamed from: com.payu.payuui.Activity.OldPaymentActivity.2.2 */
                class AnonymousClass2 implements Runnable {
                    final /* synthetic */ String val$result;

                    AnonymousClass2(String str) {
                        this.val$result = str;
                    }

                    public void run() {
                        Intent intent = new Intent();
                        intent.putExtra("result", this.val$result);
                        OldPaymentActivity.this.setResult(0, intent);
                        OldPaymentActivity.this.finish();
                    }
                }

                /* renamed from: com.payu.payuui.Activity.OldPaymentActivity.2.3 */
                class AnonymousClass3 implements Runnable {
                    final /* synthetic */ String val$result;

                    AnonymousClass3(String str) {
                        this.val$result = str;
                    }

                    public void run() {
                        switch (OldPaymentActivity.this.storeOneClickHash) {
                            case com.payu.testapp.R.styleable.WaitingDots_period /*1*/:
                                OldPaymentActivity.this.merchantHash = this.val$result;
                            case com.payu.testapp.R.styleable.WaitingDots_jumpHeight /*2*/:
                                try {
                                    JSONObject jSONObject = new JSONObject(this.val$result);
                                    new PayuUtils().storeInSharedPreferences(OldPaymentActivity.this, jSONObject.getString(PayuConstants.CARD_TOKEN), jSONObject.getString(PayuConstants.MERCHANT_HASH));
                                } catch (JSONException e) {
                                    e.printStackTrace();
                                }
                            default:
                        }
                    }
                }

                @JavascriptInterface
                public void onFailure() {
                    onFailure(BuildConfig.VERSION_NAME);
                }

                @JavascriptInterface
                public void onFailure(String str) {
                    OldPaymentActivity.this.runOnUiThread(new AnonymousClass2(str));
                }

                @JavascriptInterface
                public void onMerchantHashReceived(String str) {
                    OldPaymentActivity.this.runOnUiThread(new AnonymousClass3(str));
                }

                @JavascriptInterface
                public void onSuccess() {
                    onSuccess(BuildConfig.VERSION_NAME);
                }

                @JavascriptInterface
                public void onSuccess(String str) {
                    OldPaymentActivity.this.runOnUiThread(new AnonymousClass1(str));
                }
            }, "PayU");
            this.mWebView.setWebChromeClient(new WebChromeClient());
            this.mWebView.setWebViewClient(new WebViewClient());
            this.mWebView.getSettings().setJavaScriptEnabled(true);
            this.mWebView.getSettings().setDomStorageEnabled(true);
            this.mWebView.postUrl(this.url, this.payuConfig.getData().getBytes());
        }
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_payments, menu);
        return true;
    }

    public void onDestroy() {
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return menuItem.getItemId() == R.id.action_settings ? true : super.onOptionsItemSelected(menuItem);
    }

    public void showMagicRetry() {
        toggleFragmentVisibility(1);
    }

    public void toggleFragmentVisibility(int i) {
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        if (!isFinishing()) {
            if (i == 1) {
                beginTransaction.show(this.magicRetryFragment).commitAllowingStateLoss();
            } else if (i == 0) {
                beginTransaction.hide(this.magicRetryFragment).commitAllowingStateLoss();
                Log.v("#### PAYU", "hidhing magic retry");
            }
        }
    }
}
