package com.payu.india.Model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.payu.india.Payu.PayuConstants;
import com.payu.india.Payu.PayuErrors;
import com.payu.testapp.R;
import com.squareup.haha.perflib.StackFrame;

public class PayuConfig implements Parcelable {
    public static final Creator<PayuConfig> CREATOR;
    private String data;
    private int environment;

    static {
        CREATOR = new Creator<PayuConfig>() {
            public PayuConfig createFromParcel(Parcel parcel) {
                return new PayuConfig(parcel);
            }

            public PayuConfig[] newArray(int i) {
                return new PayuConfig[i];
            }
        };
    }

    protected PayuConfig(Parcel parcel) {
        this.data = parcel.readString();
        this.environment = parcel.readInt();
    }

    public int describeContents() {
        return 0;
    }

    public PostData getConfig() {
        PostData postData = new PostData();
        if (this.data == null || this.data.length() < 1) {
            postData.setCode(PayuErrors.MISSING_PARAMETER_EXCEPTION);
            postData.setResult(PayuConstants.ERROR);
            postData.setResult(PayuErrors.POST_DATA_MISSING);
        } else {
            switch (this.environment) {
                case StackFrame.NO_LINE_NUMBER /*0*/:
                    this.environment = 0;
                    break;
                case R.styleable.WaitingDots_period /*1*/:
                    this.environment = 1;
                    break;
                case R.styleable.WaitingDots_jumpHeight /*2*/:
                    this.environment = 2;
                    break;
                case R.styleable.WaitingDots_autoplay /*3*/:
                    this.environment = 3;
                    break;
                default:
                    this.environment = 0;
                    break;
            }
            postData.setCode(0);
            postData.setStatus(PayuConstants.SUCCESS);
            postData.setResult(PayuConstants.SUCCESS);
        }
        return postData;
    }

    public String getData() {
        return this.data;
    }

    public int getEnvironment() {
        return this.environment;
    }

    public void setData(String str) {
        this.data = str;
    }

    public void setEnvironment(int i) {
        this.environment = i;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.data);
        parcel.writeInt(this.environment);
    }
}
