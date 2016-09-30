package com.payu.india.Model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class TransactionDetails implements Parcelable {
    public static final Creator<TransactionDetails> CREATOR;
    private String addedon;
    private String additionalCharges;
    private String amount;
    private String bankCode;
    private String bankName;
    private String bankRefNo;
    private String bankReferenceNumber;
    private String cardNo;
    private String cardtype;
    private String discount;
    private String email;
    private String errorCode;
    private String errorMessage;
    private String failureReason;
    private String field2;
    private String field9;
    private String firstname;
    private String ibiboCode;
    private String id;
    private String ip;
    private String key;
    private String lastname;
    private String merServiceFee;
    private String merServiceTax;
    private String merchantUTR;
    private String merchantname;
    private String mihpayId;
    private String mode;
    private String nameOnCard;
    private String netAmountDebit;
    private String offerKey;
    private String offerType;
    private String paymentGateway;
    private String pgMid;
    private String pgType;
    private String phone;
    private String productinfo;
    private String requestId;
    private String settledAt;
    private String status;
    private String txnid;
    private String udf1;
    private String udf2;
    private String udf3;
    private String udf4;
    private String udf5;
    private String unmappedStatus;

    static {
        CREATOR = new Creator<TransactionDetails>() {
            public TransactionDetails createFromParcel(Parcel parcel) {
                return new TransactionDetails(parcel);
            }

            public TransactionDetails[] newArray(int i) {
                return new TransactionDetails[i];
            }
        };
    }

    protected TransactionDetails(Parcel parcel) {
        this.mihpayId = parcel.readString();
        this.requestId = parcel.readString();
        this.bankReferenceNumber = parcel.readString();
        this.field9 = parcel.readString();
        this.netAmountDebit = parcel.readString();
        this.pgType = parcel.readString();
        this.nameOnCard = parcel.readString();
        this.unmappedStatus = parcel.readString();
        this.merchantUTR = parcel.readString();
        this.settledAt = parcel.readString();
        this.id = parcel.readString();
        this.status = parcel.readString();
        this.key = parcel.readString();
        this.merchantname = parcel.readString();
        this.txnid = parcel.readString();
        this.firstname = parcel.readString();
        this.lastname = parcel.readString();
        this.addedon = parcel.readString();
        this.bankName = parcel.readString();
        this.paymentGateway = parcel.readString();
        this.phone = parcel.readString();
        this.email = parcel.readString();
        this.amount = parcel.readString();
        this.discount = parcel.readString();
        this.additionalCharges = parcel.readString();
        this.productinfo = parcel.readString();
        this.errorCode = parcel.readString();
        this.errorMessage = parcel.readString();
        this.bankRefNo = parcel.readString();
        this.ibiboCode = parcel.readString();
        this.mode = parcel.readString();
        this.ip = parcel.readString();
        this.cardNo = parcel.readString();
        this.cardtype = parcel.readString();
        this.offerKey = parcel.readString();
        this.field2 = parcel.readString();
        this.udf1 = parcel.readString();
        this.udf2 = parcel.readString();
        this.udf3 = parcel.readString();
        this.udf4 = parcel.readString();
        this.udf5 = parcel.readString();
        this.pgMid = parcel.readString();
        this.offerType = parcel.readString();
        this.failureReason = parcel.readString();
        this.merServiceFee = parcel.readString();
        this.merServiceTax = parcel.readString();
        this.bankCode = parcel.readString();
    }

    public int describeContents() {
        return 0;
    }

    public String getAddedon() {
        return this.addedon;
    }

    public String getAdditionalCharges() {
        return this.additionalCharges;
    }

    public String getAmount() {
        return this.amount;
    }

    public String getBankCode() {
        return this.bankCode;
    }

    public String getBankName() {
        return this.bankName;
    }

    public String getBankRefNo() {
        return this.bankRefNo;
    }

    public String getBankReferenceNumber() {
        return this.bankReferenceNumber;
    }

    public String getCardNo() {
        return this.cardNo;
    }

    public String getCardtype() {
        return this.cardtype;
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

    public String getFailureReason() {
        return this.failureReason;
    }

    public String getField2() {
        return this.field2;
    }

    public String getField9() {
        return this.field9;
    }

    public String getFirstname() {
        return this.firstname;
    }

    public String getIbiboCode() {
        return this.ibiboCode;
    }

    public String getId() {
        return this.id;
    }

    public String getIp() {
        return this.ip;
    }

    public String getKey() {
        return this.key;
    }

    public String getLastname() {
        return this.lastname;
    }

    public String getMerServiceFee() {
        return this.merServiceFee;
    }

    public String getMerServiceTax() {
        return this.merServiceTax;
    }

    public String getMerchantUTR() {
        return this.merchantUTR;
    }

    public String getMerchantname() {
        return this.merchantname;
    }

    public String getMihpayId() {
        return this.mihpayId;
    }

    public String getMode() {
        return this.mode;
    }

    public String getNameOnCard() {
        return this.nameOnCard;
    }

    public String getNetAmountDebit() {
        return this.netAmountDebit;
    }

    public String getOfferKey() {
        return this.offerKey;
    }

    public String getOfferType() {
        return this.offerType;
    }

    public String getPaymentGateway() {
        return this.paymentGateway;
    }

    public String getPgMid() {
        return this.pgMid;
    }

    public String getPgType() {
        return this.pgType;
    }

    public String getPhone() {
        return this.phone;
    }

    public String getProductinfo() {
        return this.productinfo;
    }

    public String getRequestId() {
        return this.requestId;
    }

    public String getSettledAt() {
        return this.settledAt;
    }

    public String getStatus() {
        return this.status;
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

    public String getUnmappedStatus() {
        return this.unmappedStatus;
    }

    public void setAddedon(String str) {
        this.addedon = str;
    }

    public void setAdditionalCharges(String str) {
        this.additionalCharges = str;
    }

    public void setAmount(String str) {
        this.amount = str;
    }

    public void setBankCode(String str) {
        this.bankCode = str;
    }

    public void setBankName(String str) {
        this.bankName = str;
    }

    public void setBankRefNo(String str) {
        this.bankRefNo = str;
    }

    public void setBankReferenceNumber(String str) {
        this.bankReferenceNumber = str;
    }

    public void setCardNo(String str) {
        this.cardNo = str;
    }

    public void setCardtype(String str) {
        this.cardtype = str;
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

    public void setFailureReason(String str) {
        this.failureReason = str;
    }

    public void setField2(String str) {
        this.field2 = str;
    }

    public void setField9(String str) {
        this.field9 = str;
    }

    public void setFirstname(String str) {
        this.firstname = str;
    }

    public void setIbiboCode(String str) {
        this.ibiboCode = str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setIp(String str) {
        this.ip = str;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setLastname(String str) {
        this.lastname = str;
    }

    public void setMerServiceFee(String str) {
        this.merServiceFee = str;
    }

    public void setMerServiceTax(String str) {
        this.merServiceTax = str;
    }

    public void setMerchantUTR(String str) {
        this.merchantUTR = str;
    }

    public void setMerchantname(String str) {
        this.merchantname = str;
    }

    public void setMihpayId(String str) {
        this.mihpayId = str;
    }

    public void setMode(String str) {
        this.mode = str;
    }

    public void setNameOnCard(String str) {
        this.nameOnCard = str;
    }

    public void setNetAmountDebit(String str) {
        this.netAmountDebit = str;
    }

    public void setOfferKey(String str) {
        this.offerKey = str;
    }

    public void setOfferType(String str) {
        this.offerType = str;
    }

    public void setPaymentGateway(String str) {
        this.paymentGateway = str;
    }

    public void setPgMid(String str) {
        this.pgMid = str;
    }

    public void setPgType(String str) {
        this.pgType = str;
    }

    public void setPhone(String str) {
        this.phone = str;
    }

    public void setProductinfo(String str) {
        this.productinfo = str;
    }

    public void setRequestId(String str) {
        this.requestId = str;
    }

    public void setSettledAt(String str) {
        this.settledAt = str;
    }

    public void setStatus(String str) {
        this.status = str;
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

    public void setUnmappedStatus(String str) {
        this.unmappedStatus = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mihpayId);
        parcel.writeString(this.requestId);
        parcel.writeString(this.bankReferenceNumber);
        parcel.writeString(this.field9);
        parcel.writeString(this.netAmountDebit);
        parcel.writeString(this.pgType);
        parcel.writeString(this.nameOnCard);
        parcel.writeString(this.unmappedStatus);
        parcel.writeString(this.merchantUTR);
        parcel.writeString(this.settledAt);
        parcel.writeString(this.id);
        parcel.writeString(this.status);
        parcel.writeString(this.key);
        parcel.writeString(this.merchantname);
        parcel.writeString(this.txnid);
        parcel.writeString(this.firstname);
        parcel.writeString(this.lastname);
        parcel.writeString(this.addedon);
        parcel.writeString(this.bankName);
        parcel.writeString(this.paymentGateway);
        parcel.writeString(this.phone);
        parcel.writeString(this.email);
        parcel.writeString(this.amount);
        parcel.writeString(this.discount);
        parcel.writeString(this.additionalCharges);
        parcel.writeString(this.productinfo);
        parcel.writeString(this.errorCode);
        parcel.writeString(this.errorMessage);
        parcel.writeString(this.bankRefNo);
        parcel.writeString(this.ibiboCode);
        parcel.writeString(this.mode);
        parcel.writeString(this.ip);
        parcel.writeString(this.cardNo);
        parcel.writeString(this.cardtype);
        parcel.writeString(this.offerKey);
        parcel.writeString(this.field2);
        parcel.writeString(this.udf1);
        parcel.writeString(this.udf2);
        parcel.writeString(this.udf3);
        parcel.writeString(this.udf4);
        parcel.writeString(this.udf5);
        parcel.writeString(this.pgMid);
        parcel.writeString(this.offerType);
        parcel.writeString(this.failureReason);
        parcel.writeString(this.merServiceFee);
        parcel.writeString(this.merServiceTax);
        parcel.writeString(this.bankCode);
    }
}
