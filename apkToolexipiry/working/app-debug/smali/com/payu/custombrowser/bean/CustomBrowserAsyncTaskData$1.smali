.class final Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData$1;
.super Ljava/lang/Object;
.source "CustomBrowserAsyncTaskData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;
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
        "Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 28
    new-instance v0, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;

    invoke-direct {v0, p1}, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 33
    new-array v0, p1, [Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData$1;->newArray(I)[Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;

    move-result-object v0

    return-object v0
.end method
