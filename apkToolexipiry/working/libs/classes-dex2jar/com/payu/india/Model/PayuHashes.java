package com.payu.india.Model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class PayuHashes implements Parcelable {
    public static final Creator<PayuHashes> CREATOR;
    private String cancelRefundTransactionHash;
    private String captureTransactionHash;
    private String checkActionStatusHash;
    private String checkIsDomesticHash;
    private String checkOfferDetailsHash;
    private String checkOfferStatusHash;
    private String checkPaymentHash;
    private String codCancelHash;
    private String codVerifyHash;
    private String createInvoiceHash;
    private String deleteCardHash;
    private String deleteStoreCardCvv;
    private String editCardHash;
    private String emiAmountAccordingToInterestHash;
    private String getTdrHash;
    private String issuingBankStatusHash;
    @Deprecated
    private String merchantIbiboCodesHash;
    private String netBankingStatusHash;
    private String paymentHash;
    private String paymentRelatedDetailsForMobileSdkHash;
    private String saveCardHash;
    private String storedCardsHash;
    private String transactionDetailsHash;
    private String transactionInfoHash;
    private String udfUpdateHash;
    private String updateRequestsHash;
    private String vasForMobileSdkHash;
    private String verifyPaymentHash;

    static {
        CREATOR = new Creator<PayuHashes>() {
            public PayuHashes createFromParcel(Parcel parcel) {
                return new PayuHashes(parcel);
            }

            public PayuHashes[] newArray(int i) {
                return new PayuHashes[i];
            }
        };
    }

    protected PayuHashes(Parcel parcel) {
        this.paymentHash = parcel.readString();
        this.verifyPaymentHash = parcel.readString();
        this.checkPaymentHash = parcel.readString();
        this.cancelRefundTransactionHash = parcel.readString();
        this.checkActionStatusHash = parcel.readString();
        this.captureTransactionHash = parcel.readString();
        this.updateRequestsHash = parcel.readString();
        this.codVerifyHash = parcel.readString();
        this.codCancelHash = parcel.readString();
        this.getTdrHash = parcel.readString();
        this.udfUpdateHash = parcel.readString();
        this.createInvoiceHash = parcel.readString();
        this.checkOfferStatusHash = parcel.readString();
        this.netBankingStatusHash = parcel.readString();
        this.issuingBankStatusHash = parcel.readString();
        this.transactionDetailsHash = parcel.readString();
        this.transactionInfoHash = parcel.readString();
        this.checkIsDomesticHash = parcel.readString();
        this.storedCardsHash = parcel.readString();
        this.saveCardHash = parcel.readString();
        this.editCardHash = parcel.readString();
        this.deleteCardHash = parcel.readString();
        this.merchantIbiboCodesHash = parcel.readString();
        this.vasForMobileSdkHash = parcel.readString();
        this.paymentRelatedDetailsForMobileSdkHash = parcel.readString();
        this.deleteStoreCardCvv = parcel.readString();
        this.checkOfferDetailsHash = parcel.readString();
        this.emiAmountAccordingToInterestHash = parcel.readString();
    }

    public int describeContents() {
        return 0;
    }

    public String getCancelRefundTransactionHash() {
        return this.cancelRefundTransactionHash;
    }

    public String getCaptureTransactionHash() {
        return this.captureTransactionHash;
    }

    public String getCheckActionStatusHash() {
        return this.checkActionStatusHash;
    }

    public String getCheckIsDomesticHash() {
        return this.checkIsDomesticHash;
    }

    public String getCheckOfferDetailsHash() {
        return this.checkOfferDetailsHash;
    }

    public String getCheckOfferStatusHash() {
        return this.checkOfferStatusHash;
    }

    public String getCheckPaymentHash() {
        return this.checkPaymentHash;
    }

    public String getCodCancelHash() {
        return this.codCancelHash;
    }

    public String getCodVerifyHash() {
        return this.codVerifyHash;
    }

    public String getCreateInvoiceHash() {
        return this.createInvoiceHash;
    }

    public String getDeleteCardHash() {
        return this.deleteCardHash;
    }

    public String getDeleteStoreCardCvv() {
        return this.deleteStoreCardCvv;
    }

    public String getEditCardHash() {
        return this.editCardHash;
    }

    public String getEmiAmountAccordingToInterestHash() {
        return this.emiAmountAccordingToInterestHash;
    }

    public String getGetTdrHash() {
        return this.getTdrHash;
    }

    public String getIssuingBankStatusHash() {
        return this.issuingBankStatusHash;
    }

    public String getMerchantIbiboCodesHash() {
        return this.merchantIbiboCodesHash;
    }

    public String getNetBankingStatusHash() {
        return this.netBankingStatusHash;
    }

    public String getPaymentHash() {
        return this.paymentHash;
    }

    public String getPaymentRelatedDetailsForMobileSdkHash() {
        return this.paymentRelatedDetailsForMobileSdkHash;
    }

    public String getSaveCardHash() {
        return this.saveCardHash;
    }

    public String getStoredCardsHash() {
        return this.storedCardsHash;
    }

    public String getTransactionDetailsHash() {
        return this.transactionDetailsHash;
    }

    public String getTransactionInfoHash() {
        return this.transactionInfoHash;
    }

    public String getUdfUpdateHash() {
        return this.udfUpdateHash;
    }

    public String getUpdateRequestsHash() {
        return this.updateRequestsHash;
    }

    public String getVasForMobileSdkHash() {
        return this.vasForMobileSdkHash;
    }

    public String getVerifyPaymentHash() {
        return this.verifyPaymentHash;
    }

    public void setCancelRefundTransactionHash(String str) {
        this.cancelRefundTransactionHash = str;
    }

    public void setCaptureTransactionHash(String str) {
        this.captureTransactionHash = str;
    }

    public void setCheckActionStatusHash(String str) {
        this.checkActionStatusHash = str;
    }

    public void setCheckIsDomesticHash(String str) {
        this.checkIsDomesticHash = str;
    }

    public void setCheckOfferDetailsHash(String str) {
        this.checkOfferDetailsHash = str;
    }

    public void setCheckOfferStatusHash(String str) {
        this.checkOfferStatusHash = str;
    }

    public void setCheckPaymentHash(String str) {
        this.checkPaymentHash = str;
    }

    public void setCodCancelHash(String str) {
        this.codCancelHash = str;
    }

    public void setCodVerifyHash(String str) {
        this.codVerifyHash = str;
    }

    public void setCreateInvoiceHash(String str) {
        this.createInvoiceHash = str;
    }

    public void setDeleteCardHash(String str) {
        this.deleteCardHash = str;
    }

    public void setDeleteStoreCardCvv(String str) {
        this.deleteStoreCardCvv = str;
    }

    public void setEditCardHash(String str) {
        this.editCardHash = str;
    }

    public void setEmiAmountAccordingToInterestHash(String str) {
        this.emiAmountAccordingToInterestHash = str;
    }

    public void setGetTdrHash(String str) {
        this.getTdrHash = str;
    }

    public void setIssuingBankStatusHash(String str) {
        this.issuingBankStatusHash = str;
    }

    public void setMerchantIbiboCodesHash(String str) {
        this.merchantIbiboCodesHash = str;
    }

    public void setNetBankingStatusHash(String str) {
        this.netBankingStatusHash = str;
    }

    public void setPaymentHash(String str) {
        this.paymentHash = str;
    }

    public void setPaymentRelatedDetailsForMobileSdkHash(String str) {
        this.paymentRelatedDetailsForMobileSdkHash = str;
    }

    public void setSaveCardHash(String str) {
        this.saveCardHash = str;
    }

    public void setStoredCardsHash(String str) {
        this.storedCardsHash = str;
    }

    public void setTransactionDetailsHash(String str) {
        this.transactionDetailsHash = str;
    }

    public void setTransactionInfoHash(String str) {
        this.transactionInfoHash = str;
    }

    public void setUdfUpdateHash(String str) {
        this.udfUpdateHash = str;
    }

    public void setUpdateRequestsHash(String str) {
        this.updateRequestsHash = str;
    }

    public void setVasForMobileSdkHash(String str) {
        this.vasForMobileSdkHash = str;
    }

    public void setVerifyPaymentHash(String str) {
        this.verifyPaymentHash = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.paymentHash);
        parcel.writeString(this.verifyPaymentHash);
        parcel.writeString(this.checkPaymentHash);
        parcel.writeString(this.cancelRefundTransactionHash);
        parcel.writeString(this.checkActionStatusHash);
        parcel.writeString(this.captureTransactionHash);
        parcel.writeString(this.updateRequestsHash);
        parcel.writeString(this.codVerifyHash);
        parcel.writeString(this.codCancelHash);
        parcel.writeString(this.getTdrHash);
        parcel.writeString(this.udfUpdateHash);
        parcel.writeString(this.createInvoiceHash);
        parcel.writeString(this.checkOfferStatusHash);
        parcel.writeString(this.netBankingStatusHash);
        parcel.writeString(this.issuingBankStatusHash);
        parcel.writeString(this.transactionDetailsHash);
        parcel.writeString(this.transactionInfoHash);
        parcel.writeString(this.checkIsDomesticHash);
        parcel.writeString(this.storedCardsHash);
        parcel.writeString(this.saveCardHash);
        parcel.writeString(this.editCardHash);
        parcel.writeString(this.deleteCardHash);
        parcel.writeString(this.merchantIbiboCodesHash);
        parcel.writeString(this.vasForMobileSdkHash);
        parcel.writeString(this.paymentRelatedDetailsForMobileSdkHash);
        parcel.writeString(this.deleteStoreCardCvv);
        parcel.writeString(this.checkOfferDetailsHash);
        parcel.writeString(this.emiAmountAccordingToInterestHash);
    }
}
