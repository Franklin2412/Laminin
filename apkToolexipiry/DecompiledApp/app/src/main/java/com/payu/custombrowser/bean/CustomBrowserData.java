package com.payu.custombrowser.bean;

import com.payu.custombrowser.PayUCustomBrowserCallback;

public enum CustomBrowserData {
    SINGLETON;
    
    private PayUCustomBrowserCallback payuCustomBrowserCallback;

    public PayUCustomBrowserCallback getPayuCustomBrowserCallback() {
        return this.payuCustomBrowserCallback;
    }

    public void setPayuCustomBrowserCallback(PayUCustomBrowserCallback payUCustomBrowserCallback) {
        this.payuCustomBrowserCallback = payUCustomBrowserCallback;
    }
}
