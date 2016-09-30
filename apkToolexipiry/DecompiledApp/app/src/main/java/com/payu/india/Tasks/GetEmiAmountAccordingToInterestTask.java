package com.payu.india.Tasks;

import android.os.AsyncTask;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.Log;
import com.payu.custombrowser.util.CBConstant;
import com.payu.india.Interfaces.GetEmiAmountAccordingToInterestApiListener;
import com.payu.india.Model.PayuConfig;
import com.payu.india.Model.PayuEmiAmountAccordingToInterest;
import com.payu.india.Model.PayuResponse;
import com.payu.india.Model.PostData;
import com.payu.india.Payu.PayuConstants;
import com.payu.india.Payu.PayuErrors;
import com.payu.india.Payu.PayuUtils;
import com.squareup.haha.perflib.StackFrame;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class GetEmiAmountAccordingToInterestTask extends AsyncTask<PayuConfig, String, PayuResponse> {
    GetEmiAmountAccordingToInterestApiListener apiListener;

    public GetEmiAmountAccordingToInterestTask(GetEmiAmountAccordingToInterestApiListener getEmiAmountAccordingToInterestApiListener) {
        this.apiListener = getEmiAmountAccordingToInterestApiListener;
    }

    protected PayuResponse doInBackground(PayuConfig... payuConfigArr) {
        PayuResponse payuResponse = new PayuResponse();
        PostData postData = new PostData();
        PayuConfig payuConfig = payuConfigArr[0];
        try {
            URL url;
            switch (payuConfig.getEnvironment()) {
                case StackFrame.NO_LINE_NUMBER /*0*/:
                    url = new URL(PayuConstants.PRODUCTION_FETCH_DATA_URL);
                    break;
                case R.styleable.WaitingDots_period /*1*/:
                    url = new URL(PayuConstants.MOBILE_TEST_FETCH_DATA_URL);
                    break;
                case R.styleable.WaitingDots_jumpHeight /*2*/:
                    url = new URL(PayuConstants.TEST_FETCH_DATA_URL);
                    break;
                case R.styleable.WaitingDots_autoplay /*3*/:
                    url = new URL(PayuConstants.MOBILE_DEV_FETCH_DATA_URL);
                    break;
                default:
                    url = new URL(PayuConstants.PRODUCTION_FETCH_DATA_URL);
                    break;
            }
            byte[] bytes = payuConfig.getData().getBytes("UTF-8");
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("Content-Type", CBConstant.HTTP_URLENCODED);
            httpURLConnection.setRequestProperty("Content-Length", String.valueOf(bytes.length));
            httpURLConnection.setDoOutput(true);
            httpURLConnection.getOutputStream().write(bytes);
            InputStream inputStream = httpURLConnection.getInputStream();
            StringBuffer stringBuffer = new StringBuffer();
            byte[] bArr = new byte[AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    stringBuffer.append(new String(bArr, 0, read));
                } else {
                    JSONObject jSONObject = new JSONObject(stringBuffer.toString());
                    if (jSONObject.has(PayuConstants.MSG)) {
                        postData.setResult(jSONObject.getString(PayuConstants.MSG));
                    }
                    if (jSONObject.has(PayuConstants.STATUS) && jSONObject.getInt(PayuConstants.STATUS) == 0) {
                        postData.setCode(PayuErrors.INVALID_HASH);
                        postData.setStatus(PayuConstants.ERROR);
                    } else {
                        postData.setCode(0);
                        postData.setStatus(PayuConstants.SUCCESS);
                    }
                    Iterator keys = jSONObject.keys();
                    HashMap hashMap = new HashMap();
                    while (keys.hasNext()) {
                        String str = ((String) keys.next()).toString();
                        Log.v("sTag", "EMI Key:" + str);
                        JSONObject jSONObject2 = new JSONObject(jSONObject.getString(str));
                        Iterator keys2 = jSONObject2.keys();
                        HashMap hashMap2 = new HashMap();
                        while (keys2.hasNext()) {
                            String str2 = ((String) keys2.next()).toString();
                            JSONObject jSONObject3 = new JSONObject(jSONObject2.getString(str2));
                            PayuEmiAmountAccordingToInterest payuEmiAmountAccordingToInterest = new PayuEmiAmountAccordingToInterest();
                            payuEmiAmountAccordingToInterest.setEmiBankInterest(PayuUtils.getStringValueFromJSON(jSONObject3, PayuConstants.EMI_BANK_INTEREST));
                            payuEmiAmountAccordingToInterest.setBankRate(PayuUtils.getStringValueFromJSON(jSONObject3, PayuConstants.BANK_RATE));
                            payuEmiAmountAccordingToInterest.setBankCharge(PayuUtils.getStringValueFromJSON(jSONObject3, PayuConstants.BANK_CHARGE));
                            payuEmiAmountAccordingToInterest.setAmount(PayuUtils.getStringValueFromJSON(jSONObject3, PayuConstants.AMOUNT));
                            payuEmiAmountAccordingToInterest.setCardType(PayuUtils.getStringValueFromJSON(jSONObject3, PayuConstants.CARD_TYPE));
                            payuEmiAmountAccordingToInterest.setEmiValue(PayuUtils.getStringValueFromJSON(jSONObject3, PayuConstants.EMI_VALUE));
                            payuEmiAmountAccordingToInterest.setEmiInterestPaid(PayuUtils.getStringValueFromJSON(jSONObject3, PayuConstants.EMI_INTEREST_PAID));
                            hashMap2.put(str2, payuEmiAmountAccordingToInterest);
                        }
                        hashMap.put(str, hashMap2);
                    }
                    payuResponse.setPayuEmiAmountAccordingToInterest(hashMap);
                    payuResponse.setResponseStatus(postData);
                    return payuResponse;
                }
            }
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (ProtocolException e2) {
            e2.printStackTrace();
        } catch (IOException e3) {
            e3.printStackTrace();
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
    }

    protected void onPostExecute(PayuResponse payuResponse) {
        super.onPostExecute(payuResponse);
        this.apiListener.onGetEmiAmountAccordingToInterestApiResponse(payuResponse);
    }
}
