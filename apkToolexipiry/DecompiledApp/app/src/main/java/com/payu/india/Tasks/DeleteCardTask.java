package com.payu.india.Tasks;

import android.os.AsyncTask;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.payu.custombrowser.util.CBConstant;
import com.payu.india.CallBackHandler.OnetapCallback;
import com.payu.india.Interfaces.DeleteCardApiListener;
import com.payu.india.Interfaces.OneClickPaymentListener;
import com.payu.india.Model.PayuConfig;
import com.payu.india.Model.PayuResponse;
import com.payu.india.Model.PostData;
import com.payu.india.Payu.PayuConstants;
import com.payu.india.Payu.PayuErrors;
import com.squareup.haha.perflib.StackFrame;
import com.squareup.leakcanary.watcher.BuildConfig;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

public class DeleteCardTask extends AsyncTask<PayuConfig, String, PayuResponse> {
    DeleteCardApiListener mDeleteCardApiListener;
    PayuConfig mPayuConfig;
    PayuResponse mPayuResponse;

    class DeleteMerchantHashTask extends AsyncTask<Void, Void, Void> {
        DeleteMerchantHashTask() {
        }

        protected Void doInBackground(Void... voidArr) {
            String str = BuildConfig.VERSION_NAME;
            Matcher matcher = Pattern.compile("var2=([^&]*)").matcher(DeleteCardTask.this.mPayuConfig.getData());
            while (matcher.find()) {
                str = matcher.group(1);
            }
            String str2 = BuildConfig.VERSION_NAME;
            Matcher matcher2 = Pattern.compile("var1=([^&]*)").matcher(DeleteCardTask.this.mPayuConfig.getData());
            while (matcher2.find()) {
                str2 = matcher2.group(1);
            }
            if (!(str.equals(BuildConfig.VERSION_NAME) || str2.equals(BuildConfig.VERSION_NAME))) {
                OneClickPaymentListener oneTapCallback = OnetapCallback.getOneTapCallback();
                if (oneTapCallback != null) {
                    oneTapCallback.deleteOneClickHash(str, str2);
                }
            }
            return null;
        }

        protected void onPostExecute(Void voidR) {
            super.onPostExecute(voidR);
            DeleteCardTask.this.mDeleteCardApiListener.onDeleteCardApiResponse(DeleteCardTask.this.mPayuResponse);
        }
    }

    public DeleteCardTask(DeleteCardApiListener deleteCardApiListener) {
        this.mDeleteCardApiListener = deleteCardApiListener;
    }

    protected PayuResponse doInBackground(PayuConfig... payuConfigArr) {
        this.mPayuConfig = payuConfigArr[0];
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
                    if (jSONObject.has(PayuConstants.STATUS) && jSONObject.getInt(PayuConstants.STATUS) == 1) {
                        postData.setCode(0);
                        postData.setStatus(PayuConstants.SUCCESS);
                        payuResponse.setResponseStatus(postData);
                        return payuResponse;
                    }
                    postData.setCode(PayuErrors.DELETE_CARD_EXCEPTION);
                    postData.setStatus(PayuConstants.ERROR);
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
        this.mPayuResponse = payuResponse;
        new DeleteMerchantHashTask().execute(new Void[0]);
    }
}
