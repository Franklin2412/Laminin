.class final Lcom/payu/india/Model/TransactionResponse$1;
.super Ljava/lang/Object;
.source "TransactionResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/india/Model/TransactionResponse;
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
        "Lcom/payu/india/Model/TransactionResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/payu/india/Model/TransactionResponse;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 372
    new-instance v0, Lcom/payu/india/Model/TransactionResponse;

    invoke-direct {v0, p1}, Lcom/payu/india/Model/TransactionResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Lcom/payu/india/Model/TransactionResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/payu/india/Model/TransactionResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/payu/india/Model/TransactionResponse;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 377
    new-array v0, p1, [Lcom/payu/india/Model/TransactionResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Lcom/payu/india/Model/TransactionResponse$1;->newArray(I)[Lcom/payu/india/Model/TransactionResponse;

    move-result-object v0

    return-object v0
.end method
