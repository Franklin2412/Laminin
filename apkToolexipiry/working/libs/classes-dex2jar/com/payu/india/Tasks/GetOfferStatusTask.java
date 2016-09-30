package com.payu.india.Tasks;

import android.os.AsyncTask;
import com.payu.india.Interfaces.GetOfferStatusApiListener;
import com.payu.india.Model.PayuConfig;
import com.payu.india.Model.PayuResponse;

public class GetOfferStatusTask extends AsyncTask<PayuConfig, String, PayuResponse> {
    GetOfferStatusApiListener mGetOfferStatusApiListener;

    public GetOfferStatusTask(GetOfferStatusApiListener getOfferStatusApiListener) {
        this.mGetOfferStatusApiListener = getOfferStatusApiListener;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected com.payu.india.Model.PayuResponse doInBackground(com.payu.india.Model.PayuConfig... r12) {
        /*
        r11 = this;
        r2 = 1;
        r3 = -1;
        r1 = 0;
        r4 = new com.payu.india.Model.PayuResponse;
        r4.<init>();
        r5 = new com.payu.india.Model.PostData;
        r5.<init>();
        r6 = r12[r1];
        r0 = r6.getEnvironment();	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        switch(r0) {
            case 0: goto L_0x0073;
            case 1: goto L_0x007d;
            case 2: goto L_0x008a;
            case 3: goto L_0x0094;
            default: goto L_0x0016;
        };	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
    L_0x0016:
        r0 = new java.net.URL;	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r7 = "https://info.payu.in/merchant/postservice.php?form=2";
        r0.<init>(r7);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
    L_0x001d:
        r6 = r6.getData();	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r7 = "UTF-8";
        r6 = r6.getBytes(r7);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r0 = r0.openConnection();	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r0 = (java.net.HttpURLConnection) r0;	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r7 = "POST";
        r0.setRequestMethod(r7);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r7 = "Content-Type";
        r8 = "application/x-www-form-urlencoded";
        r0.setRequestProperty(r7, r8);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r7 = "Content-Length";
        r8 = r6.length;	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r8 = java.lang.String.valueOf(r8);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r0.setRequestProperty(r7, r8);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r7 = 1;
        r0.setDoOutput(r7);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r7 = r0.getOutputStream();	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r7.write(r6);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r0 = r0.getInputStream();	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r6 = new java.lang.StringBuffer;	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r6.<init>();	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r7 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r7 = new byte[r7];	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
    L_0x005b:
        r8 = r0.read(r7);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        if (r8 == r3) goto L_0x009c;
    L_0x0061:
        r9 = new java.lang.String;	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r10 = 0;
        r9.<init>(r7, r10, r8);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r6.append(r9);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        goto L_0x005b;
    L_0x006b:
        r0 = move-exception;
    L_0x006c:
        r0.printStackTrace();
    L_0x006f:
        r4.setResponseStatus(r5);
        return r4;
    L_0x0073:
        r0 = new java.net.URL;	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r7 = "https://info.payu.in/merchant/postservice.php?form=2";
        r0.<init>(r7);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        goto L_0x001d;
    L_0x007b:
        r0 = move-exception;
        goto L_0x006c;
    L_0x007d:
        r0 = new java.net.URL;	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r7 = "https://mobiletest.payu.in/merchant/postservice?form=2";
        r0.<init>(r7);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        goto L_0x001d;
    L_0x0085:
        r0 = move-exception;
    L_0x0086:
        r0.printStackTrace();
        goto L_0x006f;
    L_0x008a:
        r0 = new java.net.URL;	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r7 = "https://test.payu.in/merchant/postservice?form=2";
        r0.<init>(r7);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        goto L_0x001d;
    L_0x0092:
        r0 = move-exception;
        goto L_0x0086;
    L_0x0094:
        r0 = new java.net.URL;	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r7 = "https://mobiledev.payu.in/merchant/postservice?form=2";
        r0.<init>(r7);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        goto L_0x001d;
    L_0x009c:
        r7 = new org.json.JSONObject;	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r0 = r6.toString();	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r7.<init>(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r0 = "msg";
        r0 = r7.has(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        if (r0 == 0) goto L_0x00b6;
    L_0x00ad:
        r0 = "msg";
        r0 = r7.getString(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r5.setResult(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
    L_0x00b6:
        r0 = "status";
        r0 = r7.has(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        if (r0 == 0) goto L_0x00fb;
    L_0x00be:
        r0 = "status";
        r0 = r7.getInt(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        if (r0 != 0) goto L_0x00fb;
    L_0x00c6:
        r0 = 5019; // 0x139b float:7.033E-42 double:2.4797E-320;
        r5.setCode(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r0 = "ERROR";
        r5.setStatus(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
    L_0x00d0:
        r6 = new com.payu.india.Model.PayuOffer;	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r6.<init>();	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r8 = r7.keys();	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
    L_0x00d9:
        r0 = r8.hasNext();	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        if (r0 == 0) goto L_0x01b8;
    L_0x00df:
        r0 = r8.next();	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r0 = (java.lang.String) r0;	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r9 = r0.hashCode();	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        switch(r9) {
            case -892481550: goto L_0x0105;
            case -654979397: goto L_0x0137;
            case -437728861: goto L_0x0141;
            case 108417: goto L_0x010f;
            case 50511102: goto L_0x0155;
            case 161695549: goto L_0x012d;
            case 273184065: goto L_0x014b;
            case 1635686852: goto L_0x0119;
            case 1944869372: goto L_0x0123;
            default: goto L_0x00ec;
        };	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
    L_0x00ec:
        r0 = r3;
    L_0x00ed:
        switch(r0) {
            case 0: goto L_0x00f1;
            case 1: goto L_0x0160;
            case 2: goto L_0x016b;
            case 3: goto L_0x0176;
            case 4: goto L_0x0181;
            case 5: goto L_0x018c;
            case 6: goto L_0x0197;
            case 7: goto L_0x01a2;
            case 8: goto L_0x01ad;
            default: goto L_0x00f0;
        };	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
    L_0x00f0:
        goto L_0x00d9;
    L_0x00f1:
        r0 = "status";
        r0 = r7.getString(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r6.setStatus(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        goto L_0x00d9;
    L_0x00fb:
        r0 = 0;
        r5.setCode(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r0 = "SUCCESS";
        r5.setStatus(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        goto L_0x00d0;
    L_0x0105:
        r9 = "status";
        r0 = r0.equals(r9);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        if (r0 == 0) goto L_0x00ec;
    L_0x010d:
        r0 = r1;
        goto L_0x00ed;
    L_0x010f:
        r9 = "msg";
        r0 = r0.equals(r9);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        if (r0 == 0) goto L_0x00ec;
    L_0x0117:
        r0 = r2;
        goto L_0x00ed;
    L_0x0119:
        r9 = "error_code";
        r0 = r0.equals(r9);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        if (r0 == 0) goto L_0x00ec;
    L_0x0121:
        r0 = 2;
        goto L_0x00ed;
    L_0x0123:
        r9 = "offer_key";
        r0 = r0.equals(r9);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        if (r0 == 0) goto L_0x00ec;
    L_0x012b:
        r0 = 3;
        goto L_0x00ed;
    L_0x012d:
        r9 = "offer_type";
        r0 = r0.equals(r9);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        if (r0 == 0) goto L_0x00ec;
    L_0x0135:
        r0 = 4;
        goto L_0x00ed;
    L_0x0137:
        r9 = "offer_availed_count";
        r0 = r0.equals(r9);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        if (r0 == 0) goto L_0x00ec;
    L_0x013f:
        r0 = 5;
        goto L_0x00ed;
    L_0x0141:
        r9 = "offer_remaining_count";
        r0 = r0.equals(r9);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        if (r0 == 0) goto L_0x00ec;
    L_0x0149:
        r0 = 6;
        goto L_0x00ed;
    L_0x014b:
        r9 = "discount";
        r0 = r0.equals(r9);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        if (r0 == 0) goto L_0x00ec;
    L_0x0153:
        r0 = 7;
        goto L_0x00ed;
    L_0x0155:
        r9 = "category";
        r0 = r0.equals(r9);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        if (r0 == 0) goto L_0x00ec;
    L_0x015d:
        r0 = 8;
        goto L_0x00ed;
    L_0x0160:
        r0 = "msg";
        r0 = r7.getString(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r6.setMsg(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        goto L_0x00d9;
    L_0x016b:
        r0 = "error_code";
        r0 = r7.getString(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r6.setErrorCode(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        goto L_0x00d9;
    L_0x0176:
        r0 = "offer_key";
        r0 = r7.getString(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r6.setOfferKey(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        goto L_0x00d9;
    L_0x0181:
        r0 = "offer_type";
        r0 = r7.getString(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r6.setOfferType(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        goto L_0x00d9;
    L_0x018c:
        r0 = "offer_availed_count";
        r0 = r7.getString(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r6.setOfferAvailedCount(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        goto L_0x00d9;
    L_0x0197:
        r0 = "offer_remaining_count";
        r0 = r7.getString(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r6.setOfferRemainingCount(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        goto L_0x00d9;
    L_0x01a2:
        r0 = "discount";
        r0 = r7.getString(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r6.setDiscount(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        goto L_0x00d9;
    L_0x01ad:
        r0 = "category";
        r0 = r7.getString(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        r6.setCategory(r0);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        goto L_0x00d9;
    L_0x01b8:
        r4.setPayuOffer(r6);	 Catch:{ MalformedURLException -> 0x006b, ProtocolException -> 0x007b, IOException -> 0x0085, JSONException -> 0x0092 }
        goto L_0x006f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.payu.india.Tasks.GetOfferStatusTask.doInBackground(com.payu.india.Model.PayuConfig[]):com.payu.india.Model.PayuResponse");
    }

    protected void onPostExecute(PayuResponse payuResponse) {
        super.onPostExecute(payuResponse);
        this.mGetOfferStatusApiListener.onGetOfferStatusApiResponse(payuResponse);
    }
}
