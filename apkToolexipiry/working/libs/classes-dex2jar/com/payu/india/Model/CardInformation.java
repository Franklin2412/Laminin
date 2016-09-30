package com.payu.india.Model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class CardInformation implements Parcelable {
    public static final Creator<CardInformation> CREATOR;
    private String cardCategory;
    private String cardType;
    private Boolean isDomestic;
    private String issuingBank;

    static {
        CREATOR = new Creator<CardInformation>() {
            public CardInformation createFromParcel(Parcel parcel) {
                return new CardInformation(parcel);
            }

            public CardInformation[] newArray(int i) {
                return new CardInformation[i];
            }
        };
    }

    protected CardInformation(Parcel parcel) {
        this.issuingBank = parcel.readString();
        this.cardCategory = parcel.readString();
        this.cardType = parcel.readString();
    }

    public int describeContents() {
        return 0;
    }

    public String getCardCategory() {
        return this.cardCategory;
    }

    public String getCardType() {
        return this.cardType;
    }

    public Boolean getIsDomestic() {
        return this.isDomestic;
    }

    public String getIssuingBank() {
        return this.issuingBank;
    }

    public void setCardCategory(String str) {
        this.cardCategory = str;
    }

    public void setCardType(String str) {
        this.cardType = str;
    }

    public void setIsDomestic(Boolean bool) {
        this.isDomestic = bool;
    }

    public void setIssuingBank(String str) {
        this.issuingBank = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.issuingBank);
        parcel.writeString(this.cardCategory);
        parcel.writeString(this.cardType);
    }
}
