package com.payu.custombrowser;

import android.app.AlertDialog.Builder;
import android.support.annotation.NonNull;
import android.webkit.WebView;
import com.payu.magicretry.MagicRetryFragment;

public class PayUCustomBrowserCallback {
    private String postData;
    private String postURL;

    public String getPostData() {
        return this.postData;
    }

    public String getPostURL() {
        return this.postURL;
    }

    public void initializeMagicRetry(Bank bank, WebView webView, MagicRetryFragment magicRetryFragment) {
    }

    public void onBackApprove() {
    }

    public void onBackButton(Builder builder) {
    }

    public void onBackDismiss() {
    }

    public void onCBErrorReceived(int i, String str) {
    }

    public void onPaymentFailure(String str, String str2) {
    }

    public void onPaymentSuccess(String str, String str2) {
    }

    public void onPaymentTerminate() {
    }

    public void setCBProperties(WebView webView, Bank bank) {
    }

    public void setCBProperties(@NonNull String str, @NonNull String str2) {
        setPostData(str2);
        setPostURL(str);
    }

    public void setPostData(String str) {
        this.postData = str;
    }

    public void setPostURL(String str) {
        this.postURL = str;
    }
}
