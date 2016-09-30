package com.payu.india.Model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;

public class PayuOfferDetails implements Parcelable {
    public static final Creator<PayuOfferDetails> CREATOR;
    private ArrayList<PayuOffer> payuOfferList;
    private ArrayList<PayuUserOffer> userOffersList;

    static {
        CREATOR = new Creator<PayuOfferDetails>() {
            public PayuOfferDetails createFromParcel(Parcel parcel) {
                return new PayuOfferDetails(parcel);
            }

            public PayuOfferDetails[] newArray(int i) {
                return new PayuOfferDetails[i];
            }
        };
    }

    protected PayuOfferDetails(Parcel parcel) {
        this.userOffersList = parcel.createTypedArrayList(PayuUserOffer.CREATOR);
        this.payuOfferList = parcel.createTypedArrayList(PayuOffer.CREATOR);
    }

    public int describeContents() {
        return 0;
    }

    public ArrayList<PayuOffer> getPayuOfferList() {
        return this.payuOfferList;
    }

    public ArrayList<PayuUserOffer> getUserOffersList() {
        return this.userOffersList;
    }

    public void setPayuOfferList(ArrayList<PayuOffer> arrayList) {
        this.payuOfferList = arrayList;
    }

    public void setUserOffersList(ArrayList<PayuUserOffer> arrayList) {
        this.userOffersList = arrayList;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.userOffersList);
        parcel.writeTypedList(this.payuOfferList);
    }
}
