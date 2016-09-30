package com.payu.custombrowser.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Size;
import com.payu.custombrowser.Bank;
import com.payu.custombrowser.R;
import com.payu.custombrowser.util.CBUtil;
import com.payu.india.Payu.PayuConstants;
import com.payu.magicretry.Helpers.MRConstant;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashMap;

public class CustomBrowserConfig implements Parcelable {
    public static final Creator<CustomBrowserConfig> CREATOR;
    public static final int FAIL_MODE = 2;
    public static final int STOREONECLICKHASH_MODE_NONE = 0;
    public static final int STOREONECLICKHASH_MODE_SERVER = 1;
    public static final int WARN_MODE = 1;
    private int autoApprove;
    private int autoSelectOTP;
    private int disableBackButtonDialog;
    private int enableSnooze;
    private int magicRetry;
    private String merchantCheckoutActivityPath;
    private String merchantKey;
    private int merchantSMSPermission;
    private String payuPostData;
    private String postURL;
    private String sPNGoodNWBody;
    private String sPNGoodNWHeader;
    private String sPNGoodNWTitle;
    private String sPNPoorNWBody;
    private String sPNPoorNWHeader;
    private String sPNPoorNWTitle;
    private String sPNTxnNotVerifiedBody;
    private String sPNTxnNotVerifiedHeader;
    private String sPNTxnNotVerifiedTitle;
    private String sPNTxnVerifiedBody;
    private String sPNTxnVerifiedHeader;
    private String sPNTxnVerifiedTitle;
    private String sdkVersionName;
    private int showCustombrowser;
    private int snoozeMode;
    private int storeOneClickHash;
    private int surePayNotificationIcon;
    private String transactionID;
    private int viewPortWideEnable;

    @Retention(RetentionPolicy.SOURCE)
    public @interface SnoozeMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface StoreOneClickHashMode {
    }

    static {
        CREATOR = new Creator<CustomBrowserConfig>() {
            public CustomBrowserConfig createFromParcel(Parcel parcel) {
                return new CustomBrowserConfig(parcel);
            }

            public CustomBrowserConfig[] newArray(int i) {
                return new CustomBrowserConfig[i];
            }
        };
    }

    private CustomBrowserConfig() {
        this.magicRetry = WARN_MODE;
    }

    protected CustomBrowserConfig(Parcel parcel) {
        this.magicRetry = WARN_MODE;
        this.viewPortWideEnable = parcel.readInt();
        this.autoApprove = parcel.readInt();
        this.autoSelectOTP = parcel.readInt();
        this.transactionID = parcel.readString();
        this.merchantKey = parcel.readString();
        this.sdkVersionName = parcel.readString();
        this.showCustombrowser = parcel.readInt();
        this.disableBackButtonDialog = parcel.readInt();
        this.storeOneClickHash = parcel.readInt();
        this.magicRetry = parcel.readInt();
        this.merchantSMSPermission = parcel.readInt();
        this.enableSnooze = parcel.readInt();
        this.merchantCheckoutActivityPath = parcel.readString();
        this.postURL = parcel.readString();
        this.payuPostData = parcel.readString();
        this.surePayNotificationIcon = parcel.readInt();
        this.sPNGoodNWTitle = parcel.readString();
        this.sPNGoodNWHeader = parcel.readString();
        this.sPNGoodNWBody = parcel.readString();
        this.sPNPoorNWTitle = parcel.readString();
        this.sPNPoorNWHeader = parcel.readString();
        this.sPNPoorNWBody = parcel.readString();
        this.sPNTxnVerifiedTitle = parcel.readString();
        this.sPNTxnVerifiedHeader = parcel.readString();
        this.sPNTxnVerifiedBody = parcel.readString();
        this.sPNTxnNotVerifiedTitle = parcel.readString();
        this.sPNTxnNotVerifiedHeader = parcel.readString();
        this.sPNTxnNotVerifiedBody = parcel.readString();
        this.snoozeMode = parcel.readInt();
    }

    public CustomBrowserConfig(@Size(max = 6, min = 6) @NonNull String str, @NonNull String str2) {
        this.magicRetry = WARN_MODE;
        this.transactionID = str2;
        this.merchantKey = str;
        this.surePayNotificationIcon = R.drawable.surepay_logo;
        this.sPNGoodNWTitle = "Internet Restored";
        this.sPNGoodNWHeader = "You can now resume the transaction";
        this.sPNPoorNWTitle = "No Internet Found";
        this.sPNPoorNWHeader = "We could not detect internet on your device";
        this.sPNTxnVerifiedTitle = "Transaction Verified";
        this.sPNTxnVerifiedHeader = "The bank has verified this transaction and we are good to go.";
        this.sPNTxnNotVerifiedTitle = "Transaction Status Unknown";
        this.sPNTxnNotVerifiedHeader = "The bank could not verify the transaction at this time.";
        this.enableSnooze = 3;
        this.snoozeMode = WARN_MODE;
    }

