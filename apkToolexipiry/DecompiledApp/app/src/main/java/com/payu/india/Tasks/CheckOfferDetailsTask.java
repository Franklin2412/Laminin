package com.payu.india.Tasks;

import android.os.AsyncTask;
import com.payu.india.Interfaces.CheckOfferDetailsApiListener;
import com.payu.india.Model.PayuConfig;
import com.payu.india.Model.PayuResponse;

public class CheckOfferDetailsTask extends AsyncTask<PayuConfig, String, PayuResponse> {
    CheckOfferDetailsApiListener mCheckOfferDetailsApiListener;

    public CheckOfferDetailsTask(CheckOfferDetailsApiListener checkOfferDetailsApiListener) {
        this.mCheckOfferDetailsApiListener = checkOfferDetailsApiListener;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected PayuResponse doInBackground(PayuConfig... r22) {
        /*
        r21 = this;
        r3 = new com.payu.india.Model.PayuResponse;
        r3.<init>();
        r4 = new com.payu.india.Model.PostData;
        r4.<init>();
        r2 = 0;
        r5 = r22[r2];
        r2 = r5.getEnvironment();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        switch(r2) {
            case 0: goto L_0x0070;
            case 1: goto L_0x007e;
            case 2: goto L_0x008c;
            case 3: goto L_0x0094;
            default: goto L_0x0014;
        };	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
    L_0x0014:
        r2 = new java.net.URL;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r6 = "https://info.payu.in/merchant/postservice.php?form=2";
        r2.<init>(r6);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
    L_0x001b:
        r5 = r5.getData();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r6 = "UTF-8";
        r5 = r5.getBytes(r6);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.openConnection();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = (java.net.HttpURLConnection) r2;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r6 = "POST";
        r2.setRequestMethod(r6);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r6 = "Content-Type";
        r7 = "application/x-www-form-urlencoded";
        r2.setRequestProperty(r6, r7);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r6 = "Content-Length";
        r7 = r5.length;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r7 = java.lang.String.valueOf(r7);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2.setRequestProperty(r6, r7);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r6 = 1;
        r2.setDoOutput(r6);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r6 = r2.getOutputStream();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r6.write(r5);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.getInputStream();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r5 = new java.lang.StringBuffer;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r5.<init>();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r6 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r6 = new byte[r6];	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
    L_0x0059:
        r7 = r2.read(r6);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r8 = -1;
        if (r7 == r8) goto L_0x009c;
    L_0x0060:
        r8 = new java.lang.String;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r9 = 0;
        r8.<init>(r6, r9, r7);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r5.append(r8);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x0059;
    L_0x006a:
        r2 = move-exception;
        r2.printStackTrace();
        r2 = r3;
    L_0x006f:
        return r2;
    L_0x0070:
        r2 = new java.net.URL;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r6 = "https://info.payu.in/merchant/postservice.php?form=2";
        r2.<init>(r6);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x001b;
    L_0x0078:
        r2 = move-exception;
        r2.printStackTrace();
        r2 = r3;
        goto L_0x006f;
    L_0x007e:
        r2 = new java.net.URL;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r6 = "https://mobiletest.payu.in/merchant/postservice?form=2";
        r2.<init>(r6);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x001b;
    L_0x0086:
        r2 = move-exception;
        r2.printStackTrace();
        r2 = r3;
        goto L_0x006f;
    L_0x008c:
        r2 = new java.net.URL;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r6 = "https://test.payu.in/merchant/postservice?form=2";
        r2.<init>(r6);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x001b;
    L_0x0094:
        r2 = new java.net.URL;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r6 = "https://mobiledev.payu.in/merchant/postservice?form=2";
        r2.<init>(r6);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x001b;
    L_0x009c:
        r6 = new org.json.JSONObject;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r5.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r6.<init>(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r5 = new com.payu.india.Model.PayuOfferDetails;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r5.<init>();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = "data_key";
        r2 = r6.has(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x03f7;
    L_0x00b2:
        r7 = new java.util.ArrayList;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r7.<init>();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = "data_key";
        r2 = r6.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r8 = "card_tokens";
        r2 = r2.contentEquals(r8);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0428;
    L_0x00c9:
        r2 = "card_tokens";
        r8 = r6.getJSONObject(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r9 = r8.keys();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
    L_0x00d3:
        r2 = r9.hasNext();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x03f1;
    L_0x00d9:
        r2 = r9.next();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = (java.lang.String) r2;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r8.getJSONObject(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r10 = "card_data";
        r10 = r2.getJSONObject(r10);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r11 = "offer_data";
        r11 = r2.getJSONObject(r11);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r12 = r10.keys();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r13 = new com.payu.india.Model.PayuUserOffer;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r13.<init>();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r14 = new com.payu.india.Model.StoredCard;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r14.<init>();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
    L_0x00fd:
        r2 = r12.hasNext();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0260;
    L_0x0103:
        r2 = r12.next();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = (java.lang.String) r2;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r15 = r2.hashCode();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        switch(r15) {
            case -245243534: goto L_0x0169;
            case -245226918: goto L_0x012d;
            case -245025015: goto L_0x014b;
            case -7921832: goto L_0x0195;
            case -7920460: goto L_0x0173;
            case 191074576: goto L_0x015f;
            case 340158568: goto L_0x01a1;
            case 476548041: goto L_0x0137;
            case 553934160: goto L_0x017e;
            case 977313176: goto L_0x0189;
            case 993856522: goto L_0x0155;
            case 1877315700: goto L_0x0141;
            case 2026069948: goto L_0x0123;
            default: goto L_0x0110;
        };	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
    L_0x0110:
        r2 = -1;
    L_0x0111:
        switch(r2) {
            case 0: goto L_0x0115;
            case 1: goto L_0x01ad;
            case 2: goto L_0x01bc;
            case 3: goto L_0x01cb;
            case 4: goto L_0x01da;
            case 5: goto L_0x01e9;
            case 6: goto L_0x01f8;
            case 7: goto L_0x020a;
            case 8: goto L_0x0219;
            case 9: goto L_0x0224;
            case 10: goto L_0x0233;
            case 11: goto L_0x0242;
            case 12: goto L_0x0251;
            default: goto L_0x0114;
        };	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
    L_0x0114:
        goto L_0x00fd;
    L_0x0115:
        r2 = "name_on_card";
        r2 = r10.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r14.setNameOnCard(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x00fd;
    L_0x0123:
        r15 = "name_on_card";
        r2 = r2.equals(r15);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0110;
    L_0x012b:
        r2 = 0;
        goto L_0x0111;
    L_0x012d:
        r15 = "card_name";
        r2 = r2.equals(r15);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0110;
    L_0x0135:
        r2 = 1;
        goto L_0x0111;
    L_0x0137:
        r15 = "expiry_year";
        r2 = r2.equals(r15);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0110;
    L_0x013f:
        r2 = 2;
        goto L_0x0111;
    L_0x0141:
        r15 = "expiry_month";
        r2 = r2.equals(r15);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0110;
    L_0x0149:
        r2 = 3;
        goto L_0x0111;
    L_0x014b:
        r15 = "card_type";
        r2 = r2.equals(r15);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0110;
    L_0x0153:
        r2 = 4;
        goto L_0x0111;
    L_0x0155:
        r15 = "card_token";
        r2 = r2.equals(r15);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0110;
    L_0x015d:
        r2 = 5;
        goto L_0x0111;
    L_0x015f:
        r15 = "is_expired";
        r2 = r2.equals(r15);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0110;
    L_0x0167:
        r2 = 6;
        goto L_0x0111;
    L_0x0169:
        r15 = "card_mode";
        r2 = r2.equals(r15);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0110;
    L_0x0171:
        r2 = 7;
        goto L_0x0111;
    L_0x0173:
        r15 = "card_cvv";
        r2 = r2.equals(r15);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0110;
    L_0x017b:
        r2 = 8;
        goto L_0x0111;
    L_0x017e:
        r15 = "card_no";
        r2 = r2.equals(r15);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0110;
    L_0x0186:
        r2 = 9;
        goto L_0x0111;
    L_0x0189:
        r15 = "card_brand";
        r2 = r2.equals(r15);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0110;
    L_0x0191:
        r2 = 10;
        goto L_0x0111;
    L_0x0195:
        r15 = "card_bin";
        r2 = r2.equals(r15);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0110;
    L_0x019d:
        r2 = 11;
        goto L_0x0111;
    L_0x01a1:
        r15 = "isDomestic";
        r2 = r2.equals(r15);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0110;
    L_0x01a9:
        r2 = 12;
        goto L_0x0111;
    L_0x01ad:
        r2 = "card_name";
        r2 = r10.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r14.setCardName(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x00fd;
    L_0x01bc:
        r2 = "expiry_year";
        r2 = r10.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r14.setExpiryYear(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x00fd;
    L_0x01cb:
        r2 = "expiry_month";
        r2 = r10.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r14.setExpiryMonth(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x00fd;
    L_0x01da:
        r2 = "card_type";
        r2 = r10.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r14.setCardType(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x00fd;
    L_0x01e9:
        r2 = "card_token";
        r2 = r10.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r14.setCardToken(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x00fd;
    L_0x01f8:
        r2 = "is_expired";
        r2 = r10.getInt(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 != 0) goto L_0x05a6;
    L_0x0200:
        r2 = 0;
    L_0x0201:
        r2 = java.lang.Boolean.valueOf(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r14.setIsExpired(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x00fd;
    L_0x020a:
        r2 = "card_mode";
        r2 = r10.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r14.setCardMode(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x00fd;
    L_0x0219:
        r2 = "card_cvv";
        r2 = r10.getInt(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r14.setEnableOneClickPayment(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x00fd;
    L_0x0224:
        r2 = "card_no";
        r2 = r10.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r14.setMaskedCardNumber(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x00fd;
    L_0x0233:
        r2 = "card_brand";
        r2 = r10.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r14.setCardBrand(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x00fd;
    L_0x0242:
        r2 = "card_bin";
        r2 = r10.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r14.setCardBin(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x00fd;
    L_0x0251:
        r2 = "isDomestic";
        r2 = r10.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r14.setIsDomestic(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x00fd;
    L_0x0260:
        r13.setStoredCard(r14);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r10 = r11.keys();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r12 = new java.util.ArrayList;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r12.<init>();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
    L_0x026c:
        r2 = r10.hasNext();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x03e9;
    L_0x0272:
        r2 = r10.next();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = (java.lang.String) r2;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r14 = r11.getJSONObject(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r15 = r14.keys();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r16 = new com.payu.india.Model.PayuOffer;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r16.<init>();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
    L_0x0285:
        r2 = r15.hasNext();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x03e2;
    L_0x028b:
        r2 = r15.next();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = (java.lang.String) r2;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r17 = r2.hashCode();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        switch(r17) {
            case -1336660010: goto L_0x031a;
            case -892481550: goto L_0x02ad;
            case -654979397: goto L_0x02e9;
            case -437728861: goto L_0x02f5;
            case 108417: goto L_0x02b9;
            case 50511102: goto L_0x030d;
            case 161695549: goto L_0x02dd;
            case 273184065: goto L_0x0301;
            case 1635686852: goto L_0x02c5;
            case 1944869372: goto L_0x02d1;
            default: goto L_0x0298;
        };	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
    L_0x0298:
        r2 = -1;
    L_0x0299:
        switch(r2) {
            case 0: goto L_0x029d;
            case 1: goto L_0x0328;
            case 2: goto L_0x0339;
            case 3: goto L_0x034a;
            case 4: goto L_0x035b;
            case 5: goto L_0x036c;
            case 6: goto L_0x037d;
            case 7: goto L_0x038e;
            case 8: goto L_0x039f;
            case 9: goto L_0x03b0;
            default: goto L_0x029c;
        };	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
    L_0x029c:
        goto L_0x0285;
    L_0x029d:
        r2 = "status";
        r2 = r14.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r0 = r16;
        r0.setStatus(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x0285;
    L_0x02ad:
        r17 = "status";
        r0 = r17;
        r2 = r2.equals(r0);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0298;
    L_0x02b7:
        r2 = 0;
        goto L_0x0299;
    L_0x02b9:
        r17 = "msg";
        r0 = r17;
        r2 = r2.equals(r0);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0298;
    L_0x02c3:
        r2 = 1;
        goto L_0x0299;
    L_0x02c5:
        r17 = "error_code";
        r0 = r17;
        r2 = r2.equals(r0);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0298;
    L_0x02cf:
        r2 = 2;
        goto L_0x0299;
    L_0x02d1:
        r17 = "offer_key";
        r0 = r17;
        r2 = r2.equals(r0);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0298;
    L_0x02db:
        r2 = 3;
        goto L_0x0299;
    L_0x02dd:
        r17 = "offer_type";
        r0 = r17;
        r2 = r2.equals(r0);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0298;
    L_0x02e7:
        r2 = 4;
        goto L_0x0299;
    L_0x02e9:
        r17 = "offer_availed_count";
        r0 = r17;
        r2 = r2.equals(r0);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0298;
    L_0x02f3:
        r2 = 5;
        goto L_0x0299;
    L_0x02f5:
        r17 = "offer_remaining_count";
        r0 = r17;
        r2 = r2.equals(r0);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0298;
    L_0x02ff:
        r2 = 6;
        goto L_0x0299;
    L_0x0301:
        r17 = "discount";
        r0 = r17;
        r2 = r2.equals(r0);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0298;
    L_0x030b:
        r2 = 7;
        goto L_0x0299;
    L_0x030d:
        r17 = "category";
        r0 = r17;
        r2 = r2.equals(r0);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0298;
    L_0x0317:
        r2 = 8;
        goto L_0x0299;
    L_0x031a:
        r17 = "allowed_on";
        r0 = r17;
        r2 = r2.equals(r0);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0298;
    L_0x0324:
        r2 = 9;
        goto L_0x0299;
    L_0x0328:
        r2 = "msg";
        r2 = r14.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r0 = r16;
        r0.setMsg(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x0285;
    L_0x0339:
        r2 = "error_code";
        r2 = r14.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r0 = r16;
        r0.setErrorCode(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x0285;
    L_0x034a:
        r2 = "offer_key";
        r2 = r14.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r0 = r16;
        r0.setOfferKey(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x0285;
    L_0x035b:
        r2 = "offer_type";
        r2 = r14.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r0 = r16;
        r0.setOfferType(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x0285;
    L_0x036c:
        r2 = "offer_availed_count";
        r2 = r14.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r0 = r16;
        r0.setOfferAvailedCount(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x0285;
    L_0x037d:
        r2 = "offer_remaining_count";
        r2 = r14.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r0 = r16;
        r0.setOfferRemainingCount(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x0285;
    L_0x038e:
        r2 = "discount";
        r2 = r14.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r0 = r16;
        r0.setDiscount(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x0285;
    L_0x039f:
        r2 = "category";
        r2 = r14.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r0 = r16;
        r0.setCategory(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x0285;
    L_0x03b0:
        r17 = new java.util.ArrayList;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r17.<init>();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = "allowed_on";
        r2 = r14.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r18 = ",";
        r0 = r18;
        r18 = r2.split(r0);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r0 = r18;
        r0 = r0.length;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r19 = r0;
        r2 = 0;
    L_0x03cd:
        r0 = r19;
        if (r2 >= r0) goto L_0x03dd;
    L_0x03d1:
        r20 = r18[r2];	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r0 = r17;
        r1 = r20;
        r0.add(r1);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2 + 1;
        goto L_0x03cd;
    L_0x03dd:
        r16.setAllowedOn(r17);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x0285;
    L_0x03e2:
        r0 = r16;
        r12.add(r0);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x026c;
    L_0x03e9:
        r13.setAvailableCardOffers(r12);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r7.add(r13);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x00d3;
    L_0x03f1:
        r5.setUserOffersList(r7);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r3.setPayuOfferDetails(r5);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
    L_0x03f7:
        r2 = "msg";
        r2 = r6.has(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0408;
    L_0x03ff:
        r2 = "msg";
        r2 = r6.getString(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r4.setResult(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
    L_0x0408:
        r2 = "status";
        r2 = r6.has(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x059b;
    L_0x0410:
        r2 = "status";
        r2 = r6.getInt(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 != 0) goto L_0x059b;
    L_0x0418:
        r2 = 5019; // 0x139b float:7.033E-42 double:2.4797E-320;
        r4.setCode(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = "ERROR";
        r4.setStatus(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
    L_0x0422:
        r3.setResponseStatus(r4);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r3;
        goto L_0x006f;
    L_0x0428:
        r2 = "data_key";
        r2 = r6.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r7 = "offer_key";
        r2 = r2.contentEquals(r7);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x03f7;
    L_0x043a:
        r2 = "offer_key";
        r7 = r6.getJSONObject(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r8 = r7.keys();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r9 = new java.util.ArrayList;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r9.<init>();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
    L_0x0449:
        r2 = r8.hasNext();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0593;
    L_0x044f:
        r2 = r8.next();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = (java.lang.String) r2;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r10 = r7.getJSONObject(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r11 = new com.payu.india.Model.PayuOffer;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r11.<init>();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r12 = r10.keys();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
    L_0x0462:
        r2 = r12.hasNext();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x058e;
    L_0x0468:
        r2 = r12.next();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = (java.lang.String) r2;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r13 = r2.hashCode();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        switch(r13) {
            case -1336660010: goto L_0x04e3;
            case -892481550: goto L_0x0488;
            case -654979397: goto L_0x04ba;
            case -437728861: goto L_0x04c4;
            case 108417: goto L_0x0492;
            case 50511102: goto L_0x04d8;
            case 161695549: goto L_0x04b0;
            case 273184065: goto L_0x04ce;
            case 1635686852: goto L_0x049c;
            case 1944869372: goto L_0x04a6;
            default: goto L_0x0475;
        };	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
    L_0x0475:
        r2 = -1;
    L_0x0476:
        switch(r2) {
            case 0: goto L_0x047a;
            case 1: goto L_0x04ee;
            case 2: goto L_0x04fd;
            case 3: goto L_0x050c;
            case 4: goto L_0x051b;
            case 5: goto L_0x052a;
            case 6: goto L_0x0539;
            case 7: goto L_0x0548;
            case 8: goto L_0x0557;
            case 9: goto L_0x0566;
            default: goto L_0x0479;
        };	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
    L_0x0479:
        goto L_0x0462;
    L_0x047a:
        r2 = "status";
        r2 = r10.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r11.setStatus(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x0462;
    L_0x0488:
        r13 = "status";
        r2 = r2.equals(r13);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0475;
    L_0x0490:
        r2 = 0;
        goto L_0x0476;
    L_0x0492:
        r13 = "msg";
        r2 = r2.equals(r13);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0475;
    L_0x049a:
        r2 = 1;
        goto L_0x0476;
    L_0x049c:
        r13 = "error_code";
        r2 = r2.equals(r13);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0475;
    L_0x04a4:
        r2 = 2;
        goto L_0x0476;
    L_0x04a6:
        r13 = "offer_key";
        r2 = r2.equals(r13);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0475;
    L_0x04ae:
        r2 = 3;
        goto L_0x0476;
    L_0x04b0:
        r13 = "offer_type";
        r2 = r2.equals(r13);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0475;
    L_0x04b8:
        r2 = 4;
        goto L_0x0476;
    L_0x04ba:
        r13 = "offer_availed_count";
        r2 = r2.equals(r13);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0475;
    L_0x04c2:
        r2 = 5;
        goto L_0x0476;
    L_0x04c4:
        r13 = "offer_remaining_count";
        r2 = r2.equals(r13);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0475;
    L_0x04cc:
        r2 = 6;
        goto L_0x0476;
    L_0x04ce:
        r13 = "discount";
        r2 = r2.equals(r13);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0475;
    L_0x04d6:
        r2 = 7;
        goto L_0x0476;
    L_0x04d8:
        r13 = "category";
        r2 = r2.equals(r13);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0475;
    L_0x04e0:
        r2 = 8;
        goto L_0x0476;
    L_0x04e3:
        r13 = "allowed_on";
        r2 = r2.equals(r13);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        if (r2 == 0) goto L_0x0475;
    L_0x04eb:
        r2 = 9;
        goto L_0x0476;
    L_0x04ee:
        r2 = "msg";
        r2 = r10.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r11.setMsg(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x0462;
    L_0x04fd:
        r2 = "error_code";
        r2 = r10.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r11.setErrorCode(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x0462;
    L_0x050c:
        r2 = "offer_key";
        r2 = r10.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r11.setOfferKey(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x0462;
    L_0x051b:
        r2 = "offer_type";
        r2 = r10.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r11.setOfferType(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x0462;
    L_0x052a:
        r2 = "offer_availed_count";
        r2 = r10.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r11.setOfferAvailedCount(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x0462;
    L_0x0539:
        r2 = "offer_remaining_count";
        r2 = r10.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r11.setOfferRemainingCount(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x0462;
    L_0x0548:
        r2 = "discount";
        r2 = r10.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r11.setDiscount(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x0462;
    L_0x0557:
        r2 = "category";
        r2 = r10.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r11.setCategory(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x0462;
    L_0x0566:
        r13 = new java.util.ArrayList;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r13.<init>();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = "allowed_on";
        r2 = r10.get(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2.toString();	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r14 = ",";
        r14 = r2.split(r14);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r15 = r14.length;	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = 0;
    L_0x057d:
        if (r2 >= r15) goto L_0x0589;
    L_0x057f:
        r16 = r14[r2];	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r0 = r16;
        r13.add(r0);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = r2 + 1;
        goto L_0x057d;
    L_0x0589:
        r11.setAllowedOn(r13);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x0462;
    L_0x058e:
        r9.add(r11);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x0449;
    L_0x0593:
        r5.setPayuOfferList(r9);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r3.setPayuOfferDetails(r5);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x03f7;
    L_0x059b:
        r2 = 0;
        r4.setCode(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        r2 = "SUCCESS";
        r4.setStatus(r2);	 Catch:{ ProtocolException -> 0x006a, IOException -> 0x0078, JSONException -> 0x0086 }
        goto L_0x0422;
    L_0x05a6:
        r2 = 1;
        goto L_0x0201;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.payu.india.Tasks.CheckOfferDetailsTask.doInBackground(com.payu.india.Model.PayuConfig[]):com.payu.india.Model.PayuResponse");
    }

    protected void onPostExecute(PayuResponse payuResponse) {
        super.onPostExecute(payuResponse);
        this.mCheckOfferDetailsApiListener.onCheckOfferDetailsApiResponse(payuResponse);
    }
}
