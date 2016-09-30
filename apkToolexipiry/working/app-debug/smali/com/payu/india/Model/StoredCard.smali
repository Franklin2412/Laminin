.class public Lcom/payu/india/Model/StoredCard;
.super Ljava/lang/Object;
.source "StoredCard.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/payu/india/Model/StoredCard;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cardBin:Ljava/lang/String;

.field private cardBrand:Ljava/lang/String;

.field private cardMode:Ljava/lang/String;

.field private cardName:Ljava/lang/String;

.field private cardToken:Ljava/lang/String;

.field private cardType:Ljava/lang/String;

.field private cvv:Ljava/lang/String;

.field private enableOneClickPayment:I

.field private expiryMonth:Ljava/lang/String;

.field private expiryYear:Ljava/lang/String;

.field private isDomestic:Ljava/lang/String;

.field private isExpired:Ljava/lang/Boolean;

.field private issuingBank:Ljava/lang/String;

.field private maskedCardNumber:Ljava/lang/String;

.field private merchantHash:Ljava/lang/String;

.field private nameOnCard:Ljava/lang/String;

.field private oneTapCard:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/payu/india/Model/StoredCard$1;

    invoke-direct {v0}, Lcom/payu/india/Model/StoredCard$1;-><init>()V

    sput-object v0, Lcom/payu/india/Model/StoredCard;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/StoredCard;->nameOnCard:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/StoredCard;->cardName:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/StoredCard;->expiryYear:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/StoredCard;->expiryMonth:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/StoredCard;->cardType:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/StoredCard;->cardToken:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/StoredCard;->cardMode:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/StoredCard;->maskedCardNumber:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/StoredCard;->cardBrand:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/StoredCard;->cardBin:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/StoredCard;->isDomestic:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/StoredCard;->cvv:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/StoredCard;->issuingBank:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/india/Model/StoredCard;->enableOneClickPayment:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/india/Model/StoredCard;->oneTapCard:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/StoredCard;->merchantHash:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public getCardBin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->cardBin:Ljava/lang/String;

    return-object v0
.end method

.method public getCardBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->cardBrand:Ljava/lang/String;

    return-object v0
.end method

.method public getCardMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->cardMode:Ljava/lang/String;

    return-object v0
.end method

.method public getCardName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->cardName:Ljava/lang/String;

    return-object v0
.end method

.method public getCardToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->cardToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->cardType:Ljava/lang/String;

    return-object v0
.end method

.method public getCvv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->cvv:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableOneClickPayment()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/payu/india/Model/StoredCard;->enableOneClickPayment:I

    return v0
.end method

.method public getExpiryMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->expiryMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->expiryYear:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDomestic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->isDomestic:Ljava/lang/String;

    return-object v0
.end method

.method public getIsExpired()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->isExpired:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIssuingBank()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->issuingBank:Ljava/lang/String;

    return-object v0
.end method

.method public getMaskedCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->maskedCardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->merchantHash:Ljava/lang/String;

    return-object v0
.end method

.method public getNameOnCard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->nameOnCard:Ljava/lang/String;

    return-object v0
.end method

.method public getOneTapCard()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/payu/india/Model/StoredCard;->oneTapCard:I

    return v0
.end method

.method public setCardBin(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardBin"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/payu/india/Model/StoredCard;->cardBin:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setCardBrand(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardBrand"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/payu/india/Model/StoredCard;->cardBrand:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setCardMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardMode"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/payu/india/Model/StoredCard;->cardMode:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setCardName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardName"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/payu/india/Model/StoredCard;->cardName:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setCardToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardToken"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/payu/india/Model/StoredCard;->cardToken:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardType"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/payu/india/Model/StoredCard;->cardType:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setCvv(Ljava/lang/String;)V
    .locals 0
    .param p1, "cvv"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/payu/india/Model/StoredCard;->cvv:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setEnableOneClickPayment(I)V
    .locals 0
    .param p1, "enableOneClickPayment"    # I

    .prologue
    .line 202
    iput p1, p0, Lcom/payu/india/Model/StoredCard;->enableOneClickPayment:I

    .line 203
    return-void
.end method

.method public setExpiryMonth(Ljava/lang/String;)V
    .locals 0
    .param p1, "expiryMonth"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/payu/india/Model/StoredCard;->expiryMonth:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setExpiryYear(Ljava/lang/String;)V
    .locals 0
    .param p1, "expiryYear"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/payu/india/Model/StoredCard;->expiryYear:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setIsDomestic(Ljava/lang/String;)V
    .locals 0
    .param p1, "isDomestic"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/payu/india/Model/StoredCard;->isDomestic:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setIsExpired(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isExpired"    # Ljava/lang/Boolean;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/payu/india/Model/StoredCard;->isExpired:Ljava/lang/Boolean;

    .line 139
    return-void
.end method

.method public setIssuingBank(Ljava/lang/String;)V
    .locals 0
    .param p1, "issuingBank"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/payu/india/Model/StoredCard;->issuingBank:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setMaskedCardNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "maskedCardNumber"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/payu/india/Model/StoredCard;->maskedCardNumber:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setMerchantHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "merchantHash"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/payu/india/Model/StoredCard;->merchantHash:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setNameOnCard(Ljava/lang/String;)V
    .locals 0
    .param p1, "nameOnCard"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/payu/india/Model/StoredCard;->nameOnCard:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setOneTapCard(I)V
    .locals 0
    .param p1, "oneTapCard"    # I

    .prologue
    .line 210
    iput p1, p0, Lcom/payu/india/Model/StoredCard;->oneTapCard:I

    .line 211
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->nameOnCard:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->cardName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->expiryYear:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->expiryMonth:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->cardType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->cardToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->cardMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->maskedCardNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->cardBrand:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->cardBin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->isDomestic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->cvv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->issuingBank:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget v0, p0, Lcom/payu/india/Model/StoredCard;->enableOneClickPayment:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget v0, p0, Lcom/payu/india/Model/StoredCard;->oneTapCard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget-object v0, p0, Lcom/payu/india/Model/StoredCard;->merchantHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    return-void
.end method
