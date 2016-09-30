.class public Lcom/payu/india/Model/Emi;
.super Ljava/lang/Object;
.source "Emi.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/payu/india/Model/Emi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bankCode:Ljava/lang/String;

.field private bankId:Ljava/lang/String;

.field private bankName:Ljava/lang/String;

.field private bankTitle:Ljava/lang/String;

.field private pgId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/payu/india/Model/Emi$1;

    invoke-direct {v0}, Lcom/payu/india/Model/Emi$1;-><init>()V

    sput-object v0, Lcom/payu/india/Model/Emi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/Emi;->bankCode:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/Emi;->bankName:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/Emi;->bankTitle:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/Emi;->bankId:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/Emi;->pgId:Ljava/lang/String;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/payu/india/Model/Emi$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/payu/india/Model/Emi$1;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/payu/india/Model/Emi;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public getBankCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/payu/india/Model/Emi;->bankCode:Ljava/lang/String;

    return-object v0
.end method

.method public getBankId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/payu/india/Model/Emi;->bankId:Ljava/lang/String;

    return-object v0
.end method

.method public getBankName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/payu/india/Model/Emi;->bankName:Ljava/lang/String;

    return-object v0
.end method

.method public getBankTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/payu/india/Model/Emi;->bankTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/payu/india/Model/Emi;->pgId:Ljava/lang/String;

    return-object v0
.end method

.method public setBankCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankCode"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/payu/india/Model/Emi;->bankCode:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setBankId(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankId"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/payu/india/Model/Emi;->bankId:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setBankName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankName"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/payu/india/Model/Emi;->bankName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setBankTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankTitle"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/payu/india/Model/Emi;->bankTitle:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setPgId(Ljava/lang/String;)V
    .locals 0
    .param p1, "pgId"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/payu/india/Model/Emi;->pgId:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/payu/india/Model/Emi;->bankCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/payu/india/Model/Emi;->bankName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/payu/india/Model/Emi;->bankTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/payu/india/Model/Emi;->bankId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/payu/india/Model/Emi;->pgId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return-void
.end method
