.class final Lcom/payu/india/Model/PaymentParams$1;
.super Ljava/lang/Object;
.source "PaymentParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/india/Model/PaymentParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/payu/india/Model/PaymentParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/payu/india/Model/PaymentParams;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 155
    new-instance v0, Lcom/payu/india/Model/PaymentParams;

    invoke-direct {v0, p1}, Lcom/payu/india/Model/PaymentParams;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/payu/india/Model/PaymentParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/payu/india/Model/PaymentParams;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/payu/india/Model/PaymentParams;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 160
    new-array v0, p1, [Lcom/payu/india/Model/PaymentParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/payu/india/Model/PaymentParams$1;->newArray(I)[Lcom/payu/india/Model/PaymentParams;

    move-result-object v0

    return-object v0
.end method
