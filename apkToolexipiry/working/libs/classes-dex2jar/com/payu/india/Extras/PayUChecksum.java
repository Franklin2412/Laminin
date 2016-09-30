package com.payu.india.Extras;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.payu.india.Model.PostData;
import com.payu.india.Payu.PayuConstants;
import com.payu.india.Payu.PayuErrors;
import com.payu.magicretry.Helpers.MRConstant;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class PayUChecksum implements Parcelable {
    public static final Creator<PayUChecksum> CREATOR;
    private String amount;
    String command;
    private String email;
    private String firstname;
    private String key;
    private String[] paymentHashParams;
    private String productinfo;
    private String salt;
    private String txnid;
    private String udf1;
    private String udf2;
    private String udf3;
    private String udf4;
    private String udf5;
    String var1;
    private String[] webServiceHashParams;

    static {
        CREATOR = new Creator<PayUChecksum>() {
            public PayUChecksum createFromParcel(Parcel parcel) {
                return new PayUChecksum(null);
            }

            public PayUChecksum[] newArray(int i) {
                return new PayUChecksum[i];
            }
        };
    }

    public PayUChecksum() {
        this.webServiceHashParams = new String[]{MRConstant.KEY, PayuConstants.COMMAND, PayuConstants.VAR1, PayuConstants.SALT};
        this.paymentHashParams = new String[]{MRConstant.KEY, MRConstant.TRANSACTION_ID, PayuConstants.AMOUNT, PayuConstants.PRODUCT_INFO, PayuConstants.FIRST_NAME, PayuConstants.EMAIL, PayuConstants.UDF1, PayuConstants.UDF2, PayuConstants.UDF3, PayuConstants.UDF4, PayuConstants.UDF5, PayuConstants.SALT};
    }

    private PayUChecksum(Parcel parcel) {
        this.webServiceHashParams = new String[]{MRConstant.KEY, PayuConstants.COMMAND, PayuConstants.VAR1, PayuConstants.SALT};
        this.paymentHashParams = new String[]{MRConstant.KEY, MRConstant.TRANSACTION_ID, PayuConstants.AMOUNT, PayuConstants.PRODUCT_INFO, PayuConstants.FIRST_NAME, PayuConstants.EMAIL, PayuConstants.UDF1, PayuConstants.UDF2, PayuConstants.UDF3, PayuConstants.UDF4, PayuConstants.UDF5, PayuConstants.SALT};
        this.key = parcel.readString();
        this.txnid = parcel.readString();
        this.amount = parcel.readString();
        this.productinfo = parcel.readString();
        this.firstname = parcel.readString();
        this.email = parcel.readString();
        this.udf1 = parcel.readString();
        this.udf2 = parcel.readString();
        this.udf3 = parcel.readString();
        this.udf4 = parcel.readString();
        this.udf5 = parcel.readString();
        this.salt = parcel.readString();
        this.var1 = parcel.readString();
        this.command = parcel.readString();
    }

    private PostData calculateHash(String str) {
        try {
            StringBuilder stringBuilder = new StringBuilder();
            MessageDigest instance = MessageDigest.getInstance("SHA-512");
            instance.update(str.getBytes());
            for (byte b : instance.digest()) {
                stringBuilder.append(Integer.toString((b & MotionEventCompat.ACTION_MASK) + AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY, 16).substring(1));
            }
            return getReturnData(0, PayuConstants.SUCCESS, stringBuilder.toString());
        } catch (NoSuchAlgorithmException e) {
            return getReturnData(PayuErrors.NO_SUCH_ALGORITHM_EXCEPTION, PayuErrors.INVALID_ALGORITHM_SHA);
        }
    }

    public int describeContents() {
        return 0;
    }

    public String getAmount() {
        return this.amount;
    }

    public String getCommand() {
        return this.command;
    }

    public String getEmail() {
        return this.email;
    }

    public String getFirstname() {
        return this.firstname;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.payu.india.Model.PostData getHash() {
        /*
        r14 = this;
        r5 = 3;
        r4 = 2;
        r2 = -1;
        r1 = 0;
        r3 = 1;
        r7 = new java.lang.StringBuilder;
        r7.<init>();
        r0 = r14.command;
        if (r0 == 0) goto L_0x00cb;
    L_0x000e:
        r0 = r14.var1;
        if (r0 == 0) goto L_0x00cb;
    L_0x0012:
        r8 = r14.webServiceHashParams;
        r9 = r8.length;
        r6 = r1;
    L_0x0016:
        if (r6 >= r9) goto L_0x00c2;
    L_0x0018:
        r0 = r8[r6];
        r10 = r0.hashCode();
        switch(r10) {
            case 106079: goto L_0x0029;
            case 3522646: goto L_0x0047;
            case 3612138: goto L_0x003d;
            case 950394699: goto L_0x0033;
            default: goto L_0x0021;
        };
    L_0x0021:
        r0 = r2;
    L_0x0022:
        switch(r0) {
            case 0: goto L_0x0051;
            case 1: goto L_0x0070;
            case 2: goto L_0x008d;
            case 3: goto L_0x00a8;
            default: goto L_0x0025;
        };
    L_0x0025:
        r0 = r6 + 1;
        r6 = r0;
        goto L_0x0016;
    L_0x0029:
        r10 = "key";
        r0 = r0.equals(r10);
        if (r0 == 0) goto L_0x0021;
    L_0x0031:
        r0 = r1;
        goto L_0x0022;
    L_0x0033:
        r10 = "command";
        r0 = r0.equals(r10);
        if (r0 == 0) goto L_0x0021;
    L_0x003b:
        r0 = r3;
        goto L_0x0022;
    L_0x003d:
        r10 = "var1";
        r0 = r0.equals(r10);
        if (r0 == 0) goto L_0x0021;
    L_0x0045:
        r0 = r4;
        goto L_0x0022;
    L_0x0047:
        r10 = "salt";
        r0 = r0.equals(r10);
        if (r0 == 0) goto L_0x0021;
    L_0x004f:
        r0 = r5;
        goto L_0x0022;
    L_0x0051:
        r0 = r14.key;
        if (r0 == 0) goto L_0x005d;
    L_0x0055:
        r0 = r14.key;
        r0 = r0.length();
        if (r0 >= r3) goto L_0x0064;
    L_0x005d:
        r0 = "Mandatory param key is missing";
        r0 = r14.getReturnData(r0);
    L_0x0063:
        return r0;
    L_0x0064:
        r0 = r14.key;
        r0 = r7.append(r0);
        r10 = "|";
        r0.append(r10);
        goto L_0x0025;
    L_0x0070:
        r0 = com.payu.india.Payu.PayuConstants.COMMAND_SET;
        r10 = r14.command;
        r0 = r0.contains(r10);
        if (r0 == 0) goto L_0x0086;
    L_0x007a:
        r0 = r14.command;
        r0 = r7.append(r0);
        r10 = "|";
        r0.append(r10);
        goto L_0x0025;
    L_0x0086:
        r0 = "Mandatory param command is missing";
        r0 = r14.getReturnData(r0);
        goto L_0x0063;
    L_0x008d:
        r0 = r14.var1;
        r0 = r0.length();
        if (r0 < r3) goto L_0x00a1;
    L_0x0095:
        r0 = r14.var1;
        r0 = r7.append(r0);
        r10 = "|";
        r0.append(r10);
        goto L_0x0025;
    L_0x00a1:
        r0 = "Mandatory param var1 is missing";
        r0 = r14.getReturnData(r0);
        goto L_0x0063;
    L_0x00a8:
        r0 = r14.salt;
        if (r0 == 0) goto L_0x00b4;
    L_0x00ac:
        r0 = r14.salt;
        r0 = r0.length();
        if (r0 >= r3) goto L_0x00bb;
    L_0x00b4:
        r0 = "Mandatory param salt is missing";
        r0 = r14.getReturnData(r0);
        goto L_0x0063;
    L_0x00bb:
        r0 = r14.salt;
        r7.append(r0);
        goto L_0x0025;
    L_0x00c2:
        r0 = r7.toString();
        r0 = r14.calculateHash(r0);
        goto L_0x0063;
    L_0x00cb:
        r0 = r14.amount;
        if (r0 == 0) goto L_0x02cb;
    L_0x00cf:
        r0 = r14.txnid;
        if (r0 == 0) goto L_0x02cb;
    L_0x00d3:
        r0 = r14.productinfo;
        if (r0 == 0) goto L_0x02cb;
    L_0x00d7:
        r0 = r14.salt;
        if (r0 == 0) goto L_0x02cb;
    L_0x00db:
        r7 = new java.lang.StringBuilder;
        r7.<init>();
        r8 = r14.paymentHashParams;
        r9 = r8.length;
        r6 = r1;
    L_0x00e4:
        if (r6 >= r9) goto L_0x02c1;
    L_0x00e6:
        r0 = r8[r6];
        r10 = r0.hashCode();
        switch(r10) {
            case -1491000803: goto L_0x0115;
            case -1413853096: goto L_0x010b;
            case 106079: goto L_0x00f7;
            case 3522646: goto L_0x0168;
            case 3584858: goto L_0x0133;
            case 3584859: goto L_0x013d;
            case 3584860: goto L_0x0147;
            case 3584861: goto L_0x0152;
            case 3584862: goto L_0x015d;
            case 96619420: goto L_0x0129;
            case 110812421: goto L_0x0101;
            case 133788987: goto L_0x011f;
            default: goto L_0x00ef;
        };
    L_0x00ef:
        r0 = r2;
    L_0x00f0:
        switch(r0) {
            case 0: goto L_0x0174;
            case 1: goto L_0x0195;
            case 2: goto L_0x01b2;
            case 3: goto L_0x01e2;
            case 4: goto L_0x01fb;
            case 5: goto L_0x0214;
            case 6: goto L_0x022d;
            case 7: goto L_0x0246;
            case 8: goto L_0x025f;
            case 9: goto L_0x0278;
            case 10: goto L_0x0291;
            case 11: goto L_0x02aa;
            default: goto L_0x00f3;
        };
    L_0x00f3:
        r0 = r6 + 1;
        r6 = r0;
        goto L_0x00e4;
    L_0x00f7:
        r10 = "key";
        r0 = r0.equals(r10);
        if (r0 == 0) goto L_0x00ef;
    L_0x00ff:
        r0 = r1;
        goto L_0x00f0;
    L_0x0101:
        r10 = "txnid";
        r0 = r0.equals(r10);
        if (r0 == 0) goto L_0x00ef;
    L_0x0109:
        r0 = r3;
        goto L_0x00f0;
    L_0x010b:
        r10 = "amount";
        r0 = r0.equals(r10);
        if (r0 == 0) goto L_0x00ef;
    L_0x0113:
        r0 = r4;
        goto L_0x00f0;
    L_0x0115:
        r10 = "productinfo";
        r0 = r0.equals(r10);
        if (r0 == 0) goto L_0x00ef;
    L_0x011d:
        r0 = r5;
        goto L_0x00f0;
    L_0x011f:
        r10 = "firstname";
        r0 = r0.equals(r10);
        if (r0 == 0) goto L_0x00ef;
    L_0x0127:
        r0 = 4;
        goto L_0x00f0;
    L_0x0129:
        r10 = "email";
        r0 = r0.equals(r10);
        if (r0 == 0) goto L_0x00ef;
    L_0x0131:
        r0 = 5;
        goto L_0x00f0;
    L_0x0133:
        r10 = "udf1";
        r0 = r0.equals(r10);
        if (r0 == 0) goto L_0x00ef;
    L_0x013b:
        r0 = 6;
        goto L_0x00f0;
    L_0x013d:
        r10 = "udf2";
        r0 = r0.equals(r10);
        if (r0 == 0) goto L_0x00ef;
    L_0x0145:
        r0 = 7;
        goto L_0x00f0;
    L_0x0147:
        r10 = "udf3";
        r0 = r0.equals(r10);
        if (r0 == 0) goto L_0x00ef;
    L_0x014f:
        r0 = 8;
        goto L_0x00f0;
    L_0x0152:
        r10 = "udf4";
        r0 = r0.equals(r10);
        if (r0 == 0) goto L_0x00ef;
    L_0x015a:
        r0 = 9;
        goto L_0x00f0;
    L_0x015d:
        r10 = "udf5";
        r0 = r0.equals(r10);
        if (r0 == 0) goto L_0x00ef;
    L_0x0165:
        r0 = 10;
        goto L_0x00f0;
    L_0x0168:
        r10 = "salt";
        r0 = r0.equals(r10);
        if (r0 == 0) goto L_0x00ef;
    L_0x0170:
        r0 = 11;
        goto L_0x00f0;
    L_0x0174:
        r0 = r14.key;
        if (r0 == 0) goto L_0x0180;
    L_0x0178:
        r0 = r14.key;
        r0 = r0.length();
        if (r0 >= r3) goto L_0x0188;
    L_0x0180:
        r0 = "Mandatory param key is missing";
        r0 = r14.getReturnData(r0);
        goto L_0x0063;
    L_0x0188:
        r0 = r14.key;
        r0 = r7.append(r0);
        r10 = "|";
        r0.append(r10);
        goto L_0x00f3;
    L_0x0195:
        r0 = r14.txnid;
        r0 = r0.length();
        if (r0 >= r3) goto L_0x01a5;
    L_0x019d:
        r0 = "should be the Transaction id (txnid)";
        r0 = r14.getReturnData(r0);
        goto L_0x0063;
    L_0x01a5:
        r0 = r14.txnid;
        r0 = r7.append(r0);
        r10 = "|";
        r0.append(r10);
        goto L_0x00f3;
    L_0x01b2:
        r0 = r14.amount;	 Catch:{ NumberFormatException -> 0x01d7 }
        if (r0 == 0) goto L_0x01c2;
    L_0x01b6:
        r0 = r14.amount;	 Catch:{ NumberFormatException -> 0x01d7 }
        r10 = java.lang.Double.parseDouble(r0);	 Catch:{ NumberFormatException -> 0x01d7 }
        r12 = 0;
        r0 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1));
        if (r0 > 0) goto L_0x01ca;
    L_0x01c2:
        r0 = " Amount should be a Double value example 5.00";
        r0 = r14.getReturnData(r0);	 Catch:{ NumberFormatException -> 0x01d7 }
        goto L_0x0063;
    L_0x01ca:
        r0 = r14.amount;	 Catch:{ NumberFormatException -> 0x01d7 }
        r0 = r7.append(r0);	 Catch:{ NumberFormatException -> 0x01d7 }
        r10 = "|";
        r0.append(r10);	 Catch:{ NumberFormatException -> 0x01d7 }
        goto L_0x00f3;
    L_0x01d7:
        r0 = move-exception;
        r0 = 5002; // 0x138a float:7.009E-42 double:2.4713E-320;
        r1 = " Amount should be a Double value example 5.00";
        r0 = r14.getReturnData(r0, r1);
        goto L_0x0063;
    L_0x01e2:
        r0 = r14.productinfo;
        if (r0 != 0) goto L_0x01ee;
    L_0x01e6:
        r0 = "Product info should not be null, it can be empty or string";
        r0 = r14.getReturnData(r0);
        goto L_0x0063;
    L_0x01ee:
        r0 = r14.productinfo;
        r0 = r7.append(r0);
        r10 = "|";
        r0.append(r10);
        goto L_0x00f3;
    L_0x01fb:
        r0 = r14.firstname;
        if (r0 != 0) goto L_0x0207;
    L_0x01ff:
        r0 = "First name should not be null, it can be empty or string";
        r0 = r14.getReturnData(r0);
        goto L_0x0063;
    L_0x0207:
        r0 = r14.firstname;
        r0 = r7.append(r0);
        r10 = "|";
        r0.append(r10);
        goto L_0x00f3;
    L_0x0214:
        r0 = r14.email;
        if (r0 != 0) goto L_0x0220;
    L_0x0218:
        r0 = "Email should not be null, it can be empty or string";
        r0 = r14.getReturnData(r0);
        goto L_0x0063;
    L_0x0220:
        r0 = r14.email;
        r0 = r7.append(r0);
        r10 = "|";
        r0.append(r10);
        goto L_0x00f3;
    L_0x022d:
        r0 = r14.udf1;
        if (r0 != 0) goto L_0x0239;
    L_0x0231:
        r0 = "UDF1 should not be null, it can be empty or string";
        r0 = r14.getReturnData(r0);
        goto L_0x0063;
    L_0x0239:
        r0 = r14.udf1;
        r0 = r7.append(r0);
        r10 = "|";
        r0.append(r10);
        goto L_0x00f3;
    L_0x0246:
        r0 = r14.udf2;
        if (r0 != 0) goto L_0x0252;
    L_0x024a:
        r0 = "UDF2 should not be null, it can be empty or string";
        r0 = r14.getReturnData(r0);
        goto L_0x0063;
    L_0x0252:
        r0 = r14.udf2;
        r0 = r7.append(r0);
        r10 = "|";
        r0.append(r10);
        goto L_0x00f3;
    L_0x025f:
        r0 = r14.udf3;
        if (r0 != 0) goto L_0x026b;
    L_0x0263:
        r0 = "UDF3 should not be null, it can be empty or string";
        r0 = r14.getReturnData(r0);
        goto L_0x0063;
    L_0x026b:
        r0 = r14.udf3;
        r0 = r7.append(r0);
        r10 = "|";
        r0.append(r10);
        goto L_0x00f3;
    L_0x0278:
        r0 = r14.udf4;
        if (r0 != 0) goto L_0x0284;
    L_0x027c:
        r0 = "UDF4 should not be null, it can be empty or string";
        r0 = r14.getReturnData(r0);
        goto L_0x0063;
    L_0x0284:
        r0 = r14.udf4;
        r0 = r7.append(r0);
        r10 = "|";
        r0.append(r10);
        goto L_0x00f3;
    L_0x0291:
        r0 = r14.udf5;
        if (r0 != 0) goto L_0x029d;
    L_0x0295:
        r0 = "UDF5 should not be null, it can be empty or string";
        r0 = r14.getReturnData(r0);
        goto L_0x0063;
    L_0x029d:
        r0 = r14.udf5;
        r0 = r7.append(r0);
        r10 = "||||||";
        r0.append(r10);
        goto L_0x00f3;
    L_0x02aa:
        r0 = r14.salt;
        r0 = r0.length();
        if (r0 >= r3) goto L_0x02ba;
    L_0x02b2:
        r0 = "Salt should be a valid string";
        r0 = r14.getReturnData(r0);
        goto L_0x0063;
    L_0x02ba:
        r0 = r14.salt;
        r7.append(r0);
        goto L_0x00f3;
    L_0x02c1:
        r0 = r7.toString();
        r0 = r14.calculateHash(r0);
        goto L_0x0063;
    L_0x02cb:
        r0 = "Mandatory param command is missing  Amount should be a Double value example 5.00";
        r0 = r14.getReturnData(r0);
        goto L_0x0063;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.payu.india.Extras.PayUChecksum.getHash():com.payu.india.Model.PostData");
    }

    public String getKey() {
        return this.key;
    }

    public String getProductinfo() {
        return this.productinfo;
    }

    protected PostData getReturnData(int i, String str) {
        return getReturnData(i, PayuConstants.ERROR, str);
    }

    protected PostData getReturnData(int i, String str, String str2) {
        PostData postData = new PostData();
        postData.setCode(i);
        postData.setStatus(str);
        postData.setResult(str2);
        return postData;
    }

    protected PostData getReturnData(String str) {
        return getReturnData(PayuErrors.MISSING_PARAMETER_EXCEPTION, PayuConstants.ERROR, str);
    }

    public String getSalt() {
        return this.salt;
    }

    public String getTxnid() {
        return this.txnid;
    }

    public String getUdf1() {
        return this.udf1;
    }

    public String getUdf2() {
        return this.udf2;
    }

    public String getUdf3() {
        return this.udf3;
    }

    public String getUdf4() {
        return this.udf4;
    }

    public String getUdf5() {
        return this.udf5;
    }

    public String getVar1() {
        return this.var1;
    }

    public void setAmount(String str) {
        this.amount = str;
    }

    public void setCommand(String str) {
        this.command = str;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public void setFirstname(String str) {
        this.firstname = str;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setProductinfo(String str) {
        this.productinfo = str;
    }

    public void setSalt(String str) {
        this.salt = str;
    }

    public void setTxnid(String str) {
        this.txnid = str;
    }

    public void setUdf1(String str) {
        this.udf1 = str;
    }

    public void setUdf2(String str) {
        this.udf2 = str;
    }

    public void setUdf3(String str) {
        this.udf3 = str;
    }

    public void setUdf4(String str) {
        this.udf4 = str;
    }

    public void setUdf5(String str) {
        this.udf5 = str;
    }

    public void setVar1(String str) {
        this.var1 = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.key);
        parcel.writeString(this.txnid);
        parcel.writeString(this.amount);
        parcel.writeString(this.productinfo);
        parcel.writeString(this.firstname);
        parcel.writeString(this.email);
        parcel.writeString(this.udf1);
        parcel.writeString(this.udf2);
        parcel.writeString(this.udf3);
        parcel.writeString(this.udf4);
        parcel.writeString(this.udf5);
        parcel.writeString(this.salt);
        parcel.writeString(this.command);
    }
}
