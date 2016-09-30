package com.payu.india.Tasks;

import android.os.AsyncTask;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.payu.custombrowser.util.CBConstant;
import com.payu.india.Interfaces.GetCardInformationApiListener;
import com.payu.india.Model.CardInformation;
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
import org.json.JSONException;
import org.json.JSONObject;

public class GetCardInformationTask extends AsyncTask<PayuConfig, String, PayuResponse> {
    GetCardInformationApiListener mGetCardInformationApiListener;

    public GetCardInformationTask(GetCardInformationApiListener getCardInformationApiListener) {
        this.mGetCardInformationApiListener = getCardInformationApiListener;
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
                    if (jSONObject.has(PayuConstants.MSG)) {
                        postData.setResult(jSONObject.getString(PayuConstants.MSG));
                    }
                    if (jSONObject.has(PayuConstants.STATUS) && jSONObject.getInt(PayuConstants.STATUS) == 0) {
                        postData.setCode(PayuErrors.DELETE_CARD_EXCEPTION);
                        postData.setStatus(PayuConstants.ERROR);
                        payuResponse.setResponseStatus(postData);
                        return payuResponse;
                    }
                    CardInformation cardInformation = new CardInformation();
                    cardInformation.setIsDomestic(Boolean.valueOf(jSONObject.getString(PayuConstants.IS_DOMESTIC).contentEquals("Y")));
                    cardInformation.setIssuingBank(jSONObject.getString(PayuConstants.ISSUINGBANK));
                    cardInformation.setCardType(jSONObject.getString(PayuConstants.CARDTYPE));
                    cardInformation.setCardCategory(jSONObject.getString(PayuConstants.CARDCATEGORY));
                    payuResponse.setCardInformation(cardInformation);
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
        this.mGetCardInformationApiListener.onGetCardInformationResponse(payuResponse);
    }
}
