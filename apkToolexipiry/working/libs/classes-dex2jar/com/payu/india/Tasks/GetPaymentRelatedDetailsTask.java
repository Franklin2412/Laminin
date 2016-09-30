package com.payu.india.Tasks;

import android.os.AsyncTask;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.payu.custombrowser.util.CBConstant;
import com.payu.india.CallBackHandler.OnetapCallback;
import com.payu.india.Interfaces.OneClickPaymentListener;
import com.payu.india.Interfaces.PaymentRelatedDetailsListener;
import com.payu.india.Model.Emi;
import com.payu.india.Model.PaymentDetails;
import com.payu.india.Model.PayuConfig;
import com.payu.india.Model.PayuResponse;
import com.payu.india.Model.PostData;
import com.payu.india.Model.StoredCard;
import com.payu.india.Payu.PayuConstants;
import com.payu.india.Payu.PayuErrors;
import com.payu.magicretry.Helpers.MRConstant;
import com.payu.testapp.R;
import com.squareup.haha.perflib.StackFrame;
import com.squareup.leakcanary.watcher.BuildConfig;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

public class GetPaymentRelatedDetailsTask extends AsyncTask<PayuConfig, Void, HashMap<String, String>> {
    HashMap<String, String> mOneClickCardTokens;
    PaymentRelatedDetailsListener mPaymentRelatedDetailsListener;
    PayuConfig payuConfig;

    class FetchPaymentDetailsTask extends AsyncTask<PayuConfig, String, PayuResponse> {

        class EmiComparator implements Comparator<Emi> {
            EmiComparator() {
            }

            public int compare(Emi emi, Emi emi2) {
                return emi.getBankName().compareTo(emi2.getBankName());
            }
        }

        class PaymentDetailsComparator implements Comparator<PaymentDetails> {
            PaymentDetailsComparator() {
            }

            public int compare(PaymentDetails paymentDetails, PaymentDetails paymentDetails2) {
                return paymentDetails.getBankName().compareTo(paymentDetails2.getBankName());
            }
        }

        FetchPaymentDetailsTask() {
        }

