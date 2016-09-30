.class public Lcom/payu/india/Model/TransactionDetails;
.super Ljava/lang/Object;
.source "TransactionDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/payu/india/Model/TransactionDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private addedon:Ljava/lang/String;

.field private additionalCharges:Ljava/lang/String;

.field private amount:Ljava/lang/String;

.field private bankCode:Ljava/lang/String;

.field private bankName:Ljava/lang/String;

.field private bankRefNo:Ljava/lang/String;

.field private bankReferenceNumber:Ljava/lang/String;

.field private cardNo:Ljava/lang/String;

.field private cardtype:Ljava/lang/String;

.field private discount:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private errorCode:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private failureReason:Ljava/lang/String;

.field private field2:Ljava/lang/String;

.field private field9:Ljava/lang/String;

.field private firstname:Ljava/lang/String;

.field private ibiboCode:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private lastname:Ljava/lang/String;

.field private merServiceFee:Ljava/lang/String;

.field private merServiceTax:Ljava/lang/String;

.field private merchantUTR:Ljava/lang/String;

.field private merchantname:Ljava/lang/String;

.field private mihpayId:Ljava/lang/String;

.field private mode:Ljava/lang/String;

.field private nameOnCard:Ljava/lang/String;

.field private netAmountDebit:Ljava/lang/String;

.field private offerKey:Ljava/lang/String;

.field private offerType:Ljava/lang/String;

.field private paymentGateway:Ljava/lang/String;

.field private pgMid:Ljava/lang/String;

.field private pgType:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private productinfo:Ljava/lang/String;

.field private requestId:Ljava/lang/String;

.field private settledAt:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private txnid:Ljava/lang/String;

.field private udf1:Ljava/lang/String;

.field private udf2:Ljava/lang/String;

.field private udf3:Ljava/lang/String;

.field private udf4:Ljava/lang/String;

.field private udf5:Ljava/lang/String;

.field private unmappedStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/payu/india/Model/TransactionDetails$1;

    invoke-direct {v0}, Lcom/payu/india/Model/TransactionDetails$1;-><init>()V

    sput-object v0, Lcom/payu/india/Model/TransactionDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->mihpayId:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->requestId:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->bankReferenceNumber:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->field9:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->netAmountDebit:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->pgType:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->nameOnCard:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->unmappedStatus:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->merchantUTR:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->settledAt:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->id:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->status:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->key:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->merchantname:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->txnid:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->firstname:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->lastname:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->addedon:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->bankName:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->paymentGateway:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->phone:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->email:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->amount:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->discount:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->additionalCharges:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->productinfo:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->errorCode:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->errorMessage:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->bankRefNo:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->ibiboCode:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->mode:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->ip:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->cardNo:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->cardtype:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->offerKey:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->field2:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->udf1:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->udf2:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->udf3:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->udf4:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->udf5:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->pgMid:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->offerType:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->failureReason:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->merServiceFee:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->merServiceTax:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->bankCode:Ljava/lang/String;

    .line 139
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    return v0
.end method

.method public getAddedon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->addedon:Ljava/lang/String;

    return-object v0
.end method

.method public getAdditionalCharges()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->additionalCharges:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getBankCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->bankCode:Ljava/lang/String;

    return-object v0
.end method

.method public getBankName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->bankName:Ljava/lang/String;

    return-object v0
.end method

.method public getBankRefNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->bankRefNo:Ljava/lang/String;

    return-object v0
.end method

.method public getBankReferenceNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->bankReferenceNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->cardNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCardtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->cardtype:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->discount:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getFailureReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->failureReason:Ljava/lang/String;

    return-object v0
.end method

.method public getField2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->field2:Ljava/lang/String;

    return-object v0
.end method

.method public getField9()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->field9:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->firstname:Ljava/lang/String;

    return-object v0
.end method

.method public getIbiboCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->ibiboCode:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLastname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->lastname:Ljava/lang/String;

    return-object v0
.end method

.method public getMerServiceFee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->merServiceFee:Ljava/lang/String;

    return-object v0
.end method

.method public getMerServiceTax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->merServiceTax:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantUTR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->merchantUTR:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->merchantname:Ljava/lang/String;

    return-object v0
.end method

.method public getMihpayId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->mihpayId:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getNameOnCard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->nameOnCard:Ljava/lang/String;

    return-object v0
.end method

.method public getNetAmountDebit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->netAmountDebit:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->offerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->offerType:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentGateway()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->paymentGateway:Ljava/lang/String;

    return-object v0
.end method

.method public getPgMid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->pgMid:Ljava/lang/String;

    return-object v0
.end method

.method public getPgType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->pgType:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getProductinfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->productinfo:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getSettledAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->settledAt:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTxnid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->txnid:Ljava/lang/String;

    return-object v0
.end method

.method public getUdf1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->udf1:Ljava/lang/String;

    return-object v0
.end method

.method public getUdf2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->udf2:Ljava/lang/String;

    return-object v0
.end method

.method public getUdf3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->udf3:Ljava/lang/String;

    return-object v0
.end method

.method public getUdf4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->udf4:Ljava/lang/String;

    return-object v0
.end method

.method public getUdf5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->udf5:Ljava/lang/String;

    return-object v0
.end method

.method public getUnmappedStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->unmappedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public setAddedon(Ljava/lang/String;)V
    .locals 0
    .param p1, "addedon"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->addedon:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setAdditionalCharges(Ljava/lang/String;)V
    .locals 0
    .param p1, "additionalCharges"    # Ljava/lang/String;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->additionalCharges:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "amount"    # Ljava/lang/String;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->amount:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public setBankCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankCode"    # Ljava/lang/String;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->bankCode:Ljava/lang/String;

    .line 518
    return-void
