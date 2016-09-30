package com.payu.india.Model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class PaymentDetails implements Parcelable {
    public static final Creator<PaymentDetails> CREATOR;
    private String bankCode;
    private String bankId;
    private String bankName;
    private String pgId;

    static {
        CREATOR = new Creator<PaymentDetails>() {
            public PaymentDetails createFromParcel(Parcel parcel) {
                return new PaymentDetails(null);
            }

            public PaymentDetails[] newArray(int i) {
                return new PaymentDetails[i];
            }
        };
    }

    private PaymentDetails(Parcel parcel) {
        this.bankCode = parcel.readString();
        this.bankName = parcel.readString();
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

    public void setPgId(String str) {
        this.pgId = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.bankCode);
        parcel.writeString(this.bankName);
        parcel.writeString(this.bankId);
        parcel.writeString(this.pgId);
    }
}
