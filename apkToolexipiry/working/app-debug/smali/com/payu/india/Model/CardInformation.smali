.class public Lcom/payu/india/Model/CardInformation;
.super Ljava/lang/Object;
.source "CardInformation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/payu/india/Model/CardInformation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cardCategory:Ljava/lang/String;

.field private cardType:Ljava/lang/String;

.field private isDomestic:Ljava/lang/Boolean;

.field private issuingBank:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/payu/india/Model/CardInformation$1;

    invoke-direct {v0}, Lcom/payu/india/Model/CardInformation$1;-><init>()V

    sput-object v0, Lcom/payu/india/Model/CardInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/CardInformation;->issuingBank:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/CardInformation;->cardCategory:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/CardInformation;->cardType:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public getCardCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/payu/india/Model/CardInformation;->cardCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getCardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/payu/india/Model/CardInformation;->cardType:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDomestic()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/payu/india/Model/CardInformation;->isDomestic:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIssuingBank()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/payu/india/Model/CardInformation;->issuingBank:Ljava/lang/String;

    return-object v0
.end method

.method public setCardCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardCategory"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/payu/india/Model/CardInformation;->cardCategory:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardType"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/payu/india/Model/CardInformation;->cardType:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setIsDomestic(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isDomestic"    # Ljava/lang/Boolean;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/payu/india/Model/CardInformation;->isDomestic:Ljava/lang/Boolean;

    .line 75
    return-void
.end method

.method public setIssuingBank(Ljava/lang/String;)V
    .locals 0
    .param p1, "issuingBank"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/payu/india/Model/CardInformation;->issuingBank:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/payu/india/Model/CardInformation;->issuingBank:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/payu/india/Model/CardInformation;->cardCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/payu/india/Model/CardInformation;->cardType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    return-void
.end method
