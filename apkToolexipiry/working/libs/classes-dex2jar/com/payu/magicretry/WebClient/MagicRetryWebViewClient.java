package com.payu.magicretry.WebClient;

import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.os.Message;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.payu.magicretry.Helpers.L;
import com.payu.magicretry.MagicRetryFragment;

public class MagicRetryWebViewClient extends WebViewClient {
    private MagicRetryFragment magicRetryFragment;

    public MagicRetryWebViewClient(MagicRetryFragment magicRetryFragment) {
        this.magicRetryFragment = magicRetryFragment;
    }

    public void onFormResubmission(WebView webView, Message message, Message message2) {
        message2.sendToTarget();
    }

    public void onPageFinished(WebView webView, String str) {
        L.v("#### PAYU", "MagicRetryWebViewClient.java: onPageFinished: URL " + str);
        super.onPageFinished(webView, str);
        if (this.magicRetryFragment != null) {
            this.magicRetryFragment.onPageFinished(webView, str);
        }
    }

    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        L.v("#### PAYU", "MagicRetryWebViewClient.java: onPageStarted: URL " + str);
        super.onPageStarted(webView, str, bitmap);
        if (this.magicRetryFragment != null) {
            this.magicRetryFragment.onPageStarted(webView, str);
        }
    }

    public void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        L.v("#### PAYU", "MagicRetryWebViewClient.java: onReceivedError: URL " + webView.getUrl());
        if (VERSION.SDK_INT < 23 && this.magicRetryFragment != null) {
            this.magicRetryFragment.onReceivedError(webView, str2);
        }
    }

    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        L.v("#### PAYU", "MagicRetryWebViewClient.java: onReceivedError: URL " + webView.getUrl());
        if (this.magicRetryFragment != null && webResourceRequest.isForMainFrame()) {
            this.magicRetryFragment.onReceivedError(webView, webResourceRequest.getUrl().toString());
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        L.v("#### PAYU", "MagicRetryWebViewClient.java: shouldOverrideUrlLoading: URL " + str);
        return super.shouldOverrideUrlLoading(webView, str);
    }
}
