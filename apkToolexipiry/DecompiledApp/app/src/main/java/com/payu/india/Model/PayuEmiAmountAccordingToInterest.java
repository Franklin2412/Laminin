package com.payu.india.Model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.HashMap;

public class PayuEmiAmountAccordingToInterest implements Parcelable {
    public static final Creator<PayuEmiAmountAccordingToInterest> CREATOR;
    private String amount;
    private String bankCharge;
    private String bankRate;
    private String cardType;
    private String emiBankInterest;
    private String emiInterestPaid;
    private String emiValue;

    static {
        CREATOR = new Creator<PayuEmiAmountAccordingToInterest>() {
            public PayuEmiAmountAccordingToInterest createFromParcel(Parcel parcel) {
                return new PayuEmiAmountAccordingToInterest(parcel);
            }

            public PayuEmiAmountAccordingToInterest[] newArray(int i) {
                return new PayuEmiAmountAccordingToInterest[i];
            }
        };
    }

    protected PayuEmiAmountAccordingToInterest(Parcel parcel) {
        this.emiBankInterest = parcel.readString();
        this.bankRate = parcel.readString();
        this.bankCharge = parcel.readString();
        this.amount = parcel.readString();
        this.cardType = parcel.readString();
        this.emiValue = parcel.readString();
        this.emiInterestPaid = parcel.readString();
    }

    public static PayuEmiAmountAccordingToInterest payuEmiAmountAccordingToInterestResponseHelper(String str, String str2, HashMap<String, HashMap<String, PayuEmiAmountAccordingToInterest>> hashMap) {
        try {
            return (PayuEmiAmountAccordingToInterest) ((HashMap) hashMap.get(str)).get(str2);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    public static HashMap<String, PayuEmiAmountAccordingToInterest> payuEmiAmountAccordingToInterestResponseHelper(String str, HashMap<String, HashMap<String, PayuEmiAmountAccordingToInterest>> hashMap) {
        try {
            return (HashMap) hashMap.get(str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    public int describeContents() {
        return 0;
    }

    public String getAmount() {
        return this.amount;
    }

    public String getBankCharge() {
        return this.bankCharge;
    }

    public String getBankRate() {
        return this.bankRate;
    }

    public String getCardType() {
        return this.cardType;
    }

    public String getEmiBankInterest() {
        return this.emiBankInterest;
    }

    public String getEmiInterestPaid() {
        return this.emiInterestPaid;
    }

    public String getEmiValue() {
        return this.emiValue;
    }

    public void setAmount(String str) {
        this.amount = str;
    }

    public void setBankCharge(String str) {
        this.bankCharge = str;
    }

    public void setBankRate(String str) {
        this.bankRate = str;
    }

    public void setCardType(String str) {
        this.cardType = str;
    }

    public void setEmiBankInterest(String str) {
        this.emiBankInterest = str;
    }

    public void setEmiInterestPaid(String str) {
        this.emiInterestPaid = str;
    }

    public void setEmiValue(String str) {
        this.emiValue = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.emiBankInterest);
        parcel.writeString(this.bankRate);
        parcel.writeString(this.bankCharge);
        parcel.writeString(this.amount);
        parcel.writeString(this.cardType);
        parcel.writeString(this.emiValue);
        parcel.writeString(this.emiInterestPaid);
    }
}
