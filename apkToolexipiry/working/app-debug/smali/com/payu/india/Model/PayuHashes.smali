.class public Lcom/payu/india/Model/PayuHashes;
.super Ljava/lang/Object;
.source "PayuHashes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/payu/india/Model/PayuHashes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cancelRefundTransactionHash:Ljava/lang/String;

.field private captureTransactionHash:Ljava/lang/String;

.field private checkActionStatusHash:Ljava/lang/String;

.field private checkIsDomesticHash:Ljava/lang/String;

.field private checkOfferDetailsHash:Ljava/lang/String;

.field private checkOfferStatusHash:Ljava/lang/String;

.field private checkPaymentHash:Ljava/lang/String;

.field private codCancelHash:Ljava/lang/String;

.field private codVerifyHash:Ljava/lang/String;

.field private createInvoiceHash:Ljava/lang/String;

.field private deleteCardHash:Ljava/lang/String;

.field private deleteStoreCardCvv:Ljava/lang/String;

.field private editCardHash:Ljava/lang/String;

.field private emiAmountAccordingToInterestHash:Ljava/lang/String;

.field private getTdrHash:Ljava/lang/String;

.field private issuingBankStatusHash:Ljava/lang/String;

.field private merchantIbiboCodesHash:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private netBankingStatusHash:Ljava/lang/String;

.field private paymentHash:Ljava/lang/String;

.field private paymentRelatedDetailsForMobileSdkHash:Ljava/lang/String;

.field private saveCardHash:Ljava/lang/String;

.field private storedCardsHash:Ljava/lang/String;

.field private transactionDetailsHash:Ljava/lang/String;

.field private transactionInfoHash:Ljava/lang/String;

.field private udfUpdateHash:Ljava/lang/String;

.field private updateRequestsHash:Ljava/lang/String;

.field private vasForMobileSdkHash:Ljava/lang/String;

.field private verifyPaymentHash:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/payu/india/Model/PayuHashes$1;

    invoke-direct {v0}, Lcom/payu/india/Model/PayuHashes$1;-><init>()V

    sput-object v0, Lcom/payu/india/Model/PayuHashes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->paymentHash:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->verifyPaymentHash:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->checkPaymentHash:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->cancelRefundTransactionHash:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->checkActionStatusHash:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->captureTransactionHash:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->updateRequestsHash:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->codVerifyHash:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->codCancelHash:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->getTdrHash:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->udfUpdateHash:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->createInvoiceHash:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->checkOfferStatusHash:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->netBankingStatusHash:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->issuingBankStatusHash:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->transactionDetailsHash:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->transactionInfoHash:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->checkIsDomesticHash:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->storedCardsHash:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->saveCardHash:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->editCardHash:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->deleteCardHash:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->merchantIbiboCodesHash:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->vasForMobileSdkHash:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->paymentRelatedDetailsForMobileSdkHash:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->deleteStoreCardCvv:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->checkOfferDetailsHash:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/PayuHashes;->emiAmountAccordingToInterestHash:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public getCancelRefundTransactionHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->cancelRefundTransactionHash:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptureTransactionHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->captureTransactionHash:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckActionStatusHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->checkActionStatusHash:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckIsDomesticHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->checkIsDomesticHash:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckOfferDetailsHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->checkOfferDetailsHash:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckOfferStatusHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->checkOfferStatusHash:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckPaymentHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->checkPaymentHash:Ljava/lang/String;

    return-object v0
.end method

.method public getCodCancelHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->codCancelHash:Ljava/lang/String;

    return-object v0
.end method

.method public getCodVerifyHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->codVerifyHash:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateInvoiceHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->createInvoiceHash:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteCardHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->deleteCardHash:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteStoreCardCvv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->deleteStoreCardCvv:Ljava/lang/String;

    return-object v0
.end method

.method public getEditCardHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->editCardHash:Ljava/lang/String;

    return-object v0
.end method

.method public getEmiAmountAccordingToInterestHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->emiAmountAccordingToInterestHash:Ljava/lang/String;

    return-object v0
.end method

.method public getGetTdrHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->getTdrHash:Ljava/lang/String;

    return-object v0
.end method

.method public getIssuingBankStatusHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->issuingBankStatusHash:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantIbiboCodesHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->merchantIbiboCodesHash:Ljava/lang/String;

    return-object v0
