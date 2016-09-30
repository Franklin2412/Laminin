.class public Lcom/payu/india/Model/PaymentParams;
.super Ljava/lang/Object;
.source "PaymentParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/payu/india/Model/PaymentParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address1:Ljava/lang/String;

.field private address2:Ljava/lang/String;

.field private amount:Ljava/lang/String;

.field private bankCode:Ljava/lang/String;

.field private cardBin:Ljava/lang/String;

.field private cardCvvMerchant:Ljava/lang/String;

.field private cardName:Ljava/lang/String;

.field private cardNumber:Ljava/lang/String;

.field private cardToken:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private codUrl:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private customNote:Ljava/lang/String;

.field private cvv:Ljava/lang/String;

.field private dropCategory:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private enableOneClickPayment:I

.field private enforcePayMethod:Ljava/lang/String;

.field private expiryMonth:Ljava/lang/String;

.field private expiryYear:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field private furl:Ljava/lang/String;

.field private hash:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private lastName:Ljava/lang/String;

.field private nameOnCard:Ljava/lang/String;

.field private noteCategory:Ljava/lang/String;

.field private offerKey:Ljava/lang/String;

.field private pg:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private productInfo:Ljava/lang/String;

.field private shippingAddress1:Ljava/lang/String;

.field private shippingAddress2:Ljava/lang/String;

.field private shippingCity:Ljava/lang/String;

.field private shippingCounty:Ljava/lang/String;

.field private shippingFirstName:Ljava/lang/String;

.field private shippingLastName:Ljava/lang/String;

.field private shippingPhone:Ljava/lang/String;

.field private shippingState:Ljava/lang/String;

.field private shippingZipCode:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private storeCard:I

.field private surl:Ljava/lang/String;

.field private txnId:Ljava/lang/String;

.field private udf1:Ljava/lang/String;

.field private udf2:Ljava/lang/String;

.field private udf3:Ljava/lang/String;

.field private udf4:Ljava/lang/String;

.field private udf5:Ljava/lang/String;

.field private userCredentials:Ljava/lang/String;

.field private zipCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/payu/india/Model/PaymentParams$1;

    invoke-direct {v0}, Lcom/payu/india/Model/PaymentParams$1;-><init>()V

    sput-object v0, Lcom/payu/india/Model/PaymentParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->key:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->txnId:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->amount:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->productInfo:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->firstName:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->email:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->surl:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->furl:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->hash:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->offerKey:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->phone:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->lastName:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->address1:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->address2:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->city:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->state:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->country:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->zipCode:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->udf1:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->udf2:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->udf3:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->udf4:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->udf5:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->codUrl:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->dropCategory:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->enforcePayMethod:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->customNote:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->noteCategory:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->shippingFirstName:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->shippingLastName:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->shippingAddress1:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->shippingAddress2:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->shippingCity:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->shippingState:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->shippingCounty:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->shippingZipCode:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->shippingPhone:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->userCredentials:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/india/Model/PaymentParams;->storeCard:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->cardNumber:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->cvv:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->expiryMonth:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->expiryYear:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->nameOnCard:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->cardName:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->cardToken:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->cardBin:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->bankCode:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->pg:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/india/Model/PaymentParams;->enableOneClickPayment:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentParams;->cardCvvMerchant:Ljava/lang/String;

    .line 150
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->address1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->address2:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getBankCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->bankCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCardBin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->cardBin:Ljava/lang/String;

    return-object v0
.end method

.method public getCardCvvMerchant()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->cardCvvMerchant:Ljava/lang/String;

    return-object v0
.end method

.method public getCardName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->cardName:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCardToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->cardToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCodUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->codUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->customNote:Ljava/lang/String;

    return-object v0
.end method

.method public getCvv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->cvv:Ljava/lang/String;

    return-object v0
.end method

.method public getDropCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->dropCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableOneClickPayment()I
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Lcom/payu/india/Model/PaymentParams;->enableOneClickPayment:I

    return v0
.end method

.method public getEnforcePayMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->enforcePayMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->expiryMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->expiryYear:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getFurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->furl:Ljava/lang/String;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameOnCard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->nameOnCard:Ljava/lang/String;

    return-object v0
.end method

