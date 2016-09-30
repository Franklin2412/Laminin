package com.payu.india.Tasks;

import android.os.AsyncTask;
import com.payu.india.Interfaces.VerifyPaymentApiListener;
import com.payu.india.Model.PayuConfig;
import com.payu.india.Model.PayuResponse;

public class VerifyPaymentTask extends AsyncTask<PayuConfig, String, PayuResponse> {
    VerifyPaymentApiListener mVerifyPaymentApiListener;

    public VerifyPaymentTask(VerifyPaymentApiListener verifyPaymentApiListener) {
        this.mVerifyPaymentApiListener = verifyPaymentApiListener;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected com.payu.india.Model.PayuResponse doInBackground(com.payu.india.Model.PayuConfig... r14) {
        /*
        r13 = this;
        r2 = -1;
        r3 = 1;
        r1 = 0;
        r4 = new com.payu.india.Model.PayuResponse;
        r4.<init>();
        r5 = new com.payu.india.Model.PostData;
        r5.<init>();
        r6 = new java.util.ArrayList;
        r6.<init>();
        r7 = r14[r1];
        r0 = r7.getEnvironment();	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        switch(r0) {
            case 0: goto L_0x0078;
            case 1: goto L_0x0082;
            case 2: goto L_0x008f;
            case 3: goto L_0x0099;
            default: goto L_0x001b;
        };	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
    L_0x001b:
        r0 = new java.net.URL;	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r8 = "https://info.payu.in/merchant/postservice.php?form=2";
        r0.<init>(r8);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
    L_0x0022:
        r7 = r7.getData();	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r8 = "UTF-8";
        r7 = r7.getBytes(r8);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r0 = r0.openConnection();	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r0 = (java.net.HttpURLConnection) r0;	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r8 = "POST";
        r0.setRequestMethod(r8);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r8 = "Content-Type";
        r9 = "application/x-www-form-urlencoded";
        r0.setRequestProperty(r8, r9);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r8 = "Content-Length";
        r9 = r7.length;	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r9 = java.lang.String.valueOf(r9);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r0.setRequestProperty(r8, r9);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r8 = 1;
        r0.setDoOutput(r8);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r8 = r0.getOutputStream();	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r8.write(r7);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r0 = r0.getInputStream();	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r7 = new java.lang.StringBuffer;	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r7.<init>();	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r8 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r8 = new byte[r8];	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
    L_0x0060:
        r9 = r0.read(r8);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r9 == r2) goto L_0x00a1;
    L_0x0066:
        r10 = new java.lang.String;	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11 = 0;
        r10.<init>(r8, r11, r9);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r7.append(r10);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0060;
    L_0x0070:
        r0 = move-exception;
    L_0x0071:
        r0.printStackTrace();
    L_0x0074:
        r4.setResponseStatus(r5);
        return r4;
    L_0x0078:
        r0 = new java.net.URL;	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r8 = "https://info.payu.in/merchant/postservice.php?form=2";
        r0.<init>(r8);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0022;
    L_0x0080:
        r0 = move-exception;
        goto L_0x0071;
    L_0x0082:
        r0 = new java.net.URL;	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r8 = "https://mobiletest.payu.in/merchant/postservice?form=2";
        r0.<init>(r8);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0022;
    L_0x008a:
        r0 = move-exception;
    L_0x008b:
        r0.printStackTrace();
        goto L_0x0074;
    L_0x008f:
        r0 = new java.net.URL;	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r8 = "https://test.payu.in/merchant/postservice?form=2";
        r0.<init>(r8);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0022;
    L_0x0097:
        r0 = move-exception;
        goto L_0x008b;
    L_0x0099:
        r0 = new java.net.URL;	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r8 = "https://mobiledev.payu.in/merchant/postservice?form=2";
        r0.<init>(r8);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0022;
    L_0x00a1:
        r0 = new org.json.JSONObject;	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r7 = r7.toString();	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r0.<init>(r7);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r7 = "msg";
        r7 = r0.has(r7);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r7 == 0) goto L_0x00bb;
    L_0x00b2:
        r7 = "msg";
        r7 = r0.getString(r7);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r5.setResult(r7);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
    L_0x00bb:
        r7 = "status";
        r7 = r0.has(r7);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r7 == 0) goto L_0x00d6;
    L_0x00c3:
        r7 = "status";
        r7 = r0.getInt(r7);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r7 != 0) goto L_0x00d6;
    L_0x00cb:
        r0 = 5019; // 0x139b float:7.033E-42 double:2.4797E-320;
        r5.setCode(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r0 = "ERROR";
        r5.setStatus(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0074;
    L_0x00d6:
        r7 = "status";
        r7 = r0.has(r7);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r7 == 0) goto L_0x0074;
    L_0x00de:
        r7 = "status";
        r7 = r0.getInt(r7);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r7 != r3) goto L_0x0074;
    L_0x00e6:
        r7 = 0;
        r5.setCode(r7);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r7 = "SUCCESS";
        r5.setStatus(r7);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r7 = "transaction_details";
        r7 = r0.getJSONObject(r7);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r8 = r7.keys();	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
    L_0x00f9:
        r0 = r8.hasNext();	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x03b6;
    L_0x00ff:
        r0 = r8.next();	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r0 = (java.lang.String) r0;	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r9 = r7.getJSONObject(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r10 = r9.keys();	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11 = new com.payu.india.Model.TransactionDetails;	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.<init>();	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
    L_0x0112:
        r0 = r10.hasNext();	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x03b1;
    L_0x0118:
        r0 = r10.next();	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r0 = (java.lang.String) r0;	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r12 = r0.hashCode();	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        switch(r12) {
            case -1858652631: goto L_0x0184;
            case -1768239874: goto L_0x024d;
            case -1524720393: goto L_0x0134;
            case -1491000803: goto L_0x0170;
            case -1274708353: goto L_0x01c9;
            case -1148080417: goto L_0x0235;
            case -892481550: goto L_0x0241;
            case -274102096: goto L_0x01ed;
            case -245025015: goto L_0x01e1;
            case 96712: goto L_0x0152;
            case 3083669: goto L_0x0205;
            case 3357091: goto L_0x0211;
            case 3584858: goto L_0x018f;
            case 3584859: goto L_0x019a;
            case 3584860: goto L_0x01a5;
            case 3584861: goto L_0x01b1;
            case 3584862: goto L_0x01bd;
            case 37109963: goto L_0x013e;
            case 108845186: goto L_0x021d;
            case 110812421: goto L_0x015c;
            case 133788987: goto L_0x017a;
            case 436978391: goto L_0x0148;
            case 553934160: goto L_0x0229;
            case 785347260: goto L_0x0259;
            case 1198701607: goto L_0x0166;
            case 1635686852: goto L_0x01d5;
            case 2026069948: goto L_0x0271;
            case 2067018233: goto L_0x0265;
            case 2097982887: goto L_0x01f9;
            default: goto L_0x0125;
        };	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
    L_0x0125:
        r0 = r2;
    L_0x0126:
        switch(r0) {
            case 0: goto L_0x012a;
            case 1: goto L_0x027d;
            case 2: goto L_0x0288;
            case 3: goto L_0x0293;
            case 4: goto L_0x029e;
            case 5: goto L_0x02a9;
            case 6: goto L_0x02b4;
            case 7: goto L_0x02bf;
            case 8: goto L_0x02ca;
            case 9: goto L_0x02d5;
            case 10: goto L_0x02e0;
            case 11: goto L_0x02eb;
            case 12: goto L_0x02f6;
            case 13: goto L_0x0301;
            case 14: goto L_0x030c;
            case 15: goto L_0x0317;
            case 16: goto L_0x0322;
            case 17: goto L_0x032d;
            case 18: goto L_0x0338;
            case 19: goto L_0x0343;
            case 20: goto L_0x034e;
            case 21: goto L_0x0359;
            case 22: goto L_0x0364;
            case 23: goto L_0x036f;
            case 24: goto L_0x037a;
            case 25: goto L_0x0385;
            case 26: goto L_0x0390;
            case 27: goto L_0x039b;
            case 28: goto L_0x03a6;
            default: goto L_0x0129;
        };	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
    L_0x0129:
        goto L_0x0112;
    L_0x012a:
        r0 = "mihpayid";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setMihpayId(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x0134:
        r12 = "mihpayid";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x013c:
        r0 = r1;
        goto L_0x0126;
    L_0x013e:
        r12 = "request_id";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x0146:
        r0 = r3;
        goto L_0x0126;
    L_0x0148:
        r12 = "bank_ref_num";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x0150:
        r0 = 2;
        goto L_0x0126;
    L_0x0152:
        r12 = "amt";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x015a:
        r0 = 3;
        goto L_0x0126;
    L_0x015c:
        r12 = "txnid";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x0164:
        r0 = 4;
        goto L_0x0126;
    L_0x0166:
        r12 = "additional_charges";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x016e:
        r0 = 5;
        goto L_0x0126;
    L_0x0170:
        r12 = "productinfo";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x0178:
        r0 = 6;
        goto L_0x0126;
    L_0x017a:
        r12 = "firstname";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x0182:
        r0 = 7;
        goto L_0x0126;
    L_0x0184:
        r12 = "bankcode";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x018c:
        r0 = 8;
        goto L_0x0126;
    L_0x018f:
        r12 = "udf1";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x0197:
        r0 = 9;
        goto L_0x0126;
    L_0x019a:
        r12 = "udf2";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x01a2:
        r0 = 10;
        goto L_0x0126;
    L_0x01a5:
        r12 = "udf3";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x01ad:
        r0 = 11;
        goto L_0x0126;
    L_0x01b1:
        r12 = "udf4";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x01b9:
        r0 = 12;
        goto L_0x0126;
    L_0x01bd:
        r12 = "udf5";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x01c5:
        r0 = 13;
        goto L_0x0126;
    L_0x01c9:
        r12 = "field9";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x01d1:
        r0 = 14;
        goto L_0x0126;
    L_0x01d5:
        r12 = "error_code";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x01dd:
        r0 = 15;
        goto L_0x0126;
    L_0x01e1:
        r12 = "card_type";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x01e9:
        r0 = 16;
        goto L_0x0126;
    L_0x01ed:
        r12 = "error_Message";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x01f5:
        r0 = 17;
        goto L_0x0126;
    L_0x01f9:
        r12 = "net_amount_debit";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x0201:
        r0 = 18;
        goto L_0x0126;
    L_0x0205:
        r12 = "disc";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x020d:
        r0 = 19;
        goto L_0x0126;
    L_0x0211:
        r12 = "mode";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x0219:
        r0 = 20;
        goto L_0x0126;
    L_0x021d:
        r12 = "PG_TYPE";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x0225:
        r0 = 21;
        goto L_0x0126;
    L_0x0229:
        r12 = "card_no";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x0231:
        r0 = 22;
        goto L_0x0126;
    L_0x0235:
        r12 = "addedon";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x023d:
        r0 = 23;
        goto L_0x0126;
    L_0x0241:
        r12 = "status";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x0249:
        r0 = 24;
        goto L_0x0126;
    L_0x024d:
        r12 = "unmappedstatus";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x0255:
        r0 = 25;
        goto L_0x0126;
    L_0x0259:
        r12 = "Merchant_UTR";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x0261:
        r0 = 26;
        goto L_0x0126;
    L_0x0265:
        r12 = "Settled_At";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x026d:
        r0 = 27;
        goto L_0x0126;
    L_0x0271:
        r12 = "name_on_card";
        r0 = r0.equals(r12);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        if (r0 == 0) goto L_0x0125;
    L_0x0279:
        r0 = 28;
        goto L_0x0126;
    L_0x027d:
        r0 = "request_id";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setRequestId(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x0288:
        r0 = "bank_ref_num";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setBankReferenceNumber(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x0293:
        r0 = "amt";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setAmount(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x029e:
        r0 = "txnid";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setTxnid(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x02a9:
        r0 = "additional_charges";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setAdditionalCharges(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x02b4:
        r0 = "productinfo";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setProductinfo(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x02bf:
        r0 = "firstname";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setFirstname(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x02ca:
        r0 = "bankcode";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setBankCode(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x02d5:
        r0 = "udf1";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setUdf1(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x02e0:
        r0 = "udf2";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setUdf2(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x02eb:
        r0 = "udf3";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setUdf3(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x02f6:
        r0 = "udf4";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setUdf4(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x0301:
        r0 = "udf5";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setUdf5(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x030c:
        r0 = "field9";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setField9(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x0317:
        r0 = "error_code";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setErrorCode(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x0322:
        r0 = "card_type";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setCardtype(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x032d:
        r0 = "error_Message";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setErrorMessage(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x0338:
        r0 = "net_amount_debit";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setNetAmountDebit(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x0343:
        r0 = "disc";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setDiscount(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x034e:
        r0 = "mode";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setMode(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x0359:
        r0 = "PG_TYPE";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setPgType(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x0364:
        r0 = "card_no";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setCardNo(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x036f:
        r0 = "addedon";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setAddedon(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x037a:
        r0 = "status";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setStatus(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x0385:
        r0 = "unmappedstatus";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setUnmappedStatus(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x0390:
        r0 = "Merchant_UTR";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setMerchantUTR(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x039b:
        r0 = "Settled_At";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setSettledAt(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x03a6:
        r0 = "name_on_card";
        r0 = r9.getString(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        r11.setNameOnCard(r0);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0112;
    L_0x03b1:
        r6.add(r11);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x00f9;
    L_0x03b6:
        r4.setTransactionDetailsList(r6);	 Catch:{ MalformedURLException -> 0x0070, ProtocolException -> 0x0080, IOException -> 0x008a, JSONException -> 0x0097 }
        goto L_0x0074;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.payu.india.Tasks.VerifyPaymentTask.doInBackground(com.payu.india.Model.PayuConfig[]):com.payu.india.Model.PayuResponse");
    }

    protected void onPostExecute(PayuResponse payuResponse) {
        super.onPostExecute(payuResponse);
        this.mVerifyPaymentApiListener.onVerifyPaymentResponse(payuResponse);
    }
}
