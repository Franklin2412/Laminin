.class public Lcom/payu/india/Model/PayuOfferDetails;
.super Ljava/lang/Object;
.source "PayuOfferDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/payu/india/Model/PayuOfferDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private payuOfferList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PayuOffer;",
            ">;"
        }
    .end annotation
.end field

.field private userOffersList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PayuUserOffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/payu/india/Model/PayuOfferDetails$1;

    invoke-direct {v0}, Lcom/payu/india/Model/PayuOfferDetails$1;-><init>()V

    sput-object v0, Lcom/payu/india/Model/PayuOfferDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/payu/india/Model/PayuUserOffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuOfferDetails;->userOffersList:Ljava/util/ArrayList;

    .line 40
    sget-object v0, Lcom/payu/india/Model/PayuOffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuOfferDetails;->payuOfferList:Ljava/util/ArrayList;

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getPayuOfferList()Ljava/util/ArrayList;
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
    .line 27
    iget-object v0, p0, Lcom/payu/india/Model/PayuOfferDetails;->payuOfferList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUserOffersList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PayuUserOffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/payu/india/Model/PayuOfferDetails;->userOffersList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setPayuOfferList(Ljava/util/ArrayList;)V
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
    .line 31
    .local p1, "payuOfferList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PayuOffer;>;"
    iput-object p1, p0, Lcom/payu/india/Model/PayuOfferDetails;->payuOfferList:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method public setUserOffersList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PayuUserOffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "userOffersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PayuUserOffer;>;"
    iput-object p1, p0, Lcom/payu/india/Model/PayuOfferDetails;->userOffersList:Ljava/util/ArrayList;

    .line 24
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/payu/india/Model/PayuOfferDetails;->userOffersList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 46
    iget-object v0, p0, Lcom/payu/india/Model/PayuOfferDetails;->payuOfferList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 47
    return-void
.end method
