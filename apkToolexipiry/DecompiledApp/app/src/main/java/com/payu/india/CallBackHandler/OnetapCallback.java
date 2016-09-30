package com.payu.india.CallBackHandler;

import com.payu.india.Interfaces.OneClickPaymentListener;

public class OnetapCallback {
    private static OneClickPaymentListener oneTapListener;

    public static OneClickPaymentListener getOneTapCallback() {
        return oneTapListener;
    }

    public static void setOneTapCallback(OneClickPaymentListener oneClickPaymentListener) {
        oneTapListener = oneClickPaymentListener;
    }
}
