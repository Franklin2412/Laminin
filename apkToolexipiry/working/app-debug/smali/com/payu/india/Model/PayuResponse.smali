.class public Lcom/payu/india/Model/PayuResponse;
.super Ljava/lang/Object;
.source "PayuResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/payu/india/Model/PayuResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cardInformation:Lcom/payu/india/Model/CardInformation;

.field private cashCard:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PaymentDetails;",
            ">;"
        }
    .end annotation
.end field

.field private creditCard:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PaymentDetails;",
            ">;"
        }
    .end annotation
.end field

.field private debitCard:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PaymentDetails;",
            ">;"
        }
    .end annotation
.end field

.field private emi:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/Emi;",
            ">;"
        }
    .end annotation
.end field

.field private issuingBankStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/payu/india/Model/CardStatus;",
            ">;"
        }
    .end annotation
.end field

.field private ivr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PaymentDetails;",
            ">;"
        }
    .end annotation
.end field

.field private ivrdc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PaymentDetails;",
            ">;"
        }
    .end annotation
.end field

.field private netBankingDownStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private netBanks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PaymentDetails;",
            ">;"
        }
    .end annotation
.end field

.field private offerDetailsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PayuOffer;",
            ">;"
        }
    .end annotation
.end field

.field private paisaWallet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PaymentDetails;",
            ">;"
        }
    .end annotation
.end field

.field private payuEmiAmountAccordingToInterest:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;",
            ">;>;"
        }
    .end annotation
.end field

.field private payuOffer:Lcom/payu/india/Model/PayuOffer;

.field private payuOfferDetails:Lcom/payu/india/Model/PayuOfferDetails;

.field private responseStatus:Lcom/payu/india/Model/PostData;

.field private storedCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/StoredCard;",
            ">;"
        }
    .end annotation
.end field

.field private transactionDetailsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/TransactionDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/payu/india/Model/PayuResponse$1;

    invoke-direct {v0}, Lcom/payu/india/Model/PayuResponse$1;-><init>()V

    sput-object v0, Lcom/payu/india/Model/PayuResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    sget-object v0, Lcom/payu/india/Model/StoredCard;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuResponse;->storedCards:Ljava/util/ArrayList;

    .line 107
    sget-object v0, Lcom/payu/india/Model/Emi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuResponse;->emi:Ljava/util/ArrayList;

    .line 108
    sget-object v0, Lcom/payu/india/Model/PaymentDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuResponse;->creditCard:Ljava/util/ArrayList;

    .line 109
    sget-object v0, Lcom/payu/india/Model/PaymentDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuResponse;->debitCard:Ljava/util/ArrayList;

    .line 110
    sget-object v0, Lcom/payu/india/Model/PaymentDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuResponse;->netBanks:Ljava/util/ArrayList;

    .line 111
    sget-object v0, Lcom/payu/india/Model/PaymentDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuResponse;->cashCard:Ljava/util/ArrayList;

    .line 112
    sget-object v0, Lcom/payu/india/Model/PaymentDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuResponse;->ivr:Ljava/util/ArrayList;

    .line 113
    sget-object v0, Lcom/payu/india/Model/PaymentDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuResponse;->ivrdc:Ljava/util/ArrayList;

    .line 114
    sget-object v0, Lcom/payu/india/Model/PaymentDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuResponse;->paisaWallet:Ljava/util/ArrayList;

    .line 115
    const-class v0, Lcom/payu/india/Model/PostData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/PostData;

    iput-object v0, p0, Lcom/payu/india/Model/PayuResponse;->responseStatus:Lcom/payu/india/Model/PostData;

    .line 116
    const-class v0, Lcom/payu/india/Model/CardInformation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/CardInformation;

    iput-object v0, p0, Lcom/payu/india/Model/PayuResponse;->cardInformation:Lcom/payu/india/Model/CardInformation;

    .line 117
    const-class v0, Lcom/payu/india/Model/PayuOffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/PayuOffer;

    iput-object v0, p0, Lcom/payu/india/Model/PayuResponse;->payuOffer:Lcom/payu/india/Model/PayuOffer;

    .line 118
    sget-object v0, Lcom/payu/india/Model/TransactionDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuResponse;->transactionDetailsList:Ljava/util/ArrayList;

    .line 119
    sget-object v0, Lcom/payu/india/Model/PayuOffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuResponse;->offerDetailsList:Ljava/util/ArrayList;

    .line 120
    const-class v0, Lcom/payu/india/Model/PayuOffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/payu/india/Model/PayuResponse;->payuEmiAmountAccordingToInterest:Ljava/util/HashMap;

    .line 121
    const-class v0, Lcom/payu/india/Model/PayuOfferDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/PayuOfferDetails;

    iput-object v0, p0, Lcom/payu/india/Model/PayuResponse;->payuOfferDetails:Lcom/payu/india/Model/PayuOfferDetails;

    .line 122
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public getCardInformation()Lcom/payu/india/Model/CardInformation;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->cardInformation:Lcom/payu/india/Model/CardInformation;

    return-object v0
