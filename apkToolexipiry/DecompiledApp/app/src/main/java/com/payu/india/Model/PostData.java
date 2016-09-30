package com.payu.india.Model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class PostData implements Parcelable {
    public static final Creator<PostData> CREATOR;
    private int code;
    private String result;
    private String status;

    static {
        CREATOR = new Creator<PostData>() {
            public PostData createFromParcel(Parcel parcel) {
                return new PostData(parcel);
            }

            public PostData[] newArray(int i) {
                return new PostData[i];
            }
        };
    }

    protected PostData(Parcel parcel) {
        this.status = parcel.readString();
        this.result = parcel.readString();
        this.code = parcel.readInt();
    }

    public int describeContents() {
        return 0;
    }

    public int getCode() {
        return this.code;
    }

    public String getResult() {
        return this.result;
    }

    public String getStatus() {
        return this.status;
    }

    public void setCode(int i) {
        this.code = i;
    }

    public void setResult(String str) {
        this.result = str;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.status);
        parcel.writeString(this.result);
        parcel.writeInt(this.code);
    }
}
