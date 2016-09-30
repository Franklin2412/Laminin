package com.payu.india.Extras;

import com.squareup.leakcanary.watcher.BuildConfig;

public class PayuSamplePostParams {
    private String cashCardPayment;
    private String creditCardPayment;
    private String debitCardPayment;
    private String emiPayment;
    private String payumoneyPayment;
    private String storedCardPayment;

    public PayuSamplePostParams() {
        this.creditCardPayment = BuildConfig.VERSION_NAME;
        this.debitCardPayment = BuildConfig.VERSION_NAME;
        this.cashCardPayment = BuildConfig.VERSION_NAME;
        this.emiPayment = BuildConfig.VERSION_NAME;
        this.payumoneyPayment = BuildConfig.VERSION_NAME;
        this.storedCardPayment = BuildConfig.VERSION_NAME;
    }
}
