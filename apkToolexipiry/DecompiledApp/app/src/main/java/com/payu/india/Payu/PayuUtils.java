package com.payu.india.Payu;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import com.payu.india.Model.PayuConfig;
import com.payu.india.Model.PostData;
import com.payu.india.Model.StoredCard;
import com.payu.india.Tasks.PayuUploadDeviceAnalytics;
import com.payu.magicretry.Helpers.MRConstant;
import com.squareup.haha.perflib.StackFrame;
import com.squareup.leakcanary.watcher.BuildConfig;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONObject;

public class PayuUtils {
    public static Set<String> SBI_MAES_BIN;
    public static String cbVersion;
    private static String keyAnalyticsUtil;

    static {
        SBI_MAES_BIN = new HashSet();
        SBI_MAES_BIN.add("504435");
        SBI_MAES_BIN.add("504645");
        SBI_MAES_BIN.add("504775");
        SBI_MAES_BIN.add("504809");
        SBI_MAES_BIN.add("504993");
        SBI_MAES_BIN.add("600206");
        SBI_MAES_BIN.add("603845");
        SBI_MAES_BIN.add("622018");
        SBI_MAES_BIN.add("504774");
    }

    private static String getAnalyticsKeyFromConfig(PayuConfig payuConfig) {
        try {
            for (String split : payuConfig.getData().split("&")) {
                String[] split2 = split.split("=");
                if (split2.length >= 2) {
                    String str = split2[0];
                    int i = -1;
                    switch (str.hashCode()) {
                        case 106079:
                            if (str.equals(MRConstant.KEY)) {
                                i = 0;
                                break;
                            }
                            break;
                    }
                    switch (i) {
                        case StackFrame.NO_LINE_NUMBER /*0*/:
                            return split2[1];
                        default:
                            break;
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    private String getDeviceDensity(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.densityDpi + BuildConfig.VERSION_NAME;
    }

    static String getNetworkStatus(Activity activity) {
        if (activity != null) {
            try {
                if (!activity.isFinishing()) {
                    NetworkInfo activeNetworkInfo = ((ConnectivityManager) activity.getSystemService("connectivity")).getActiveNetworkInfo();
                    if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                        return "Not connected";
                    }
                    if (activeNetworkInfo.getType() == 1) {
                        return "WIFI";
                    }
                    if (activeNetworkInfo.getType() == 0) {
                        switch (activeNetworkInfo.getSubtype()) {
                            case R.styleable.WaitingDots_period /*1*/:
                                return "GPRS";
                            case R.styleable.WaitingDots_jumpHeight /*2*/:
                                return "EDGE";
                            case R.styleable.WaitingDots_autoplay /*3*/:
                            case R.styleable.ViewPagerIndicator_vpiUnderlinePageIndicatorStyle /*5*/:
                            case R.styleable.Toolbar_contentInsetEnd /*6*/:
                            case R.styleable.Toolbar_contentInsetRight /*8*/:
                            case R.styleable.Toolbar_popupTheme /*9*/:
                            case R.styleable.Toolbar_titleTextAppearance /*10*/:
                                return "HSPA";
                            case R.styleable.View_theme /*4*/:
                                return "CDMA";
                            case R.styleable.Toolbar_contentInsetLeft /*7*/:
                            case R.styleable.Toolbar_subtitleTextAppearance /*11*/:
                                return "2G";
                            case R.styleable.Toolbar_titleMargins /*12*/:
                            case R.styleable.Toolbar_titleMarginEnd /*14*/:
                            case R.styleable.Toolbar_titleMarginTop /*15*/:
                                return "3G";
                            case R.styleable.Toolbar_titleMarginStart /*13*/:
                                return "4G";
                            default:
                                return "?";
                        }
                    }
                }
            } catch (Exception e) {
                return "?";
            }
        }
        return "?";
    }

    private int getNetworkStrength(Activity activity) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) activity.getSystemService(PayuConstants.PHONE);
            int i = 0;
            for (NetworkInfo networkInfo : ((ConnectivityManager) activity.getSystemService("connectivity")).getAllNetworkInfo()) {
                if (VERSION.SDK_INT >= 18 && networkInfo.getTypeName().equalsIgnoreCase("MOBILE") && networkInfo.isConnected()) {
                    int i2 = i;
                    for (CellInfo cellInfo : telephonyManager.getAllCellInfo()) {
                        if (cellInfo.isRegistered()) {
                            if (cellInfo instanceof CellInfoGsm) {
                                i2 = ((CellInfoGsm) cellInfo).getCellSignalStrength().getDbm();
                            } else if (cellInfo instanceof CellInfoCdma) {
                                i2 = ((CellInfoCdma) cellInfo).getCellSignalStrength().getDbm();
                            } else if (cellInfo instanceof CellInfoLte) {
                                i2 = ((CellInfoLte) cellInfo).getCellSignalStrength().getDbm();
                            } else if (cellInfo instanceof CellInfoWcdma) {
                                i2 = ((CellInfoWcdma) cellInfo).getCellSignalStrength().getDbm();
                            }
                        }
                    }
                    i = i2;
                }
            }
            return i;
        } catch (Exception e) {
            return 0;
        }
    }

    public static String getStringValueFromJSON(JSONObject jSONObject, String str) {
        String str2 = null;
        try {
            str2 = jSONObject.getString(str);
        } catch (Exception e) {
            e.printStackTrace();
        } catch (Throwable th) {
        }
        return str2;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private String getVariableReflection(String r4, String r5) {
        /*
        r3 = this;
        r1 = 0;
        r0 = java.lang.Class.forName(r4);	 Catch:{ ClassNotFoundException -> 0x0011, NoSuchFieldException -> 0x0017, IllegalAccessException -> 0x001c }
        r0 = r0.getDeclaredField(r5);	 Catch:{ ClassNotFoundException -> 0x0011, NoSuchFieldException -> 0x0017, IllegalAccessException -> 0x001c }
        r2 = 0;
        r0 = r0.get(r2);	 Catch:{ ClassNotFoundException -> 0x0011, NoSuchFieldException -> 0x0017, IllegalAccessException -> 0x001c }
        r0 = (java.lang.String) r0;	 Catch:{ ClassNotFoundException -> 0x0011, NoSuchFieldException -> 0x0017, IllegalAccessException -> 0x001c }
    L_0x0010:
        return r0;
    L_0x0011:
        r0 = move-exception;
        r0.printStackTrace();
    L_0x0015:
        r0 = r1;
        goto L_0x0010;
    L_0x0017:
        r0 = move-exception;
        r0.printStackTrace();
        goto L_0x0015;
    L_0x001c:
        r0 = move-exception;
        r0.printStackTrace();
        goto L_0x0015;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.payu.india.Payu.PayuUtils.getVariableReflection(java.lang.String, java.lang.String):java.lang.String");
    }

    public static void setAnalyticsKeyCB(PayuConfig payuConfig) {
        setAnalyticsKeyCB(getAnalyticsKeyFromConfig(payuConfig));
    }

    public static void setAnalyticsKeyCB(String str) {
        if (str != null) {
            try {
                if (!str.trim().equals(BuildConfig.VERSION_NAME)) {
                    keyAnalyticsUtil = str;
                    Field declaredField = Class.forName("com.payu.custombrowser.Bank").getDeclaredField("keyAnalytics");
                    declaredField.setAccessible(true);
                    declaredField.set(null, str);
                    declaredField.setAccessible(false);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void setVariableCB(String str, HashMap<String, String> hashMap, String str2) {
        try {
            Class cls = Class.forName(str);
            for (String str3 : hashMap.keySet()) {
                try {
                    Field declaredField = cls.getDeclaredField(str3);
                    declaredField.setAccessible(true);
                    declaredField.set(null, hashMap.get(str3));
                    declaredField.setAccessible(false);
                } catch (Exception e) {
                }
            }
            Field declaredField2 = cls.getDeclaredField(str2);
            declaredField2.setAccessible(true);
            cbVersion = (String) declaredField2.get(null);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    protected String concatParams(String str, String str2) {
        return str + "=" + str2 + "&";
    }

    public void deviceAnalytics(Context context, String str, String str2) {
        Activity activity = (Activity) context;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(PayuConstants.DEVICE_RESOLUTION, getDeviceDensity(activity) + BuildConfig.VERSION_NAME);
            jSONObject.put(PayuConstants.DEVICE_MANUFACTURE, Build.MANUFACTURER);
            jSONObject.put(PayuConstants.DEVICE_MODEL, Build.MODEL);
            if (keyAnalyticsUtil == null || keyAnalyticsUtil.trim().equals(BuildConfig.VERSION_NAME)) {
                jSONObject.put(MRConstant.MERCHANT_KEY, str);
            } else {
                jSONObject.put(MRConstant.MERCHANT_KEY, keyAnalyticsUtil);
            }
            jSONObject.put(MRConstant.TRANSACTION_ID, str2);
            jSONObject.put(PayuConstants.SDK_VERSION_NAME, com.payu.india.BuildConfig.VERSION_NAME);
            jSONObject.put(MRConstant.CB_VERSION_NAME, cbVersion);
            jSONObject.put(PayuConstants.DEVICE_OS_VERSION, VERSION.SDK_INT + BuildConfig.VERSION_NAME);
            jSONObject.put(PayuConstants.NETWORK_INFO, getNetworkStatus(activity) + BuildConfig.VERSION_NAME);
            jSONObject.put(PayuConstants.NETWORK_STRENGTH, getNetworkStrength(activity) + BuildConfig.VERSION_NAME);
        } catch (Exception e) {
            e.printStackTrace();
        }
        new PayuUploadDeviceAnalytics(activity, "sdk_local_cache_device").log(jSONObject.toString());
    }

    public String getFromSharedPreferences(Context context, String str) {
        return getFromSharedPreferences(context, str, PayuConstants.DEFAULT);
    }

    public String getFromSharedPreferences(Context context, String str, String str2) {
        return context.getSharedPreferences(PayuConstants.PAYU_PREFERENCE, 0).getString(str, str2);
    }

    protected String getImei() {
        try {
            return ((TelephonyManager) Payu.getInstance().getCallingAppContext().getSystemService(PayuConstants.PHONE)).getDeviceId();
        } catch (Exception e) {
            return PayuConstants.DEFAULT;
        }
    }

    public String getIssuer(String str) {
        return str.startsWith("4") ? PayuConstants.VISA : str.matches("^508[5-9][0-9][0-9]|60698[5-9]|60699[0-9]|607[0-8][0-9][0-9]|6079[0-7][0-9]|60798[0-4]|(?!608000)608[0-4][0-9][0-9]|608500|6521[5-9][0-9]|652[2-9][0-9][0-9]|6530[0-9][0-9]|6531[0-4][0-9]") ? PayuConstants.RUPAY : str.matches("^((6304)|(6706)|(6771)|(6709))[\\d]+") ? PayuConstants.LASER : str.matches("6(?:011|5[0-9]{2})[0-9]{12}[\\d]+") ? PayuConstants.LASER : (str.matches("(5[06-8]|6\\d)\\d{14}(\\d{2,3})?[\\d]+") || str.matches("(5[06-8]|6\\d)[\\d]+") || str.matches("((504([435|645|774|775|809|993]))|(60([0206]|[3845]))|(622[018])\\d)[\\d]+")) ? (str.length() < 6 || !SBI_MAES_BIN.contains(str.substring(0, 6))) ? PayuConstants.MAES : PayuConstants.SMAE : str.matches("^5[1-5][\\d]+") ? PayuConstants.MAST : str.matches("^3[47][\\d]+") ? PayuConstants.AMEX : (str.startsWith("36") || str.matches("^30[0-5][\\d]+") || str.matches("2(014|149)[\\d]+")) ? PayuConstants.DINR : str.matches("^35(2[89]|[3-8][0-9])[\\d]+") ? PayuConstants.JCB : BuildConfig.VERSION_NAME;
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

    public HashMap<String, ArrayList<StoredCard>> getStoredCard(Context context, ArrayList<StoredCard> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        HashMap<String, ArrayList<StoredCard>> hashMap = new HashMap();
        SharedPreferences sharedPreferences = context.getSharedPreferences(PayuConstants.PAYU_PREFERENCE, 0);
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                StoredCard storedCard = (StoredCard) it.next();
                if ((storedCard.getEnableOneClickPayment() != 1 || sharedPreferences.getString(storedCard.getCardToken(), PayuConstants.DEFAULT).contains(PayuConstants.DEFAULT)) && !getIssuer(storedCard.getCardBin()).contentEquals(PayuConstants.SMAE)) {
                    arrayList3.add(storedCard);
                } else {
                    arrayList2.add(storedCard);
                }
            }
        }
        hashMap.put(PayuConstants.ONE_CLICK_CHECKOUT, arrayList2);
        hashMap.put(PayuConstants.STORED_CARD, arrayList3);
        return hashMap;
    }

    public HashMap<String, ArrayList<StoredCard>> getStoredCard(ArrayList<StoredCard> arrayList, HashMap<String, String> hashMap) {
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        HashMap<String, ArrayList<StoredCard>> hashMap2 = new HashMap();
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                StoredCard storedCard = (StoredCard) it.next();
                if (hashMap != null && storedCard.getEnableOneClickPayment() == 1 && hashMap.containsKey(storedCard.getCardToken())) {
                    arrayList2.add(storedCard);
                } else {
                    arrayList3.add(storedCard);
                }
            }
        }
        hashMap2.put(PayuConstants.ONE_CLICK_CHECKOUT, arrayList2);
        hashMap2.put(PayuConstants.STORED_CARD, arrayList3);
        return hashMap2;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.payu.india.Model.TransactionResponse getTransactionResponse(String r6) {
        /*
        r5 = this;
        r2 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x003c }
        r2.<init>(r6);	 Catch:{ JSONException -> 0x003c }
        r1 = new com.payu.india.Model.TransactionResponse;	 Catch:{ JSONException -> 0x003c }
        r1.<init>();	 Catch:{ JSONException -> 0x003c }
        r3 = r2.keys();	 Catch:{ JSONException -> 0x003c }
    L_0x000e:
        r0 = r3.hasNext();	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0592;
    L_0x0014:
        r0 = r3.next();	 Catch:{ JSONException -> 0x003c }
        r0 = (java.lang.String) r0;	 Catch:{ JSONException -> 0x003c }
        r4 = r0.hashCode();	 Catch:{ JSONException -> 0x003c }
        switch(r4) {
            case -1834791377: goto L_0x0181;
            case -1768239874: goto L_0x0060;
            case -1491000803: goto L_0x00b5;
            case -1274708361: goto L_0x0121;
            case -1274708360: goto L_0x012d;
            case -1274708359: goto L_0x0139;
            case -1274708358: goto L_0x0145;
            case -1274708353: goto L_0x0151;
            case -1148080417: goto L_0x00a9;
            case -892481550: goto L_0x0056;
            case -848363404: goto L_0x015d;
            case -245025015: goto L_0x01d5;
            case 3355: goto L_0x0042;
            case 106079: goto L_0x006a;
            case 3154761: goto L_0x01f9;
            case 3195150: goto L_0x0115;
            case 3357091: goto L_0x004c;
            case 3542044: goto L_0x01ed;
            case 3584858: goto L_0x00d9;
            case 3584859: goto L_0x00e5;
            case 3584860: goto L_0x00f1;
            case 3584861: goto L_0x00fd;
            case 3584862: goto L_0x0109;
            case 96619420: goto L_0x00cd;
            case 108845186: goto L_0x0169;
            case 110812421: goto L_0x0074;
            case 133788987: goto L_0x00c1;
            case 149263372: goto L_0x01e1;
            case 273184065: goto L_0x0092;
            case 436978391: goto L_0x0175;
            case 514296878: goto L_0x0088;
            case 524859536: goto L_0x0199;
            case 553934160: goto L_0x01bd;
            case 993856522: goto L_0x01a5;
            case 1198701607: goto L_0x009d;
            case 1263333029: goto L_0x007e;
            case 1465963186: goto L_0x01c9;
            case 1635686852: goto L_0x018d;
            case 2026069948: goto L_0x01b1;
            case 2072546597: goto L_0x0205;
            default: goto L_0x0021;
        };	 Catch:{ JSONException -> 0x003c }
    L_0x0021:
        r0 = -1;
    L_0x0022:
        switch(r0) {
            case 0: goto L_0x0026;
            case 1: goto L_0x0211;
            case 2: goto L_0x0228;
            case 3: goto L_0x023f;
            case 4: goto L_0x0256;
            case 5: goto L_0x026d;
            case 6: goto L_0x0284;
            case 7: goto L_0x029b;
            case 8: goto L_0x02b2;
            case 9: goto L_0x02c9;
            case 10: goto L_0x02e0;
            case 11: goto L_0x02f7;
            case 12: goto L_0x030e;
            case 13: goto L_0x0325;
            case 14: goto L_0x033c;
            case 15: goto L_0x0353;
            case 16: goto L_0x036a;
            case 17: goto L_0x0381;
            case 18: goto L_0x0398;
            case 19: goto L_0x03af;
            case 20: goto L_0x03c6;
            case 21: goto L_0x03dd;
            case 22: goto L_0x03f4;
            case 23: goto L_0x040b;
            case 24: goto L_0x0422;
            case 25: goto L_0x0439;
            case 26: goto L_0x0450;
            case 27: goto L_0x0467;
            case 28: goto L_0x047e;
            case 29: goto L_0x0495;
            case 30: goto L_0x04ac;
            case 31: goto L_0x04c3;
            case 32: goto L_0x04da;
            case 33: goto L_0x04f1;
            case 34: goto L_0x0508;
            case 35: goto L_0x051f;
            case 36: goto L_0x0536;
            case 37: goto L_0x054d;
            case 38: goto L_0x0564;
            case 39: goto L_0x057b;
            default: goto L_0x0025;
        };	 Catch:{ JSONException -> 0x003c }
    L_0x0025:
        goto L_0x000e;
    L_0x0026:
        r0 = "id";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x002e:
        r0 = "id";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setId(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x003c:
        r0 = move-exception;
        r0.printStackTrace();
        r0 = 0;
    L_0x0041:
        return r0;
    L_0x0042:
        r4 = "id";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x004a:
        r0 = 0;
        goto L_0x0022;
    L_0x004c:
        r4 = "mode";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x0054:
        r0 = 1;
        goto L_0x0022;
    L_0x0056:
        r4 = "status";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x005e:
        r0 = 2;
        goto L_0x0022;
    L_0x0060:
        r4 = "unmappedstatus";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x0068:
        r0 = 3;
        goto L_0x0022;
    L_0x006a:
        r4 = "key";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x0072:
        r0 = 4;
        goto L_0x0022;
    L_0x0074:
        r4 = "txnid";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x007c:
        r0 = 5;
        goto L_0x0022;
    L_0x007e:
        r4 = "transaction_fee";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x0086:
        r0 = 6;
        goto L_0x0022;
    L_0x0088:
        r4 = "cardCategory";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x0090:
        r0 = 7;
        goto L_0x0022;
    L_0x0092:
        r4 = "discount";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x009a:
        r0 = 8;
        goto L_0x0022;
    L_0x009d:
        r4 = "additional_charges";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x00a5:
        r0 = 9;
        goto L_0x0022;
    L_0x00a9:
        r4 = "addedon";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x00b1:
        r0 = 10;
        goto L_0x0022;
    L_0x00b5:
        r4 = "productinfo";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x00bd:
        r0 = 11;
        goto L_0x0022;
    L_0x00c1:
        r4 = "firstname";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x00c9:
        r0 = 12;
        goto L_0x0022;
    L_0x00cd:
        r4 = "email";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x00d5:
        r0 = 13;
        goto L_0x0022;
    L_0x00d9:
        r4 = "udf1";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x00e1:
        r0 = 14;
        goto L_0x0022;
    L_0x00e5:
        r4 = "udf2";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x00ed:
        r0 = 15;
        goto L_0x0022;
    L_0x00f1:
        r4 = "udf3";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x00f9:
        r0 = 16;
        goto L_0x0022;
    L_0x00fd:
        r4 = "udf4";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x0105:
        r0 = 17;
        goto L_0x0022;
    L_0x0109:
        r4 = "udf5";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x0111:
        r0 = 18;
        goto L_0x0022;
    L_0x0115:
        r4 = "hash";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x011d:
        r0 = 19;
        goto L_0x0022;
    L_0x0121:
        r4 = "field1";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x0129:
        r0 = 20;
        goto L_0x0022;
    L_0x012d:
        r4 = "field2";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x0135:
        r0 = 21;
        goto L_0x0022;
    L_0x0139:
        r4 = "field3";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x0141:
        r0 = 22;
        goto L_0x0022;
    L_0x0145:
        r4 = "field4";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x014d:
        r0 = 23;
        goto L_0x0022;
    L_0x0151:
        r4 = "field9";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x0159:
        r0 = 24;
        goto L_0x0022;
    L_0x015d:
        r4 = "payment_source";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x0165:
        r0 = 25;
        goto L_0x0022;
    L_0x0169:
        r4 = "PG_TYPE";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x0171:
        r0 = 26;
        goto L_0x0022;
    L_0x0175:
        r4 = "bank_ref_num";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x017d:
        r0 = 27;
        goto L_0x0022;
    L_0x0181:
        r4 = "ibibo_code";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x0189:
        r0 = 28;
        goto L_0x0022;
    L_0x018d:
        r4 = "error_code";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x0195:
        r0 = 29;
        goto L_0x0022;
    L_0x0199:
        r4 = "Error_Message";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x01a1:
        r0 = 30;
        goto L_0x0022;
    L_0x01a5:
        r4 = "card_token";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x01ad:
        r0 = 31;
        goto L_0x0022;
    L_0x01b1:
        r4 = "name_on_card";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x01b9:
        r0 = 32;
        goto L_0x0022;
    L_0x01bd:
        r4 = "card_no";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x01c5:
        r0 = 33;
        goto L_0x0022;
    L_0x01c9:
        r4 = "issuingBank";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x01d1:
        r0 = 34;
        goto L_0x0022;
    L_0x01d5:
        r4 = "card_type";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x01dd:
        r0 = 35;
        goto L_0x0022;
    L_0x01e1:
        r4 = "is_seamless";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x01e9:
        r0 = 36;
        goto L_0x0022;
    L_0x01ed:
        r4 = "surl";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x01f5:
        r0 = 37;
        goto L_0x0022;
    L_0x01f9:
        r4 = "furl";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x0201:
        r0 = 38;
        goto L_0x0022;
    L_0x0205:
        r4 = "merchant_hash";
        r0 = r0.equals(r4);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x0021;
    L_0x020d:
        r0 = 39;
        goto L_0x0022;
    L_0x0211:
        r0 = "mode";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x0219:
        r0 = "mode";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setMode(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x0228:
        r0 = "status";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x0230:
        r0 = "status";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setStatus(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x023f:
        r0 = "unmappedstatus";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x0247:
        r0 = "unmappedstatus";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setUnMappedStatus(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x0256:
        r0 = "key";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x025e:
        r0 = "key";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setKey(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x026d:
        r0 = "txnid";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x0275:
        r0 = "txnid";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setTxnid(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x0284:
        r0 = "transaction_fee";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x028c:
        r0 = "transaction_fee";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setTransactionFee(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x029b:
        r0 = "cardCategory";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x02a3:
        r0 = "cardCategory";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setCardCategory(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x02b2:
        r0 = "discount";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x02ba:
        r0 = "discount";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setDiscount(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x02c9:
        r0 = "additional_charges";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x02d1:
        r0 = "additional_charges";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setAdditionalCharges(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x02e0:
        r0 = "addedon";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x02e8:
        r0 = "addedon";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setAddedOn(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x02f7:
        r0 = "productinfo";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x02ff:
        r0 = "productinfo";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setProductInfo(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x030e:
        r0 = "firstname";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x0316:
        r0 = "firstname";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setFirstName(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x0325:
        r0 = "email";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x032d:
        r0 = "email";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setEmail(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x033c:
        r0 = "udf1";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x0344:
        r0 = "udf1";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setUdf1(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x0353:
        r0 = "udf2";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x035b:
        r0 = "udf2";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setUdf2(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x036a:
        r0 = "udf3";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x0372:
        r0 = "udf3";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setUdf3(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x0381:
        r0 = "udf4";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x0389:
        r0 = "udf4";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setUdf4(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x0398:
        r0 = "udf5";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x03a0:
        r0 = "udf5";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setUdf5(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x03af:
        r0 = "hash";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x03b7:
        r0 = "hash";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setHash(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x03c6:
        r0 = "field1";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x03ce:
        r0 = "field1";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setField1(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x03dd:
        r0 = "field2";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x03e5:
        r0 = "field2";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setField2(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x03f4:
        r0 = "field3";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x03fc:
        r0 = "field3";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setField3(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x040b:
        r0 = "field4";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x0413:
        r0 = "field4";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setField4(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x0422:
        r0 = "field9";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x042a:
        r0 = "field9";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setField9(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x0439:
        r0 = "payment_source";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x0441:
        r0 = "payment_source";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setPaymentSource(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x0450:
        r0 = "PG_TYPE";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x0458:
        r0 = "PG_TYPE";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setPgType(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x0467:
        r0 = "bank_ref_num";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x046f:
        r0 = "bank_ref_num";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setBankRefNo(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x047e:
        r0 = "ibibo_code";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x0486:
        r0 = "ibibo_code";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setIbiboCode(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x0495:
        r0 = "error_code";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x049d:
        r0 = "error_code";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setErrorCode(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x04ac:
        r0 = "Error_Message";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x04b4:
        r0 = "Error_Message";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setErrorMessage(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x04c3:
        r0 = "card_token";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x04cb:
        r0 = "card_token";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setCardToken(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x04da:
        r0 = "name_on_card";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x04e2:
        r0 = "name_on_card";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setNameOnCard(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x04f1:
        r0 = "card_no";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x04f9:
        r0 = "card_no";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setCardNumber(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x0508:
        r0 = "issuingBank";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x0510:
        r0 = "issuingBank";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setIssuingBank(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x051f:
        r0 = "card_type";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x0527:
        r0 = "card_type";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setCardType(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x0536:
        r0 = "is_seamless";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x053e:
        r0 = "is_seamless";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setIsSeamless(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x054d:
        r0 = "surl";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x0555:
        r0 = "surl";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setSurl(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x0564:
        r0 = "furl";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x056c:
        r0 = "furl";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setFurl(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x057b:
        r0 = "merchant_hash";
        r0 = r2.has(r0);	 Catch:{ JSONException -> 0x003c }
        if (r0 == 0) goto L_0x000e;
    L_0x0583:
        r0 = "merchant_hash";
        r0 = r2.get(r0);	 Catch:{ JSONException -> 0x003c }
        r0 = r0.toString();	 Catch:{ JSONException -> 0x003c }
        r1.setMerchantHash(r0);	 Catch:{ JSONException -> 0x003c }
        goto L_0x000e;
    L_0x0592:
        r0 = r1;
        goto L_0x0041;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.payu.india.Payu.PayuUtils.getTransactionResponse(java.lang.String):com.payu.india.Model.TransactionResponse");
    }

    protected String getUdid() {
        try {
            return Secure.getString(Payu.getInstance().getCallingAppContext().getContentResolver(), "android_id");
        } catch (Exception e) {
            return PayuConstants.DEFAULT;
        }
    }

    public Boolean luhn(String str) {
        int i = 0;
        boolean z = false;
        int length = str.length() - 1;
        while (length >= 0) {
            int parseInt = Integer.parseInt(str.substring(length, length + 1));
            if (z) {
                parseInt *= 2;
                if (parseInt > 9) {
                    parseInt = (parseInt % 10) + 1;
                }
            }
            i += parseInt;
            length--;
            z = !z;
        }
        return i % 10 == 0 ? Boolean.valueOf(true) : Boolean.valueOf(false);
    }

    public void removeFromSharedPreferences(Context context, String str) {
        Editor edit = context.getSharedPreferences(PayuConstants.PAYU_PREFERENCE, 0).edit();
        edit.remove(str);
        edit.apply();
    }

    public void storeInSharedPreferences(Context context, String str, String str2) {
        Editor edit = context.getSharedPreferences(PayuConstants.PAYU_PREFERENCE, 0).edit();
        edit.putString(str, str2);
        edit.apply();
    }

    protected String trimAmpersand(String str) {
        return str.charAt(str.length() + -1) == '&' ? str.substring(0, str.length() - 1) : str;
    }

    public Boolean validateCardNumber(String str) {
        return str.length() < 12 ? Boolean.valueOf(false) : (getIssuer(str).contentEquals(PayuConstants.RUPAY) && str.length() == 16) ? luhn(str) : (getIssuer(str).contentEquals(PayuConstants.VISA) && str.length() == 16) ? luhn(str) : (getIssuer(str).contentEquals(PayuConstants.MAST) && str.length() == 16) ? luhn(str) : ((getIssuer(str).contentEquals(PayuConstants.MAES) || getIssuer(str).contentEquals(PayuConstants.SMAE)) && str.length() >= 12 && str.length() <= 19) ? luhn(str) : (getIssuer(str).contentEquals(PayuConstants.DINR) && str.length() == 14) ? luhn(str) : (getIssuer(str).contentEquals(PayuConstants.AMEX) && str.length() == 15) ? luhn(str) : (getIssuer(str).contentEquals(PayuConstants.JCB) && str.length() == 16) ? luhn(str) : Boolean.valueOf(false);
    }

    public boolean validateCvv(String str, String str2) {
        String issuer = getIssuer(str);
        if (issuer.contentEquals(PayuConstants.SMAE)) {
            return true;
        }
        if (issuer.contentEquals(BuildConfig.VERSION_NAME)) {
            return false;
        }
        return ((str2.length() == 4 ? 1 : 0) & issuer.contentEquals(PayuConstants.AMEX)) == 0 ? !issuer.contentEquals(PayuConstants.AMEX) && str2.length() == 3 : true;
    }

    public boolean validateExpiry(int i, int i2) {
        boolean z = true;
        Calendar instance = Calendar.getInstance();
        if (i < 1 || i > 12 || String.valueOf(i2).length() != 4) {
            z = false;
        } else if (instance.get(1) > i2) {
            return false;
        } else {
            if (instance.get(1) == i2 && instance.get(2) + 1 > i) {
                return false;
            }
        }
        return z;
    }
}
