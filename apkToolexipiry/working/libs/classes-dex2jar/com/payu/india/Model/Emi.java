package com.payu.india.Model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Emi implements Parcelable {
    public static final Creator<Emi> CREATOR;
    private String bankCode;
    private String bankId;
    private String bankName;
    private String bankTitle;
    private String pgId;

    static {
        CREATOR = new Creator<Emi>() {
            public Emi createFromParcel(Parcel parcel) {
                return new Emi(null);
            }

            public Emi[] newArray(int i) {
                return new Emi[i];
            }
        };
    }

    private Emi(Parcel parcel) {
        this.bankCode = parcel.readString();
        this.bankName = parcel.readString();
        this.bankTitle = parcel.readString();
        this.bankId = parcel.readString();
        this.pgId = parcel.readString();
    }

    public int describeContents() {
        return 0;
    }

    public String getBankCode() {
        return this.bankCode;
    }

    public String getBankId() {
        return this.bankId;
    }

    public String getBankName() {
        return this.bankName;
    }

    public String getBankTitle() {
        return this.bankTitle;
    }

    public String getPgId() {
        return this.pgId;
    }

    public void setBankCode(String str) {
        this.bankCode = str;
    }

    public void setBankId(String str) {
        this.bankId = str;
    }

    public void setBankName(String str) {
        this.bankName = str;
    }

    public void setBankTitle(String str) {
        this.bankTitle = str;
    }

    public void setPgId(String str) {
        this.pgId = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.bankCode);
        parcel.writeString(this.bankName);
        parcel.writeString(this.bankTitle);
        parcel.writeString(this.bankId);
        parcel.writeString(this.pgId);
    }
}
