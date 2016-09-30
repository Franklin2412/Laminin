package com.payu.india.Interfaces;

import com.payu.india.Model.PayuResponse;

public interface SaveCardApiListener {
    void onSaveCardResponse(PayuResponse payuResponse);
}