.method public getNoteCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->noteCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->offerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->pg:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getProductInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->productInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingAddress1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->shippingAddress1:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingAddress2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->shippingAddress2:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->shippingCity:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingCounty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->shippingCounty:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->shippingFirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->shippingLastName:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->shippingPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->shippingState:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingZipCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->shippingZipCode:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreCard()I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/payu/india/Model/PaymentParams;->storeCard:I

    return v0
.end method

.method public getSurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->surl:Ljava/lang/String;

    return-object v0
.end method

.method public getTxnId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->txnId:Ljava/lang/String;

    return-object v0
.end method

.method public getUdf1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->udf1:Ljava/lang/String;

    return-object v0
.end method

.method public getUdf2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->udf2:Ljava/lang/String;

    return-object v0
.end method

.method public getUdf3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->udf3:Ljava/lang/String;

    return-object v0
.end method

.method public getUdf4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->udf4:Ljava/lang/String;

    return-object v0
.end method

.method public getUdf5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->udf5:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCredentials()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->userCredentials:Ljava/lang/String;

    return-object v0
.end method

.method public getZipCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->zipCode:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress1(Ljava/lang/String;)V
    .locals 0
    .param p1, "address1"    # Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->address1:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setAddress2(Ljava/lang/String;)V
    .locals 0
    .param p1, "address2"    # Ljava/lang/String;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->address2:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "amount"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->amount:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setBankCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankCode"    # Ljava/lang/String;

    .prologue
    .line 545
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->bankCode:Ljava/lang/String;

    .line 546
    return-void
.end method

