.class public Lcom/payu/payuui/SavedCard;
.super Ljava/lang/Object;
.source "SavedCard.java"


# instance fields
.field private bankImageSource:Landroid/widget/ImageView;

.field private cardName:Ljava/lang/String;

.field private cardType:Ljava/lang/String;

.field private cardTypeImageSource:Landroid/widget/ImageView;

.field private maskedCardNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBankImageSource()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/payu/payuui/SavedCard;->bankImageSource:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getCardName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/payu/payuui/SavedCard;->cardName:Ljava/lang/String;

    return-object v0
.end method

.method public getCardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/payu/payuui/SavedCard;->cardType:Ljava/lang/String;

    return-object v0
.end method

.method public getCardTypeImageSource()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/payu/payuui/SavedCard;->cardTypeImageSource:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMaskedCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/payu/payuui/SavedCard;->maskedCardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setBankImageSource(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "bankImageSource"    # Landroid/widget/ImageView;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/payu/payuui/SavedCard;->bankImageSource:Landroid/widget/ImageView;

    .line 29
    return-void
.end method

.method public setCardName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardName"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/payu/payuui/SavedCard;->cardName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardType"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/payu/payuui/SavedCard;->cardType:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setCardTypeImageSource(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "cardTypeImageSource"    # Landroid/widget/ImageView;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/payu/payuui/SavedCard;->cardTypeImageSource:Landroid/widget/ImageView;

    .line 21
    return-void
.end method

.method public setMaskedCardNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "maskedCardNumber"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/payu/payuui/SavedCard;->maskedCardNumber:Ljava/lang/String;

    .line 55
    return-void
.end method
