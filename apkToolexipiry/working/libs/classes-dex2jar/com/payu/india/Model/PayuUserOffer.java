package com.payu.india.Model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;

public class PayuUserOffer implements Parcelable {
    public static final Creator<PayuUserOffer> CREATOR;
    private ArrayList<PayuOffer> availableCardOffers;
    private StoredCard storedCard;

    static {
        CREATOR = new Creator<PayuUserOffer>() {
            public PayuUserOffer createFromParcel(Parcel parcel) {
                return new PayuUserOffer(parcel);
            }

            public PayuUserOffer[] newArray(int i) {
                return new PayuUserOffer[i];
            }
        };
    }

    protected PayuUserOffer(Parcel parcel) {
        this.storedCard = (StoredCard) parcel.readParcelable(StoredCard.class.getClassLoader());
        this.availableCardOffers = parcel.createTypedArrayList(PayuOffer.CREATOR);
    }

    public int describeContents() {
        return 0;
    }

    public ArrayList<PayuOffer> getAvailableCardOffers() {
        return this.availableCardOffers;
    }

    public StoredCard getStoredCard() {
        return this.storedCard;
    }

    public void setAvailableCardOffers(ArrayList<PayuOffer> arrayList) {
        this.availableCardOffers = arrayList;
    }

    public void setStoredCard(StoredCard storedCard) {
        this.storedCard = storedCard;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.storedCard, i);
        parcel.writeTypedList(this.availableCardOffers);
    }
}