.end method

.method public getNetBankingStatusHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->netBankingStatusHash:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->paymentHash:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentRelatedDetailsForMobileSdkHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->paymentRelatedDetailsForMobileSdkHash:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveCardHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->saveCardHash:Ljava/lang/String;

    return-object v0
.end method

.method public getStoredCardsHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->storedCardsHash:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionDetailsHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->transactionDetailsHash:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionInfoHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->transactionInfoHash:Ljava/lang/String;

    return-object v0
.end method

.method public getUdfUpdateHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->udfUpdateHash:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateRequestsHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->updateRequestsHash:Ljava/lang/String;

    return-object v0
.end method

.method public getVasForMobileSdkHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->vasForMobileSdkHash:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyPaymentHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->verifyPaymentHash:Ljava/lang/String;

    return-object v0
.end method

.method public setCancelRefundTransactionHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "cancelRefundTransactionHash"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->cancelRefundTransactionHash:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setCaptureTransactionHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "captureTransactionHash"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->captureTransactionHash:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setCheckActionStatusHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "checkActionStatusHash"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->checkActionStatusHash:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setCheckIsDomesticHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "checkIsDomesticHash"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->checkIsDomesticHash:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setCheckOfferDetailsHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "checkOfferDetails"    # Ljava/lang/String;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->checkOfferDetailsHash:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public setCheckOfferStatusHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "checkOfferStatusHash"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->checkOfferStatusHash:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setCheckPaymentHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "checkPaymentHash"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->checkPaymentHash:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setCodCancelHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "codCancelHash"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->codCancelHash:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setCodVerifyHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "codVerifyHash"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->codVerifyHash:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setCreateInvoiceHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "createInvoiceHash"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->createInvoiceHash:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setDeleteCardHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "deleteCardHash"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->deleteCardHash:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setDeleteStoreCardCvv(Ljava/lang/String;)V
    .locals 0
    .param p1, "deleteStoreCardCvv"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->deleteStoreCardCvv:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setEditCardHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "editCardHash"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->editCardHash:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setEmiAmountAccordingToInterestHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "emiAmountAccordingToInterestHash"    # Ljava/lang/String;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->emiAmountAccordingToInterestHash:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public setGetTdrHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "getTdrHash"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->getTdrHash:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setIssuingBankStatusHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "issuingBankStatusHash"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->issuingBankStatusHash:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setMerchantIbiboCodesHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "merchantIbiboCodesHash"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->merchantIbiboCodesHash:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setNetBankingStatusHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "netBankingStatusHash"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->netBankingStatusHash:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setPaymentHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "paymentHash"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->paymentHash:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setPaymentRelatedDetailsForMobileSdkHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "paymentRelatedDetailsForMobileSdkHash"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->paymentRelatedDetailsForMobileSdkHash:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setSaveCardHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "saveCardHash"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->saveCardHash:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setStoredCardsHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "storedCardsHash"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->storedCardsHash:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setTransactionDetailsHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionDetailsHash"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->transactionDetailsHash:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setTransactionInfoHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionInfoHash"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->transactionInfoHash:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setUdfUpdateHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "udfUpdateHash"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->udfUpdateHash:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setUpdateRequestsHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateRequestsHash"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->updateRequestsHash:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setVasForMobileSdkHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "vasForMobileSdkHash"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->vasForMobileSdkHash:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setVerifyPaymentHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "verifyPaymentHash"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/payu/india/Model/PayuHashes;->verifyPaymentHash:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 351
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->paymentHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->verifyPaymentHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->checkPaymentHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->cancelRefundTransactionHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->checkActionStatusHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->captureTransactionHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->updateRequestsHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->codVerifyHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->codCancelHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->getTdrHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->udfUpdateHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->createInvoiceHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->checkOfferStatusHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->netBankingStatusHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->issuingBankStatusHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->transactionDetailsHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->transactionInfoHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->checkIsDomesticHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->storedCardsHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->saveCardHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->editCardHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->deleteCardHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->merchantIbiboCodesHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->vasForMobileSdkHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->paymentRelatedDetailsForMobileSdkHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->deleteStoreCardCvv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->checkOfferDetailsHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/payu/india/Model/PayuHashes;->emiAmountAccordingToInterestHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 379
    return-void
.end method