.end method

.method public getCashCard()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PaymentDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->cashCard:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCreditCard()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PaymentDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->creditCard:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDebitCard()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PaymentDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->debitCard:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEmi()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/Emi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->emi:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIssuingBankStatus()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/payu/india/Model/CardStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->issuingBankStatus:Ljava/util/HashMap;

    return-object v0
.end method

.method public getIvr()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PaymentDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->ivr:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIvrdc()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PaymentDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->ivrdc:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNetBankingDownStatus()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->netBankingDownStatus:Ljava/util/HashMap;

    return-object v0
.end method

.method public getNetBanks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PaymentDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->netBanks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOfferDetailsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PayuOffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->offerDetailsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPaisaWallet()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PaymentDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->paisaWallet:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPayuEmiAmountAccordingToInterest()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->payuEmiAmountAccordingToInterest:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPayuOffer()Lcom/payu/india/Model/PayuOffer;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->payuOffer:Lcom/payu/india/Model/PayuOffer;

    return-object v0
.end method

.method public getPayuOfferDetails()Lcom/payu/india/Model/PayuOfferDetails;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->payuOfferDetails:Lcom/payu/india/Model/PayuOfferDetails;

    return-object v0
.end method

.method public getResponseStatus()Lcom/payu/india/Model/PostData;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->responseStatus:Lcom/payu/india/Model/PostData;

    return-object v0
.end method

