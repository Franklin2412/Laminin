package com.payu.magicretry;

import android.app.Activity;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.payu.custombrowser.util.CBConstant;
import com.payu.india.Payu.PayuConstants;
import com.payu.magicretry.Helpers.L;
import com.payu.magicretry.Helpers.MRConstant;
import com.payu.magicretry.Helpers.SharedPreferenceUtil;
import com.payu.magicretry.Helpers.Util;
import com.payu.magicretry.analytics.MRAnalytics;
import com.squareup.leakcanary.watcher.BuildConfig;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class MagicRetryFragment extends Fragment implements OnClickListener {
    public static boolean DEBUG = false;
    public static final String KEY_TXNID = "transaction_id";
    public static final String SP_IS_MR_ENABLED = "MR_ENABLED";
    public static final String SP_MR_FILE_NAME = "MR_SETTINGS";
    public static final String SP_WHITELISTED_URLS = "MR_WHITELISTED_URLS";
    private static String analyticsKey = null;
    private static String bankName = null;
    private static String cbVersion = null;
    private static boolean disableMagicRetry = false;
    private static final String projectToken = "68dbbac2c25bc048154999d13cb77a55";
    private static List<String> whiteListedUrls;
    String PAYU_DOMAIN;
    String PAYU_DOMAIN_PROD;
    String PAYU_DOMAIN_TEST;
    private ActivityCallback activityCallbackHandler;
    private Context context;
    private boolean errorWasReceived;
    private int firstCall;
    private boolean fromOnReceivedError;
    private boolean isWhiteListingEnabled;
    private MRAnalytics mAnalytics;
    private WebView mWebView;
    private ProgressBar magicProgress;
    private LinearLayout magicRetryLayoutParent;
    private String reloadUrl;
    private ImageView retryButton;
    private String txnID;
    private Map<String, String> urlListWithPostData;
    private LinearLayout waitingDotsLayoutParent;

    public interface ActivityCallback {
        void hideMagicRetry();

        void showMagicRetry();
    }

    static {
        whiteListedUrls = new ArrayList();
        disableMagicRetry = false;
        DEBUG = false;
    }

    public MagicRetryFragment() {
        this.errorWasReceived = true;
        this.fromOnReceivedError = false;
        this.urlListWithPostData = new HashMap();
        this.isWhiteListingEnabled = true;
        this.txnID = BuildConfig.VERSION_NAME;
        this.PAYU_DOMAIN_TEST = CBConstant.PAYU_DOMAIN_TEST;
        this.PAYU_DOMAIN_PROD = CBConstant.PAYU_DOMAIN_PROD;
        this.PAYU_DOMAIN = DEBUG ? this.PAYU_DOMAIN_TEST : this.PAYU_DOMAIN_PROD;
    }

    public static void disableMagicRetry(boolean z) {
        disableMagicRetry = z;
    }

    private void hideItems() {
        hideMagicReloadProgressDialog();
    }

    private void hideMagicReloadProgressDialog() {
        if (isAdded()) {
            if (this.waitingDotsLayoutParent != null) {
                this.waitingDotsLayoutParent.setVisibility(8);
            }
            if (this.magicProgress != null) {
                this.magicProgress.setVisibility(4);
            }
            if (this.magicRetryLayoutParent != null) {
                this.magicRetryLayoutParent.setVisibility(0);
            }
        }
    }

    private void initViewElements(View view) {
        this.magicProgress = (ProgressBar) view.findViewById(R.id.magic_reload_progress);
        this.retryButton = (ImageView) view.findViewById(R.id.retry_btn);
        this.waitingDotsLayoutParent = (LinearLayout) view.findViewById(R.id.waiting_dots_parent);
        this.magicRetryLayoutParent = (LinearLayout) view.findViewById(R.id.magic_retry_parent);
        this.magicRetryLayoutParent.setVisibility(0);
        this.waitingDotsLayoutParent.setVisibility(8);
        this.retryButton.setOnClickListener(this);
    }

    public static boolean isUrlWhiteListed(String str) {
        for (String str2 : whiteListedUrls) {
            if (str != null && str.contains(str2)) {
                return true;
            }
        }
        return false;
    }

    private boolean isWhiteListedURL(String str) {
        if (this.isWhiteListingEnabled) {
            for (String str2 : whiteListedUrls) {
                if (str != null && str.contains(str2)) {
                    L.v("#### PAYU", "WHITELISTED URL FOUND.. SHOWING MAGIC RETRY: " + str);
                }
            }
            return false;
        }
        return true;
    }

    private void performReload() {
        Log.v("#### PAYU", "PayUWebViewClient.java Reloading URL: " + this.mWebView.getUrl());
        this.reloadUrl = this.mWebView.getUrl();
        if (this.urlListWithPostData.size() <= 0 || !this.urlListWithPostData.containsKey(this.mWebView.getUrl())) {
            if (Util.isNetworkAvailable(this.context)) {
                this.fromOnReceivedError = false;
                this.mWebView.reload();
                addEventAnalytics(MRConstant.MR_USER_INPUT, MRConstant.CLICK_M_RETRY);
                showMagicReloadProgressDialog();
                return;
            }
            Util.showNetworkNotAvailableError(this.context);
        } else if (Util.isNetworkAvailable(this.context)) {
            this.fromOnReceivedError = false;
            this.mWebView.postUrl(this.mWebView.getUrl(), ((String) this.urlListWithPostData.get(this.mWebView.getUrl())).getBytes());
            addEventAnalytics(MRConstant.MR_USER_INPUT, MRConstant.CLICK_M_RETRY);
            showMagicReloadProgressDialog();
        } else {
            Util.showNetworkNotAvailableError(this.context);
        }
    }

    public static void processAndAddWhiteListedUrls(String str) {
        if (str != null && !str.equalsIgnoreCase(BuildConfig.VERSION_NAME)) {
            String[] split = str.split("\\|");
            for (String str2 : split) {
                L.v("#### PAYU", "Split Url: " + str2);
            }
            if (split != null && split.length > 0) {
                setWhitelistedURL(Arrays.asList(split));
            }
            L.v("#### PAYU", "Whitelisted URLs from JS: " + str);
        }
    }

    public static void setMRData(String str, Context context) {
        if (str == null) {
            SharedPreferenceUtil.addBooleanToSharedPreference(context, SP_MR_FILE_NAME, SP_IS_MR_ENABLED, false);
            disableMagicRetry(true);
            L.v("#### PAYU", "MR SP Setting 1) Disable MR: " + disableMagicRetry);
            SharedPreferenceUtil.addStringToSharedPreference(context, SP_MR_FILE_NAME, SP_WHITELISTED_URLS, BuildConfig.VERSION_NAME);
            setWhitelistedURL(new ArrayList());
            L.v("#### PAYU", "MR SP Setting 2) Clear white listed urls, length: " + whiteListedUrls.size());
        } else {
            SharedPreferenceUtil.addBooleanToSharedPreference(context, SP_MR_FILE_NAME, SP_IS_MR_ENABLED, true);
            disableMagicRetry(false);
            L.v("#### PAYU", "MR SP Setting 1) Disable MR: " + disableMagicRetry);
            SharedPreferenceUtil.addStringToSharedPreference(context, SP_MR_FILE_NAME, SP_WHITELISTED_URLS, str);
            processAndAddWhiteListedUrls(str);
            L.v("#### PAYU", "MR SP Setting 2) Update white listed urls, length: " + whiteListedUrls.size());
        }
        L.v("#### PAYU", "MR DATA UPDATED IN SHARED PREFERENCES");
    }

    public static void setWhitelistedURL(List<String> list) {
        whiteListedUrls.clear();
        L.v("#### PAYU", "MR Cleared whitelisted urls, length: " + whiteListedUrls.size());
        whiteListedUrls.addAll(list);
        L.v("#### PAYU", "MR Updated whitelisted urls, length: " + whiteListedUrls.size());
    }

    private void showMagicReloadProgressDialog() {
        this.magicRetryLayoutParent.setVisibility(8);
        this.waitingDotsLayoutParent.setVisibility(0);
        this.magicProgress.setVisibility(0);
    }

    public void addEventAnalytics(String str, String str2) {
        try {
            if (getActivity() != null && isAdded() && !isRemoving() && !isDetached() && this.mAnalytics != null) {
                this.mAnalytics.log(getLogMessage(str, str2.toLowerCase()));
            }
        } catch (Exception e) {
        }
    }

    public String getCookie(String str, Context context) {
        String str2 = BuildConfig.VERSION_NAME;
        try {
            String str3 = this.PAYU_DOMAIN;
            CookieManager instance = CookieManager.getInstance();
            if (VERSION.SDK_INT < 21) {
                CookieSyncManager.createInstance(context);
                CookieSyncManager.getInstance().sync();
            }
            str3 = instance.getCookie(str3);
            if (str3 != null) {
                for (String str4 : str3.split(";")) {
                    if (str4.contains(str)) {
                        str2 = str4.split("=")[1];
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str2;
    }

    String getLogMessage(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(MRConstant.PAYU_ID, getCookie(MRConstant.PAYUIDCOOKIE, this.context));
            jSONObject.put(MRConstant.TRANSACTION_ID, this.txnID == null ? BuildConfig.VERSION_NAME : this.txnID);
            jSONObject.put(MRConstant.MERCHANT_KEY, analyticsKey);
            jSONObject.put(MRConstant.PAGE_TYPE, BuildConfig.VERSION_NAME);
            jSONObject.put(MRConstant.KEY, str);
            jSONObject.put(MRConstant.VALUE, str2);
            jSONObject.put(MRConstant.PAKAGE_NAME, getActivity().getPackageName());
            jSONObject.put(MRConstant.BANK_NAME, bankName == null ? BuildConfig.VERSION_NAME : bankName);
            return jSONObject.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void initAnalytics(Activity activity) {
        this.mAnalytics = new MRAnalytics(activity.getApplicationContext(), "local_cache_analytics_mr");
    }

    public void initMRSettingsFromSharedPreference(Context context) {
        boolean z = true;
        if (SharedPreferenceUtil.getBooleanFromSharedPreference(context, SP_MR_FILE_NAME, SP_IS_MR_ENABLED, !disableMagicRetry)) {
            z = false;
        }
        disableMagicRetry(z);
        processAndAddWhiteListedUrls(SharedPreferenceUtil.getStringFromSharedPreference(context, SP_MR_FILE_NAME, SP_WHITELISTED_URLS, BuildConfig.VERSION_NAME));
    }

    public void isWhiteListingEnabled(boolean z) {
        this.isWhiteListingEnabled = z;
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
    }

    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            this.activityCallbackHandler = (ActivityCallback) context;
        } catch (ClassCastException e) {
            throw new ClassCastException(context.toString() + " must implement OnHeadlineSelectedListener");
        }
    }

    public void onClick(View view) {
        if (view.getId() == R.id.retry_btn) {
            performReload();
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.context = getActivity().getBaseContext();
        this.txnID = getArguments().getString(KEY_TXNID);
        View inflate = layoutInflater.inflate(R.layout.magicretry_fragment, viewGroup, false);
        initViewElements(inflate);
        List arrayList = new ArrayList();
        arrayList.add(PayuConstants.PRODUCTION_PAYMENT_URL);
        arrayList.add("https://secure.payu.in/_secure_payment");
        arrayList.add("https://www.payumoney.com/txn/#/user/");
        arrayList.add("https://mpi.onlinesbi.com/electraSECURE/vbv/MPIEntry.jsp");
        arrayList.add("https://netsafe.hdfcbank.com/ACSWeb/com.enstage.entransact.servers.AccessControlServerSSL");
        arrayList.add("https://www.citibank.co.in/acspage/cap_nsapi.so");
        arrayList.add("https://acs.icicibank.com/acspage/cap");
        arrayList.add(PayuConstants.PRODUCTION_PAYMENT_URL);
        arrayList.add("https://www.citibank.co.in/servlets/TransReq");
        arrayList.add("https://netsafe.hdfcbank.com/ACSWeb/com.enstage.entransact.servers.AccessControlServerSSL");
        arrayList.add("https://netsafe.hdfcbank.com/ACSWeb/jsp/MerchantPost.jsp");
        arrayList.add("https://netsafe.hdfcbank.com/ACSWeb/jsp/SCode.jsp");
        arrayList.add("https://netsafe.hdfcbank.com/ACSWeb/com.enstage.entransact.servers.AccessControlServerSSL");
        arrayList.add("https://netsafe.hdfcbank.com/ACSWeb/jsp/payerAuthOptions.jsp");
        arrayList.add("https://cardsecurity.enstage.com/ACSWeb/EnrollWeb/KotakBank/server/AccessControlServer");
        arrayList.add("https://cardsecurity.enstage.com/ACSWeb/EnrollWeb/KotakBank/server/OtpServer");
        arrayList.add("https://www.citibank.co.in/acspage/cap_nsapi.so");
        arrayList.add("https://acs.icicibank.com/acspage/cap");
        arrayList.add("https://secureonline.idbibank.com/ACSWeb/EnrollWeb/IDBIBank/server/AccessControlServer");
        arrayList.add("https://vpos.amxvpos.com/vpcpay");
        if (getActivity() != null) {
            initAnalytics(getActivity());
        }
        return inflate;
    }

    public void onPageFinished(WebView webView, String str) {
        if (getActivity() != null && !getActivity().isFinishing() && !this.fromOnReceivedError && this.errorWasReceived && this.reloadUrl != null) {
            this.activityCallbackHandler.hideMagicRetry();
            this.errorWasReceived = true;
        }
    }

    public void onPageStarted(WebView webView, String str) {
    }

    public void onReceivedError(WebView webView, String str) {
        try {
            addEventAnalytics(MRConstant.MR_EURL, URLEncoder.encode(str, "UTF-8"));
            if (this.firstCall == 0) {
                addEventAnalytics(MRConstant.MR_VERION, BuildConfig.VERSION_NAME);
                this.firstCall++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (!disableMagicRetry) {
            L.v("#### PAYU", "WebView URL: " + webView.getUrl() + " FAILING URL: " + str);
            hideItems();
            if (str == null || !isWhiteListedURL(str)) {
                this.reloadUrl = null;
                return;
            }
            this.fromOnReceivedError = true;
            if (this.activityCallbackHandler != null) {
                this.activityCallbackHandler.showMagicRetry();
            }
            addEventAnalytics(MRConstant.MR_USER_INPUT, MRConstant.SHOW_M_RETRY);
            this.reloadUrl = webView.getUrl();
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void setUrlListWithPostData(Map<String, String> map) {
        this.urlListWithPostData = map;
    }

    public void setWebView(WebView webView) {
        this.mWebView = webView;
    }
}