.end method

.method public setBankName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankName"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->bankName:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setBankRefNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankRefNo"    # Ljava/lang/String;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->bankRefNo:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setBankReferenceNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankReferenceNumber"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->bankReferenceNumber:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setCardNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardNo"    # Ljava/lang/String;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->cardNo:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public setCardtype(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardtype"    # Ljava/lang/String;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->cardtype:Ljava/lang/String;

    .line 414
    return-void
.end method

.method public setDiscount(Ljava/lang/String;)V
    .locals 0
    .param p1, "discount"    # Ljava/lang/String;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->discount:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->email:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->errorCode:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->errorMessage:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setFailureReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "failureReason"    # Ljava/lang/String;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->failureReason:Ljava/lang/String;

    .line 494
    return-void
.end method

.method public setField2(Ljava/lang/String;)V
    .locals 0
    .param p1, "field2"    # Ljava/lang/String;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->field2:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public setField9(Ljava/lang/String;)V
    .locals 0
    .param p1, "field9"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->field9:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setFirstname(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstname"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->firstname:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setIbiboCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "ibiboCode"    # Ljava/lang/String;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->ibiboCode:Ljava/lang/String;

    .line 382
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->id:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->ip:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->key:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setLastname(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastname"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->lastname:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setMerServiceFee(Ljava/lang/String;)V
    .locals 0
    .param p1, "merServiceFee"    # Ljava/lang/String;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->merServiceFee:Ljava/lang/String;

    .line 502
    return-void
.end method

.method public setMerServiceTax(Ljava/lang/String;)V
    .locals 0
    .param p1, "merServiceTax"    # Ljava/lang/String;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->merServiceTax:Ljava/lang/String;

    .line 510
    return-void
.end method

.method public setMerchantUTR(Ljava/lang/String;)V
    .locals 0
    .param p1, "merchantUTR"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->merchantUTR:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setMerchantname(Ljava/lang/String;)V
    .locals 0
    .param p1, "merchantname"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->merchantname:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setMihpayId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mihpayId"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->mihpayId:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->mode:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public setNameOnCard(Ljava/lang/String;)V
    .locals 0
    .param p1, "nameOnCard"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->nameOnCard:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setNetAmountDebit(Ljava/lang/String;)V
    .locals 0
    .param p1, "netAmountDebit"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->netAmountDebit:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setOfferKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "offerKey"    # Ljava/lang/String;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->offerKey:Ljava/lang/String;

    .line 422
    return-void
.end method

.method public setOfferType(Ljava/lang/String;)V
    .locals 0
    .param p1, "offerType"    # Ljava/lang/String;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->offerType:Ljava/lang/String;

    .line 486
    return-void
.end method

.method public setPaymentGateway(Ljava/lang/String;)V
    .locals 0
    .param p1, "paymentGateway"    # Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->paymentGateway:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setPgMid(Ljava/lang/String;)V
    .locals 0
    .param p1, "pgMid"    # Ljava/lang/String;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->pgMid:Ljava/lang/String;

    .line 478
    return-void
.end method

.method public setPgType(Ljava/lang/String;)V
    .locals 0
    .param p1, "pgType"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->pgType:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->phone:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setProductinfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "productinfo"    # Ljava/lang/String;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->productinfo:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->requestId:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setSettledAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "settledAt"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->settledAt:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->status:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setTxnid(Ljava/lang/String;)V
    .locals 0
    .param p1, "txnid"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->txnid:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setUdf1(Ljava/lang/String;)V
    .locals 0
    .param p1, "udf1"    # Ljava/lang/String;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->udf1:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public setUdf2(Ljava/lang/String;)V
    .locals 0
    .param p1, "udf2"    # Ljava/lang/String;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->udf2:Ljava/lang/String;

    .line 446
    return-void
.end method

.method public setUdf3(Ljava/lang/String;)V
    .locals 0
    .param p1, "udf3"    # Ljava/lang/String;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->udf3:Ljava/lang/String;

    .line 454
    return-void
.end method

.method public setUdf4(Ljava/lang/String;)V
    .locals 0
    .param p1, "udf4"    # Ljava/lang/String;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->udf4:Ljava/lang/String;

    .line 462
    return-void
.end method

.method public setUdf5(Ljava/lang/String;)V
    .locals 0
    .param p1, "udf5"    # Ljava/lang/String;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->udf5:Ljava/lang/String;

    .line 470
    return-void
.end method

.method public setUnmappedStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "unmappedStatus"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/payu/india/Model/TransactionDetails;->unmappedStatus:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 527
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->mihpayId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->requestId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->bankReferenceNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->field9:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->netAmountDebit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->pgType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->nameOnCard:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->unmappedStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->merchantUTR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->settledAt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->merchantname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->txnid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->firstname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->lastname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->addedon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->bankName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->paymentGateway:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->amount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->discount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->additionalCharges:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->productinfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->errorCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->errorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->bankRefNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->ibiboCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->mode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->ip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->cardNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->cardtype:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->offerKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->field2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->udf1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->udf2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->udf3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->udf4:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->udf5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->pgMid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->offerType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->failureReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->merServiceFee:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->merServiceTax:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/payu/india/Model/TransactionDetails;->bankCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 574
    return-void
.end method
