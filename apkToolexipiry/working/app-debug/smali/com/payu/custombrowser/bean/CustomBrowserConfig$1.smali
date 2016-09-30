.class final Lcom/payu/custombrowser/bean/CustomBrowserConfig$1;
.super Ljava/lang/Object;
.source "CustomBrowserConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/bean/CustomBrowserConfig;
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
        "Lcom/payu/custombrowser/bean/CustomBrowserConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/payu/custombrowser/bean/CustomBrowserConfig;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 24
    new-instance v0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-direct {v0, p1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/payu/custombrowser/bean/CustomBrowserConfig;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 29
    new-array v0, p1, [Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig$1;->newArray(I)[Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    move-result-object v0

    return-object v0
.end method
