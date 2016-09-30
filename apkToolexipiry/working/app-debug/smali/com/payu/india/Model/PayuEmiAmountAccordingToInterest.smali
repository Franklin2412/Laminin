.class public Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;
.super Ljava/lang/Object;
.source "PayuEmiAmountAccordingToInterest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amount:Ljava/lang/String;

.field private bankCharge:Ljava/lang/String;

.field private bankRate:Ljava/lang/String;

.field private cardType:Ljava/lang/String;

.field private emiBankInterest:Ljava/lang/String;

.field private emiInterestPaid:Ljava/lang/String;

.field private emiValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest$1;

    invoke-direct {v0}, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest$1;-><init>()V

    sput-object v0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->emiBankInterest:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->bankRate:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->bankCharge:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->amount:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->cardType:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->emiValue:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->emiInterestPaid:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public static payuEmiAmountAccordingToInterestResponseHelper(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;
    .locals 5
    .param p0, "bankCode"    # Ljava/lang/String;
    .param p1, "emiMonths"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;",
            ">;>;)",
            "Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;"
        }
    .end annotation

    .prologue
    .line 135
    .local p2, "emiResponse":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;>;>;"
    const/4 v2, 0x0

    .line 137
    .local v2, "response":Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;
    :try_start_0
    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    .line 141
    .end local v2    # "response":Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;
    .local v3, "response":Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;
    :goto_0
    return-object v3

    .line 138
    .end local v3    # "response":Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;
    .restart local v2    # "response":Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v2

    .line 141
    .end local v2    # "response":Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;
    .restart local v3    # "response":Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;
    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "response":Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;
    .restart local v2    # "response":Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;
    :catchall_0
    move-exception v4

    move-object v3, v2

    .end local v2    # "response":Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;
    .restart local v3    # "response":Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;
    goto :goto_0
.end method

.method public static payuEmiAmountAccordingToInterestResponseHelper(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 5
    .param p0, "bankCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;",
            ">;>;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "emiResponse":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;>;>;"
    const/4 v2, 0x0

    .line 157
    .local v2, "response":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;>;"
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/HashMap;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    .line 161
    .end local v2    # "response":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;>;"
    .local v3, "response":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;>;"
    :goto_0
    return-object v3

    .line 158
    .end local v3    # "response":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;>;"
    .restart local v2    # "response":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;>;"
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v2

    .line 161
    .end local v2    # "response":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;>;"
    .restart local v3    # "response":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;>;"
    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "response":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;>;"
    .restart local v2    # "response":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;>;"
    :catchall_0
    move-exception v4

    move-object v3, v2

    .end local v2    # "response":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;>;"
    .restart local v3    # "response":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;>;"
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getBankCharge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->bankCharge:Ljava/lang/String;

    return-object v0
.end method

.method public getBankRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->bankRate:Ljava/lang/String;

    return-object v0
.end method

.method public getCardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->cardType:Ljava/lang/String;

    return-object v0
.end method

.method public getEmiBankInterest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->emiBankInterest:Ljava/lang/String;

    return-object v0
.end method

.method public getEmiInterestPaid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->emiInterestPaid:Ljava/lang/String;

    return-object v0
.end method

.method public getEmiValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->emiValue:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "amount"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->amount:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setBankCharge(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankCharge"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->bankCharge:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setBankRate(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankRate"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->bankRate:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardType"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->cardType:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setEmiBankInterest(Ljava/lang/String;)V
    .locals 0
    .param p1, "emiBankInterest"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->emiBankInterest:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setEmiInterestPaid(Ljava/lang/String;)V
    .locals 0
    .param p1, "emiInterestPaid"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->emiInterestPaid:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setEmiValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "emiValue"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->emiValue:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->emiBankInterest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->bankRate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->bankCharge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->amount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->cardType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->emiValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/payu/india/Model/PayuEmiAmountAccordingToInterest;->emiInterestPaid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    return-void
.end method
