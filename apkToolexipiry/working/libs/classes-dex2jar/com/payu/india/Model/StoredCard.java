package com.payu.india.Model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class StoredCard implements Parcelable {
    public static final Creator<StoredCard> CREATOR;
    private String cardBin;
    private String cardBrand;
    private String cardMode;
    private String cardName;
    private String cardToken;
    private String cardType;
    private String cvv;
    private int enableOneClickPayment;
    private String expiryMonth;
    private String expiryYear;
    private String isDomestic;
    private Boolean isExpired;
    private String issuingBank;
    private String maskedCardNumber;
    private String merchantHash;
    private String nameOnCard;
    private int oneTapCard;

    static {
        CREATOR = new Creator<StoredCard>() {
            public StoredCard createFromParcel(Parcel parcel) {
                return new StoredCard(parcel);
            }

            public StoredCard[] newArray(int i) {
                return new StoredCard[i];
            }
        };
    }

    protected StoredCard(Parcel parcel) {
        this.nameOnCard = parcel.readString();
        this.cardName = parcel.readString();
        this.expiryYear = parcel.readString();
        this.expiryMonth = parcel.readString();
        this.cardType = parcel.readString();
        this.cardToken = parcel.readString();
        this.cardMode = parcel.readString();
        this.maskedCardNumber = parcel.readString();
        this.cardBrand = parcel.readString();
        this.cardBin = parcel.readString();
        this.isDomestic = parcel.readString();
        this.cvv = parcel.readString();
        this.issuingBank = parcel.readString();
        this.enableOneClickPayment = parcel.readInt();
        this.oneTapCard = parcel.readInt();
        this.merchantHash = parcel.readString();
    }

    public int describeContents() {
        return 0;
    }

    public String getCardBin() {
        return this.cardBin;
    }

    public String getCardBrand() {
        return this.cardBrand;
    }

    public String getCardMode() {
        return this.cardMode;
    }

    public String getCardName() {
        return this.cardName;
    }

    public String getCardToken() {
        return this.cardToken;
    }

    public String getCardType() {
        return this.cardType;
    }

    public String getCvv() {
        return this.cvv;
    }

    public int getEnableOneClickPayment() {
        return this.enableOneClickPayment;
    }

    public String getExpiryMonth() {
        return this.expiryMonth;
    }

    public String getExpiryYear() {
        return this.expiryYear;
    }

    public String getIsDomestic() {
        return this.isDomestic;
    }

    public Boolean getIsExpired() {
        return this.isExpired;
    }

    public String getIssuingBank() {
        return this.issuingBank;
    }

    public String getMaskedCardNumber() {
        return this.maskedCardNumber;
    }

    public String getMerchantHash() {
        return this.merchantHash;
    }

    public String getNameOnCard() {
        return this.nameOnCard;
    }

    public int getOneTapCard() {
        return this.oneTapCard;
    }

    public void setCardBin(String str) {
        this.cardBin = str;
    }

    public void setCardBrand(String str) {
        this.cardBrand = str;
    }

    public void setCardMode(String str) {
        this.cardMode = str;
    }

    public void setCardName(String str) {
        this.cardName = str;
    }

    public void setCardToken(String str) {
        this.cardToken = str;
    }

    public void setCardType(String str) {
        this.cardType = str;
    }

    public void setCvv(String str) {
        this.cvv = str;
    }

    public void setEnableOneClickPayment(int i) {
        this.enableOneClickPayment = i;
    }

    public void setExpiryMonth(String str) {
        this.expiryMonth = str;
    }

    public void setExpiryYear(String str) {
        this.expiryYear = str;
    }

    public void setIsDomestic(String str) {
        this.isDomestic = str;
    }

    public void setIsExpired(Boolean bool) {
        this.isExpired = bool;
    }

    public void setIssuingBank(String str) {
        this.issuingBank = str;
    }

    public void setMaskedCardNumber(String str) {
        this.maskedCardNumber = str;
    }

    public void setMerchantHash(String str) {
        this.merchantHash = str;
    }

    public void setNameOnCard(String str) {
        this.nameOnCard = str;
    }

    public void setOneTapCard(int i) {
        this.oneTapCard = i;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.nameOnCard);
        parcel.writeString(this.cardName);
        parcel.writeString(this.expiryYear);
        parcel.writeString(this.expiryMonth);
        parcel.writeString(this.cardType);
        parcel.writeString(this.cardToken);
        parcel.writeString(this.cardMode);
        parcel.writeString(this.maskedCardNumber);
        parcel.writeString(this.cardBrand);
        parcel.writeString(this.cardBin);
        parcel.writeString(this.isDomestic);
        parcel.writeString(this.cvv);
        parcel.writeString(this.issuingBank);
        parcel.writeInt(this.enableOneClickPayment);
        parcel.writeInt(this.oneTapCard);
        parcel.writeString(this.merchantHash);
    }
}
