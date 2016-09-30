package com.payu.custombrowser.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.payu.custombrowser.util.CBConstant;

public class CustomBrowserAsyncTaskData implements Parcelable {
    public static final Creator<CustomBrowserAsyncTaskData> CREATOR;
    private String contentType;
    private String httpMethod;
    private String postData;
    private String url;

    static {
        CREATOR = new Creator<CustomBrowserAsyncTaskData>() {
            public CustomBrowserAsyncTaskData createFromParcel(Parcel parcel) {
                return new CustomBrowserAsyncTaskData(parcel);
            }

            public CustomBrowserAsyncTaskData[] newArray(int i) {
                return new CustomBrowserAsyncTaskData[i];
            }
        };
    }

    public CustomBrowserAsyncTaskData() {
        this.httpMethod = "GET";
        this.contentType = CBConstant.HTTP_URLENCODED;
    }

    protected CustomBrowserAsyncTaskData(Parcel parcel) {
        this.httpMethod = parcel.readString();
        this.url = parcel.readString();
        this.postData = parcel.readString();
        this.contentType = parcel.readString();
    }

    public int describeContents() {
        return 0;
    }

    public String getContentType() {
        return this.contentType;
    }

    public String getHttpMethod() {
        return this.httpMethod;
    }

    public String getPostData() {
        return this.postData;
    }

    public String getUrl() {
        return this.url;
    }

    public void setContentType(String str) {
        this.contentType = str;
    }

    public void setHttpMethod(String str) {
        this.httpMethod = str;
    }

    public void setPostData(String str) {
        this.postData = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.httpMethod);
        parcel.writeString(this.url);
        parcel.writeString(this.postData);
        parcel.writeString(this.contentType);
    }
}
