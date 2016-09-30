.class public Lcom/payu/india/Model/PayuUserOffer;
.super Ljava/lang/Object;
.source "PayuUserOffer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/payu/india/Model/PayuUserOffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private availableCardOffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/payu/india/Model/PayuOffer;",
            ">;"
        }
    .end annotation
.end field

.field private storedCard:Lcom/payu/india/Model/StoredCard;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/payu/india/Model/PayuUserOffer$1;

    invoke-direct {v0}, Lcom/payu/india/Model/PayuUserOffer$1;-><init>()V

    sput-object v0, Lcom/payu/india/Model/PayuUserOffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-class v0, Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payu/india/Model/StoredCard;

    iput-object v0, p0, Lcom/payu/india/Model/PayuUserOffer;->storedCard:Lcom/payu/india/Model/StoredCard;

    .line 22
    sget-object v0, Lcom/payu/india/Model/PayuOffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuUserOffer;->availableCardOffers:Ljava/util/ArrayList;

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getAvailableCardOffers()Ljava/util/ArrayList;
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
    .line 46
    iget-object v0, p0, Lcom/payu/india/Model/PayuUserOffer;->availableCardOffers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStoredCard()Lcom/payu/india/Model/StoredCard;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/payu/india/Model/PayuUserOffer;->storedCard:Lcom/payu/india/Model/StoredCard;

    return-object v0
.end method

.method public setAvailableCardOffers(Ljava/util/ArrayList;)V
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
    .line 50
    .local p1, "availableCardOffers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payu/india/Model/PayuOffer;>;"
    iput-object p1, p0, Lcom/payu/india/Model/PayuUserOffer;->availableCardOffers:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method public setStoredCard(Lcom/payu/india/Model/StoredCard;)V
    .locals 0
    .param p1, "storedCard"    # Lcom/payu/india/Model/StoredCard;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/payu/india/Model/PayuUserOffer;->storedCard:Lcom/payu/india/Model/StoredCard;

    .line 43
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/payu/india/Model/PayuUserOffer;->storedCard:Lcom/payu/india/Model/StoredCard;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 61
    iget-object v0, p0, Lcom/payu/india/Model/PayuUserOffer;->availableCardOffers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 62
    return-void
.end method
