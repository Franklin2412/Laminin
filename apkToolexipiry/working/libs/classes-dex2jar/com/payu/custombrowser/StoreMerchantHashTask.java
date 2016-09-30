package com.payu.custombrowser;

import android.os.AsyncTask;
import com.payu.india.Payu.PayuConstants;
import org.json.JSONObject;

class StoreMerchantHashTask extends AsyncTask<String, Void, Void> {
    StoreMerchantHashTask() {
    }

    protected Void doInBackground(String... strArr) {
        String str = strArr[0];
        ClassLoader classLoader = Bank.class.getClassLoader();
        try {
            if (!isCancelled()) {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has(PayuConstants.CARD_TOKEN) && jSONObject.has(PayuConstants.MERCHANT_HASH)) {
                    Object invoke = classLoader.loadClass("com.payu.india.CallBackHandler.OnetapCallback").getDeclaredMethod("getOneTapCallback", new Class[0]).invoke(null, new Object[0]);
                    invoke.getClass().getDeclaredMethod("saveOneClickHash", new Class[]{String.class, String.class}).invoke(invoke, new Object[]{jSONObject.getString(PayuConstants.CARD_TOKEN), jSONObject.getString(PayuConstants.MERCHANT_HASH)});
                }
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
        } catch (Exception e3) {
            e3.printStackTrace();
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
