.class public Lcom/payu/india/Model/PaymentDetails;
.super Ljava/lang/Object;
.source "PaymentDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/payu/india/Model/PaymentDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bankCode:Ljava/lang/String;

.field private bankId:Ljava/lang/String;

.field private bankName:Ljava/lang/String;

.field private pgId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/payu/india/Model/PaymentDetails$1;

    invoke-direct {v0}, Lcom/payu/india/Model/PaymentDetails$1;-><init>()V

    sput-object v0, Lcom/payu/india/Model/PaymentDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentDetails;->bankCode:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentDetails;->bankName:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentDetails;->bankId:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PaymentDetails;->pgId:Ljava/lang/String;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/payu/india/Model/PaymentDetails$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/payu/india/Model/PaymentDetails$1;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/payu/india/Model/PaymentDetails;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public getBankCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/payu/india/Model/PaymentDetails;->bankCode:Ljava/lang/String;

    return-object v0
.end method

.method public getBankId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/payu/india/Model/PaymentDetails;->bankId:Ljava/lang/String;

    return-object v0
.end method

.method public getBankName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/payu/india/Model/PaymentDetails;->bankName:Ljava/lang/String;

    return-object v0
.end method

.method public getPgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/payu/india/Model/PaymentDetails;->pgId:Ljava/lang/String;

    return-object v0
.end method

.method public setBankCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankCode"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/payu/india/Model/PaymentDetails;->bankCode:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setBankId(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankId"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/payu/india/Model/PaymentDetails;->bankId:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setBankName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankName"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/payu/india/Model/PaymentDetails;->bankName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setPgId(Ljava/lang/String;)V
    .locals 0
    .param p1, "pgId"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/payu/india/Model/PaymentDetails;->pgId:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/payu/india/Model/PaymentDetails;->bankCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/payu/india/Model/PaymentDetails;->bankName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/payu/india/Model/PaymentDetails;->bankId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/payu/india/Model/PaymentDetails;->pgId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    return-void
.end method
