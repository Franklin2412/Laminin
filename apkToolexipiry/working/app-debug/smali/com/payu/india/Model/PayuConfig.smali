.class public Lcom/payu/india/Model/PayuConfig;
.super Ljava/lang/Object;
.source "PayuConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/payu/india/Model/PayuConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data:Ljava/lang/String;

.field private environment:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/payu/india/Model/PayuConfig$1;

    invoke-direct {v0}, Lcom/payu/india/Model/PayuConfig$1;-><init>()V

    sput-object v0, Lcom/payu/india/Model/PayuConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuConfig;->data:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/india/Model/PayuConfig;->environment:I

    .line 63
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public getConfig()Lcom/payu/india/Model/PostData;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/payu/india/Model/PostData;

    invoke-direct {v0}, Lcom/payu/india/Model/PostData;-><init>()V

    .line 83
    .local v0, "postData":Lcom/payu/india/Model/PostData;
    iget-object v1, p0, Lcom/payu/india/Model/PayuConfig;->data:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/payu/india/Model/PayuConfig;->data:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 84
    :cond_0
    const/16 v1, 0x1389

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setCode(I)V

    .line 85
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setResult(Ljava/lang/String;)V

    .line 86
    const-string v1, "Post data is missing"

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setResult(Ljava/lang/String;)V

    .line 111
    :goto_0
    return-object v0

    .line 90
    :cond_1
    iget v1, p0, Lcom/payu/india/Model/PayuConfig;->environment:I

    packed-switch v1, :pswitch_data_0

    .line 104
    iput v2, p0, Lcom/payu/india/Model/PayuConfig;->environment:I

    .line 108
    :goto_1
    invoke-virtual {v0, v2}, Lcom/payu/india/Model/PostData;->setCode(I)V

    .line 109
    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setStatus(Ljava/lang/String;)V

    .line 110
    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Lcom/payu/india/Model/PostData;->setResult(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :pswitch_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/payu/india/Model/PayuConfig;->environment:I

    goto :goto_1

    .line 95
    :pswitch_1
    iput v2, p0, Lcom/payu/india/Model/PayuConfig;->environment:I

    goto :goto_1

    .line 98
    :pswitch_2
    iput v3, p0, Lcom/payu/india/Model/PayuConfig;->environment:I

    goto :goto_1

    .line 101
    :pswitch_3
    const/4 v1, 0x3

    iput v1, p0, Lcom/payu/india/Model/PayuConfig;->environment:I

    goto :goto_1

    .line 90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/payu/india/Model/PayuConfig;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvironment()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/payu/india/Model/PayuConfig;->environment:I

    return v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/payu/india/Model/PayuConfig;->data:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setEnvironment(I)V
    .locals 0
    .param p1, "environment"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/payu/india/Model/PayuConfig;->environment:I

    .line 79
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/payu/india/Model/PayuConfig;->data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget v0, p0, Lcom/payu/india/Model/PayuConfig;->environment:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    return-void
.end method