        protected PayuResponse doInBackground(PayuConfig... payuConfigArr) {
            PostData postData;
            ProtocolException e;
            UnsupportedEncodingException e2;
            JSONException e3;
            IOException e4;
            PayuResponse payuResponse = new PayuResponse();
            PostData postData2 = new PostData();
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
                        JSONObject jSONObject;
                        ArrayList arrayList;
                        String str;
                        JSONObject jSONObject2;
                        Iterator keys;
                        JSONObject jSONObject3 = new JSONObject(stringBuffer.toString());
                        if (jSONObject3.has(PayuConstants.IBIBO_CODES)) {
                            JSONObject jSONObject4;
                            Iterator keys2;
                            PaymentDetails paymentDetails;
                            Iterator keys3;
                            Object arrayList2;
                            ArrayList arrayList3;
                            jSONObject = jSONObject3.getJSONObject(PayuConstants.IBIBO_CODES);
                            if (jSONObject.has(PayuConstants.CREDITCARD)) {
                                jSONObject4 = jSONObject.getJSONObject(PayuConstants.CREDITCARD);
                                arrayList = new ArrayList();
                                keys2 = jSONObject4.keys();
                                while (keys2.hasNext()) {
                                    str = (String) keys2.next();
                                    jSONObject2 = jSONObject4.getJSONObject(str);
                                    paymentDetails = new PaymentDetails();
                                    paymentDetails.setBankCode(str);
                                    paymentDetails.setBankId(jSONObject2.getString(PayuConstants.BANK_ID));
                                    paymentDetails.setBankName(jSONObject2.getString(PayuConstants.TITLE));
                                    paymentDetails.setPgId(jSONObject2.getString(PayuConstants.PGID));
                                    arrayList.add(paymentDetails);
                                }
                                payuResponse.setCreditCard(arrayList);
                            }
                            if (jSONObject.has(PayuConstants.DEBITCARD)) {
                                jSONObject4 = jSONObject.getJSONObject(PayuConstants.DEBITCARD);
                                arrayList = new ArrayList();
                                keys2 = jSONObject4.keys();
                                while (keys2.hasNext()) {
                                    str = (String) keys2.next();
                                    PaymentDetails paymentDetails2 = new PaymentDetails();
                                    JSONObject jSONObject5 = jSONObject4.getJSONObject(str);
                                    paymentDetails2.setBankCode(str);
                                    paymentDetails2.setBankId(jSONObject5.getString(PayuConstants.BANK_ID));
                                    paymentDetails2.setBankName(jSONObject5.getString(PayuConstants.TITLE));
                                    paymentDetails2.setPgId(jSONObject5.getString(PayuConstants.PGID));
                                    arrayList.add(paymentDetails2);
                                }
                                payuResponse.setDebitCard(arrayList);
                            }
                            if (jSONObject.has(PayuConstants.NETBANKING)) {
                                jSONObject4 = jSONObject.getJSONObject(PayuConstants.NETBANKING);
                                keys3 = jSONObject4.keys();
                                arrayList2 = new ArrayList();
                                while (keys3.hasNext()) {
                                    str = (String) keys3.next();
                                    jSONObject2 = jSONObject4.getJSONObject(str);
                                    paymentDetails = new PaymentDetails();
                                    paymentDetails.setBankCode(str);
                                    paymentDetails.setBankId(jSONObject2.getString(PayuConstants.BANK_ID));
                                    paymentDetails.setBankName(jSONObject2.getString(PayuConstants.TITLE));
                                    paymentDetails.setPgId(jSONObject2.getString(PayuConstants.PGID));
                                    arrayList2.add(paymentDetails);
                                }
                                Collections.sort(arrayList2, new PaymentDetailsComparator());
                                payuResponse.setNetBanks(arrayList2);
                            }
                            if (jSONObject.has(PayuConstants.CASHCARD)) {
                                jSONObject4 = jSONObject.getJSONObject(PayuConstants.CASHCARD);
                                keys3 = jSONObject4.keys();
                                arrayList2 = new ArrayList();
                                while (keys3.hasNext()) {
                                    str = (String) keys3.next();
                                    jSONObject2 = jSONObject4.getJSONObject(str);
                                    paymentDetails = new PaymentDetails();
                                    paymentDetails.setBankCode(str);
                                    paymentDetails.setBankId(jSONObject2.getString(PayuConstants.BANK_ID));
                                    paymentDetails.setBankName(jSONObject2.getString(PayuConstants.TITLE));
                                    paymentDetails.setPgId(jSONObject2.getString(PayuConstants.PGID));
                                    arrayList2.add(paymentDetails);
                                }
                                Collections.sort(arrayList2, new PaymentDetailsComparator());
                                payuResponse.setCashCard(arrayList2);
                            }
                            if (jSONObject.has(PayuConstants.IVR)) {
                                jSONObject4 = jSONObject.getJSONObject(PayuConstants.IVR);
                                keys3 = jSONObject4.keys();
                                arrayList3 = new ArrayList();
                                while (keys3.hasNext()) {
                                    str = (String) keys3.next();
                                    jSONObject2 = jSONObject4.getJSONObject(str);
                                    paymentDetails = new PaymentDetails();
                                    paymentDetails.setBankCode(str);
                                    paymentDetails.setBankId(jSONObject2.getString(PayuConstants.BANK_ID));
                                    paymentDetails.setBankName(jSONObject2.getString(PayuConstants.TITLE));
                                    paymentDetails.setPgId(jSONObject2.getString(PayuConstants.PGID));
                                    arrayList3.add(paymentDetails);
                                }
                                payuResponse.setIvr(arrayList3);
                            }
                            if (jSONObject.has(PayuConstants.IVRDC)) {
                                jSONObject4 = jSONObject.getJSONObject(PayuConstants.IVRDC);
                                keys3 = jSONObject4.keys();
                                arrayList3 = new ArrayList();
                                while (keys3.hasNext()) {
                                    str = (String) keys3.next();
                                    jSONObject2 = jSONObject4.getJSONObject(str);
                                    paymentDetails = new PaymentDetails();
                                    paymentDetails.setBankCode(str);
                                    paymentDetails.setBankId(jSONObject2.getString(PayuConstants.BANK_ID));
                                    paymentDetails.setBankName(jSONObject2.getString(PayuConstants.TITLE));
                                    paymentDetails.setPgId(jSONObject2.getString(PayuConstants.PGID));
                                    arrayList3.add(paymentDetails);
                                }
                                payuResponse.setIvrdc(arrayList3);
                            }
                            if (jSONObject.has(PayuConstants.PAISAWALLET)) {
                                jSONObject4 = jSONObject.getJSONObject(PayuConstants.PAISAWALLET);
                                keys3 = jSONObject4.keys();
                                arrayList3 = new ArrayList();
                                while (keys3.hasNext()) {
                                    str = (String) keys3.next();
                                    jSONObject2 = jSONObject4.getJSONObject(str);
                                    paymentDetails = new PaymentDetails();
                                    paymentDetails.setBankCode(str);
                                    paymentDetails.setBankId(jSONObject2.getString(PayuConstants.BANK_ID));
                                    paymentDetails.setBankName(jSONObject2.getString(PayuConstants.TITLE));
                                    paymentDetails.setPgId(jSONObject2.getString(PayuConstants.PGID));
                                    arrayList3.add(paymentDetails);
                                }
                                payuResponse.setPaisaWallet(arrayList3);
                            }
                            if (jSONObject.has(PayuConstants.EMI_IN_RESPONSE)) {
                                jSONObject = jSONObject.getJSONObject(PayuConstants.EMI_IN_RESPONSE);
                                keys = jSONObject.keys();
                                Object arrayList4 = new ArrayList();
                                while (keys.hasNext()) {
                                    str = (String) keys.next();
                                    JSONObject jSONObject6 = jSONObject.getJSONObject(str);
                                    Emi emi = new Emi();
                                    emi.setBankCode(str);
                                    emi.setBankName(jSONObject6.getString(MRConstant.BANK_NAME));
                                    emi.setBankTitle(jSONObject6.getString(PayuConstants.TITLE));
                                    emi.setPgId(jSONObject6.getString(PayuConstants.PGID));
                                    arrayList4.add(emi);
                                }
                                Collections.sort(arrayList4, new EmiComparator());
                                payuResponse.setEmi(arrayList4);
                            }
                        }
                        if (jSONObject3.has(PayuConstants.USERCARDS) && jSONObject3.getJSONObject(PayuConstants.USERCARDS).has(PayuConstants.USER_CARD)) {
                            jSONObject = jSONObject3.getJSONObject(PayuConstants.USERCARDS).getJSONObject(PayuConstants.USER_CARD);
                            keys = jSONObject.keys();
                            arrayList = new ArrayList();
                            while (keys.hasNext()) {
                                str = (String) keys.next();
                                StoredCard storedCard = new StoredCard();
                                jSONObject2 = jSONObject.getJSONObject(str);
                                storedCard.setNameOnCard(jSONObject2.getString(PayuConstants.NAME_ON_CARD));
                                storedCard.setCardName(jSONObject2.getString(PayuConstants.CARD_NAME));
                                storedCard.setExpiryYear(jSONObject2.getString(PayuConstants.EXPIRY_YEAR));
                                storedCard.setExpiryMonth(jSONObject2.getString(PayuConstants.EXPIRY_MONTY));
                                storedCard.setCardType(jSONObject2.getString(PayuConstants.CARD_TYPE));
                                storedCard.setCardToken(jSONObject2.getString(PayuConstants.CARD_TOKEN));
                                storedCard.setIsExpired(Boolean.valueOf(jSONObject2.getInt(PayuConstants.IS_EXPIRED) != 0));
                                storedCard.setCardMode(jSONObject2.getString(PayuConstants.CARD_MODE));
                                storedCard.setMaskedCardNumber(jSONObject2.getString(PayuConstants.CARD_NO));
                                storedCard.setCardBrand(jSONObject2.getString(PayuConstants.CARD_BRAND));
                                storedCard.setCardBin(jSONObject2.getString(PayuConstants.CARD_BIN));
                                storedCard.setIsDomestic(jSONObject2.getString(PayuConstants.IS_DOMESTIC));
                                storedCard.setIssuingBank(jSONObject2.getString(PayuConstants.ISSUINGBANK));
                                if (jSONObject2.has(PayuConstants.CARD_CVV)) {
                                    storedCard.setEnableOneClickPayment(jSONObject2.getInt(PayuConstants.CARD_CVV));
                                    if (GetPaymentRelatedDetailsTask.this.mOneClickCardTokens == null || GetPaymentRelatedDetailsTask.this.mOneClickCardTokens.get(storedCard.getCardToken()) == null) {
                                        storedCard.setOneTapCard(0);
                                        storedCard.setMerchantHash(null);
                                    } else {
                                        storedCard.setOneTapCard(jSONObject2.getInt(PayuConstants.CARD_CVV));
                                        storedCard.setMerchantHash((String) GetPaymentRelatedDetailsTask.this.mOneClickCardTokens.get(storedCard.getCardToken()));
                                    }
                                }
                                arrayList.add(storedCard);
                            }
                            payuResponse.setStoredCards(arrayList);
                        }
                        if (jSONObject3.has(PayuConstants.STATUS) && jSONObject3.getString(PayuConstants.STATUS).contentEquals("0")) {
                            postData = new PostData();
                            try {
                                postData.setCode(PayuErrors.INVALID_HASH);
                                postData.setStatus(PayuConstants.ERROR);
                                postData.setResult(jSONObject3.getString(PayuConstants.MSG));
                            } catch (ProtocolException e5) {
                                e = e5;
                                postData.setCode(PayuErrors.PROTOCOL_EXCEPTION);
                                postData.setStatus(PayuConstants.ERROR);
                                postData.setResult(e.getMessage());
                                payuResponse.setResponseStatus(postData);
                                return payuResponse;
                            } catch (UnsupportedEncodingException e6) {
                                e2 = e6;
                                postData.setCode(PayuErrors.UN_SUPPORTED_ENCODING_EXCEPTION);
                                postData.setStatus(PayuConstants.ERROR);
                                postData.setResult(e2.getMessage());
                                payuResponse.setResponseStatus(postData);
                                return payuResponse;
                            } catch (JSONException e7) {
                                e3 = e7;
                                postData.setCode(PayuErrors.JSON_EXCEPTION);
                                postData.setStatus(PayuConstants.ERROR);
                                postData.setResult(e3.getMessage());
                                payuResponse.setResponseStatus(postData);
                                return payuResponse;
                            } catch (IOException e8) {
                                e4 = e8;
                                postData.setCode(PayuErrors.PROTOCOL_EXCEPTION);
                                postData.setStatus(PayuConstants.ERROR);
                                postData.setResult(e4.getMessage());
                                payuResponse.setResponseStatus(postData);
                                return payuResponse;
                            }
                            payuResponse.setResponseStatus(postData);
                            return payuResponse;
                        }
                        postData2.setCode(0);
                        postData2.setResult(PayuErrors.SDK_DETAILS_FETCHED_SUCCESSFULLY + jSONObject3.getJSONObject(PayuConstants.USERCARDS).getString(PayuConstants.MSG));
                        postData2.setStatus(PayuConstants.SUCCESS);
                        postData = postData2;
                        payuResponse.setResponseStatus(postData);
                        return payuResponse;
                    }
                }
            } catch (ProtocolException e9) {
                ProtocolException protocolException = e9;
                postData = postData2;
                e = protocolException;
                postData.setCode(PayuErrors.PROTOCOL_EXCEPTION);
                postData.setStatus(PayuConstants.ERROR);
                postData.setResult(e.getMessage());
                payuResponse.setResponseStatus(postData);
                return payuResponse;
            } catch (UnsupportedEncodingException e10) {
                UnsupportedEncodingException unsupportedEncodingException = e10;
                postData = postData2;
                e2 = unsupportedEncodingException;
                postData.setCode(PayuErrors.UN_SUPPORTED_ENCODING_EXCEPTION);
                postData.setStatus(PayuConstants.ERROR);
                postData.setResult(e2.getMessage());
                payuResponse.setResponseStatus(postData);
                return payuResponse;
            } catch (JSONException e11) {
                JSONException jSONException = e11;
                postData = postData2;
                e3 = jSONException;
                postData.setCode(PayuErrors.JSON_EXCEPTION);
                postData.setStatus(PayuConstants.ERROR);
                postData.setResult(e3.getMessage());
                payuResponse.setResponseStatus(postData);
                return payuResponse;
            } catch (IOException e12) {
                IOException iOException = e12;
                postData = postData2;
                e4 = iOException;
                postData.setCode(PayuErrors.PROTOCOL_EXCEPTION);
                postData.setStatus(PayuConstants.ERROR);
                postData.setResult(e4.getMessage());
                payuResponse.setResponseStatus(postData);
                return payuResponse;
            }
        }

        protected void onPostExecute(PayuResponse payuResponse) {
            super.onPostExecute(payuResponse);
            GetPaymentRelatedDetailsTask.this.mPaymentRelatedDetailsListener.onPaymentRelatedDetailsResponse(payuResponse);
        }

        protected void onPreExecute() {
            super.onPreExecute();
        }
    }

    public GetPaymentRelatedDetailsTask(PaymentRelatedDetailsListener paymentRelatedDetailsListener) {
        this.mPaymentRelatedDetailsListener = paymentRelatedDetailsListener;
    }

    protected HashMap<String, String> doInBackground(PayuConfig... payuConfigArr) {
        this.payuConfig = payuConfigArr[0];
        String str = BuildConfig.VERSION_NAME;
        Matcher matcher = Pattern.compile("var1=([^&]*)").matcher(this.payuConfig.getData());
        while (matcher.find()) {
            str = matcher.group(1);
        }
        if (!(str.equals(BuildConfig.VERSION_NAME) || str.equals(PayuConstants.DEFAULT))) {
            OneClickPaymentListener oneTapCallback = OnetapCallback.getOneTapCallback();
            if (oneTapCallback != null) {
                return oneTapCallback.getAllOneClickHash(str);
            }
        }
        return null;
    }

    protected void onPostExecute(HashMap<String, String> hashMap) {
        super.onPostExecute(hashMap);
        this.mOneClickCardTokens = hashMap;
        new FetchPaymentDetailsTask().execute(new PayuConfig[]{this.payuConfig});
    }
}
