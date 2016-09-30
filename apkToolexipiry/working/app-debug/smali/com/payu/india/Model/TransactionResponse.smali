.class public Lcom/payu/india/Model/TransactionResponse;
.super Ljava/lang/Object;
.source "TransactionResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/payu/india/Model/TransactionResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private addedOn:Ljava/lang/String;

.field private additionalCharges:Ljava/lang/String;

.field private bankRefNo:Ljava/lang/String;

.field private cardCategory:Ljava/lang/String;

.field private cardNumber:Ljava/lang/String;

.field private cardToken:Ljava/lang/String;

.field private cardType:Ljava/lang/String;

.field private discount:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private errorCode:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private field1:Ljava/lang/String;

.field private field2:Ljava/lang/String;

.field private field3:Ljava/lang/String;

.field private field4:Ljava/lang/String;

.field private field9:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field private furl:Ljava/lang/String;

.field private hash:Ljava/lang/String;

.field private ibiboCode:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isSeamless:Ljava/lang/String;

.field private issuingBank:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private merchantHash:Ljava/lang/String;

.field private mode:Ljava/lang/String;

.field private nameOnCard:Ljava/lang/String;

.field private paymentSource:Ljava/lang/String;

.field private pgType:Ljava/lang/String;

.field private productInfo:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private surl:Ljava/lang/String;

.field private transactionFee:Ljava/lang/String;

.field private transactionResponse:Ljava/lang/String;

.field private txnid:Ljava/lang/String;

.field private udf1:Ljava/lang/String;

.field private udf2:Ljava/lang/String;

.field private udf3:Ljava/lang/String;

.field private udf4:Ljava/lang/String;

.field private udf5:Ljava/lang/String;

.field private unMappedStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 369
    new-instance v0, Lcom/payu/india/Model/TransactionResponse$1;

    invoke-direct {v0}, Lcom/payu/india/Model/TransactionResponse$1;-><init>()V

    sput-object v0, Lcom/payu/india/Model/TransactionResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->id:Ljava/lang/String;

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->mode:Ljava/lang/String;

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->status:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->unMappedStatus:Ljava/lang/String;

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->key:Ljava/lang/String;

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->txnid:Ljava/lang/String;

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->transactionFee:Ljava/lang/String;

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->cardCategory:Ljava/lang/String;

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->discount:Ljava/lang/String;

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->additionalCharges:Ljava/lang/String;

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->addedOn:Ljava/lang/String;

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->productInfo:Ljava/lang/String;

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->firstName:Ljava/lang/String;

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->email:Ljava/lang/String;

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->udf1:Ljava/lang/String;

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->udf2:Ljava/lang/String;

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->udf3:Ljava/lang/String;

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->udf4:Ljava/lang/String;

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->udf5:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->hash:Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->field1:Ljava/lang/String;

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->field2:Ljava/lang/String;

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->field3:Ljava/lang/String;

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->field4:Ljava/lang/String;

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->field9:Ljava/lang/String;

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->paymentSource:Ljava/lang/String;

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->pgType:Ljava/lang/String;

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->bankRefNo:Ljava/lang/String;

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->ibiboCode:Ljava/lang/String;

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->errorCode:Ljava/lang/String;

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->errorMessage:Ljava/lang/String;

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->cardToken:Ljava/lang/String;

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->nameOnCard:Ljava/lang/String;

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->cardNumber:Ljava/lang/String;

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->issuingBank:Ljava/lang/String;

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->cardType:Ljava/lang/String;

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->isSeamless:Ljava/lang/String;

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->surl:Ljava/lang/String;

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->furl:Ljava/lang/String;

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->merchantHash:Ljava/lang/String;

    .line 367
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 706
    const/4 v0, 0x0

    return v0
.end method

.method public getAddedOn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->addedOn:Ljava/lang/String;

    return-object v0
.end method

.method public getAdditionalCharges()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->additionalCharges:Ljava/lang/String;

    return-object v0
.end method

.method public getBankRefNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->bankRefNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCardCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->cardCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCardToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->cardToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->cardType:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->discount:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getField1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->field1:Ljava/lang/String;

    return-object v0
.end method

.method public getField2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->field2:Ljava/lang/String;

    return-object v0
.end method

.method public getField3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->field3:Ljava/lang/String;

    return-object v0
