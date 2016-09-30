package com.payu.india.Model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

public class PayuResponse implements Parcelable {
    public static final Creator<PayuResponse> CREATOR;
    private CardInformation cardInformation;
    private ArrayList<PaymentDetails> cashCard;
    private ArrayList<PaymentDetails> creditCard;
    private ArrayList<PaymentDetails> debitCard;
    private ArrayList<Emi> emi;
    private HashMap<String, CardStatus> issuingBankStatus;
    private ArrayList<PaymentDetails> ivr;
    private ArrayList<PaymentDetails> ivrdc;
    private HashMap<String, Integer> netBankingDownStatus;
    private ArrayList<PaymentDetails> netBanks;
    private ArrayList<PayuOffer> offerDetailsList;
    private ArrayList<PaymentDetails> paisaWallet;
    private HashMap<String, HashMap<String, PayuEmiAmountAccordingToInterest>> payuEmiAmountAccordingToInterest;
    private PayuOffer payuOffer;
    private PayuOfferDetails payuOfferDetails;
    private PostData responseStatus;
    private ArrayList<StoredCard> storedCards;
    private ArrayList<TransactionDetails> transactionDetailsList;

    static {
        CREATOR = new Creator<PayuResponse>() {
            public PayuResponse createFromParcel(Parcel parcel) {
                return new PayuResponse(parcel);
            }

            public PayuResponse[] newArray(int i) {
                return new PayuResponse[i];
            }
        };
    }

    protected PayuResponse(Parcel parcel) {
        this.storedCards = parcel.createTypedArrayList(StoredCard.CREATOR);
        this.emi = parcel.createTypedArrayList(Emi.CREATOR);
        this.creditCard = parcel.createTypedArrayList(PaymentDetails.CREATOR);
        this.debitCard = parcel.createTypedArrayList(PaymentDetails.CREATOR);
        this.netBanks = parcel.createTypedArrayList(PaymentDetails.CREATOR);
        this.cashCard = parcel.createTypedArrayList(PaymentDetails.CREATOR);
        this.ivr = parcel.createTypedArrayList(PaymentDetails.CREATOR);
        this.ivrdc = parcel.createTypedArrayList(PaymentDetails.CREATOR);
        this.paisaWallet = parcel.createTypedArrayList(PaymentDetails.CREATOR);
        this.responseStatus = (PostData) parcel.readParcelable(PostData.class.getClassLoader());
        this.cardInformation = (CardInformation) parcel.readParcelable(CardInformation.class.getClassLoader());
        this.payuOffer = (PayuOffer) parcel.readParcelable(PayuOffer.class.getClassLoader());
        this.transactionDetailsList = parcel.createTypedArrayList(TransactionDetails.CREATOR);
        this.offerDetailsList = parcel.createTypedArrayList(PayuOffer.CREATOR);
        this.payuEmiAmountAccordingToInterest = (HashMap) parcel.readParcelable(PayuOffer.class.getClassLoader());
        this.payuOfferDetails = (PayuOfferDetails) parcel.readParcelable(PayuOfferDetails.class.getClassLoader());
    }

    public int describeContents() {
        return 0;
    }

    public CardInformation getCardInformation() {
        return this.cardInformation;
    }

    public ArrayList<PaymentDetails> getCashCard() {
        return this.cashCard;
    }

    public ArrayList<PaymentDetails> getCreditCard() {
        return this.creditCard;
    }

    public ArrayList<PaymentDetails> getDebitCard() {
        return this.debitCard;
    }

    public ArrayList<Emi> getEmi() {
        return this.emi;
    }

    public HashMap<String, CardStatus> getIssuingBankStatus() {
        return this.issuingBankStatus;
    }

    public ArrayList<PaymentDetails> getIvr() {
        return this.ivr;
    }

    public ArrayList<PaymentDetails> getIvrdc() {
        return this.ivrdc;
    }

    public HashMap<String, Integer> getNetBankingDownStatus() {
        return this.netBankingDownStatus;
    }

    public ArrayList<PaymentDetails> getNetBanks() {
        return this.netBanks;
    }

    public ArrayList<PayuOffer> getOfferDetailsList() {
        return this.offerDetailsList;
    }

    public ArrayList<PaymentDetails> getPaisaWallet() {
        return this.paisaWallet;
    }

    public HashMap<String, HashMap<String, PayuEmiAmountAccordingToInterest>> getPayuEmiAmountAccordingToInterest() {
        return this.payuEmiAmountAccordingToInterest;
    }

    public PayuOffer getPayuOffer() {
        return this.payuOffer;
    }

    public PayuOfferDetails getPayuOfferDetails() {
        return this.payuOfferDetails;
    }

    public PostData getResponseStatus() {
        return this.responseStatus;
    }

    public ArrayList<StoredCard> getStoredCards() {
        return this.storedCards;
    }

    public ArrayList<TransactionDetails> getTransactionDetailsList() {
        return this.transactionDetailsList;
    }

    public Boolean isCardInformationAvailable() {
        return this.cardInformation != null ? Boolean.valueOf(true) : Boolean.valueOf(false);
    }

    public Boolean isCashCardAvailable() {
        return (this.cashCard == null || this.cashCard.size() <= 0) ? Boolean.valueOf(false) : Boolean.valueOf(true);
    }

    public Boolean isCreditCardAvailable() {
        return (this.creditCard == null || this.creditCard.size() <= 0) ? Boolean.valueOf(false) : Boolean.valueOf(true);
    }