    public int describeContents() {
        return STOREONECLICKHASH_MODE_NONE;
    }

    public int getAutoApprove() {
        return this.autoApprove;
    }

    public int getAutoSelectOTP() {
        return this.autoSelectOTP;
    }

    public int getDisableBackButtonDialog() {
        return this.disableBackButtonDialog;
    }

    public int getEnableSnooze() {
        return this.enableSnooze;
    }

    public int getMagicretry() {
        return this.magicRetry;
    }

    public String getMerchantCheckoutActivityPath() {
        return this.merchantCheckoutActivityPath;
    }

    public String getMerchantKey() {
        return this.merchantKey;
    }

    public int getMerchantSMSPermission() {
        return this.merchantSMSPermission;
    }

    public String getPayuPostData() {
        return this.payuPostData;
    }

    public String getPostURL() {
        return this.postURL;
    }

    public String getSdkVersionName() {
        return this.sdkVersionName;
    }

    public int getShowCustombrowser() {
        return this.showCustombrowser;
    }

    public int getSnoozeMode() {
        return this.snoozeMode;
    }

    public int getStoreOneClickHash() {
        return this.storeOneClickHash;
    }

    public int getSurePayNotificationIcon() {
        return this.surePayNotificationIcon;
    }

    public String getTransactionID() {
        return this.transactionID;
    }

    public int getViewPortWideEnable() {
        return this.viewPortWideEnable;
    }

    public String getsPNGoodNWBody() {
        return this.sPNGoodNWBody;
    }

    public String getsPNGoodNWHeader() {
        return this.sPNGoodNWHeader;
    }

    public String getsPNGoodNWTitle() {
        return this.sPNGoodNWTitle;
    }

    public String getsPNPoorNWBody() {
        return this.sPNPoorNWBody;
    }

    public String getsPNPoorNWHeader() {
        return this.sPNPoorNWHeader;
    }

    public String getsPNPoorNWTitle() {
        return this.sPNPoorNWTitle;
    }

    public String getsPNTxnNotVerifiedBody() {
        return this.sPNTxnNotVerifiedBody;
    }

    public String getsPNTxnNotVerifiedHeader() {
        return this.sPNTxnNotVerifiedHeader;
    }

    public String getsPNTxnNotVerifiedTitle() {
        return this.sPNTxnNotVerifiedTitle;
    }

    public String getsPNTxnVerifiedBody() {
        return this.sPNTxnVerifiedBody;
    }

    public String getsPNTxnVerifiedHeader() {
        return this.sPNTxnVerifiedHeader;
    }

    public String getsPNTxnVerifiedTitle() {
        return this.sPNTxnVerifiedTitle;
    }

    public void setAutoApprove(boolean z) {
        this.autoApprove = z ? WARN_MODE : STOREONECLICKHASH_MODE_NONE;
    }

    public void setAutoSelectOTP(boolean z) {
        this.autoSelectOTP = z ? WARN_MODE : STOREONECLICKHASH_MODE_NONE;
    }

    public void setDisableBackButtonDialog(boolean z) {
        this.disableBackButtonDialog = z ? WARN_MODE : STOREONECLICKHASH_MODE_NONE;
    }

    public void setEnableSnooze(@IntRange(from = 0, to = 3) int i) {
        if (i > 3) {
            i = 3;
        }
        this.enableSnooze = i;
    }

    public void setMerchantCheckoutActivityPath(String str) {
        this.merchantCheckoutActivityPath = str;
    }

    public void setMerchantKey(String str) {
        this.merchantKey = Bank.keyAnalytics;
        if (this.merchantKey == null || this.merchantKey.trim().length() < WARN_MODE) {
            this.merchantKey = str;
            Bank.keyAnalytics = str;
        }
    }

    public void setMerchantSMSPermission(boolean z) {
        this.merchantSMSPermission = z ? WARN_MODE : STOREONECLICKHASH_MODE_NONE;
    }

