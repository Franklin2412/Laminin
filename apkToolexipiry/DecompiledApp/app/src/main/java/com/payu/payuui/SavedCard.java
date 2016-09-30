package com.payu.payuui;

import android.widget.ImageView;

public class SavedCard {
    private ImageView bankImageSource;
    private String cardName;
    private String cardType;
    private ImageView cardTypeImageSource;
    private String maskedCardNumber;

    public ImageView getBankImageSource() {
        return this.bankImageSource;
    }

    public String getCardName() {
        return this.cardName;
    }

    public String getCardType() {
        return this.cardType;
    }

    public ImageView getCardTypeImageSource() {
        return this.cardTypeImageSource;
    }

    public String getMaskedCardNumber() {
        return this.maskedCardNumber;
    }

    public void setBankImageSource(ImageView imageView) {
        this.bankImageSource = imageView;
    }

    public void setCardName(String str) {
        this.cardName = str;
    }

    public void setCardType(String str) {
        this.cardType = str;
    }

    public void setCardTypeImageSource(ImageView imageView) {
        this.cardTypeImageSource = imageView;
    }

    public void setMaskedCardNumber(String str) {
        this.maskedCardNumber = str;
    }
}