    public Boolean isDebitCardAvailable() {
        return (this.debitCard == null || this.debitCard.size() <= 0) ? Boolean.valueOf(false) : Boolean.valueOf(true);
    }

    public Boolean isEmiAvailable() {
        return (this.emi == null || this.emi.size() <= 0) ? Boolean.valueOf(false) : Boolean.valueOf(true);
    }

    public Boolean isIVRAvailable() {
        return (this.ivr == null || this.ivr.size() <= 0) ? Boolean.valueOf(false) : Boolean.valueOf(true);
    }

    public Boolean isIVRDCAvailable() {
        return (this.ivrdc == null || this.ivrdc.size() <= 0) ? Boolean.valueOf(false) : Boolean.valueOf(true);
    }

    public Boolean isIssuingBankStatusAvailable() {
        return this.issuingBankStatus != null ? Boolean.valueOf(true) : Boolean.valueOf(false);
    }

    public Boolean isNetBankingStatusAvailable() {
        return this.netBankingDownStatus != null ? Boolean.valueOf(true) : Boolean.valueOf(false);
    }

    public Boolean isNetBanksAvailable() {
        return (this.netBanks == null || this.netBanks.size() <= 0) ? Boolean.valueOf(false) : Boolean.valueOf(true);
    }

    public boolean isOfferAllowedOn(String str, ArrayList<String> arrayList) {
        return new HashSet(arrayList).contains(str);
    }

    public Boolean isOfferDetailsAvailable() {
        return Boolean.valueOf(this.offerDetailsList != null);
    }

    public Boolean isPaisaWalletAvailable() {
        return (this.paisaWallet == null || this.paisaWallet.size() <= 0) ? Boolean.valueOf(false) : Boolean.valueOf(true);
    }

    public Boolean isPayuEmiAmountAccordingToInterestAvailable() {
        return Boolean.valueOf(this.payuEmiAmountAccordingToInterest != null);
    }

    public Boolean isPayuOfferAvailable() {
        return this.payuOffer != null ? Boolean.valueOf(true) : Boolean.valueOf(false);
    }

    public Boolean isResponseAvailable() {
        return this.responseStatus != null ? Boolean.valueOf(true) : Boolean.valueOf(false);
    }

    public Boolean isStoredCardsAvailable() {
        return (this.storedCards == null || this.storedCards.size() <= 0) ? Boolean.valueOf(false) : Boolean.valueOf(true);
    }

    public void setCardInformation(CardInformation cardInformation) {
        this.cardInformation = cardInformation;
    }

    public void setCashCard(ArrayList<PaymentDetails> arrayList) {
        this.cashCard = arrayList;
    }

    public void setCreditCard(ArrayList<PaymentDetails> arrayList) {
        this.creditCard = arrayList;
    }

    public void setDebitCard(ArrayList<PaymentDetails> arrayList) {
        this.debitCard = arrayList;
    }

    public void setEmi(ArrayList<Emi> arrayList) {
        this.emi = arrayList;
    }

    public void setIssuingBankStatus(HashMap<String, CardStatus> hashMap) {
        this.issuingBankStatus = hashMap;
    }

    public void setIvr(ArrayList<PaymentDetails> arrayList) {
        this.ivr = arrayList;
    }

    public void setIvrdc(ArrayList<PaymentDetails> arrayList) {
        this.ivrdc = arrayList;
    }

    public void setNetBankingDownStatus(HashMap<String, Integer> hashMap) {
        this.netBankingDownStatus = hashMap;
    }

    public void setNetBanks(ArrayList<PaymentDetails> arrayList) {
        this.netBanks = arrayList;
    }

    public void setOfferDetailsList(ArrayList<PayuOffer> arrayList) {
        this.offerDetailsList = arrayList;
    }

    public void setPaisaWallet(ArrayList<PaymentDetails> arrayList) {
        this.paisaWallet = arrayList;
    }

    public void setPayuEmiAmountAccordingToInterest(HashMap<String, HashMap<String, PayuEmiAmountAccordingToInterest>> hashMap) {
        this.payuEmiAmountAccordingToInterest = hashMap;
    }

    public void setPayuOffer(PayuOffer payuOffer) {
        this.payuOffer = payuOffer;
    }

    public void setPayuOfferDetails(PayuOfferDetails payuOfferDetails) {
        this.payuOfferDetails = payuOfferDetails;
    }

    public void setResponseStatus(PostData postData) {
        this.responseStatus = postData;
    }

    public void setStoredCards(ArrayList<StoredCard> arrayList) {
        this.storedCards = arrayList;
    }

    public void setTransactionDetailsList(ArrayList<TransactionDetails> arrayList) {
        this.transactionDetailsList = arrayList;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.storedCards);
        parcel.writeTypedList(this.emi);
        parcel.writeTypedList(this.creditCard);
        parcel.writeTypedList(this.debitCard);
        parcel.writeTypedList(this.netBanks);
        parcel.writeTypedList(this.cashCard);
        parcel.writeTypedList(this.ivr);
        parcel.writeTypedList(this.ivrdc);
        parcel.writeTypedList(this.paisaWallet);
        parcel.writeParcelable(this.responseStatus, i);
        parcel.writeParcelable(this.cardInformation, i);
        parcel.writeParcelable(this.payuOffer, i);
        parcel.writeTypedList(this.transactionDetailsList);
        parcel.writeTypedList(this.offerDetailsList);
        parcel.writeParcelable(this.payuOfferDetails, i);
    }
}
