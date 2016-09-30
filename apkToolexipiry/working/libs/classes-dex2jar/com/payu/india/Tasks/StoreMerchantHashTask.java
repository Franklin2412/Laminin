package com.payu.india.Tasks;

import android.os.AsyncTask;
import com.payu.india.CallBackHandler.OnetapCallback;
import com.payu.india.Interfaces.OneClickPaymentListener;
import com.payu.india.Payu.PayuConstants;
import org.json.JSONObject;

public class StoreMerchantHashTask extends AsyncTask<String, Void, Void> {
    protected Void doInBackground(String... strArr) {
        try {
            JSONObject jSONObject = new JSONObject(strArr[0]);
            if (jSONObject.has(PayuConstants.CARD_TOKEN) && jSONObject.has(PayuConstants.MERCHANT_HASH)) {
                OneClickPaymentListener oneTapCallback = OnetapCallback.getOneTapCallback();
                if (oneTapCallback != null) {
                    oneTapCallback.saveOneClickHash(jSONObject.get(PayuConstants.CARD_TOKEN).toString(), jSONObject.get(PayuConstants.MERCHANT_HASH).toString());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    protected void onPostExecute(Void voidR) {
        super.onPostExecute(voidR);
    }

    protected void onPreExecute() {
        super.onPreExecute();
    }
}
