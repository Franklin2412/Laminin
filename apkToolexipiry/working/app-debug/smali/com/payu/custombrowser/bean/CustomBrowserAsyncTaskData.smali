.class public Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;
.super Ljava/lang/Object;
.source "CustomBrowserAsyncTaskData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contentType:Ljava/lang/String;

.field private httpMethod:Ljava/lang/String;

.field private postData:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData$1;

    invoke-direct {v0}, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData$1;-><init>()V

    sput-object v0, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "GET"

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->httpMethod:Ljava/lang/String;

    .line 39
    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->contentType:Ljava/lang/String;

    .line 40
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->httpMethod:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->url:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->postData:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->contentType:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->httpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getPostData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->postData:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->contentType:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setHttpMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "httpMethod"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->httpMethod:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setPostData(Ljava/lang/String;)V
    .locals 0
    .param p1, "postData"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->postData:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->url:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->httpMethod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->postData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserAsyncTaskData;->contentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return-void
.end method
