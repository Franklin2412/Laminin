package com.laminin.baseadapter;

import android.os.Parcel;
import android.os.Parcelable;

/**
 * Created by franklin on 5/26/15.
 */
public class UserCard implements Parcelable {
    String nameOnCard;
    String cardName;
    String expiryYear;
    String expiryMonth;
    String cardType;
    String cardToken;
    Boolean isExpired;
    String cardMode;
    String maskedCardNumber;
    String cardBrand;
    String cardBin;
    String isDomestic;

    public UserCard(){};

    public String getNameOnCard() {
        return nameOnCard;
    }

    public void setNameOnCard(String nameOnCard) {
        this.nameOnCard = nameOnCard;
    }

    public String getCardName() {
        return cardName;
    }

    public void setCardName(String cardName) {
        this.cardName = cardName;
    }

    public String getExpiryYear() {
        return expiryYear;
    }

    public void setExpiryYear(String expiryYear) {
        this.expiryYear = expiryYear;
    }

    public String getExpiryMonth() {
        return expiryMonth;
    }

    public void setExpiryMonth(String expiryMonth) {
        this.expiryMonth = expiryMonth;
    }

    public String getCardType() {
        return cardType;
    }

    public void setCardType(String cardType) {
        this.cardType = cardType;
    }

    public String getCardToken() {
        return cardToken;
    }

    public void setCardToken(String cardToken) {
        this.cardToken = cardToken;
    }

    public Boolean getIsExpired() {
        return isExpired;
    }

    public void setIsExpired(Boolean isExpired) {
        this.isExpired = isExpired;
    }

    public String getCardMode() {
        return cardMode;
    }

    public void setCardMode(String cardMode) {
        this.cardMode = cardMode;
    }

    public String getMaskedCardNumber() {
        return maskedCardNumber;
    }

    public void setMaskedCardNumber(String maskedCardNumber) {
        this.maskedCardNumber = maskedCardNumber;
    }

    public String getCardBrand() {
        return cardBrand;
    }

    public void setCardBrand(String cardBrand) {
        this.cardBrand = cardBrand;
    }

    public String getCardBin() {
        return cardBin;
    }

    public void setCardBin(String cardBin) {
        this.cardBin = cardBin;
    }

    public String getIsDomestic() {
        return isDomestic;
    }

    public void setIsDomestic(String isDomestic) {
        this.isDomestic = isDomestic;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(nameOnCard);
        dest.writeString(cardName);
        dest.writeString(expiryYear);
        dest.writeString(expiryMonth);
        dest.writeString(cardToken);
        dest.writeString(cardType);
        dest.writeString(cardMode);
        dest.writeString(maskedCardNumber);
        dest.writeString(cardBin);
        dest.writeString(cardBrand);
        dest.writeString(isDomestic);
        dest.writeString(String.valueOf(isExpired));
    }

    public static final Creator<UserCard> CREATOR
            = new Creator<UserCard>() {
        public UserCard createFromParcel(Parcel in) {
            return new UserCard(in);
        }

        public UserCard[] newArray(int size) {
            return new UserCard[size];
        }
    };

    private UserCard(Parcel in) {

        nameOnCard = in.readString();
        cardName = in.readString();
        expiryYear = in.readString();
        expiryMonth = in.readString();
        cardToken = in.readString();
        cardType = in.readString();
        cardMode = in.readString();
        maskedCardNumber = in.readString();
        cardBin = in.readString();
        cardBrand = in.readString();
        isDomestic = in.readString();
        isExpired = Boolean.valueOf(in.readString());
    }
}
