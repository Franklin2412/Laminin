package com.payu.custombrowser;

import android.os.Message;
import android.support.annotation.NonNull;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

public class PayUWebChromeClient extends WebChromeClient {
    private Bank mBank;
    private boolean mPageDone;

    public PayUWebChromeClient(@NonNull Bank bank) {
        this.mPageDone = false;
        this.mBank = bank;
    }

    public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        return false;
    }

    public void onProgressChanged(WebView webView, int i) {
        if (this.mBank != null) {
            if (!this.mPageDone && i < 100) {
                this.mPageDone = true;
                this.mBank.onPageStarted();
            } else if (i == 100) {
                this.mBank.onPageStarted();
                this.mPageDone = false;
                this.mBank.onPageFinished();
            }
            this.mBank.onProgressChanged(i);
        }
    }
}
