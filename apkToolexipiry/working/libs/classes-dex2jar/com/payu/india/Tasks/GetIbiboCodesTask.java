package com.payu.india.Tasks;

import android.os.AsyncTask;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.payu.custombrowser.util.CBConstant;
import com.payu.india.Interfaces.GetIbiboCodesApiListener;
import com.payu.india.Model.Emi;
import com.payu.india.Model.PaymentDetails;
import com.payu.india.Model.PayuConfig;
import com.payu.india.Model.PayuResponse;
import com.payu.india.Model.PostData;
import com.payu.india.Payu.PayuConstants;
import com.payu.india.Payu.PayuErrors;
import com.payu.magicretry.Helpers.MRConstant;
import com.payu.testapp.R;
import com.squareup.haha.perflib.StackFrame;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class GetIbiboCodesTask extends AsyncTask<PayuConfig, String, PayuResponse> {
    private GetIbiboCodesApiListener mGetIbiboCodesApiListener;

    @Deprecated
    public GetIbiboCodesTask(GetIbiboCodesApiListener getIbiboCodesApiListener) {
        this.mGetIbiboCodesApiListener = getIbiboCodesApiListener;
    }

    protected PayuResponse doInBackground(PayuConfig... payuConfigArr) {
        ProtocolException e;
        UnsupportedEncodingException e2;
        JSONException e3;
        IOException e4;
        PayuResponse payuResponse = new PayuResponse();
        PostData postData = new PostData();
        PayuConfig payuConfig = payuConfigArr[0];
        PostData postData2;
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
                    JSONObject jSONObject;
                    ArrayList arrayList;
                    Iterator keys;
                    String str;
                    JSONObject jSONObject2;
                    PaymentDetails paymentDetails;
                    Iterator keys2;
                    ArrayList arrayList2;
                    JSONObject jSONObject3 = new JSONObject(stringBuffer.toString());
                    if (jSONObject3.has(PayuConstants.CREDITCARD)) {
                        jSONObject = jSONObject3.getJSONObject(PayuConstants.CREDITCARD);
                        arrayList = new ArrayList();
                        keys = jSONObject.keys();
                        while (keys.hasNext()) {
                            str = (String) keys.next();
                            jSONObject2 = jSONObject.getJSONObject(str);
                            paymentDetails = new PaymentDetails();
                            paymentDetails.setBankCode(str);
                            paymentDetails.setBankId(jSONObject2.getString(PayuConstants.BANK_ID));
                            paymentDetails.setBankName(jSONObject2.getString(PayuConstants.TITLE));
                            paymentDetails.setPgId(jSONObject2.getString(PayuConstants.PGID));
                            arrayList.add(paymentDetails);
                        }
                        payuResponse.setCreditCard(arrayList);
                    }
                    if (jSONObject3.has(PayuConstants.DEBITCARD)) {
                        jSONObject = jSONObject3.getJSONObject(PayuConstants.DEBITCARD);
                        arrayList = new ArrayList();
                        keys = jSONObject.keys();
                        while (keys.hasNext()) {
                            str = (String) keys.next();
                            PaymentDetails paymentDetails2 = new PaymentDetails();
                            JSONObject jSONObject4 = jSONObject.getJSONObject(str);
                            paymentDetails2.setBankCode(str);
                            paymentDetails2.setBankId(jSONObject4.getString(PayuConstants.BANK_ID));
                            paymentDetails2.setBankName(jSONObject4.getString(PayuConstants.TITLE));
                            paymentDetails2.setPgId(jSONObject4.getString(PayuConstants.PGID));
                            arrayList.add(paymentDetails2);
                        }
                        payuResponse.setDebitCard(arrayList);
                    }
                    if (jSONObject3.has(PayuConstants.NETBANKING)) {
                        jSONObject = jSONObject3.getJSONObject(PayuConstants.NETBANKING);
                        keys2 = jSONObject.keys();
                        arrayList2 = new ArrayList();
                        while (keys2.hasNext()) {
                            str = (String) keys2.next();
                            jSONObject2 = jSONObject.getJSONObject(str);
                            paymentDetails = new PaymentDetails();
                            paymentDetails.setBankCode(str);
                            paymentDetails.setBankId(jSONObject2.getString(PayuConstants.BANK_ID));
                            paymentDetails.setBankName(jSONObject2.getString(PayuConstants.TITLE));
                            paymentDetails.setPgId(jSONObject2.getString(PayuConstants.PGID));
                            arrayList2.add(paymentDetails);
                        }
                        payuResponse.setNetBanks(arrayList2);
                    }
                    if (jSONObject3.has(PayuConstants.CASHCARD)) {
                        jSONObject = jSONObject3.getJSONObject(PayuConstants.CASHCARD);
                        keys2 = jSONObject.keys();
                        arrayList2 = new ArrayList();
                        while (keys2.hasNext()) {
                            str = (String) keys2.next();
                            jSONObject2 = jSONObject.getJSONObject(str);
                            paymentDetails = new PaymentDetails();
                            paymentDetails.setBankCode(str);
                            paymentDetails.setBankId(jSONObject2.getString(PayuConstants.BANK_ID));
                            paymentDetails.setBankName(jSONObject2.getString(PayuConstants.TITLE));
                            paymentDetails.setPgId(jSONObject2.getString(PayuConstants.PGID));
                            arrayList2.add(paymentDetails);
                        }
                        payuResponse.setCashCard(arrayList2);
                    }
                    if (jSONObject3.has(PayuConstants.IVR)) {
                        jSONObject = jSONObject3.getJSONObject(PayuConstants.IVR);
                        keys2 = jSONObject.keys();
                        arrayList2 = new ArrayList();
                        while (keys2.hasNext()) {
                            str = (String) keys2.next();
                            jSONObject2 = jSONObject.getJSONObject(str);
                            paymentDetails = new PaymentDetails();
                            paymentDetails.setBankCode(str);
                            paymentDetails.setBankId(jSONObject2.getString(PayuConstants.BANK_ID));
                            paymentDetails.setBankName(jSONObject2.getString(PayuConstants.TITLE));
                            paymentDetails.setPgId(jSONObject2.getString(PayuConstants.PGID));
                            arrayList2.add(paymentDetails);
                        }
                        payuResponse.setIvr(arrayList2);
                    }
                    if (jSONObject3.has(PayuConstants.IVRDC)) {
                        jSONObject = jSONObject3.getJSONObject(PayuConstants.IVRDC);
                        keys2 = jSONObject.keys();
                        arrayList2 = new ArrayList();
                        while (keys2.hasNext()) {
                            str = (String) keys2.next();
                            jSONObject2 = jSONObject.getJSONObject(str);
                            paymentDetails = new PaymentDetails();
                            paymentDetails.setBankCode(str);
                            paymentDetails.setBankId(jSONObject2.getString(PayuConstants.BANK_ID));
                            paymentDetails.setBankName(jSONObject2.getString(PayuConstants.TITLE));
                            paymentDetails.setPgId(jSONObject2.getString(PayuConstants.PGID));
                            arrayList2.add(paymentDetails);
                        }
                        payuResponse.setIvrdc(arrayList2);
                    }
                    if (jSONObject3.has(PayuConstants.PAISAWALLET)) {
                        jSONObject = jSONObject3.getJSONObject(PayuConstants.PAISAWALLET);
                        keys2 = jSONObject.keys();
                        arrayList2 = new ArrayList();
                        while (keys2.hasNext()) {
                            str = (String) keys2.next();
                            jSONObject2 = jSONObject.getJSONObject(str);
                            paymentDetails = new PaymentDetails();
                            paymentDetails.setBankCode(str);
                            paymentDetails.setBankId(jSONObject2.getString(PayuConstants.BANK_ID));
                            paymentDetails.setBankName(jSONObject2.getString(PayuConstants.TITLE));
                            paymentDetails.setPgId(jSONObject2.getString(PayuConstants.PGID));
                            arrayList2.add(paymentDetails);
                        }
                        payuResponse.setPaisaWallet(arrayList2);
                    }
                    if (jSONObject3.has(PayuConstants.EMI_IN_RESPONSE)) {
                        jSONObject = jSONObject3.getJSONObject(PayuConstants.EMI_IN_RESPONSE);
                        keys2 = jSONObject.keys();
                        arrayList2 = new ArrayList();
                        while (keys2.hasNext()) {
                            str = (String) keys2.next();
                            jSONObject2 = jSONObject.getJSONObject(str);
                            Emi emi = new Emi();
                            emi.setBankCode(str);
                            emi.setBankName(jSONObject2.getString(MRConstant.BANK_NAME));
                            emi.setBankTitle(jSONObject2.getString(PayuConstants.TITLE));
                            emi.setPgId(jSONObject2.getString(PayuConstants.PGID));
                            arrayList2.add(emi);
                        }
                        payuResponse.setEmi(arrayList2);
                    }
                    if (jSONObject3.has(PayuConstants.STATUS) && jSONObject3.getString(PayuConstants.STATUS).contentEquals("0")) {
                        postData2 = new PostData();
                        try {
                            postData2.setCode(PayuErrors.INVALID_HASH);
                            postData2.setStatus(PayuConstants.ERROR);
                            postData2.setResult(jSONObject3.getString(PayuConstants.MSG));
                        } catch (ProtocolException e5) {
                            e = e5;
                            postData2.setCode(PayuErrors.PROTOCOL_EXCEPTION);
                            postData2.setStatus(PayuConstants.ERROR);
                            postData2.setResult(e.getMessage());
                            payuResponse.setResponseStatus(postData2);
                            return payuResponse;
                        } catch (UnsupportedEncodingException e6) {
                            e2 = e6;
                            postData2.setCode(PayuErrors.UN_SUPPORTED_ENCODING_EXCEPTION);
                            postData2.setStatus(PayuConstants.ERROR);
                            postData2.setResult(e2.getMessage());
                            payuResponse.setResponseStatus(postData2);
                            return payuResponse;
                        } catch (JSONException e7) {
                            e3 = e7;
                            postData2.setCode(PayuErrors.JSON_EXCEPTION);
                            postData2.setStatus(PayuConstants.ERROR);
                            postData2.setResult(e3.getMessage());
                            payuResponse.setResponseStatus(postData2);
                            return payuResponse;
                        } catch (IOException e8) {
                            e4 = e8;
                            postData2.setCode(PayuErrors.PROTOCOL_EXCEPTION);
                            postData2.setStatus(PayuConstants.ERROR);
                            postData2.setResult(e4.getMessage());
                            payuResponse.setResponseStatus(postData2);
                            return payuResponse;
                        }
                        payuResponse.setResponseStatus(postData2);
                        return payuResponse;
                    }
                    postData.setCode(0);
                    postData.setResult(PayuErrors.SDK_DETAILS_FETCHED_SUCCESSFULLY);
                    postData.setStatus(PayuConstants.SUCCESS);
                    postData2 = postData;
                    payuResponse.setResponseStatus(postData2);
                    return payuResponse;
                }
            }
        } catch (ProtocolException e9) {
            ProtocolException protocolException = e9;
            postData2 = postData;
            e = protocolException;
            postData2.setCode(PayuErrors.PROTOCOL_EXCEPTION);
            postData2.setStatus(PayuConstants.ERROR);
            postData2.setResult(e.getMessage());
            payuResponse.setResponseStatus(postData2);
            return payuResponse;
        } catch (UnsupportedEncodingException e10) {
            UnsupportedEncodingException unsupportedEncodingException = e10;
            postData2 = postData;
            e2 = unsupportedEncodingException;
            postData2.setCode(PayuErrors.UN_SUPPORTED_ENCODING_EXCEPTION);
            postData2.setStatus(PayuConstants.ERROR);
            postData2.setResult(e2.getMessage());
            payuResponse.setResponseStatus(postData2);
            return payuResponse;
        } catch (JSONException e11) {
            JSONException jSONException = e11;
            postData2 = postData;
            e3 = jSONException;
            postData2.setCode(PayuErrors.JSON_EXCEPTION);
            postData2.setStatus(PayuConstants.ERROR);
            postData2.setResult(e3.getMessage());
            payuResponse.setResponseStatus(postData2);
            return payuResponse;
        } catch (IOException e12) {
            IOException iOException = e12;
            postData2 = postData;
            e4 = iOException;
            postData2.setCode(PayuErrors.PROTOCOL_EXCEPTION);
            postData2.setStatus(PayuConstants.ERROR);
            postData2.setResult(e4.getMessage());
            payuResponse.setResponseStatus(postData2);
            return payuResponse;
        }
    }

    protected void onPostExecute(PayuResponse payuResponse) {
        super.onPostExecute(payuResponse);
        this.mGetIbiboCodesApiListener.onGetIbiboCodesApiResponse(payuResponse);
    }
}
