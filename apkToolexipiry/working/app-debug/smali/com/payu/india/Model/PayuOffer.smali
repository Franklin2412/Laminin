.class public Lcom/payu/india/Model/PayuOffer;
.super Ljava/lang/Object;
.source "PayuOffer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/payu/india/Model/PayuOffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allowedOn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private category:Ljava/lang/String;

.field private discount:Ljava/lang/String;

.field private errorCode:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private offerAvailedCount:Ljava/lang/String;

.field private offerKey:Ljava/lang/String;

.field private offerRemainingCount:Ljava/lang/String;

.field private offerType:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/payu/india/Model/PayuOffer$1;

    invoke-direct {v0}, Lcom/payu/india/Model/PayuOffer$1;-><init>()V

    sput-object v0, Lcom/payu/india/Model/PayuOffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuOffer;->status:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuOffer;->msg:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuOffer;->errorCode:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuOffer;->offerKey:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuOffer;->offerType:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuOffer;->offerAvailedCount:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuOffer;->offerRemainingCount:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuOffer;->discount:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuOffer;->category:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuOffer;->allowedOn:Ljava/util/ArrayList;

    .line 62
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowedOn()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/payu/india/Model/PayuOffer;->allowedOn:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/payu/india/Model/PayuOffer;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/payu/india/Model/PayuOffer;->discount:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/payu/india/Model/PayuOffer;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/payu/india/Model/PayuOffer;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferAvailedCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/payu/india/Model/PayuOffer;->offerAvailedCount:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/payu/india/Model/PayuOffer;->offerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferRemainingCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/payu/india/Model/PayuOffer;->offerRemainingCount:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/payu/india/Model/PayuOffer;->offerType:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/payu/india/Model/PayuOffer;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setAllowedOn(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "allowedOn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/payu/india/Model/PayuOffer;->allowedOn:Ljava/util/ArrayList;

    .line 101
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/payu/india/Model/PayuOffer;->category:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setDiscount(Ljava/lang/String;)V
    .locals 0
    .param p1, "discount"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/payu/india/Model/PayuOffer;->discount:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/payu/india/Model/PayuOffer;->errorCode:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/payu/india/Model/PayuOffer;->msg:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setOfferAvailedCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "offerAvailedCount"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/payu/india/Model/PayuOffer;->offerAvailedCount:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setOfferKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "offerKey"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/payu/india/Model/PayuOffer;->offerKey:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setOfferRemainingCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "offerRemainingCount"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/payu/india/Model/PayuOffer;->offerRemainingCount:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setOfferType(Ljava/lang/String;)V
    .locals 0
    .param p1, "offerType"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/payu/india/Model/PayuOffer;->offerType:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/payu/india/Model/PayuOffer;->status:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/payu/india/Model/PayuOffer;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/payu/india/Model/PayuOffer;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/payu/india/Model/PayuOffer;->errorCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/payu/india/Model/PayuOffer;->offerKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/payu/india/Model/PayuOffer;->offerType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/payu/india/Model/PayuOffer;->offerAvailedCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/payu/india/Model/PayuOffer;->offerRemainingCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/payu/india/Model/PayuOffer;->discount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/payu/india/Model/PayuOffer;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/payu/india/Model/PayuOffer;->allowedOn:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 76
    return-void
.end method