.method public setCardBin(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardBin"    # Ljava/lang/String;

    .prologue
    .line 537
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->cardBin:Ljava/lang/String;

    .line 538
    return-void
.end method

.method public setCardCvvMerchant(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardCvvMerchant"    # Ljava/lang/String;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->cardCvvMerchant:Ljava/lang/String;

    .line 570
    return-void
.end method

.method public setCardName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardName"    # Ljava/lang/String;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->cardName:Ljava/lang/String;

    .line 522
    return-void
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardNumber"    # Ljava/lang/String;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->cardNumber:Ljava/lang/String;

    .line 482
    return-void
.end method

.method public setCardToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardToken"    # Ljava/lang/String;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->cardToken:Ljava/lang/String;

    .line 530
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->city:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setCodUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "codUrl"    # Ljava/lang/String;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->codUrl:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->country:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setCustomNote(Ljava/lang/String;)V
    .locals 0
    .param p1, "customNote"    # Ljava/lang/String;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->customNote:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public setCvv(Ljava/lang/String;)V
    .locals 0
    .param p1, "cvv"    # Ljava/lang/String;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->cvv:Ljava/lang/String;

    .line 490
    return-void
.end method

.method public setDropCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "dropCategory"    # Ljava/lang/String;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->dropCategory:Ljava/lang/String;

    .line 362
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->email:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setEnableOneClickPayment(I)V
    .locals 0
    .param p1, "enableOneClickPayment"    # I

    .prologue
    .line 561
    iput p1, p0, Lcom/payu/india/Model/PaymentParams;->enableOneClickPayment:I

    .line 562
    return-void
.end method

.method public setEnforcePayMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "enforcePayMethod"    # Ljava/lang/String;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->enforcePayMethod:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public setExpiryMonth(Ljava/lang/String;)V
    .locals 0
    .param p1, "expiryMonth"    # Ljava/lang/String;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->expiryMonth:Ljava/lang/String;

    .line 498
    return-void
.end method

.method public setExpiryYear(Ljava/lang/String;)V
    .locals 0
    .param p1, "expiryYear"    # Ljava/lang/String;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->expiryYear:Ljava/lang/String;

    .line 506
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstName"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->firstName:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setFurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "furl"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->furl:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->hash:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->key:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->lastName:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setNameOnCard(Ljava/lang/String;)V
    .locals 0
    .param p1, "nameOnCard"    # Ljava/lang/String;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->nameOnCard:Ljava/lang/String;

    .line 514
    return-void
.end method

.method public setNoteCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "noteCategory"    # Ljava/lang/String;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->noteCategory:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public setOfferKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "offerKey"    # Ljava/lang/String;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->offerKey:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setPg(Ljava/lang/String;)V
    .locals 0
    .param p1, "pg"    # Ljava/lang/String;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->pg:Ljava/lang/String;

    .line 554
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->phone:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setProductInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "productInfo"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->productInfo:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setShippingAddress1(Ljava/lang/String;)V
    .locals 0
    .param p1, "shippingAddress1"    # Ljava/lang/String;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->shippingAddress1:Ljava/lang/String;

    .line 410
    return-void
.end method

.method public setShippingAddress2(Ljava/lang/String;)V
    .locals 0
    .param p1, "shippingAddress2"    # Ljava/lang/String;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->shippingAddress2:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public setShippingCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "shippingCity"    # Ljava/lang/String;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->shippingCity:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public setShippingCounty(Ljava/lang/String;)V
    .locals 0
    .param p1, "shippingCounty"    # Ljava/lang/String;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->shippingCounty:Ljava/lang/String;

    .line 442
    return-void
.end method

.method public setShippingFirstName(Ljava/lang/String;)V
    .locals 0
    .param p1, "shippingFirstName"    # Ljava/lang/String;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->shippingFirstName:Ljava/lang/String;

    .line 394
    return-void
.end method

.method public setShippingLastName(Ljava/lang/String;)V
    .locals 0
    .param p1, "shippingLastName"    # Ljava/lang/String;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->shippingLastName:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public setShippingPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "shippingPhone"    # Ljava/lang/String;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->shippingPhone:Ljava/lang/String;

    .line 458
    return-void
.end method

.method public setShippingState(Ljava/lang/String;)V
    .locals 0
    .param p1, "shippingState"    # Ljava/lang/String;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->shippingState:Ljava/lang/String;

    .line 434
    return-void
.end method

.method public setShippingZipCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "shippingZipCode"    # Ljava/lang/String;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->shippingZipCode:Ljava/lang/String;

    .line 450
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->state:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setStoreCard(I)V
    .locals 0
    .param p1, "storeCard"    # I

    .prologue
    .line 473
    iput p1, p0, Lcom/payu/india/Model/PaymentParams;->storeCard:I

    .line 474
    return-void
.end method

.method public setSurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "surl"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->surl:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setTxnId(Ljava/lang/String;)V
    .locals 0
    .param p1, "txnId"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->txnId:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setUdf1(Ljava/lang/String;)V
    .locals 0
    .param p1, "udf1"    # Ljava/lang/String;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->udf1:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setUdf2(Ljava/lang/String;)V
    .locals 0
    .param p1, "udf2"    # Ljava/lang/String;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->udf2:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public setUdf3(Ljava/lang/String;)V
    .locals 0
    .param p1, "udf3"    # Ljava/lang/String;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->udf3:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setUdf4(Ljava/lang/String;)V
    .locals 0
    .param p1, "udf4"    # Ljava/lang/String;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->udf4:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public setUdf5(Ljava/lang/String;)V
    .locals 0
    .param p1, "udf5"    # Ljava/lang/String;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->udf5:Ljava/lang/String;

    .line 346
    return-void
.end method

.method public setUserCredentials(Ljava/lang/String;)V
    .locals 0
    .param p1, "userCredentials"    # Ljava/lang/String;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->userCredentials:Ljava/lang/String;

    .line 466
    return-void
.end method

.method public setZipCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "zipCode"    # Ljava/lang/String;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/payu/india/Model/PaymentParams;->zipCode:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 584
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->txnId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->amount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->productInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->firstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->surl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->furl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->hash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->offerKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->address1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->address2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->city:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->state:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->country:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->zipCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->udf1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->udf2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->udf3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->udf4:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->udf5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->codUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->dropCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->enforcePayMethod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->customNote:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->noteCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->shippingFirstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->shippingLastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->shippingAddress1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->shippingAddress2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->shippingCity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->shippingState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->shippingCounty:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->shippingZipCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->shippingPhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->userCredentials:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 622
    iget v0, p0, Lcom/payu/india/Model/PaymentParams;->storeCard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->cardNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->cvv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->expiryMonth:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->expiryYear:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->nameOnCard:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->cardName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->cardToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->cardBin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->bankCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->pg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 633
    iget v0, p0, Lcom/payu/india/Model/PaymentParams;->enableOneClickPayment:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    iget-object v0, p0, Lcom/payu/india/Model/PaymentParams;->cardCvvMerchant:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 635
    return-void
.end method