.end method

.method public getField4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->field4:Ljava/lang/String;

    return-object v0
.end method

.method public getField9()Ljava/lang/String;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->field9:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getFurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->furl:Ljava/lang/String;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getIbiboCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->ibiboCode:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSeamless()Ljava/lang/String;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->isSeamless:Ljava/lang/String;

    return-object v0
.end method

.method public getIssuingBank()Ljava/lang/String;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->issuingBank:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->merchantHash:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getNameOnCard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->nameOnCard:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->paymentSource:Ljava/lang/String;

    return-object v0
.end method

.method public getPgType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->pgType:Ljava/lang/String;

    return-object v0
.end method

.method public getProductInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->productInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getSurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->surl:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionFee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->transactionFee:Ljava/lang/String;

    return-object v0
.end method

.method public getTxnid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->txnid:Ljava/lang/String;

    return-object v0
.end method

.method public getUdf1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->udf1:Ljava/lang/String;

    return-object v0
.end method

.method public getUdf2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->udf2:Ljava/lang/String;

    return-object v0
.end method

.method public getUdf3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->udf3:Ljava/lang/String;

    return-object v0
.end method

.method public getUdf4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->udf4:Ljava/lang/String;

    return-object v0
.end method

.method public getUdf5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->udf5:Ljava/lang/String;

    return-object v0
.end method

.method public getUnMappedStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->unMappedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public setAddedOn(Ljava/lang/String;)V
    .locals 0
    .param p1, "addedOn"    # Ljava/lang/String;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->addedOn:Ljava/lang/String;

    .line 467
    return-void
.end method

.method public setAdditionalCharges(Ljava/lang/String;)V
    .locals 0
    .param p1, "additionalCharges"    # Ljava/lang/String;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->additionalCharges:Ljava/lang/String;

    .line 459
    return-void
.end method

.method public setBankRefNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankRefNo"    # Ljava/lang/String;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->bankRefNo:Ljava/lang/String;

    .line 603
    return-void
.end method

.method public setCardCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardCategory"    # Ljava/lang/String;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->cardCategory:Ljava/lang/String;

    .line 443
    return-void
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardNumber"    # Ljava/lang/String;

    .prologue
    .line 650
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->cardNumber:Ljava/lang/String;

    .line 651
    return-void
.end method

.method public setCardToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardToken"    # Ljava/lang/String;

    .prologue
    .line 634
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->cardToken:Ljava/lang/String;

    .line 635
    return-void
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardType"    # Ljava/lang/String;

    .prologue
    .line 666
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->cardType:Ljava/lang/String;

    .line 667
    return-void
.end method

.method public setDiscount(Ljava/lang/String;)V
    .locals 0
    .param p1, "discount"    # Ljava/lang/String;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->discount:Ljava/lang/String;

    .line 451
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->email:Ljava/lang/String;

    .line 491
    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 618
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->errorCode:Ljava/lang/String;

    .line 619
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->errorMessage:Ljava/lang/String;

    .line 627
    return-void
.end method

.method public setField1(Ljava/lang/String;)V
    .locals 0
    .param p1, "field1"    # Ljava/lang/String;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->field1:Ljava/lang/String;

    .line 547
    return-void
.end method

.method public setField2(Ljava/lang/String;)V
    .locals 0
    .param p1, "field2"    # Ljava/lang/String;

    .prologue
    .line 554
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->field2:Ljava/lang/String;

    .line 555
    return-void
.end method

.method public setField3(Ljava/lang/String;)V
    .locals 0
    .param p1, "field3"    # Ljava/lang/String;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->field3:Ljava/lang/String;

    .line 563
    return-void
.end method

.method public setField4(Ljava/lang/String;)V
    .locals 0
    .param p1, "field4"    # Ljava/lang/String;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->field4:Ljava/lang/String;

    .line 571
    return-void
.end method

.method public setField9(Ljava/lang/String;)V
    .locals 0
    .param p1, "field9"    # Ljava/lang/String;

    .prologue
    .line 578
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->field9:Ljava/lang/String;

    .line 579
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstName"    # Ljava/lang/String;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->firstName:Ljava/lang/String;

    .line 483
    return-void
.end method

.method public setFurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "furl"    # Ljava/lang/String;

    .prologue
    .line 690
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->furl:Ljava/lang/String;

    .line 691
    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->hash:Ljava/lang/String;

    .line 539
    return-void
