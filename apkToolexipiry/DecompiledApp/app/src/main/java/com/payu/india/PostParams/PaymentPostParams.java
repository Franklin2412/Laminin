package com.payu.india.PostParams;

import android.content.Context;
import com.payu.india.BuildConfig;
import com.payu.india.Model.PaymentParams;
import com.payu.india.Payu.Payu;
import com.payu.india.Payu.PayuUtils;
import java.util.HashMap;

public class PaymentPostParams extends PayuUtils {
    private Context applicationContext;
    private String mPaymentMode;
    private PaymentParams mPaymentParams;

    private PaymentPostParams() {
    }

    public PaymentPostParams(PaymentParams paymentParams, String str) throws Exception {
        this.mPaymentParams = paymentParams;
        this.mPaymentMode = str;
        if (Payu.getInstance() == null) {
            throw new Exception("Application context not found please set your application context by adding Payu.setInstance(this) from your activity ");
        }
        this.applicationContext = Payu.getInstance().getCallingAppContext();
    }

    public void analizingTransaction() {
        PayuUtils payuUtils = new PayuUtils();
        HashMap hashMap = new HashMap();
        hashMap.put("transactionID", this.mPaymentParams.getTxnId());
        hashMap.put("keyAnalytics", this.mPaymentParams.getKey());
        hashMap.put("paymentMode", this.mPaymentMode);
        hashMap.put("sdkVersion", BuildConfig.VERSION_NAME);
        PayuUtils.setVariableCB("com.payu.custombrowser.Bank", hashMap, "Version");
        payuUtils.deviceAnalytics(this.applicationContext, this.mPaymentParams.getKey(), this.mPaymentParams.getTxnId());
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.payu.india.Model.PostData getPaymentPostParams() {
        /*
        r10 = this;
        r4 = 2;
        r2 = -1;
        r9 = 5002; // 0x138a float:7.009E-42 double:2.4713E-320;
        r1 = 0;
        r3 = 1;
        r0 = new com.payu.india.Model.PostData;
        r0.<init>();
        r6 = new java.lang.StringBuffer;
        r6.<init>();
        r0 = com.payu.india.Payu.PayuConstants.PG_SET;
        r5 = r10.mPaymentMode;
        r0 = r0.contains(r5);
        if (r0 != 0) goto L_0x0021;
    L_0x001a:
        r0 = "Invalid pg!, pg should be any one of CC, EMI, CASH, NB, PAYU_MONEY";
        r0 = r10.getReturnData(r0);
    L_0x0020:
        return r0;
    L_0x0021:
        r0 = "device_type";
        r5 = "1";
        r0 = r10.concatParams(r0, r5);
        r6.append(r0);
        r0 = "udid";
        r5 = r10.getUdid();
        r0 = r10.concatParams(r0, r5);
        r6.append(r0);
        r0 = "imei";
        r5 = r10.getImei();
        r0 = r10.concatParams(r0, r5);
        r6.append(r0);
        r0 = r1;
    L_0x0047:
        r5 = com.payu.india.Payu.PayuConstants.PAYMENT_PARAMS_ARRAY;
        r5 = r5.length;
        if (r0 >= r5) goto L_0x0348;
    L_0x004c:
        r5 = com.payu.india.Payu.PayuConstants.PAYMENT_PARAMS_ARRAY;
        r5 = r5[r0];
        r7 = r5.hashCode();
        switch(r7) {
            case -1491000803: goto L_0x007c;
            case -1413853096: goto L_0x0072;
            case 106079: goto L_0x005e;
            case 3154761: goto L_0x00a4;
            case 3195150: goto L_0x00ae;
            case 3542044: goto L_0x009a;
            case 3584858: goto L_0x00b9;
            case 3584859: goto L_0x00c4;
            case 3584860: goto L_0x00cf;
            case 3584861: goto L_0x00db;
            case 3584862: goto L_0x00e7;
            case 96619420: goto L_0x0090;
            case 110812421: goto L_0x0068;
            case 133788987: goto L_0x0086;
            default: goto L_0x0057;
        };
    L_0x0057:
        r5 = r2;
    L_0x0058:
        switch(r5) {
            case 0: goto L_0x00f3;
            case 1: goto L_0x0120;
            case 2: goto L_0x014d;
            case 3: goto L_0x017f;
            case 4: goto L_0x01ac;
            case 5: goto L_0x01cd;
            case 6: goto L_0x01ee;
            case 7: goto L_0x0232;
            case 8: goto L_0x0276;
            case 9: goto L_0x02a3;
            case 10: goto L_0x02c4;
            case 11: goto L_0x02e5;
            case 12: goto L_0x0306;
            case 13: goto L_0x0327;
            default: goto L_0x005b;
        };
    L_0x005b:
        r0 = r0 + 1;
        goto L_0x0047;
    L_0x005e:
        r7 = "key";
        r5 = r5.equals(r7);
        if (r5 == 0) goto L_0x0057;
    L_0x0066:
        r5 = r1;
        goto L_0x0058;
    L_0x0068:
        r7 = "txnid";
        r5 = r5.equals(r7);
        if (r5 == 0) goto L_0x0057;
    L_0x0070:
        r5 = r3;
        goto L_0x0058;
    L_0x0072:
        r7 = "amount";
        r5 = r5.equals(r7);
        if (r5 == 0) goto L_0x0057;
    L_0x007a:
        r5 = r4;
        goto L_0x0058;
    L_0x007c:
        r7 = "productinfo";
        r5 = r5.equals(r7);
        if (r5 == 0) goto L_0x0057;
    L_0x0084:
        r5 = 3;
        goto L_0x0058;
    L_0x0086:
        r7 = "firstname";
        r5 = r5.equals(r7);
        if (r5 == 0) goto L_0x0057;
    L_0x008e:
        r5 = 4;
        goto L_0x0058;
    L_0x0090:
        r7 = "email";
        r5 = r5.equals(r7);
        if (r5 == 0) goto L_0x0057;
    L_0x0098:
        r5 = 5;
        goto L_0x0058;
    L_0x009a:
        r7 = "surl";
        r5 = r5.equals(r7);
        if (r5 == 0) goto L_0x0057;
    L_0x00a2:
        r5 = 6;
        goto L_0x0058;
    L_0x00a4:
        r7 = "furl";
        r5 = r5.equals(r7);
        if (r5 == 0) goto L_0x0057;
    L_0x00ac:
        r5 = 7;
        goto L_0x0058;
    L_0x00ae:
        r7 = "hash";
        r5 = r5.equals(r7);
        if (r5 == 0) goto L_0x0057;
    L_0x00b6:
        r5 = 8;
        goto L_0x0058;
    L_0x00b9:
        r7 = "udf1";
        r5 = r5.equals(r7);
        if (r5 == 0) goto L_0x0057;
    L_0x00c1:
        r5 = 9;
        goto L_0x0058;
    L_0x00c4:
        r7 = "udf2";
        r5 = r5.equals(r7);
        if (r5 == 0) goto L_0x0057;
    L_0x00cc:
        r5 = 10;
        goto L_0x0058;
    L_0x00cf:
        r7 = "udf3";
        r5 = r5.equals(r7);
        if (r5 == 0) goto L_0x0057;
    L_0x00d7:
        r5 = 11;
        goto L_0x0058;
    L_0x00db:
        r7 = "udf4";
        r5 = r5.equals(r7);
        if (r5 == 0) goto L_0x0057;
    L_0x00e3:
        r5 = 12;
        goto L_0x0058;
    L_0x00e7:
        r7 = "udf5";
        r5 = r5.equals(r7);
        if (r5 == 0) goto L_0x0057;
    L_0x00ef:
        r5 = 13;
        goto L_0x0058;
    L_0x00f3:
        r5 = r10.mPaymentParams;
        r5 = r5.getKey();
        if (r5 == 0) goto L_0x0107;
    L_0x00fb:
        r5 = r10.mPaymentParams;
        r5 = r5.getKey();
        r5 = r5.length();
        if (r5 >= r3) goto L_0x010f;
    L_0x0107:
        r0 = "Mandatory param key is missing";
        r0 = r10.getReturnData(r0);
        goto L_0x0020;
    L_0x010f:
        r5 = "key";
        r7 = r10.mPaymentParams;
        r7 = r7.getKey();
        r5 = r10.concatParams(r5, r7);
        r6.append(r5);
        goto L_0x005b;
    L_0x0120:
        r5 = r10.mPaymentParams;
        r5 = r5.getTxnId();
        if (r5 == 0) goto L_0x0134;
    L_0x0128:
        r5 = r10.mPaymentParams;
        r5 = r5.getTxnId();
        r5 = r5.length();
        if (r5 >= r3) goto L_0x013c;
    L_0x0134:
        r0 = "Mandatory param txnid is missing";
        r0 = r10.getReturnData(r0);
        goto L_0x0020;
    L_0x013c:
        r5 = "txnid";
        r7 = r10.mPaymentParams;
        r7 = r7.getTxnId();
        r5 = r10.concatParams(r5, r7);
        r6.append(r5);
        goto L_0x005b;
    L_0x014d:
        r5 = r10.mPaymentParams;	 Catch:{ NumberFormatException -> 0x016b, NullPointerException -> 0x0174 }
        if (r5 == 0) goto L_0x015a;
    L_0x0151:
        r5 = r10.mPaymentParams;	 Catch:{ NumberFormatException -> 0x016b, NullPointerException -> 0x0174 }
        r5 = r5.getAmount();	 Catch:{ NumberFormatException -> 0x016b, NullPointerException -> 0x0174 }
        java.lang.Double.parseDouble(r5);	 Catch:{ NumberFormatException -> 0x016b, NullPointerException -> 0x0174 }
    L_0x015a:
        r5 = "amount";
        r7 = r10.mPaymentParams;
        r7 = r7.getAmount();
        r5 = r10.concatParams(r5, r7);
        r6.append(r5);
        goto L_0x005b;
    L_0x016b:
        r0 = move-exception;
        r0 = " Amount should be a Double value example 5.00";
        r0 = r10.getReturnData(r9, r0);
        goto L_0x0020;
    L_0x0174:
        r0 = move-exception;
        r0 = 5003; // 0x138b float:7.01E-42 double:2.472E-320;
        r1 = " Amount should be a Double value example 5.00";
        r0 = r10.getReturnData(r0, r1);
        goto L_0x0020;
    L_0x017f:
        r5 = r10.mPaymentParams;
        r5 = r5.getProductInfo();
        if (r5 == 0) goto L_0x0193;
    L_0x0187:
        r5 = r10.mPaymentParams;
        r5 = r5.getProductInfo();
        r5 = r5.length();
        if (r5 >= r3) goto L_0x019b;
    L_0x0193:
        r0 = "Mandatory param product info is missing";
        r0 = r10.getReturnData(r0);
        goto L_0x0020;
    L_0x019b:
        r5 = "productinfo";
        r7 = r10.mPaymentParams;
        r7 = r7.getProductInfo();
        r5 = r10.concatParams(r5, r7);
        r6.append(r5);
        goto L_0x005b;
    L_0x01ac:
        r5 = r10.mPaymentParams;
        r5 = r5.getFirstName();
        if (r5 != 0) goto L_0x01bc;
    L_0x01b4:
        r0 = "Mandatory param firstname is missing";
        r0 = r10.getReturnData(r0);
        goto L_0x0020;
    L_0x01bc:
        r5 = "firstname";
        r7 = r10.mPaymentParams;
        r7 = r7.getFirstName();
        r5 = r10.concatParams(r5, r7);
        r6.append(r5);
        goto L_0x005b;
    L_0x01cd:
        r5 = r10.mPaymentParams;
        r5 = r5.getEmail();
        if (r5 != 0) goto L_0x01dd;
    L_0x01d5:
        r0 = "Mandatory param email is missing";
        r0 = r10.getReturnData(r0);
        goto L_0x0020;
    L_0x01dd:
        r5 = "email";
        r7 = r10.mPaymentParams;
        r7 = r7.getEmail();
        r5 = r10.concatParams(r5, r7);
        r6.append(r5);
        goto L_0x005b;
    L_0x01ee:
        r5 = r10.mPaymentParams;
        r5 = r5.getSurl();
        if (r5 == 0) goto L_0x0202;
    L_0x01f6:
        r5 = r10.mPaymentParams;
        r5 = r5.getSurl();
        r5 = r5.length();
        if (r5 >= r3) goto L_0x020a;
    L_0x0202:
        r0 = "Mandatory param surl is missing";
        r0 = r10.getReturnData(r0);
        goto L_0x0020;
    L_0x020a:
        r5 = "surl=";
        r5 = r6.append(r5);	 Catch:{ UnsupportedEncodingException -> 0x0227 }
        r7 = r10.mPaymentParams;	 Catch:{ UnsupportedEncodingException -> 0x0227 }
        r7 = r7.getSurl();	 Catch:{ UnsupportedEncodingException -> 0x0227 }
        r8 = "UTF-8";
        r7 = java.net.URLEncoder.encode(r7, r8);	 Catch:{ UnsupportedEncodingException -> 0x0227 }
        r5 = r5.append(r7);	 Catch:{ UnsupportedEncodingException -> 0x0227 }
        r7 = "&";
        r5.append(r7);	 Catch:{ UnsupportedEncodingException -> 0x0227 }
        goto L_0x005b;
    L_0x0227:
        r0 = move-exception;
        r0 = 5004; // 0x138c float:7.012E-42 double:2.4723E-320;
        r1 = "surl should be something like https://www.payu.in/txnstatus";
        r0 = r10.getReturnData(r0, r1);
        goto L_0x0020;
    L_0x0232:
        r5 = r10.mPaymentParams;
        r5 = r5.getFurl();
        if (r5 == 0) goto L_0x0246;
    L_0x023a:
        r5 = r10.mPaymentParams;
        r5 = r5.getFurl();
        r5 = r5.length();
        if (r5 >= r3) goto L_0x024e;
    L_0x0246:
        r0 = "Mandatory param furl is missing";
        r0 = r10.getReturnData(r0);
        goto L_0x0020;
    L_0x024e:
        r5 = "furl=";
        r5 = r6.append(r5);	 Catch:{ UnsupportedEncodingException -> 0x026b }
        r7 = r10.mPaymentParams;	 Catch:{ UnsupportedEncodingException -> 0x026b }
        r7 = r7.getFurl();	 Catch:{ UnsupportedEncodingException -> 0x026b }
        r8 = "UTF-8";
        r7 = java.net.URLEncoder.encode(r7, r8);	 Catch:{ UnsupportedEncodingException -> 0x026b }
        r5 = r5.append(r7);	 Catch:{ UnsupportedEncodingException -> 0x026b }
        r7 = "&";
        r5.append(r7);	 Catch:{ UnsupportedEncodingException -> 0x026b }
        goto L_0x005b;
    L_0x026b:
        r0 = move-exception;
        r0 = 5004; // 0x138c float:7.012E-42 double:2.4723E-320;
        r1 = "furl should be something like https://www.payu.in/txnstatus";
        r0 = r10.getReturnData(r0, r1);
        goto L_0x0020;
    L_0x0276:
        r5 = r10.mPaymentParams;
        r5 = r5.getHash();
        if (r5 == 0) goto L_0x028a;
    L_0x027e:
        r5 = r10.mPaymentParams;
        r5 = r5.getHash();
        r5 = r5.length();
        if (r5 >= r3) goto L_0x0292;
    L_0x028a:
        r0 = "Mandatory param hash is missing";
        r0 = r10.getReturnData(r0);
        goto L_0x0020;
    L_0x0292:
        r5 = "hash";
        r7 = r10.mPaymentParams;
        r7 = r7.getHash();
        r5 = r10.concatParams(r5, r7);
        r6.append(r5);
        goto L_0x005b;
    L_0x02a3:
        r5 = r10.mPaymentParams;
        r5 = r5.getUdf1();
        if (r5 != 0) goto L_0x02b3;
    L_0x02ab:
        r0 = "UDF1 should not be null, it can be empty or string";
        r0 = r10.getReturnData(r0);
        goto L_0x0020;
    L_0x02b3:
        r5 = "udf1";
        r7 = r10.mPaymentParams;
        r7 = r7.getUdf1();
        r5 = r10.concatParams(r5, r7);
        r6.append(r5);
        goto L_0x005b;
    L_0x02c4:
        r5 = r10.mPaymentParams;
        r5 = r5.getUdf2();
        if (r5 != 0) goto L_0x02d4;
    L_0x02cc:
        r0 = "UDF2 should not be null, it can be empty or string";
        r0 = r10.getReturnData(r0);
        goto L_0x0020;
    L_0x02d4:
        r5 = "udf2";
        r7 = r10.mPaymentParams;
        r7 = r7.getUdf2();
        r5 = r10.concatParams(r5, r7);
        r6.append(r5);
        goto L_0x005b;
    L_0x02e5:
        r5 = r10.mPaymentParams;
        r5 = r5.getUdf3();
        if (r5 != 0) goto L_0x02f5;
    L_0x02ed:
        r0 = "UDF3 should not be null, it can be empty or string";
        r0 = r10.getReturnData(r0);
        goto L_0x0020;
    L_0x02f5:
        r5 = "udf3";
        r7 = r10.mPaymentParams;
        r7 = r7.getUdf3();
        r5 = r10.concatParams(r5, r7);
        r6.append(r5);
        goto L_0x005b;
    L_0x0306:
        r5 = r10.mPaymentParams;
        r5 = r5.getUdf4();
        if (r5 != 0) goto L_0x0316;
    L_0x030e:
        r0 = "UDF4 should not be null, it can be empty or string";
        r0 = r10.getReturnData(r0);
        goto L_0x0020;
    L_0x0316:
        r5 = "udf4";
        r7 = r10.mPaymentParams;
        r7 = r7.getUdf4();
        r5 = r10.concatParams(r5, r7);
        r6.append(r5);
        goto L_0x005b;
    L_0x0327:
        r5 = r10.mPaymentParams;
        r5 = r5.getUdf5();
        if (r5 != 0) goto L_0x0337;
    L_0x032f:
        r0 = "UDF5 should not be null, it can be empty or string";
        r0 = r10.getReturnData(r0);
        goto L_0x0020;
    L_0x0337:
        r5 = "udf5";
        r7 = r10.mPaymentParams;
        r7 = r7.getUdf5();
        r5 = r10.concatParams(r5, r7);
        r6.append(r5);
        goto L_0x005b;
    L_0x0348:
        r0 = r10.mPaymentParams;
        r0 = r0.getPhone();
        if (r0 == 0) goto L_0x035f;
    L_0x0350:
        r0 = "phone";
        r5 = r10.mPaymentParams;
        r5 = r5.getPhone();
        r0 = r10.concatParams(r0, r5);
        r6.append(r0);
    L_0x035f:
        r0 = r10.mPaymentParams;
        r0 = r0.getOfferKey();
        if (r0 == 0) goto L_0x0575;
    L_0x0367:
        r0 = "offer_key";
        r5 = r10.mPaymentParams;
        r5 = r5.getOfferKey();
        r0 = r10.concatParams(r0, r5);
    L_0x0373:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getLastName();
        if (r0 == 0) goto L_0x0579;
    L_0x037e:
        r0 = "lastname";
        r5 = r10.mPaymentParams;
        r5 = r5.getLastName();
        r0 = r10.concatParams(r0, r5);
    L_0x038a:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getAddress1();
        if (r0 == 0) goto L_0x057d;
    L_0x0395:
        r0 = "address1";
        r5 = r10.mPaymentParams;
        r5 = r5.getAddress1();
        r0 = r10.concatParams(r0, r5);
    L_0x03a1:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getAddress2();
        if (r0 == 0) goto L_0x0581;
    L_0x03ac:
        r0 = "address2";
        r5 = r10.mPaymentParams;
        r5 = r5.getAddress2();
        r0 = r10.concatParams(r0, r5);
    L_0x03b8:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getCity();
        if (r0 == 0) goto L_0x0585;
    L_0x03c3:
        r0 = "city";
        r5 = r10.mPaymentParams;
        r5 = r5.getCity();
        r0 = r10.concatParams(r0, r5);
    L_0x03cf:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getState();
        if (r0 == 0) goto L_0x0589;
    L_0x03da:
        r0 = "state";
        r5 = r10.mPaymentParams;
        r5 = r5.getState();
        r0 = r10.concatParams(r0, r5);
    L_0x03e6:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getCountry();
        if (r0 == 0) goto L_0x058d;
    L_0x03f1:
        r0 = "country";
        r5 = r10.mPaymentParams;
        r5 = r5.getCountry();
        r0 = r10.concatParams(r0, r5);
    L_0x03fd:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getZipCode();
        if (r0 == 0) goto L_0x0591;
    L_0x0408:
        r0 = "zipcode";
        r5 = r10.mPaymentParams;
        r5 = r5.getZipCode();
        r0 = r10.concatParams(r0, r5);
    L_0x0414:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getCodUrl();
        if (r0 == 0) goto L_0x0595;
    L_0x041f:
        r0 = "codurl";
        r5 = r10.mPaymentParams;
        r5 = r5.getCodUrl();
        r0 = r10.concatParams(r0, r5);
    L_0x042b:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getDropCategory();
        if (r0 == 0) goto L_0x0599;
    L_0x0436:
        r0 = "drop_category";
        r5 = r10.mPaymentParams;
        r5 = r5.getDropCategory();
        r0 = r10.concatParams(r0, r5);
    L_0x0442:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getEnforcePayMethod();
        if (r0 == 0) goto L_0x059d;
    L_0x044d:
        r0 = "enforce_paymethod";
        r5 = r10.mPaymentParams;
        r5 = r5.getEnforcePayMethod();
        r0 = r10.concatParams(r0, r5);
    L_0x0459:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getCustomNote();
        if (r0 == 0) goto L_0x05a1;
    L_0x0464:
        r0 = "custom_note";
        r5 = r10.mPaymentParams;
        r5 = r5.getCustomNote();
        r0 = r10.concatParams(r0, r5);
    L_0x0470:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getNoteCategory();
        if (r0 == 0) goto L_0x05a5;
    L_0x047b:
        r0 = "note_category";
        r5 = r10.mPaymentParams;
        r5 = r5.getNoteCategory();
        r0 = r10.concatParams(r0, r5);
    L_0x0487:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getShippingFirstName();
        if (r0 == 0) goto L_0x05a9;
    L_0x0492:
        r0 = "shipping_firstname";
        r5 = r10.mPaymentParams;
        r5 = r5.getShippingFirstName();
        r0 = r10.concatParams(r0, r5);
    L_0x049e:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getShippingLastName();
        if (r0 == 0) goto L_0x05ad;
    L_0x04a9:
        r0 = "shipping_lastname";
        r5 = r10.mPaymentParams;
        r5 = r5.getShippingLastName();
        r0 = r10.concatParams(r0, r5);
    L_0x04b5:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getShippingAddress1();
        if (r0 == 0) goto L_0x05b1;
    L_0x04c0:
        r0 = "shipping_address1";
        r5 = r10.mPaymentParams;
        r5 = r5.getShippingAddress1();
        r0 = r10.concatParams(r0, r5);
    L_0x04cc:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getShippingAddress2();
        if (r0 == 0) goto L_0x05b5;
    L_0x04d7:
        r0 = "shipping_address2";
        r5 = r10.mPaymentParams;
        r5 = r5.getShippingAddress2();
        r0 = r10.concatParams(r0, r5);
    L_0x04e3:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getShippingCity();
        if (r0 == 0) goto L_0x05b9;
    L_0x04ee:
        r0 = "shipping_city";
        r5 = r10.mPaymentParams;
        r5 = r5.getShippingCity();
        r0 = r10.concatParams(r0, r5);
    L_0x04fa:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getShippingState();
        if (r0 == 0) goto L_0x05bd;
    L_0x0505:
        r0 = "shipping_state";
        r5 = r10.mPaymentParams;
        r5 = r5.getShippingState();
        r0 = r10.concatParams(r0, r5);
    L_0x0511:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getShippingCounty();
        if (r0 == 0) goto L_0x05c1;
    L_0x051c:
        r0 = "shipping_county";
        r5 = r10.mPaymentParams;
        r5 = r5.getShippingCounty();
        r0 = r10.concatParams(r0, r5);
    L_0x0528:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getShippingZipCode();
        if (r0 == 0) goto L_0x05c5;
    L_0x0533:
        r0 = "shipping_zipcode";
        r5 = r10.mPaymentParams;
        r5 = r5.getShippingZipCode();
        r0 = r10.concatParams(r0, r5);
    L_0x053f:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getShippingPhone();
        if (r0 == 0) goto L_0x05c9;
    L_0x054a:
        r0 = "shipping_phone";
        r5 = r10.mPaymentParams;
        r5 = r5.getShippingPhone();
        r0 = r10.concatParams(r0, r5);
    L_0x0556:
        r6.append(r0);
        r10.analizingTransaction();
        r0 = r10.mPaymentMode;
        r5 = r0.hashCode();
        switch(r5) {
            case 2144: goto L_0x05cc;
            case 2484: goto L_0x05d6;
            case 68769: goto L_0x05e0;
            case 2061107: goto L_0x05eb;
            case 1351375534: goto L_0x05f6;
            default: goto L_0x0565;
        };
    L_0x0565:
        r0 = r2;
    L_0x0566:
        switch(r0) {
            case 0: goto L_0x0601;
            case 1: goto L_0x0984;
            case 2: goto L_0x09cc;
            case 3: goto L_0x0bfc;
            case 4: goto L_0x0c44;
            default: goto L_0x0569;
        };
    L_0x0569:
        r0 = "SUCCESS";
        r2 = r6.toString();
        r0 = r10.getReturnData(r1, r0, r2);
        goto L_0x0020;
    L_0x0575:
        r0 = "";
        goto L_0x0373;
    L_0x0579:
        r0 = "";
        goto L_0x038a;
    L_0x057d:
        r0 = "";
        goto L_0x03a1;
    L_0x0581:
        r0 = "";
        goto L_0x03b8;
    L_0x0585:
        r0 = "";
        goto L_0x03cf;
    L_0x0589:
        r0 = "";
        goto L_0x03e6;
    L_0x058d:
        r0 = "";
        goto L_0x03fd;
    L_0x0591:
        r0 = "";
        goto L_0x0414;
    L_0x0595:
        r0 = "";
        goto L_0x042b;
    L_0x0599:
        r0 = "";
        goto L_0x0442;
    L_0x059d:
        r0 = "";
        goto L_0x0459;
    L_0x05a1:
        r0 = "";
        goto L_0x0470;
    L_0x05a5:
        r0 = "";
        goto L_0x0487;
    L_0x05a9:
        r0 = "";
        goto L_0x049e;
    L_0x05ad:
        r0 = "";
        goto L_0x04b5;
    L_0x05b1:
        r0 = "";
        goto L_0x04cc;
    L_0x05b5:
        r0 = "";
        goto L_0x04e3;
    L_0x05b9:
        r0 = "";
        goto L_0x04fa;
    L_0x05bd:
        r0 = "";
        goto L_0x0511;
    L_0x05c1:
        r0 = "";
        goto L_0x0528;
    L_0x05c5:
        r0 = "";
        goto L_0x053f;
    L_0x05c9:
        r0 = "";
        goto L_0x0556;
    L_0x05cc:
        r4 = "CC";
        r0 = r0.equals(r4);
        if (r0 == 0) goto L_0x0565;
    L_0x05d4:
        r0 = r1;
        goto L_0x0566;
    L_0x05d6:
        r4 = "NB";
        r0 = r0.equals(r4);
        if (r0 == 0) goto L_0x0565;
    L_0x05de:
        r0 = r3;
        goto L_0x0566;
    L_0x05e0:
        r5 = "EMI";
        r0 = r0.equals(r5);
        if (r0 == 0) goto L_0x0565;
    L_0x05e8:
        r0 = r4;
        goto L_0x0566;
    L_0x05eb:
        r4 = "CASH";
        r0 = r0.equals(r4);
        if (r0 == 0) goto L_0x0565;
    L_0x05f3:
        r0 = 3;
        goto L_0x0566;
    L_0x05f6:
        r4 = "PAYU_MONEY";
        r0 = r0.equals(r4);
        if (r0 == 0) goto L_0x0565;
    L_0x05fe:
        r0 = 4;
        goto L_0x0566;
    L_0x0601:
        r0 = "pg";
        r2 = "CC";
        r0 = r10.concatParams(r0, r2);
        r6.append(r0);
        r0 = "bankcode";
        r2 = "CC";
        r0 = r10.concatParams(r0, r2);
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getCardNumber();
        if (r0 == 0) goto L_0x0816;
    L_0x061f:
        r0 = r10.mPaymentParams;
        r0 = r0.getCardNumber();
        r0 = r10.validateCardNumber(r0);
        r0 = r0.booleanValue();
        if (r0 == 0) goto L_0x0816;
    L_0x062f:
        r0 = "ccnum";
        r2 = r10.mPaymentParams;
        r2 = r2.getCardNumber();
        r0 = r10.concatParams(r0, r2);
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getCardNumber();
        r0 = r10.getIssuer(r0);
        r2 = "SMAE";
        r0 = r0.contentEquals(r2);
        if (r0 != 0) goto L_0x079a;
    L_0x0650:
        r0 = r10.mPaymentParams;
        r0 = r0.getCardNumber();
        r2 = r10.mPaymentParams;
        r2 = r2.getCvv();
        r0 = r10.validateCvv(r0, r2);
        if (r0 == 0) goto L_0x0772;
    L_0x0662:
        r0 = "ccvv";
        r2 = r10.mPaymentParams;
        r2 = r2.getCvv();
        r0 = r10.concatParams(r0, r2);
        r6.append(r0);
        r0 = r10.mPaymentParams;	 Catch:{ NumberFormatException -> 0x0786, Exception -> 0x078f }
        r0 = r0.getExpiryMonth();	 Catch:{ NumberFormatException -> 0x0786, Exception -> 0x078f }
        r0 = java.lang.Integer.parseInt(r0);	 Catch:{ NumberFormatException -> 0x0786, Exception -> 0x078f }
        r2 = r10.mPaymentParams;	 Catch:{ NumberFormatException -> 0x0786, Exception -> 0x078f }
        r2 = r2.getExpiryYear();	 Catch:{ NumberFormatException -> 0x0786, Exception -> 0x078f }
        r2 = java.lang.Integer.parseInt(r2);	 Catch:{ NumberFormatException -> 0x0786, Exception -> 0x078f }
        r0 = r10.validateExpiry(r0, r2);	 Catch:{ NumberFormatException -> 0x0786, Exception -> 0x078f }
        if (r0 == 0) goto L_0x077c;
    L_0x068b:
        r0 = "ccexpyr";
        r2 = r10.mPaymentParams;	 Catch:{ NumberFormatException -> 0x0786, Exception -> 0x078f }
        r2 = r2.getExpiryYear();	 Catch:{ NumberFormatException -> 0x0786, Exception -> 0x078f }
        r0 = r10.concatParams(r0, r2);	 Catch:{ NumberFormatException -> 0x0786, Exception -> 0x078f }
        r6.append(r0);	 Catch:{ NumberFormatException -> 0x0786, Exception -> 0x078f }
        r0 = "ccexpmon";
        r2 = r10.mPaymentParams;	 Catch:{ NumberFormatException -> 0x0786, Exception -> 0x078f }
        r2 = r2.getExpiryMonth();	 Catch:{ NumberFormatException -> 0x0786, Exception -> 0x078f }
        r0 = r10.concatParams(r0, r2);	 Catch:{ NumberFormatException -> 0x0786, Exception -> 0x078f }
        r6.append(r0);	 Catch:{ NumberFormatException -> 0x0786, Exception -> 0x078f }
    L_0x06a9:
        r0 = r10.mPaymentParams;
        r0 = r0.getNameOnCard();
        if (r0 == 0) goto L_0x07fb;
    L_0x06b1:
        r0 = r10.mPaymentParams;
        r0 = r0.getNameOnCard();
        r0 = r0.trim();
        r0 = r0.length();
        if (r0 <= 0) goto L_0x07fb;
    L_0x06c1:
        r0 = r10.mPaymentParams;
        r0 = r0.getNameOnCard();
    L_0x06c7:
        r2 = r10.mPaymentParams;
        r2 = r2.getCardName();
        if (r2 == 0) goto L_0x07ff;
    L_0x06cf:
        r2 = r10.mPaymentParams;
        r2 = r2.getCardName();
    L_0x06d5:
        r4 = "ccname";
        r0 = r10.concatParams(r4, r0);
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getStoreCard();
        if (r0 != r3) goto L_0x0762;
    L_0x06e6:
        r0 = r10.mPaymentParams;
        r0 = r0.getUserCredentials();
        if (r0 == 0) goto L_0x080e;
    L_0x06ee:
        r0 = "card_name";
        r0 = r10.concatParams(r0, r2);
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getUserCredentials();
        if (r0 == 0) goto L_0x0802;
    L_0x06ff:
        r0 = "user_credentials";
        r2 = r10.mPaymentParams;
        r2 = r2.getUserCredentials();
        r0 = r10.concatParams(r0, r2);
    L_0x070b:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getStoreCard();
        if (r0 != r3) goto L_0x0806;
    L_0x0716:
        r0 = "store_card";
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r4 = "";
        r2 = r2.append(r4);
        r4 = r10.mPaymentParams;
        r4 = r4.getStoreCard();
        r2 = r2.append(r4);
        r2 = r2.toString();
        r0 = r10.concatParams(r0, r2);
    L_0x0735:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getEnableOneClickPayment();
        if (r0 != r3) goto L_0x080a;
    L_0x0740:
        r0 = "one_click_checkout";
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "";
        r2 = r2.append(r3);
        r3 = r10.mPaymentParams;
        r3 = r3.getEnableOneClickPayment();
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0 = r10.concatParams(r0, r2);
    L_0x075f:
        r6.append(r0);
    L_0x0762:
        r0 = "SUCCESS";
        r2 = r6.toString();
        r2 = r10.trimAmpersand(r2);
        r0 = r10.getReturnData(r1, r0, r2);
        goto L_0x0020;
    L_0x0772:
        r0 = 5009; // 0x1391 float:7.019E-42 double:2.475E-320;
        r1 = " Invalid cvv, please verify";
        r0 = r10.getReturnData(r0, r1);
        goto L_0x0020;
    L_0x077c:
        r0 = 5012; // 0x1394 float:7.023E-42 double:2.4763E-320;
        r1 = " It seems the card is expired!";
        r0 = r10.getReturnData(r0, r1);	 Catch:{ NumberFormatException -> 0x0786, Exception -> 0x078f }
        goto L_0x0020;
    L_0x0786:
        r0 = move-exception;
        r0 = " It seems the card is expired!";
        r0 = r10.getReturnData(r9, r0);
        goto L_0x0020;
    L_0x078f:
        r0 = move-exception;
        r0 = 5001; // 0x1389 float:7.008E-42 double:2.471E-320;
        r1 = " It seems the card is expired!";
        r0 = r10.getReturnData(r0, r1);
        goto L_0x0020;
    L_0x079a:
        r0 = r10.mPaymentParams;
        r0 = r0.getCardNumber();
        r2 = r10.mPaymentParams;
        r2 = r2.getCvv();
        r0 = r10.validateCvv(r0, r2);
        if (r0 == 0) goto L_0x07bb;
    L_0x07ac:
        r0 = "ccvv";
        r2 = r10.mPaymentParams;
        r2 = r2.getCvv();
        r0 = r10.concatParams(r0, r2);
        r6.append(r0);
    L_0x07bb:
        r0 = r10.mPaymentParams;	 Catch:{ Exception -> 0x07f5 }
        r0 = r0.getExpiryMonth();	 Catch:{ Exception -> 0x07f5 }
        r0 = java.lang.Integer.parseInt(r0);	 Catch:{ Exception -> 0x07f5 }
        r2 = r10.mPaymentParams;	 Catch:{ Exception -> 0x07f5 }
        r2 = r2.getExpiryYear();	 Catch:{ Exception -> 0x07f5 }
        r2 = java.lang.Integer.parseInt(r2);	 Catch:{ Exception -> 0x07f5 }
        r0 = r10.validateExpiry(r0, r2);	 Catch:{ Exception -> 0x07f5 }
        if (r0 == 0) goto L_0x06a9;
    L_0x07d5:
        r0 = "ccexpyr";
        r2 = r10.mPaymentParams;	 Catch:{ Exception -> 0x07f5 }
        r2 = r2.getExpiryYear();	 Catch:{ Exception -> 0x07f5 }
        r0 = r10.concatParams(r0, r2);	 Catch:{ Exception -> 0x07f5 }
        r6.append(r0);	 Catch:{ Exception -> 0x07f5 }
        r0 = "ccexpmon";
        r2 = r10.mPaymentParams;	 Catch:{ Exception -> 0x07f5 }
        r2 = r2.getExpiryMonth();	 Catch:{ Exception -> 0x07f5 }
        r0 = r10.concatParams(r0, r2);	 Catch:{ Exception -> 0x07f5 }
        r6.append(r0);	 Catch:{ Exception -> 0x07f5 }
        goto L_0x06a9;
    L_0x07f5:
        r0 = move-exception;
        r0.printStackTrace();
        goto L_0x06a9;
    L_0x07fb:
        r0 = "PayuUser";
        goto L_0x06c7;
    L_0x07ff:
        r2 = r0;
        goto L_0x06d5;
    L_0x0802:
        r0 = "";
        goto L_0x070b;
    L_0x0806:
        r0 = "";
        goto L_0x0735;
    L_0x080a:
        r0 = "";
        goto L_0x075f;
    L_0x080e:
        r0 = " Card can not be stored!, user_credentials is missing!";
        r0 = r10.getReturnData(r0);
        goto L_0x0020;
    L_0x0816:
        r0 = r10.mPaymentParams;
        r0 = r0.getCardToken();
        if (r0 == 0) goto L_0x097a;
    L_0x081e:
        r0 = r10.mPaymentParams;
        r0 = r0.getUserCredentials();
        if (r0 == 0) goto L_0x0970;
    L_0x0826:
        r0 = "user_credentials";
        r2 = r10.mPaymentParams;
        r2 = r2.getUserCredentials();
        r0 = r10.concatParams(r0, r2);
        r6.append(r0);
        r0 = "store_card_token";
        r2 = r10.mPaymentParams;
        r2 = r2.getCardToken();
        r0 = r10.concatParams(r0, r2);
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getCardBin();
        if (r0 == 0) goto L_0x0898;
    L_0x084c:
        r0 = r10.mPaymentParams;
        r0 = r0.getCardBin();
        r0 = r10.getIssuer(r0);
        r2 = "SMAE";
        r0 = r0.contentEquals(r2);
        if (r0 != 0) goto L_0x0898;
    L_0x085e:
        r0 = r10.mPaymentParams;
        r0 = r0.getCvv();
        if (r0 != 0) goto L_0x0876;
    L_0x0866:
        r0 = r10.mPaymentParams;
        r0 = r0.getCardCvvMerchant();
        if (r0 != 0) goto L_0x0876;
    L_0x086e:
        r0 = " Invalid cvv, please verify";
        r0 = r10.getReturnData(r0);
        goto L_0x0020;
    L_0x0876:
        r0 = r10.mPaymentParams;
        r0 = r0.getExpiryMonth();
        r0 = java.lang.Integer.parseInt(r0);
        r2 = r10.mPaymentParams;
        r2 = r2.getExpiryYear();
        r2 = java.lang.Integer.parseInt(r2);
        r0 = r10.validateExpiry(r0, r2);
        if (r0 != 0) goto L_0x0898;
    L_0x0890:
        r0 = " It seems the card is expired!";
        r0 = r10.getReturnData(r0);
        goto L_0x0020;
    L_0x0898:
        r0 = r10.mPaymentParams;
        r0 = r0.getCardCvvMerchant();
        if (r0 != 0) goto L_0x093c;
    L_0x08a0:
        r0 = r10.mPaymentParams;
        r0 = r0.getCvv();
        if (r0 == 0) goto L_0x0932;
    L_0x08a8:
        r0 = "ccvv";
        r2 = r10.mPaymentParams;
        r2 = r2.getCvv();
        r0 = r10.concatParams(r0, r2);
    L_0x08b4:
        r6.append(r0);
    L_0x08b7:
        r0 = r10.mPaymentParams;
        r0 = r0.getExpiryMonth();
        if (r0 == 0) goto L_0x094d;
    L_0x08bf:
        r0 = "ccexpmon";
        r2 = r10.mPaymentParams;
        r2 = r2.getExpiryMonth();
        r0 = r10.concatParams(r0, r2);
    L_0x08cb:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getExpiryYear();
        if (r0 == 0) goto L_0x0957;
    L_0x08d6:
        r0 = "ccexpyr";
        r2 = r10.mPaymentParams;
        r2 = r2.getExpiryYear();
        r0 = r10.concatParams(r0, r2);
    L_0x08e2:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getNameOnCard();
        if (r0 != 0) goto L_0x0960;
    L_0x08ed:
        r0 = "ccname";
        r2 = "PayuUser";
        r0 = r10.concatParams(r0, r2);
    L_0x08f5:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getEnableOneClickPayment();
        if (r0 != r3) goto L_0x096d;
    L_0x0900:
        r0 = "one_click_checkout";
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "";
        r2 = r2.append(r3);
        r3 = r10.mPaymentParams;
        r3 = r3.getEnableOneClickPayment();
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0 = r10.concatParams(r0, r2);
    L_0x091f:
        r6.append(r0);
        r0 = "SUCCESS";
        r2 = r6.toString();
        r2 = r10.trimAmpersand(r2);
        r0 = r10.getReturnData(r1, r0, r2);
        goto L_0x0020;
    L_0x0932:
        r0 = "ccvv";
        r2 = "123";
        r0 = r10.concatParams(r0, r2);
        goto L_0x08b4;
    L_0x093c:
        r0 = "card_merchant_param";
        r2 = r10.mPaymentParams;
        r2 = r2.getCardCvvMerchant();
        r0 = r10.concatParams(r0, r2);
        r6.append(r0);
        goto L_0x08b7;
    L_0x094d:
        r0 = "ccexpmon";
        r2 = "12";
        r0 = r10.concatParams(r0, r2);
        goto L_0x08cb;
    L_0x0957:
        r0 = "ccexpmon";
        r2 = "2080";
        r0 = r10.concatParams(r0, r2);
        goto L_0x08e2;
    L_0x0960:
        r0 = "ccname";
        r2 = r10.mPaymentParams;
        r2 = r2.getNameOnCard();
        r0 = r10.concatParams(r0, r2);
        goto L_0x08f5;
    L_0x096d:
        r0 = "";
        goto L_0x091f;
    L_0x0970:
        r0 = 5013; // 0x1395 float:7.025E-42 double:2.4768E-320;
        r1 = "should be the user credentials and it should be merchant_key:unique_user_id.";
        r0 = r10.getReturnData(r0, r1);
        goto L_0x0020;
    L_0x097a:
        r0 = 5008; // 0x1390 float:7.018E-42 double:2.4743E-320;
        r1 = " Invalid card number, Failed while applying Luhn";
        r0 = r10.getReturnData(r0, r1);
        goto L_0x0020;
    L_0x0984:
        r0 = r10.mPaymentParams;
        r0 = r0.getBankCode();
        if (r0 == 0) goto L_0x09c2;
    L_0x098c:
        r0 = r10.mPaymentParams;
        r0 = r0.getBankCode();
        r0 = r0.length();
        if (r0 <= r3) goto L_0x09c2;
    L_0x0998:
        r0 = "pg";
        r2 = "NB";
        r0 = r10.concatParams(r0, r2);
        r6.append(r0);
        r0 = "bankcode";
        r2 = r10.mPaymentParams;
        r2 = r2.getBankCode();
        r0 = r10.concatParams(r0, r2);
        r6.append(r0);
        r0 = "SUCCESS";
        r2 = r6.toString();
        r2 = r10.trimAmpersand(r2);
        r0 = r10.getReturnData(r1, r0, r2);
        goto L_0x0020;
    L_0x09c2:
        r0 = 5005; // 0x138d float:7.013E-42 double:2.473E-320;
        r1 = "Invalid bank code please verify";
        r0 = r10.getReturnData(r0, r1);
        goto L_0x0020;
    L_0x09cc:
        r0 = r10.mPaymentParams;
        r0 = r0.getBankCode();
        if (r0 == 0) goto L_0x0bf4;
    L_0x09d4:
        r0 = r10.mPaymentParams;
        r0 = r0.getBankCode();
        r0 = r0.length();
        if (r0 <= r3) goto L_0x0bf4;
    L_0x09e0:
        r0 = "pg";
        r2 = "EMI";
        r0 = r10.concatParams(r0, r2);
        r6.append(r0);
        r0 = "bankcode";
        r2 = r10.mPaymentParams;
        r2 = r2.getBankCode();
        r0 = r10.concatParams(r0, r2);
        r6.append(r0);
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r2 = "";
        r0 = r0.append(r2);
        r2 = r10.mPaymentParams;
        r2 = r2.getCardNumber();
        r0 = r0.append(r2);
        r0 = r0.toString();
        r0 = r10.validateCardNumber(r0);
        r0 = r0.booleanValue();
        if (r0 == 0) goto L_0x0bea;
    L_0x0a1d:
        r0 = "ccnum";
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r4 = "";
        r2 = r2.append(r4);
        r4 = r10.mPaymentParams;
        r4 = r4.getCardNumber();
        r2 = r2.append(r4);
        r2 = r2.toString();
        r0 = r10.concatParams(r0, r2);
        r6.append(r0);
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r2 = "";
        r0 = r0.append(r2);
        r2 = r10.mPaymentParams;
        r2 = r2.getCardNumber();
        r0 = r0.append(r2);
        r0 = r0.toString();
        r0 = r10.getIssuer(r0);
        r2 = "SMAE";
        r0 = r0.contentEquals(r2);
        if (r0 != 0) goto L_0x0b1c;
    L_0x0a64:
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r2 = "";
        r0 = r0.append(r2);
        r2 = r10.mPaymentParams;
        r2 = r2.getCardNumber();
        r0 = r0.append(r2);
        r0 = r0.toString();
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r4 = "";
        r2 = r2.append(r4);
        r4 = r10.mPaymentParams;
        r4 = r4.getCvv();
        r2 = r2.append(r4);
        r2 = r2.toString();
        r0 = r10.validateCvv(r0, r2);
        if (r0 == 0) goto L_0x0ba3;
    L_0x0a9c:
        r0 = "ccvv";
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r4 = "";
        r2 = r2.append(r4);
        r4 = r10.mPaymentParams;
        r4 = r4.getCvv();
        r2 = r2.append(r4);
        r2 = r2.toString();
        r0 = r10.concatParams(r0, r2);
        r6.append(r0);
        r0 = r10.mPaymentParams;	 Catch:{ NumberFormatException -> 0x0bb7 }
        r0 = r0.getExpiryMonth();	 Catch:{ NumberFormatException -> 0x0bb7 }
        r0 = java.lang.Integer.parseInt(r0);	 Catch:{ NumberFormatException -> 0x0bb7 }
        r2 = r10.mPaymentParams;	 Catch:{ NumberFormatException -> 0x0bb7 }
        r2 = r2.getExpiryYear();	 Catch:{ NumberFormatException -> 0x0bb7 }
        r2 = java.lang.Integer.parseInt(r2);	 Catch:{ NumberFormatException -> 0x0bb7 }
        r0 = r10.validateExpiry(r0, r2);	 Catch:{ NumberFormatException -> 0x0bb7 }
        if (r0 == 0) goto L_0x0bad;
    L_0x0ad8:
        r0 = "ccexpyr";
        r2 = new java.lang.StringBuilder;	 Catch:{ NumberFormatException -> 0x0bb7 }
        r2.<init>();	 Catch:{ NumberFormatException -> 0x0bb7 }
        r4 = "";
        r2 = r2.append(r4);	 Catch:{ NumberFormatException -> 0x0bb7 }
        r4 = r10.mPaymentParams;	 Catch:{ NumberFormatException -> 0x0bb7 }
        r4 = r4.getExpiryYear();	 Catch:{ NumberFormatException -> 0x0bb7 }
        r2 = r2.append(r4);	 Catch:{ NumberFormatException -> 0x0bb7 }
        r2 = r2.toString();	 Catch:{ NumberFormatException -> 0x0bb7 }
        r0 = r10.concatParams(r0, r2);	 Catch:{ NumberFormatException -> 0x0bb7 }
        r6.append(r0);	 Catch:{ NumberFormatException -> 0x0bb7 }
        r0 = "ccexpmon";
        r2 = new java.lang.StringBuilder;	 Catch:{ NumberFormatException -> 0x0bb7 }
        r2.<init>();	 Catch:{ NumberFormatException -> 0x0bb7 }
        r4 = "";
        r2 = r2.append(r4);	 Catch:{ NumberFormatException -> 0x0bb7 }
        r4 = r10.mPaymentParams;	 Catch:{ NumberFormatException -> 0x0bb7 }
        r4 = r4.getExpiryMonth();	 Catch:{ NumberFormatException -> 0x0bb7 }
        r2 = r2.append(r4);	 Catch:{ NumberFormatException -> 0x0bb7 }
        r2 = r2.toString();	 Catch:{ NumberFormatException -> 0x0bb7 }
        r0 = r10.concatParams(r0, r2);	 Catch:{ NumberFormatException -> 0x0bb7 }
        r6.append(r0);	 Catch:{ NumberFormatException -> 0x0bb7 }
    L_0x0b1c:
        r0 = r10.mPaymentParams;
        r0 = r0.getNameOnCard();
        if (r0 != 0) goto L_0x0bc0;
    L_0x0b24:
        r0 = "ccname";
        r2 = "PayuUser";
        r0 = r10.concatParams(r0, r2);
    L_0x0b2c:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getStoreCard();
        if (r0 != r3) goto L_0x0b93;
    L_0x0b37:
        r0 = r10.mPaymentParams;
        r0 = r0.getUserCredentials();
        if (r0 == 0) goto L_0x0be2;
    L_0x0b3f:
        r0 = r10.mPaymentParams;
        r0 = r0.getCardName();
        if (r0 != 0) goto L_0x0bce;
    L_0x0b47:
        r0 = "card_name";
        r2 = "PayuUser";
        r0 = r10.concatParams(r0, r2);
    L_0x0b4f:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getUserCredentials();
        if (r0 == 0) goto L_0x0bdc;
    L_0x0b5a:
        r0 = "user_credentials";
        r2 = r10.mPaymentParams;
        r2 = r2.getUserCredentials();
        r0 = r10.concatParams(r0, r2);
    L_0x0b66:
        r6.append(r0);
        r0 = r10.mPaymentParams;
        r0 = r0.getStoreCard();
        if (r0 != r3) goto L_0x0bdf;
    L_0x0b71:
        r0 = "store_card";
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "";
        r2 = r2.append(r3);
        r3 = r10.mPaymentParams;
        r3 = r3.getStoreCard();
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0 = r10.concatParams(r0, r2);
    L_0x0b90:
        r6.append(r0);
    L_0x0b93:
        r0 = "SUCCESS";
        r2 = r6.toString();
        r2 = r10.trimAmpersand(r2);
        r0 = r10.getReturnData(r1, r0, r2);
        goto L_0x0020;
    L_0x0ba3:
        r0 = 5009; // 0x1391 float:7.019E-42 double:2.475E-320;
        r1 = " Invalid cvv, please verify";
        r0 = r10.getReturnData(r0, r1);
        goto L_0x0020;
    L_0x0bad:
        r0 = 5012; // 0x1394 float:7.023E-42 double:2.4763E-320;
        r1 = " It seems the card is expired!";
        r0 = r10.getReturnData(r0, r1);	 Catch:{ NumberFormatException -> 0x0bb7 }
        goto L_0x0020;
    L_0x0bb7:
        r0 = move-exception;
        r0 = " It seems the card is expired!";
        r0 = r10.getReturnData(r9, r0);
        goto L_0x0020;
    L_0x0bc0:
        r0 = "ccname";
        r2 = r10.mPaymentParams;
        r2 = r2.getNameOnCard();
        r0 = r10.concatParams(r0, r2);
        goto L_0x0b2c;
    L_0x0bce:
        r0 = "name_on_card";
        r2 = r10.mPaymentParams;
        r2 = r2.getCardName();
        r0 = r10.concatParams(r0, r2);
        goto L_0x0b4f;
    L_0x0bdc:
        r0 = "";
        goto L_0x0b66;
    L_0x0bdf:
        r0 = "";
        goto L_0x0b90;
    L_0x0be2:
        r0 = " Card can not be stored!, user_credentials is missing!";
        r0 = r10.getReturnData(r0);
        goto L_0x0020;
    L_0x0bea:
        r0 = 5008; // 0x1390 float:7.018E-42 double:2.4743E-320;
        r1 = " Invalid card number, Failed while applying Luhn";
        r0 = r10.getReturnData(r0, r1);
        goto L_0x0020;
    L_0x0bf4:
        r0 = "Please provide valid email details";
        r0 = r10.getReturnData(r0);
        goto L_0x0020;
    L_0x0bfc:
        r0 = "pg";
        r2 = "CASH";
        r0 = r10.concatParams(r0, r2);
        r6.append(r0);
        r0 = r10.mPaymentParams;
        if (r0 == 0) goto L_0x0c3a;
    L_0x0c0b:
        r0 = r10.mPaymentParams;
        r0 = r0.getBankCode();
        if (r0 == 0) goto L_0x0c3a;
    L_0x0c13:
        r0 = r10.mPaymentParams;
        r0 = r0.getBankCode();
        r0 = r0.length();
        if (r0 <= r3) goto L_0x0c3a;
    L_0x0c1f:
        r0 = "bankcode";
        r2 = r10.mPaymentParams;
        r2 = r2.getBankCode();
        r0 = r10.concatParams(r0, r2);
        r6.append(r0);
        r0 = "SUCCESS";
        r2 = r6.toString();
        r0 = r10.getReturnData(r1, r0, r2);
        goto L_0x0020;
    L_0x0c3a:
        r0 = 5005; // 0x138d float:7.013E-42 double:2.473E-320;
        r1 = "Invalid bank code please verify";
        r0 = r10.getReturnData(r0, r1);
        goto L_0x0020;
    L_0x0c44:
        r0 = "bankcode";
        r2 = "PAYUW";
        r2 = r2.toLowerCase();
        r0 = r10.concatParams(r0, r2);
        r6.append(r0);
        r0 = "pg";
        r2 = "wallet";
        r0 = r10.concatParams(r0, r2);
        r6.append(r0);
        r0 = "SUCCESS";
        r2 = r6.toString();
        r0 = r10.getReturnData(r1, r0, r2);
        goto L_0x0020;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.payu.india.PostParams.PaymentPostParams.getPaymentPostParams():com.payu.india.Model.PostData");
    }
}
