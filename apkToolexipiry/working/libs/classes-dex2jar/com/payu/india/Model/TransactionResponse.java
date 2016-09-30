package com.payu.india.Model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class TransactionResponse implements Parcelable {
    public static final Creator<TransactionResponse> CREATOR;
    private String addedOn;
    private String additionalCharges;
    private String bankRefNo;
    private String cardCategory;
    private String cardNumber;
    private String cardToken;
    private String cardType;
    private String discount;
    private String email;
    private String errorCode;
    private String errorMessage;
    private String field1;
    private String field2;
    private String field3;
    private String field4;
    private String field9;
    private String firstName;
    private String furl;
    private String hash;
    private String ibiboCode;
    private String id;
    private String isSeamless;
    private String issuingBank;
    private String key;
    private String merchantHash;
    private String mode;
    private String nameOnCard;
    private String paymentSource;
    private String pgType;
    private String productInfo;
    private String status;
    private String surl;
    private String transactionFee;
    private String transactionResponse;
    private String txnid;
    private String udf1;
    private String udf2;
    private String udf3;
    private String udf4;
    private String udf5;
    private String unMappedStatus;

    static {
        CREATOR = new Creator<TransactionResponse>() {
            public TransactionResponse createFromParcel(Parcel parcel) {
                return new TransactionResponse(parcel);
            }

            public TransactionResponse[] newArray(int i) {
                return new TransactionResponse[i];
            }
        };
    }

    protected TransactionResponse(Parcel parcel) {
        this.id = parcel.readString();
        this.mode = parcel.readString();
        this.status = parcel.readString();
        this.unMappedStatus = parcel.readString();
        this.key = parcel.readString();
        this.txnid = parcel.readString();
        this.transactionFee = parcel.readString();
        this.cardCategory = parcel.readString();
        this.discount = parcel.readString();
        this.additionalCharges = parcel.readString();
        this.addedOn = parcel.readString();
        this.productInfo = parcel.readString();
        this.firstName = parcel.readString();
        this.email = parcel.readString();
        this.udf1 = parcel.readString();
        this.udf2 = parcel.readString();
        this.udf3 = parcel.readString();
        this.udf4 = parcel.readString();
        this.udf5 = parcel.readString();
        this.hash = parcel.readString();
        this.field1 = parcel.readString();
        this.field2 = parcel.readString();
        this.field3 = parcel.readString();
        this.field4 = parcel.readString();
        this.field9 = parcel.readString();
        this.paymentSource = parcel.readString();
        this.pgType = parcel.readString();
        this.bankRefNo = parcel.readString();
        this.ibiboCode = parcel.readString();
        this.errorCode = parcel.readString();
        this.errorMessage = parcel.readString();
        this.cardToken = parcel.readString();
        this.nameOnCard = parcel.readString();
        this.cardNumber = parcel.readString();
        this.issuingBank = parcel.readString();
        this.cardType = parcel.readString();
        this.isSeamless = parcel.readString();
        this.surl = parcel.readString();
        this.furl = parcel.readString();
        this.merchantHash = parcel.readString();
    }

    public int describeContents() {
        return 0;
    }

    public String getAddedOn() {
        return this.addedOn;
    }

    public String getAdditionalCharges() {
        return this.additionalCharges;
    }

    public String getBankRefNo() {
        return this.bankRefNo;
    }

    public String getCardCategory() {
        return this.cardCategory;
    }

    public String getCardNumber() {
        return this.cardNumber;
    }

    public String getCardToken() {
        return this.cardToken;
    }

    public String getCardType() {
        return this.cardType;
    }

    public String getDiscount() {
        return this.discount;
    }

    public String getEmail() {
        return this.email;
    }

    public String getErrorCode() {
        return this.errorCode;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }

    public String getField1() {
        return this.field1;
    }

    public String getField2() {
        return this.field2;
    }

    public String getField3() {
        return this.field3;
    }

    public String getField4() {
        return this.field4;
    }

    public String getField9() {
        return this.field9;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public String getFurl() {
        return this.furl;
    }

    public String getHash() {
        return this.hash;
    }

    public String getIbiboCode() {
        return this.ibiboCode;
    }

    public String getId() {
        return this.id;
    }

    public String getIsSeamless() {
        return this.isSeamless;
    }

    public String getIssuingBank() {
        return this.issuingBank;
    }

    public String getKey() {
        return this.key;
    }

    public String getMerchantHash() {
        return this.merchantHash;
    }

    public String getMode() {
        return this.mode;
    }

    public String getNameOnCard() {
        return this.nameOnCard;
    }

    public String getPaymentSource() {
        return this.paymentSource;
    }

    public String getPgType() {
        return this.pgType;
    }

    public String getProductInfo() {
        return this.productInfo;
    }

    public String getStatus() {
        return this.status;
    }

    public String getSurl() {
        return this.surl;
    }

    public String getTransactionFee() {
        return this.transactionFee;
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

    public String getUnMappedStatus() {
        return this.unMappedStatus;
    }

    public void setAddedOn(String str) {
        this.addedOn = str;
    }

    public void setAdditionalCharges(String str) {
        this.additionalCharges = str;
    }

    public void setBankRefNo(String str) {
        this.bankRefNo = str;
    }

    public void setCardCategory(String str) {
        this.cardCategory = str;
    }

    public void setCardNumber(String str) {
        this.cardNumber = str;
    }

    public void setCardToken(String str) {
        this.cardToken = str;
    }

    public void setCardType(String str) {
        this.cardType = str;
    }

    public void setDiscount(String str) {
        this.discount = str;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public void setErrorCode(String str) {
        this.errorCode = str;
    }

    public void setErrorMessage(String str) {
        this.errorMessage = str;
    }

    public void setField1(String str) {
        this.field1 = str;
    }

    public void setField2(String str) {
        this.field2 = str;
    }

    public void setField3(String str) {
        this.field3 = str;
    }

    public void setField4(String str) {
        this.field4 = str;
    }

    public void setField9(String str) {
        this.field9 = str;
    }

    public void setFirstName(String str) {
        this.firstName = str;
    }

    public void setFurl(String str) {
        this.furl = str;
    }

    public void setHash(String str) {
        this.hash = str;
    }

    public void setIbiboCode(String str) {
        this.ibiboCode = str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setIsSeamless(String str) {
        this.isSeamless = str;
    }

    public void setIssuingBank(String str) {
        this.issuingBank = str;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setMerchantHash(String str) {
        this.merchantHash = str;
    }

    public void setMode(String str) {
        this.mode = str;
    }

    public void setNameOnCard(String str) {
        this.nameOnCard = str;
    }

    public void setPaymentSource(String str) {
        this.paymentSource = str;
    }

    public void setPgType(String str) {
        this.pgType = str;
    }

    public void setProductInfo(String str) {
        this.productInfo = str;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public void setSurl(String str) {
        this.surl = str;
    }

    public void setTransactionFee(String str) {
        this.transactionFee = str;
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

    public void setUnMappedStatus(String str) {
        this.unMappedStatus = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.id);
        parcel.writeString(this.mode);
        parcel.writeString(this.status);
        parcel.writeString(this.unMappedStatus);
        parcel.writeString(this.key);
        parcel.writeString(this.txnid);
        parcel.writeString(this.transactionFee);
        parcel.writeString(this.cardCategory);
        parcel.writeString(this.discount);
        parcel.writeString(this.additionalCharges);
        parcel.writeString(this.addedOn);
        parcel.writeString(this.productInfo);
        parcel.writeString(this.firstName);
        parcel.writeString(this.email);
        parcel.writeString(this.udf1);
        parcel.writeString(this.udf2);
        parcel.writeString(this.udf3);
        parcel.writeString(this.udf4);
        parcel.writeString(this.udf5);
        parcel.writeString(this.hash);
        parcel.writeString(this.field1);
        parcel.writeString(this.field2);
        parcel.writeString(this.field3);
        parcel.writeString(this.field4);
        parcel.writeString(this.field9);
        parcel.writeString(this.paymentSource);
        parcel.writeString(this.pgType);
        parcel.writeString(this.bankRefNo);
        parcel.writeString(this.ibiboCode);
        parcel.writeString(this.errorCode);
        parcel.writeString(this.errorMessage);
        parcel.writeString(this.cardToken);
        parcel.writeString(this.nameOnCard);
        parcel.writeString(this.cardNumber);
        parcel.writeString(this.issuingBank);
        parcel.writeString(this.cardType);
        parcel.writeString(this.isSeamless);
        parcel.writeString(this.surl);
        parcel.writeString(this.furl);
        parcel.writeString(this.merchantHash);
    }
}
