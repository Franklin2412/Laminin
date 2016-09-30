package com.payu.india.Model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class CardStatus implements Parcelable {
    public static final Creator<CardStatus> CREATOR;
    private String bankName;
    private int statusCode;

    static {
        CREATOR = new Creator<CardStatus>() {
            public CardStatus createFromParcel(Parcel parcel) {
                return new CardStatus(parcel);
            }

            public CardStatus[] newArray(int i) {
                return new CardStatus[i];
            }
        };
    }

    protected CardStatus(Parcel parcel) {
        this.bankName = parcel.readString();
        this.statusCode = parcel.readInt();
    }

    public int describeContents() {
        return 0;
    }

    public String getBankName() {
        return this.bankName;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public void setBankName(String str) {
        this.bankName = str;
    }

    public void setStatusCode(int i) {
        this.statusCode = i;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.bankName);
        parcel.writeInt(this.statusCode);
    }
}
