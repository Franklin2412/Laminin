package com.payu.india.Tasks;

import android.os.AsyncTask;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.payu.custombrowser.util.CBConstant;
import com.payu.india.Interfaces.ValueAddedServiceApiListener;
import com.payu.india.Model.CardStatus;
import com.payu.india.Model.PayuConfig;
import com.payu.india.Model.PayuResponse;
import com.payu.india.Model.PostData;
import com.payu.india.Payu.PayuConstants;
import com.payu.india.Payu.PayuErrors;
import com.payu.testapp.R;
import com.squareup.haha.perflib.StackFrame;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ValueAddedServiceTask extends AsyncTask<PayuConfig, String, PayuResponse> {
    private ValueAddedServiceApiListener mValueAddedServiceApiListener;

    public ValueAddedServiceTask(ValueAddedServiceApiListener valueAddedServiceApiListener) {
        this.mValueAddedServiceApiListener = valueAddedServiceApiListener;
    }

    protected PayuResponse doInBackground(PayuConfig... payuConfigArr) {
        IOException e;
        Exception e2;
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
                    postData.setResult(PayuConstants.ERROR);
                    postData.setCode(PayuErrors.INVALID_HASH);
                    if (jSONObject.has(PayuConstants.MSG)) {
                        postData.setResult(jSONObject.getString(PayuConstants.MSG));
                    }
                    if (jSONObject.has("netBankingStatus")) {
                        HashMap hashMap = new HashMap();
                        JSONObject jSONObject2 = jSONObject.getJSONObject("netBankingStatus");
                        Iterator keys = jSONObject2.keys();
                        while (keys.hasNext()) {
                            String str = (String) keys.next();
                            hashMap.put(str, Integer.valueOf(jSONObject2.getJSONObject(str).getInt("up_status")));
                        }
                        payuResponse.setNetBankingDownStatus(hashMap);
                        postData.setResult(PayuConstants.SUCCESS);
                        postData.setCode(0);
                        postData.setStatus(PayuConstants.SUCCESS);
                    }
                    if (jSONObject.has("issuingBankDownBins")) {
                        HashMap hashMap2 = new HashMap();
                        JSONArray jSONArray = jSONObject.getJSONArray("issuingBankDownBins");
                        int length = jSONArray.length();
                        for (int i = 0; i < length; i++) {
                            int length2 = jSONArray.getJSONObject(i).getJSONArray("bins_arr").length();
                            for (int i2 = 0; i2 < length2; i2++) {
                                CardStatus cardStatus = new CardStatus();
                                cardStatus.setBankName(jSONArray.getJSONObject(i).getString(PayuConstants.TITLE));
                                cardStatus.setStatusCode(jSONArray.getJSONObject(i).getInt(PayuConstants.STATUS));
                                hashMap2.put(jSONArray.getJSONObject(i).getJSONArray("bins_arr").getString(i2), cardStatus);
                            }
                        }
                        payuResponse.setIssuingBankStatus(hashMap2);
                        postData.setResult(PayuConstants.SUCCESS);
                        postData.setCode(0);
                        postData.setStatus(PayuConstants.SUCCESS);
                    }
                    payuResponse.setResponseStatus(postData);
                    return payuResponse;
                }
            }
        } catch (MalformedURLException e3) {
            e = e3;
            e.printStackTrace();
            payuResponse.setResponseStatus(postData);
            return payuResponse;
        } catch (ProtocolException e4) {
            e = e4;
            e.printStackTrace();
            payuResponse.setResponseStatus(postData);
            return payuResponse;
        } catch (IOException e5) {
            e2 = e5;
            e2.printStackTrace();
            payuResponse.setResponseStatus(postData);
            return payuResponse;
        } catch (JSONException e6) {
            e2 = e6;
            e2.printStackTrace();
            payuResponse.setResponseStatus(postData);
            return payuResponse;
        }
    }

    protected void onPostExecute(PayuResponse payuResponse) {
        super.onPostExecute(payuResponse);
        this.mValueAddedServiceApiListener.onValueAddedServiceApiResponse(payuResponse);
    }
}