.method public getStoredCards()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/StoredCard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->storedCards:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransactionDetailsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/TransactionDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->transactionDetailsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isCardInformationAvailable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->cardInformation:Lcom/payu/india/Model/CardInformation;

    if-eqz v0, :cond_0

    .line 319
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 320
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public isCashCardAvailable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->cashCard:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->cashCard:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 289
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public isCreditCardAvailable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->creditCard:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->creditCard:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 271
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public isDebitCardAvailable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->debitCard:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->debitCard:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 277
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 278
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public isEmiAvailable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->emi:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->emi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 265
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 266
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public isIVRAvailable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->ivr:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->ivr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 295
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 296
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public isIVRDCAvailable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->ivrdc:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->ivrdc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 301
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public isIssuingBankStatusAvailable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->issuingBankStatus:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 331
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 332
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public isNetBankingStatusAvailable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->netBankingDownStatus:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 325
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 326
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public isNetBanksAvailable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->netBanks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->netBanks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 283
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 284
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public isOfferAllowedOn(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 2
    .param p1, "bankCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 350
    .local p2, "allowedOnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 351
    .local v0, "offerAllowedOnSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isOfferDetailsAvailable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->offerDetailsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaisaWalletAvailable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->paisaWallet:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->paisaWallet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 307
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public isPayuEmiAmountAccordingToInterestAvailable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->payuEmiAmountAccordingToInterest:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPayuOfferAvailable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->payuOffer:Lcom/payu/india/Model/PayuOffer;

    if-eqz v0, :cond_0

    .line 337
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public isResponseAvailable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->responseStatus:Lcom/payu/india/Model/PostData;

    if-eqz v0, :cond_0

    .line 313
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 314
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public isStoredCardsAvailable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->storedCards:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->storedCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 259
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public setCardInformation(Lcom/payu/india/Model/CardInformation;)V
    .locals 0
    .param p1, "cardInformation"    # Lcom/payu/india/Model/CardInformation;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/payu/india/Model/PayuResponse;->cardInformation:Lcom/payu/india/Model/CardInformation;

    .line 213
    return-void
.end method

.method public setCashCard(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PaymentDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "cashCard":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    iput-object p1, p0, Lcom/payu/india/Model/PayuResponse;->cashCard:Ljava/util/ArrayList;

    .line 173
    return-void
.end method

.method public setCreditCard(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PaymentDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "creditCard":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    iput-object p1, p0, Lcom/payu/india/Model/PayuResponse;->creditCard:Ljava/util/ArrayList;

    .line 149
    return-void
.end method

.method public setDebitCard(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PaymentDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "debitCard":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    iput-object p1, p0, Lcom/payu/india/Model/PayuResponse;->debitCard:Ljava/util/ArrayList;

    .line 157
    return-void
.end method

.method public setEmi(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/Emi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "emi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/Emi;>;"
    iput-object p1, p0, Lcom/payu/india/Model/PayuResponse;->emi:Ljava/util/ArrayList;

    .line 141
    return-void
.end method

.method public setIssuingBankStatus(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/payu/india/Model/CardStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "issuingBankStatus":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/payu/india/Model/CardStatus;>;"
    iput-object p1, p0, Lcom/payu/india/Model/PayuResponse;->issuingBankStatus:Ljava/util/HashMap;

    .line 229
    return-void
.end method

.method public setIvr(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PaymentDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "ivr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    iput-object p1, p0, Lcom/payu/india/Model/PayuResponse;->ivr:Ljava/util/ArrayList;

    .line 181
    return-void
.end method

.method public setIvrdc(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PaymentDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "ivrdc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    iput-object p1, p0, Lcom/payu/india/Model/PayuResponse;->ivrdc:Ljava/util/ArrayList;

    .line 189
    return-void
.end method

.method public setNetBankingDownStatus(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "netBankingDownStatus":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/payu/india/Model/PayuResponse;->netBankingDownStatus:Ljava/util/HashMap;

    .line 221
    return-void
.end method

.method public setNetBanks(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PaymentDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "netBanks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    iput-object p1, p0, Lcom/payu/india/Model/PayuResponse;->netBanks:Ljava/util/ArrayList;

    .line 165
    return-void
.end method

.method public setOfferDetailsList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PayuOffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "offerDetailsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PayuOffer;>;"
    iput-object p1, p0, Lcom/payu/india/Model/PayuResponse;->offerDetailsList:Ljava/util/ArrayList;

    .line 87
    return-void
.end method

.method public setPaisaWallet(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PaymentDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "paisaWallet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PaymentDetails;>;"
    iput-object p1, p0, Lcom/payu/india/Model/PayuResponse;->paisaWallet:Ljava/util/ArrayList;

    .line 197
    return-void
.end method

.method public setPayuEmiAmountAccordingToInterest(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, "payuEmiAmountAccordingToInterest":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;>;>;"
    iput-object p1, p0, Lcom/payu/india/Model/PayuResponse;->payuEmiAmountAccordingToInterest:Ljava/util/HashMap;

    .line 245
    return-void
.end method

.method public setPayuOffer(Lcom/payu/india/Model/PayuOffer;)V
    .locals 0
    .param p1, "payuOffer"    # Lcom/payu/india/Model/PayuOffer;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/payu/india/Model/PayuResponse;->payuOffer:Lcom/payu/india/Model/PayuOffer;

    .line 237
    return-void
.end method

.method public setPayuOfferDetails(Lcom/payu/india/Model/PayuOfferDetails;)V
    .locals 0
    .param p1, "payuOfferDetails"    # Lcom/payu/india/Model/PayuOfferDetails;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/payu/india/Model/PayuResponse;->payuOfferDetails:Lcom/payu/india/Model/PayuOfferDetails;

    .line 97
    return-void
.end method

.method public setResponseStatus(Lcom/payu/india/Model/PostData;)V
    .locals 0
    .param p1, "responseStatus"    # Lcom/payu/india/Model/PostData;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/payu/india/Model/PayuResponse;->responseStatus:Lcom/payu/india/Model/PostData;

    .line 205
    return-void
.end method

.method public setStoredCards(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/StoredCard;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "storedCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/StoredCard;>;"
    iput-object p1, p0, Lcom/payu/india/Model/PayuResponse;->storedCards:Ljava/util/ArrayList;

    .line 133
    return-void
.end method

.method public setTransactionDetailsList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/TransactionDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "transactionDetailsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/TransactionDetails;>;"
    iput-object p1, p0, Lcom/payu/india/Model/PayuResponse;->transactionDetailsList:Ljava/util/ArrayList;

    .line 254
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 362
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->storedCards:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 363
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->emi:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 364
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->creditCard:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 365
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->debitCard:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 366
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->netBanks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 367
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->cashCard:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 368
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->ivr:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 369
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->ivrdc:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 370
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->paisaWallet:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 371
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->responseStatus:Lcom/payu/india/Model/PostData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 372
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->cardInformation:Lcom/payu/india/Model/CardInformation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 373
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->payuOffer:Lcom/payu/india/Model/PayuOffer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 374
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->transactionDetailsList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 375
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->offerDetailsList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 376
    iget-object v0, p0, Lcom/payu/india/Model/PayuResponse;->payuOfferDetails:Lcom/payu/india/Model/PayuOfferDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 377
    return-void
.end method