.end method

.method public setIbiboCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "ibiboCode"    # Ljava/lang/String;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->ibiboCode:Ljava/lang/String;

    .line 611
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->id:Ljava/lang/String;

    .line 387
    return-void
.end method

.method public setIsSeamless(Ljava/lang/String;)V
    .locals 0
    .param p1, "isSeamless"    # Ljava/lang/String;

    .prologue
    .line 674
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->isSeamless:Ljava/lang/String;

    .line 675
    return-void
.end method

.method public setIssuingBank(Ljava/lang/String;)V
    .locals 0
    .param p1, "issuingBank"    # Ljava/lang/String;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->issuingBank:Ljava/lang/String;

    .line 659
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->key:Ljava/lang/String;

    .line 419
    return-void
.end method

.method public setMerchantHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "merchantHash"    # Ljava/lang/String;

    .prologue
    .line 698
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->merchantHash:Ljava/lang/String;

    .line 699
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->mode:Ljava/lang/String;

    .line 395
    return-void
.end method

.method public setNameOnCard(Ljava/lang/String;)V
    .locals 0
    .param p1, "nameOnCard"    # Ljava/lang/String;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->nameOnCard:Ljava/lang/String;

    .line 643
    return-void
.end method

.method public setPaymentSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "paymentSource"    # Ljava/lang/String;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->paymentSource:Ljava/lang/String;

    .line 587
    return-void
.end method

.method public setPgType(Ljava/lang/String;)V
    .locals 0
    .param p1, "pgType"    # Ljava/lang/String;

    .prologue
    .line 594
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->pgType:Ljava/lang/String;

    .line 595
    return-void
.end method

.method public setProductInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "productInfo"    # Ljava/lang/String;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->productInfo:Ljava/lang/String;

    .line 475
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->status:Ljava/lang/String;

    .line 403
    return-void
.end method

.method public setSurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "surl"    # Ljava/lang/String;

    .prologue
    .line 682
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->surl:Ljava/lang/String;

    .line 683
    return-void
.end method

.method public setTransactionFee(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionFee"    # Ljava/lang/String;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->transactionFee:Ljava/lang/String;

    .line 435
    return-void
.end method

.method public setTxnid(Ljava/lang/String;)V
    .locals 0
    .param p1, "txnid"    # Ljava/lang/String;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->txnid:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public setUdf1(Ljava/lang/String;)V
    .locals 0
    .param p1, "udf1"    # Ljava/lang/String;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->udf1:Ljava/lang/String;

    .line 499
    return-void
.end method

.method public setUdf2(Ljava/lang/String;)V
    .locals 0
    .param p1, "udf2"    # Ljava/lang/String;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->udf2:Ljava/lang/String;

    .line 507
    return-void
.end method

.method public setUdf3(Ljava/lang/String;)V
    .locals 0
    .param p1, "udf3"    # Ljava/lang/String;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->udf3:Ljava/lang/String;

    .line 515
    return-void
.end method

.method public setUdf4(Ljava/lang/String;)V
    .locals 0
    .param p1, "udf4"    # Ljava/lang/String;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->udf4:Ljava/lang/String;

    .line 523
    return-void
.end method

.method public setUdf5(Ljava/lang/String;)V
    .locals 0
    .param p1, "udf5"    # Ljava/lang/String;

    .prologue
    .line 530
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->udf5:Ljava/lang/String;

    .line 531
    return-void
.end method

.method public setUnMappedStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "unMappedStatus"    # Ljava/lang/String;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/payu/india/Model/TransactionResponse;->unMappedStatus:Ljava/lang/String;

    .line 411
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 711
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->mode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->unMappedStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->txnid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->transactionFee:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->cardCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->discount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->additionalCharges:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->addedOn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->productInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->firstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->udf1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->udf2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->udf3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->udf4:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->udf5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->hash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 731
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->field1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->field2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->field3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->field4:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->field9:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->paymentSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->pgType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->bankRefNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->ibiboCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->errorCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->errorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->cardToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->nameOnCard:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->cardNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->issuingBank:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->cardType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->isSeamless:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 748
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->surl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 749
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->furl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcom/payu/india/Model/TransactionResponse;->merchantHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 751
    return-void
.end method
