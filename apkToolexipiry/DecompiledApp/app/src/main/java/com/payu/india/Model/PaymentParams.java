package com.payu.india.Model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class PaymentParams implements Parcelable {
    public static final Creator<PaymentParams> CREATOR;
    private String address1;
    private String address2;
    private String amount;
    private String bankCode;
    private String cardBin;
    private String cardCvvMerchant;
    private String cardName;
    private String cardNumber;
    private String cardToken;
    private String city;
    private String codUrl;
    private String country;
    private String customNote;
    private String cvv;
    private String dropCategory;
    private String email;
    private int enableOneClickPayment;
    private String enforcePayMethod;
    private String expiryMonth;
    private String expiryYear;
    private String firstName;
    private String furl;
    private String hash;
    private String key;
    private String lastName;
    private String nameOnCard;
    private String noteCategory;
    private String offerKey;
    private String pg;
    private String phone;
    private String productInfo;
    private String shippingAddress1;
    private String shippingAddress2;
    private String shippingCity;
    private String shippingCounty;
    private String shippingFirstName;
    private String shippingLastName;
    private String shippingPhone;
    private String shippingState;
    private String shippingZipCode;
    private String state;
    private int storeCard;
    private String surl;
    private String txnId;
    private String udf1;
    private String udf2;
    private String udf3;
    private String udf4;
    private String udf5;
    private String userCredentials;
    private String zipCode;

    static {
        CREATOR = new Creator<PaymentParams>() {
            public PaymentParams createFromParcel(Parcel parcel) {
                return new PaymentParams(parcel);
            }

            public PaymentParams[] newArray(int i) {
                return new PaymentParams[i];
            }
        };
    }

    protected PaymentParams(Parcel parcel) {
        this.key = parcel.readString();
        this.txnId = parcel.readString();
        this.amount = parcel.readString();
        this.productInfo = parcel.readString();
        this.firstName = parcel.readString();
        this.email = parcel.readString();
        this.surl = parcel.readString();
        this.furl = parcel.readString();
        this.hash = parcel.readString();
        this.offerKey = parcel.readString();
        this.phone = parcel.readString();
        this.lastName = parcel.readString();
        this.address1 = parcel.readString();
        this.address2 = parcel.readString();
        this.city = parcel.readString();
        this.state = parcel.readString();
        this.country = parcel.readString();
        this.zipCode = parcel.readString();
        this.udf1 = parcel.readString();
        this.udf2 = parcel.readString();
        this.udf3 = parcel.readString();
        this.udf4 = parcel.readString();
        this.udf5 = parcel.readString();
        this.codUrl = parcel.readString();
        this.dropCategory = parcel.readString();
        this.enforcePayMethod = parcel.readString();
        this.customNote = parcel.readString();
        this.noteCategory = parcel.readString();
        this.shippingFirstName = parcel.readString();
        this.shippingLastName = parcel.readString();
        this.shippingAddress1 = parcel.readString();
        this.shippingAddress2 = parcel.readString();
        this.shippingCity = parcel.readString();
        this.shippingState = parcel.readString();
        this.shippingCounty = parcel.readString();
        this.shippingZipCode = parcel.readString();
        this.shippingPhone = parcel.readString();
        this.userCredentials = parcel.readString();
        this.storeCard = parcel.readInt();
        this.cardNumber = parcel.readString();
        this.cvv = parcel.readString();
        this.expiryMonth = parcel.readString();
        this.expiryYear = parcel.readString();
        this.nameOnCard = parcel.readString();
        this.cardName = parcel.readString();
        this.cardToken = parcel.readString();
        this.cardBin = parcel.readString();
        this.bankCode = parcel.readString();
        this.pg = parcel.readString();
        this.enableOneClickPayment = parcel.readInt();
        this.cardCvvMerchant = parcel.readString();
    }

    public int describeContents() {
        return 0;
    }

    public String getAddress1() {
        return this.address1;
    }

    public String getAddress2() {
        return this.address2;
    }

    public String getAmount() {
        return this.amount;
    }

    public String getBankCode() {
        return this.bankCode;
    }

    public String getCardBin() {
        return this.cardBin;
    }

    public String getCardCvvMerchant() {
        return this.cardCvvMerchant;
    }

    public String getCardName() {
        return this.cardName;
    }

    public String getCardNumber() {
        return this.cardNumber;
    }

    public String getCardToken() {
        return this.cardToken;
    }

    public String getCity() {
        return this.city;
    }

    public String getCodUrl() {
        return this.codUrl;
    }

    public String getCountry() {
        return this.country;
    }

    public String getCustomNote() {
        return this.customNote;
    }

    public String getCvv() {
        return this.cvv;
    }

    public String getDropCategory() {
        return this.dropCategory;
    }

    public String getEmail() {
        return this.email;
    }

    public int getEnableOneClickPayment() {
        return this.enableOneClickPayment;
    }

    public String getEnforcePayMethod() {
        return this.enforcePayMethod;
    }

    public String getExpiryMonth() {
        return this.expiryMonth;
    }

    public String getExpiryYear() {
        return this.expiryYear;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public String getFurl() {
        return this.furl;
    }

    public String getHash() {
        return this.hash;
    }

    public String getKey() {
        return this.key;
    }

    public String getLastName() {
        return this.lastName;
    }

    public String getNameOnCard() {
        return this.nameOnCard;
    }

    public String getNoteCategory() {
        return this.noteCategory;
    }

    public String getOfferKey() {
        return this.offerKey;
    }

    public String getPg() {
        return this.pg;
    }

    public String getPhone() {
        return this.phone;
    }

    public String getProductInfo() {
        return this.productInfo;
    }

    public String getShippingAddress1() {
        return this.shippingAddress1;
    }

    public String getShippingAddress2() {
        return this.shippingAddress2;
    }

    public String getShippingCity() {
        return this.shippingCity;
    }

    public String getShippingCounty() {
        return this.shippingCounty;
    }

    public String getShippingFirstName() {
        return this.shippingFirstName;
    }

    public String getShippingLastName() {
        return this.shippingLastName;
    }

    public String getShippingPhone() {
        return this.shippingPhone;
    }

    public String getShippingState() {
        return this.shippingState;
    }

    public String getShippingZipCode() {
        return this.shippingZipCode;
    }

    public String getState() {
        return this.state;
    }

    public int getStoreCard() {
        return this.storeCard;
    }

    public String getSurl() {
        return this.surl;
    }

    public String getTxnId() {
        return this.txnId;
    }

    public String getUdf1() {
        return this.udf1;
    }

    public String getUdf2() {
        return this.udf2;
    }

    public String getUdf3() {
        return this.udf3;
    }

    public String getUdf4() {
        return this.udf4;
    }

    public String getUdf5() {
        return this.udf5;
    }

    public String getUserCredentials() {
        return this.userCredentials;
    }

    public String getZipCode() {
        return this.zipCode;
    }

    public void setAddress1(String str) {
        this.address1 = str;
    }

    public void setAddress2(String str) {
        this.address2 = str;
    }

    public void setAmount(String str) {
        this.amount = str;
    }

    public void setBankCode(String str) {
        this.bankCode = str;
    }

    public void setCardBin(String str) {
        this.cardBin = str;
    }

    public void setCardCvvMerchant(String str) {
        this.cardCvvMerchant = str;
    }

    public void setCardName(String str) {
        this.cardName = str;
    }

    public void setCardNumber(String str) {
        this.cardNumber = str;
    }

    public void setCardToken(String str) {
        this.cardToken = str;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public void setCodUrl(String str) {
        this.codUrl = str;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public void setCustomNote(String str) {
        this.customNote = str;
    }

    public void setCvv(String str) {
        this.cvv = str;
    }

    public void setDropCategory(String str) {
        this.dropCategory = str;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public void setEnableOneClickPayment(int i) {
        this.enableOneClickPayment = i;
    }

    public void setEnforcePayMethod(String str) {
        this.enforcePayMethod = str;
    }

    public void setExpiryMonth(String str) {
        this.expiryMonth = str;
    }

    public void setExpiryYear(String str) {
        this.expiryYear = str;
    }

    public void setFirstName(String str) {
        this.firstName = str;
    }

    public void setFurl(String str) {
        this.furl = str;
    }

    public void setHash(String str) {
        this.hash = str;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setLastName(String str) {
        this.lastName = str;
    }

    public void setNameOnCard(String str) {
        this.nameOnCard = str;
    }

    public void setNoteCategory(String str) {
        this.noteCategory = str;
    }

    public void setOfferKey(String str) {
        this.offerKey = str;
    }

    public void setPg(String str) {
        this.pg = str;
    }

    public void setPhone(String str) {
        this.phone = str;
    }

    public void setProductInfo(String str) {
        this.productInfo = str;
    }

    public void setShippingAddress1(String str) {
        this.shippingAddress1 = str;
    }

    public void setShippingAddress2(String str) {
        this.shippingAddress2 = str;
    }

    public void setShippingCity(String str) {
        this.shippingCity = str;
    }

    public void setShippingCounty(String str) {
        this.shippingCounty = str;
    }

    public void setShippingFirstName(String str) {
        this.shippingFirstName = str;
    }

    public void setShippingLastName(String str) {
        this.shippingLastName = str;
    }

    public void setShippingPhone(String str) {
        this.shippingPhone = str;
    }

    public void setShippingState(String str) {
        this.shippingState = str;
    }

    public void setShippingZipCode(String str) {
        this.shippingZipCode = str;
    }

    public void setState(String str) {
        this.state = str;
    }

    public void setStoreCard(int i) {
        this.storeCard = i;
    }

    public void setSurl(String str) {
        this.surl = str;
    }

    public void setTxnId(String str) {
        this.txnId = str;
    }

    public void setUdf1(String str) {
        this.udf1 = str;
    }

    public void setUdf2(String str) {
        this.udf2 = str;
    }

    public void setUdf3(String str) {
        this.udf3 = str;
    }

    public void setUdf4(String str) {
        this.udf4 = str;
    }

    public void setUdf5(String str) {
        this.udf5 = str;
    }

    public void setUserCredentials(String str) {
        this.userCredentials = str;
    }

    public void setZipCode(String str) {
        this.zipCode = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.key);
        parcel.writeString(this.txnId);
        parcel.writeString(this.amount);
        parcel.writeString(this.productInfo);
        parcel.writeString(this.firstName);
        parcel.writeString(this.email);
        parcel.writeString(this.surl);
        parcel.writeString(this.furl);
        parcel.writeString(this.hash);
        parcel.writeString(this.offerKey);
        parcel.writeString(this.phone);
        parcel.writeString(this.lastName);
        parcel.writeString(this.address1);
        parcel.writeString(this.address2);
        parcel.writeString(this.city);
        parcel.writeString(this.state);
        parcel.writeString(this.country);
        parcel.writeString(this.zipCode);
        parcel.writeString(this.udf1);
        parcel.writeString(this.udf2);
        parcel.writeString(this.udf3);
        parcel.writeString(this.udf4);
        parcel.writeString(this.udf5);
        parcel.writeString(this.codUrl);
        parcel.writeString(this.dropCategory);
        parcel.writeString(this.enforcePayMethod);
        parcel.writeString(this.customNote);
        parcel.writeString(this.noteCategory);
        parcel.writeString(this.shippingFirstName);
        parcel.writeString(this.shippingLastName);
        parcel.writeString(this.shippingAddress1);
        parcel.writeString(this.shippingAddress2);
        parcel.writeString(this.shippingCity);
        parcel.writeString(this.shippingState);
        parcel.writeString(this.shippingCounty);
        parcel.writeString(this.shippingZipCode);
        parcel.writeString(this.shippingPhone);
        parcel.writeString(this.userCredentials);
        parcel.writeInt(this.storeCard);
        parcel.writeString(this.cardNumber);
        parcel.writeString(this.cvv);
        parcel.writeString(this.expiryMonth);
        parcel.writeString(this.expiryYear);
        parcel.writeString(this.nameOnCard);
        parcel.writeString(this.cardName);
        parcel.writeString(this.cardToken);
        parcel.writeString(this.cardBin);
        parcel.writeString(this.bankCode);
        parcel.writeString(this.pg);
        parcel.writeInt(this.enableOneClickPayment);
        parcel.writeString(this.cardCvvMerchant);
    }
}
