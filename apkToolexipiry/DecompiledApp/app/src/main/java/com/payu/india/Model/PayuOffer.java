package com.payu.india.Model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;

public class PayuOffer implements Parcelable {
    public static final Creator<PayuOffer> CREATOR;
    private ArrayList<String> allowedOn;
    private String category;
    private String discount;
    private String errorCode;
    private String msg;
    private String offerAvailedCount;
    private String offerKey;
    private String offerRemainingCount;
    private String offerType;
    private String status;

    static {
        CREATOR = new Creator<PayuOffer>() {
            public PayuOffer createFromParcel(Parcel parcel) {
                return new PayuOffer(parcel);
            }

            public PayuOffer[] newArray(int i) {
                return new PayuOffer[i];
            }
        };
    }

    protected PayuOffer(Parcel parcel) {
        this.status = parcel.readString();
        this.msg = parcel.readString();
        this.errorCode = parcel.readString();
        this.offerKey = parcel.readString();
        this.offerType = parcel.readString();
        this.offerAvailedCount = parcel.readString();
        this.offerRemainingCount = parcel.readString();
        this.discount = parcel.readString();
        this.category = parcel.readString();
        this.allowedOn = parcel.createStringArrayList();
    }

    public int describeContents() {
        return 0;
    }

    public ArrayList<String> getAllowedOn() {
        return this.allowedOn;
    }

    public String getCategory() {
        return this.category;
    }

    public String getDiscount() {
        return this.discount;
    }

    public String getErrorCode() {
        return this.errorCode;
    }

    public String getMsg() {
        return this.msg;
    }

    public String getOfferAvailedCount() {
        return this.offerAvailedCount;
    }

    public String getOfferKey() {
        return this.offerKey;
    }

    public String getOfferRemainingCount() {
        return this.offerRemainingCount;
    }

    public String getOfferType() {
        return this.offerType;
    }

    public String getStatus() {
        return this.status;
    }

    public void setAllowedOn(ArrayList<String> arrayList) {
        this.allowedOn = arrayList;
    }

    public void setCategory(String str) {
        this.category = str;
    }

    public void setDiscount(String str) {
        this.discount = str;
    }

    public void setErrorCode(String str) {
        this.errorCode = str;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setOfferAvailedCount(String str) {
        this.offerAvailedCount = str;
    }

    public void setOfferKey(String str) {
        this.offerKey = str;
    }

    public void setOfferRemainingCount(String str) {
        this.offerRemainingCount = str;
    }

    public void setOfferType(String str) {
        this.offerType = str;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.status);
        parcel.writeString(this.msg);
        parcel.writeString(this.errorCode);
        parcel.writeString(this.offerKey);
        parcel.writeString(this.offerType);
        parcel.writeString(this.offerAvailedCount);
        parcel.writeString(this.offerRemainingCount);
        parcel.writeString(this.discount);
        parcel.writeString(this.category);
        parcel.writeStringList(this.allowedOn);
    }
}
