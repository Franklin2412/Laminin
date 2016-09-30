package com.payu.india.Interfaces;

import com.payu.india.Model.PayuResponse;

public interface VerifyPaymentApiListener {
    void onVerifyPaymentResponse(PayuResponse payuResponse);
}