    public void setPayuPostData(String str) {
        this.payuPostData = str;
        HashMap dataFromPostData = new CBUtil().getDataFromPostData(str);
        String str2 = "Product info: " + ((String) dataFromPostData.get(PayuConstants.PRODUCT_INFO)) + "\nAmount: " + ((String) dataFromPostData.get(PayuConstants.AMOUNT));
        if (this.sPNGoodNWBody == null) {
            setsPNGoodNWBody(str2);
        }
        if (this.sPNPoorNWBody == null) {
            setsPNPoorNWBody(str2);
        }
        if (this.sPNTxnVerifiedBody == null) {
            setsPNTxnVerifiedBody(str2);
        }
        if (this.sPNTxnNotVerifiedBody == null) {
            setsPNTxnNotVerifiedBody(str2);
        }
        if (dataFromPostData.get(MRConstant.KEY) != null) {
            setMerchantKey(Bank.keyAnalytics == null ? (String) dataFromPostData.get(MRConstant.KEY) : Bank.keyAnalytics);
        }
    }

    public void setPostURL(String str) {
        this.postURL = str;
    }

    public void setSdkVersionName(String str) {
        this.sdkVersionName = str;
    }

    public void setShowCustombrowser(boolean z) {
        this.showCustombrowser = z ? WARN_MODE : STOREONECLICKHASH_MODE_NONE;
    }

    public void setSnoozeMode(int i) {
        this.snoozeMode = i;
    }

    public void setStoreOneClickHash(int i) {
        this.storeOneClickHash = i;
    }

    public void setSurePayNotificationIcon(int i) {
        this.surePayNotificationIcon = i;
    }

    public void setViewPortWideEnable(boolean z) {
        this.viewPortWideEnable = z ? WARN_MODE : STOREONECLICKHASH_MODE_NONE;
    }

    public void setmagicRetry(boolean z) {
        this.magicRetry = z ? WARN_MODE : STOREONECLICKHASH_MODE_NONE;
    }

    public void setsPNGoodNWBody(String str) {
        this.sPNGoodNWBody = str;
    }

    public void setsPNGoodNWHeader(String str) {
        this.sPNGoodNWHeader = str;
    }

    public void setsPNGoodNWTitle(String str) {
        this.sPNGoodNWTitle = str;
    }

    public void setsPNPoorNWBody(String str) {
        this.sPNPoorNWBody = str;
    }

    public void setsPNPoorNWHeader(String str) {
        this.sPNPoorNWHeader = str;
    }

    public void setsPNPoorNWTitle(String str) {
        this.sPNPoorNWTitle = str;
    }

    public void setsPNTxnNotVerifiedBody(String str) {
        this.sPNTxnNotVerifiedBody = str;
    }

    public void setsPNTxnNotVerifiedHeader(String str) {
        this.sPNTxnNotVerifiedHeader = str;
    }

    public void setsPNTxnNotVerifiedTitle(String str) {
        this.sPNTxnNotVerifiedTitle = str;
    }

    public void setsPNTxnVerifiedBody(String str) {
        this.sPNTxnVerifiedBody = str;
    }

    public void setsPNTxnVerifiedHeader(String str) {
        this.sPNTxnVerifiedHeader = str;
    }

    public void setsPNTxnVerifiedTitle(String str) {
        this.sPNTxnVerifiedTitle = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.viewPortWideEnable);
        parcel.writeInt(this.autoApprove);
        parcel.writeInt(this.autoSelectOTP);
        parcel.writeString(this.transactionID);
        parcel.writeString(this.merchantKey);
        parcel.writeString(this.sdkVersionName);
        parcel.writeInt(this.showCustombrowser);
        parcel.writeInt(this.disableBackButtonDialog);
        parcel.writeInt(this.storeOneClickHash);
        parcel.writeInt(this.magicRetry);
        parcel.writeInt(this.merchantSMSPermission);
        parcel.writeInt(this.enableSnooze);
        parcel.writeString(this.merchantCheckoutActivityPath);
        parcel.writeString(this.postURL);
        parcel.writeString(this.payuPostData);
        parcel.writeInt(this.surePayNotificationIcon);
        parcel.writeString(this.sPNGoodNWTitle);
        parcel.writeString(this.sPNGoodNWHeader);
        parcel.writeString(this.sPNGoodNWBody);
        parcel.writeString(this.sPNPoorNWTitle);
        parcel.writeString(this.sPNPoorNWHeader);
        parcel.writeString(this.sPNPoorNWBody);
        parcel.writeString(this.sPNTxnVerifiedTitle);
        parcel.writeString(this.sPNTxnVerifiedHeader);
        parcel.writeString(this.sPNTxnVerifiedBody);
        parcel.writeString(this.sPNTxnNotVerifiedTitle);
        parcel.writeString(this.sPNTxnNotVerifiedHeader);
        parcel.writeString(this.sPNTxnNotVerifiedBody);
        parcel.writeInt(this.snoozeMode);
    }
}
