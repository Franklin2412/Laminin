package com.payu.india.Interfaces;

import com.payu.india.Model.PayuResponse;

public interface GetStoredCardApiListener {
    void onGetStoredCardApiResponse(PayuResponse payuResponse);
}
