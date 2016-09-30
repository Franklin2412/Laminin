.class public Lcom/payu/india/PostParams/PaymentPostParams;
.super Lcom/payu/india/Payu/PayuUtils;
.source "PaymentPostParams.java"


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private mPaymentMode:Ljava/lang/String;

.field private mPaymentParams:Lcom/payu/india/Model/PaymentParams;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/payu/india/Payu/PayuUtils;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/payu/india/Model/PaymentParams;Ljava/lang/String;)V
    .locals 2
    .param p1, "paymentParams"    # Lcom/payu/india/Model/PaymentParams;
    .param p2, "paymentMode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/payu/india/Payu/PayuUtils;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    .line 59
    iput-object p2, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentMode:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/payu/india/Payu/Payu;->getInstance()Lcom/payu/india/Payu/Payu;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Application context not found please set your application context by adding Payu.setInstance(this) from your activity "

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    invoke-static {}, Lcom/payu/india/Payu/Payu;->getInstance()Lcom/payu/india/Payu/Payu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payu/india/Payu/Payu;->getCallingAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/india/PostParams/PaymentPostParams;->applicationContext:Landroid/content/Context;

    .line 67
    return-void
.end method


# virtual methods
.method public analizingTransaction()V
    .locals 5

    .prologue
    .line 383
    new-instance v1, Lcom/payu/india/Payu/PayuUtils;

    invoke-direct {v1}, Lcom/payu/india/Payu/PayuUtils;-><init>()V

    .line 384
    .local v1, "payuUtils":Lcom/payu/india/Payu/PayuUtils;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 385
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "transactionID"

    iget-object v3, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v3}, Lcom/payu/india/Model/PaymentParams;->getTxnId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v2, "keyAnalytics"

    iget-object v3, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v3}, Lcom/payu/india/Model/PaymentParams;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v2, "paymentMode"

    iget-object v3, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentMode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string v2, "sdkVersion"

    const-string v3, "4.3.8"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string v2, "com.payu.custombrowser.Bank"

    const-string v3, "Version"

    invoke-static {v2, v0, v3}, Lcom/payu/india/Payu/PayuUtils;->setVariableCB(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 390
    iget-object v2, p0, Lcom/payu/india/PostParams/PaymentPostParams;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v3}, Lcom/payu/india/Model/PaymentParams;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v4}, Lcom/payu/india/Model/PaymentParams;->getTxnId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/payu/india/Payu/PayuUtils;->deviceAnalytics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public getPaymentPostParams()Lcom/payu/india/Model/PostData;
    .locals 10

    .prologue
    .line 70
    new-instance v6, Lcom/payu/india/Model/PostData;

    invoke-direct {v6}, Lcom/payu/india/Model/PostData;-><init>()V

    .line 71
    .local v6, "postData":Lcom/payu/india/Model/PostData;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    .local v5, "post":Ljava/lang/StringBuffer;
    sget-object v7, Lcom/payu/india/Payu/PayuConstants;->PG_SET:Ljava/util/Set;

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentMode:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 76
    const-string v7, "Invalid pg!, pg should be any one of CC, EMI, CASH, NB, PAYU_MONEY"

    invoke-virtual {p0, v7}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    .line 378
    :goto_0
    return-object v7

    .line 80
    :cond_0
    const-string v7, "device_type"

    const-string v8, "1"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v7, "udid"

    invoke-virtual {p0}, Lcom/payu/india/PostParams/PaymentPostParams;->getUdid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v7, "imei"

    invoke-virtual {p0}, Lcom/payu/india/PostParams/PaymentPostParams;->getImei()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    sget-object v7, Lcom/payu/india/Payu/PayuConstants;->PAYMENT_PARAMS_ARRAY:[Ljava/lang/String;

    array-length v7, v7

    if-ge v3, v7, :cond_16

    .line 88
    sget-object v7, Lcom/payu/india/Payu/PayuConstants;->PAYMENT_PARAMS_ARRAY:[Ljava/lang/String;

    aget-object v8, v7, v3

    const/4 v7, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_1
    :goto_2
    packed-switch v7, :pswitch_data_0

    .line 87
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 88
    :sswitch_0
    const-string v9, "key"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x0

    goto :goto_2

    :sswitch_1
    const-string v9, "txnid"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :sswitch_2
    const-string v9, "amount"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x2

    goto :goto_2

    :sswitch_3
    const-string v9, "productinfo"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x3

    goto :goto_2

    :sswitch_4
    const-string v9, "firstname"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x4

    goto :goto_2

    :sswitch_5
    const-string v9, "email"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x5

    goto :goto_2

    :sswitch_6
    const-string v9, "surl"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x6

    goto :goto_2

    :sswitch_7
    const-string v9, "furl"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x7

    goto :goto_2

    :sswitch_8
    const-string v9, "hash"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v7, 0x8

    goto :goto_2

    :sswitch_9
    const-string v9, "udf1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v7, 0x9

    goto :goto_2

    :sswitch_a
    const-string v9, "udf2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v7, 0xa

    goto :goto_2

    :sswitch_b
    const-string v9, "udf3"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v7, 0xb

    goto/16 :goto_2

    :sswitch_c
    const-string v9, "udf4"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v7, 0xc

    goto/16 :goto_2

    :sswitch_d
    const-string v9, "udf5"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v7, 0xd

    goto/16 :goto_2

    .line 91
    :pswitch_0
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getKey()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_3

    .line 92
    :cond_2
    const-string v7, "Mandatory param key is missing"

    invoke-virtual {p0, v7}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 93
    :cond_3
    const-string v7, "key"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 96
    :pswitch_1
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getTxnId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getTxnId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_5

    .line 97
    :cond_4
    const-string v7, "Mandatory param txnid is missing"

    invoke-virtual {p0, v7}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 98
    :cond_5
    const-string v7, "txnid"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getTxnId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 101
    :pswitch_2
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 103
    .local v0, "amount":Ljava/lang/Double;
    :try_start_0
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getAmount()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    :goto_4
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 109
    const-string v7, "amount"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getAmount()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 103
    :cond_6
    const-wide/16 v8, 0x0

    goto :goto_4

    .line 104
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/16 v7, 0x138a

    const-string v8, " Amount should be a Double value example 5.00"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 106
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/NullPointerException;
    const/16 v7, 0x138b

    const-string v8, " Amount should be a Double value example 5.00"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 112
    .end local v0    # "amount":Ljava/lang/Double;
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :pswitch_3
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getProductInfo()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getProductInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_8

    .line 113
    :cond_7
    const-string v7, "Mandatory param product info is missing"

    invoke-virtual {p0, v7}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 114
    :cond_8
    const-string v7, "productinfo"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getProductInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 117
    :pswitch_4
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getFirstName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_9

    .line 118
    const-string v7, "Mandatory param firstname is missing"

    invoke-virtual {p0, v7}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 119
    :cond_9
    const-string v7, "firstname"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getFirstName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 122
    :pswitch_5
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getEmail()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_a

    .line 123
    const-string v7, "Mandatory param email is missing"

    invoke-virtual {p0, v7}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 124
    :cond_a
    const-string v7, "email"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getEmail()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 127
    :pswitch_6
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getSurl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getSurl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_c

    .line 128
    :cond_b
    const-string v7, "Mandatory param surl is missing"

    invoke-virtual {p0, v7}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 131
    :cond_c
    :try_start_1
    const-string v7, "surl="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getSurl()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_3

    .line 132
    :catch_2
    move-exception v2

    .line 133
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const/16 v7, 0x138c

    const-string v8, "surl should be something like https://www.payu.in/txnstatus"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 137
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :pswitch_7
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getFurl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getFurl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_e

    .line 138
    :cond_d
    const-string v7, "Mandatory param furl is missing"

    invoke-virtual {p0, v7}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 141
    :cond_e
    :try_start_2
    const-string v7, "furl="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getFurl()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_3

    .line 142
    :catch_3
    move-exception v2

    .line 143
    .restart local v2    # "e":Ljava/io/UnsupportedEncodingException;
    const/16 v7, 0x138c

    const-string v8, "furl should be something like https://www.payu.in/txnstatus"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 147
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :pswitch_8
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getHash()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getHash()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_10

    .line 148
    :cond_f
    const-string v7, "Mandatory param hash is missing"

    invoke-virtual {p0, v7}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 149
    :cond_10
    const-string v7, "hash"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getHash()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 152
    :pswitch_9
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getUdf1()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_11

    .line 153
    const-string v7, "UDF1 should not be null, it can be empty or string"

    invoke-virtual {p0, v7}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 154
    :cond_11
    const-string v7, "udf1"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getUdf1()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 157
    :pswitch_a
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getUdf2()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_12

    .line 158
    const-string v7, "UDF2 should not be null, it can be empty or string"

    invoke-virtual {p0, v7}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 159
    :cond_12
    const-string v7, "udf2"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getUdf2()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 162
    :pswitch_b
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getUdf3()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_13

    .line 163
    const-string v7, "UDF3 should not be null, it can be empty or string"

    invoke-virtual {p0, v7}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 164
    :cond_13
    const-string v7, "udf3"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getUdf3()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 167
    :pswitch_c
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getUdf4()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_14

    .line 168
    const-string v7, "UDF4 should not be null, it can be empty or string"

    invoke-virtual {p0, v7}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 169
    :cond_14
    const-string v7, "udf4"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getUdf4()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 172
    :pswitch_d
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getUdf5()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_15

    .line 173
    const-string v7, "UDF5 should not be null, it can be empty or string"

    invoke-virtual {p0, v7}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 174
    :cond_15
    const-string v7, "udf5"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getUdf5()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 179
    :cond_16
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getPhone()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_17

    .line 180
    const-string v7, "phone"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getPhone()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    :cond_17
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getOfferKey()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_19

    const-string v7, "offer_key"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getOfferKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_5
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getLastName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1a

    const-string v7, "lastname"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getLastName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_6
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getAddress1()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1b

    const-string v7, "address1"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getAddress1()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_7
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getAddress2()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1c

    const-string v7, "address2"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getAddress2()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_8
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getCity()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1d

    const-string v7, "city"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getCity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_9
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getState()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1e

    const-string v7, "state"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_a
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getCountry()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1f

    const-string v7, "country"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_b
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getZipCode()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_20

    const-string v7, "zipcode"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getZipCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_c
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getCodUrl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_21

    const-string v7, "codurl"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getCodUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_d
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getDropCategory()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_22

    const-string v7, "drop_category"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getDropCategory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_e
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getEnforcePayMethod()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_23

    const-string v7, "enforce_paymethod"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getEnforcePayMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_f
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getCustomNote()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_24

    const-string v7, "custom_note"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getCustomNote()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_10
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getNoteCategory()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_25

    const-string v7, "note_category"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getNoteCategory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_11
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getShippingFirstName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_26

    const-string v7, "shipping_firstname"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getShippingFirstName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_12
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getShippingLastName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_27

    const-string v7, "shipping_lastname"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getShippingLastName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_13
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getShippingAddress1()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_28

    const-string v7, "shipping_address1"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getShippingAddress1()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_14
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getShippingAddress2()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_29

    const-string v7, "shipping_address2"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getShippingAddress2()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_15
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getShippingCity()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2a

    const-string v7, "shipping_city"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getShippingCity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_16
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getShippingState()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2b

    const-string v7, "shipping_state"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getShippingState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_17
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getShippingCounty()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2c

    const-string v7, "shipping_county"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getShippingCounty()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_18
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getShippingZipCode()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2d

    const-string v7, "shipping_zipcode"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getShippingZipCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_19
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getShippingPhone()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2e

    const-string v7, "shipping_phone"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getShippingPhone()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_1a
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    invoke-virtual {p0}, Lcom/payu/india/PostParams/PaymentPostParams;->analizingTransaction()V

    .line 211
    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentMode:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_1

    :cond_18
    :goto_1b
    packed-switch v7, :pswitch_data_1

    .line 378
    const/4 v7, 0x0

    const-string v8, "SUCCESS"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(ILjava/lang/String;Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 184
    :cond_19
    const-string v7, ""

    goto/16 :goto_5

    .line 185
    :cond_1a
    const-string v7, ""

    goto/16 :goto_6

    .line 186
    :cond_1b
    const-string v7, ""

    goto/16 :goto_7

    .line 187
    :cond_1c
    const-string v7, ""

    goto/16 :goto_8

    .line 188
    :cond_1d
    const-string v7, ""

    goto/16 :goto_9

    .line 189
    :cond_1e
    const-string v7, ""

    goto/16 :goto_a

    .line 190
    :cond_1f
    const-string v7, ""

    goto/16 :goto_b

    .line 191
    :cond_20
    const-string v7, ""

    goto/16 :goto_c

    .line 192
    :cond_21
    const-string v7, ""

    goto/16 :goto_d

    .line 193
    :cond_22
    const-string v7, ""

    goto/16 :goto_e

    .line 194
    :cond_23
    const-string v7, ""

    goto/16 :goto_f

    .line 195
    :cond_24
    const-string v7, ""

    goto/16 :goto_10

    .line 196
    :cond_25
    const-string v7, ""

    goto/16 :goto_11

    .line 197
    :cond_26
    const-string v7, ""

    goto/16 :goto_12

    .line 198
    :cond_27
    const-string v7, ""

    goto/16 :goto_13

    .line 199
    :cond_28
    const-string v7, ""

    goto/16 :goto_14

    .line 200
    :cond_29
    const-string v7, ""

    goto/16 :goto_15

    .line 201
    :cond_2a
    const-string v7, ""

    goto/16 :goto_16

    .line 202
    :cond_2b
    const-string v7, ""

    goto/16 :goto_17

    .line 203
    :cond_2c
    const-string v7, ""

    goto/16 :goto_18

    .line 204
    :cond_2d
    const-string v7, ""

    goto/16 :goto_19

    .line 205
    :cond_2e
    const-string v7, ""

    goto :goto_1a

    .line 211
    :sswitch_e
    const-string v9, "CC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    const/4 v7, 0x0

    goto :goto_1b

    :sswitch_f
    const-string v9, "NB"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    const/4 v7, 0x1

    goto :goto_1b

    :sswitch_10
    const-string v9, "EMI"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    const/4 v7, 0x2

    goto/16 :goto_1b

    :sswitch_11
    const-string v9, "CASH"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    const/4 v7, 0x3

    goto/16 :goto_1b

    :sswitch_12
    const-string v9, "PAYU_MONEY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    const/4 v7, 0x4

    goto/16 :goto_1b

    .line 213
    :pswitch_e
    const-string v7, "pg"

    const-string v8, "CC"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    const-string v7, "bankcode"

    const-string v8, "CC"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getCardNumber()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3b

    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getCardNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/payu/india/PostParams/PaymentPostParams;->validateCardNumber(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 218
    const-string v7, "ccnum"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getCardNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getCardNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/payu/india/PostParams/PaymentPostParams;->getIssuer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "SMAE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_33

    .line 221
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getCardNumber()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getCvv()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->validateCvv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 222
    const-string v7, "ccvv"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getCvv()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    :try_start_3
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getExpiryMonth()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getExpiryYear()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->validateExpiry(II)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 228
    const-string v7, "ccexpyr"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getExpiryYear()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    const-string v7, "ccexpmon"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getExpiryMonth()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 253
    :cond_2f
    :goto_1c
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getNameOnCard()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_35

    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getNameOnCard()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_35

    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getNameOnCard()Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, "nameOnCard":Ljava/lang/String;
    :goto_1d
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getCardName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_36

    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getCardName()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "cardName":Ljava/lang/String;
    :goto_1e
    const-string v7, "ccname"

    invoke-virtual {p0, v7, v4}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getStoreCard()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_30

    .line 258
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3a

    .line 259
    const-string v7, "card_name"

    invoke-virtual {p0, v7, v1}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_37

    const-string v7, "user_credentials"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_1f
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getStoreCard()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_38

    const-string v7, "store_card"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v9}, Lcom/payu/india/Model/PaymentParams;->getStoreCard()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_20
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getEnableOneClickPayment()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_39

    const-string v7, "one_click_checkout"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v9}, Lcom/payu/india/Model/PaymentParams;->getEnableOneClickPayment()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_21
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    :cond_30
    const/4 v7, 0x0

    const-string v8, "SUCCESS"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/payu/india/PostParams/PaymentPostParams;->trimAmpersand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(ILjava/lang/String;Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 224
    .end local v1    # "cardName":Ljava/lang/String;
    .end local v4    # "nameOnCard":Ljava/lang/String;
    :cond_31
    const/16 v7, 0x1391

    const-string v8, " Invalid cvv, please verify"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 231
    :cond_32
    const/16 v7, 0x1394

    :try_start_4
    const-string v8, " It seems the card is expired!"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v7

    goto/16 :goto_0

    .line 233
    :catch_4
    move-exception v2

    .line 234
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/16 v7, 0x138a

    const-string v8, " It seems the card is expired!"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 235
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v2

    .line 236
    .local v2, "e":Ljava/lang/Exception;
    const/16 v7, 0x1389

    const-string v8, " It seems the card is expired!"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 239
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_33
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getCardNumber()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getCvv()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->validateCvv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 240
    const-string v7, "ccvv"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getCvv()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    :cond_34
    :try_start_5
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getExpiryMonth()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getExpiryYear()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->validateExpiry(II)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 244
    const-string v7, "ccexpyr"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getExpiryYear()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    const-string v7, "ccexpmon"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getExpiryMonth()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_1c

    .line 247
    :catch_6
    move-exception v2

    .line 248
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1c

    .line 253
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_35
    const-string v4, "PayuUser"

    goto/16 :goto_1d

    .restart local v4    # "nameOnCard":Ljava/lang/String;
    :cond_36
    move-object v1, v4

    .line 255
    goto/16 :goto_1e

    .line 260
    .restart local v1    # "cardName":Ljava/lang/String;
    :cond_37
    const-string v7, ""

    goto/16 :goto_1f

    .line 261
    :cond_38
    const-string v7, ""

    goto/16 :goto_20

    .line 263
    :cond_39
    const-string v7, ""

    goto/16 :goto_21

    .line 266
    :cond_3a
    const-string v7, " Card can not be stored!, user_credentials is missing!"

    invoke-virtual {p0, v7}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 273
    .end local v1    # "cardName":Ljava/lang/String;
    .end local v4    # "nameOnCard":Ljava/lang/String;
    :cond_3b
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getCardToken()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_45

    .line 275
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_44

    .line 276
    const-string v7, "user_credentials"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    const-string v7, "store_card_token"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getCardToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getCardBin()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3d

    .line 280
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getCardBin()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/payu/india/PostParams/PaymentPostParams;->getIssuer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "SMAE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3d

    .line 281
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getCvv()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3c

    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getCardCvvMerchant()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3c

    .line 282
    const-string v7, " Invalid cvv, please verify"

    invoke-virtual {p0, v7}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 284
    :cond_3c
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getExpiryMonth()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getExpiryYear()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->validateExpiry(II)Z

    move-result v7

    if-nez v7, :cond_3d

    .line 285
    const-string v7, " It seems the card is expired!"

    invoke-virtual {p0, v7}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 289
    :cond_3d
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getCardCvvMerchant()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3f

    .line 290
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getCvv()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3e

    const-string v7, "ccvv"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getCvv()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_22
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    :goto_23
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getExpiryMonth()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_40

    const-string v7, "ccexpmon"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getExpiryMonth()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_24
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getExpiryYear()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_41

    const-string v7, "ccexpyr"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getExpiryYear()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_25
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getNameOnCard()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_42

    const-string v7, "ccname"

    const-string v8, "PayuUser"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_26
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getEnableOneClickPayment()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_43

    const-string v7, "one_click_checkout"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v9}, Lcom/payu/india/Model/PaymentParams;->getEnableOneClickPayment()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_27
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    const/4 v7, 0x0

    const-string v8, "SUCCESS"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/payu/india/PostParams/PaymentPostParams;->trimAmpersand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(ILjava/lang/String;Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 290
    :cond_3e
    const-string v7, "ccvv"

    const-string v8, "123"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_22

    .line 292
    :cond_3f
    const-string v7, "card_merchant_param"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getCardCvvMerchant()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_23

    .line 294
    :cond_40
    const-string v7, "ccexpmon"

    const-string v8, "12"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_24

    .line 295
    :cond_41
    const-string v7, "ccexpmon"

    const-string v8, "2080"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_25

    .line 297
    :cond_42
    const-string v7, "ccname"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getNameOnCard()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_26

    .line 299
    :cond_43
    const-string v7, ""

    goto :goto_27

    .line 304
    :cond_44
    const/16 v7, 0x1395

    const-string v8, "should be the user credentials and it should be merchant_key:unique_user_id."

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 307
    :cond_45
    const/16 v7, 0x1390

    const-string v8, " Invalid card number, Failed while applying Luhn"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 310
    :pswitch_f
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getBankCode()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_46

    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getBankCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_46

    .line 311
    const-string v7, "pg"

    const-string v8, "NB"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    const-string v7, "bankcode"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getBankCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    const/4 v7, 0x0

    const-string v8, "SUCCESS"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/payu/india/PostParams/PaymentPostParams;->trimAmpersand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(ILjava/lang/String;Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 314
    :cond_46
    const/16 v7, 0x138d

    const-string v8, "Invalid bank code please verify"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 318
    :pswitch_10
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getBankCode()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_51

    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getBankCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_51

    .line 319
    const-string v7, "pg"

    const-string v8, "EMI"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    const-string v7, "bankcode"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getBankCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getCardNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/payu/india/PostParams/PaymentPostParams;->validateCardNumber(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_50

    .line 324
    const-string v7, "ccnum"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v9}, Lcom/payu/india/Model/PaymentParams;->getCardNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getCardNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/payu/india/PostParams/PaymentPostParams;->getIssuer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "SMAE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_47

    .line 327
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getCardNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v9}, Lcom/payu/india/Model/PaymentParams;->getCvv()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->validateCvv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 328
    const-string v7, "ccvv"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v9}, Lcom/payu/india/Model/PaymentParams;->getCvv()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    :try_start_6
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getExpiryMonth()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getExpiryYear()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->validateExpiry(II)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 334
    const-string v7, "ccexpyr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v9}, Lcom/payu/india/Model/PaymentParams;->getExpiryYear()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    const-string v7, "ccexpmon"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v9}, Lcom/payu/india/Model/PaymentParams;->getExpiryMonth()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_7

    .line 344
    :cond_47
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getNameOnCard()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4b

    const-string v7, "ccname"

    const-string v8, "PayuUser"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_28
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getStoreCard()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_48

    .line 346
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4f

    .line 347
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getCardName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4c

    const-string v7, "card_name"

    const-string v8, "PayuUser"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_29
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4d

    const-string v7, "user_credentials"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_2a
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getStoreCard()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4e

    const-string v7, "store_card"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v9}, Lcom/payu/india/Model/PaymentParams;->getStoreCard()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_2b
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    :cond_48
    const/4 v7, 0x0

    const-string v8, "SUCCESS"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/payu/india/PostParams/PaymentPostParams;->trimAmpersand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(ILjava/lang/String;Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 330
    :cond_49
    const/16 v7, 0x1391

    const-string v8, " Invalid cvv, please verify"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 337
    :cond_4a
    const/16 v7, 0x1394

    :try_start_7
    const-string v8, " It seems the card is expired!"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v7

    goto/16 :goto_0

    .line 339
    :catch_7
    move-exception v2

    .line 340
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/16 v7, 0x138a

    const-string v8, " It seems the card is expired!"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 344
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_4b
    const-string v7, "ccname"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getNameOnCard()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_28

    .line 347
    :cond_4c
    const-string v7, "name_on_card"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getCardName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_29

    .line 348
    :cond_4d
    const-string v7, ""

    goto :goto_2a

    .line 349
    :cond_4e
    const-string v7, ""

    goto :goto_2b

    .line 351
    :cond_4f
    const-string v7, " Card can not be stored!, user_credentials is missing!"

    invoke-virtual {p0, v7}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 358
    :cond_50
    const/16 v7, 0x1390

    const-string v8, " Invalid card number, Failed while applying Luhn"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 361
    :cond_51
    const-string v7, "Please provide valid email details"

    invoke-virtual {p0, v7}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 364
    :pswitch_11
    const-string v7, "pg"

    const-string v8, "CASH"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    if-eqz v7, :cond_52

    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getBankCode()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_52

    iget-object v7, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v7}, Lcom/payu/india/Model/PaymentParams;->getBankCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_52

    .line 367
    const-string v7, "bankcode"

    iget-object v8, p0, Lcom/payu/india/PostParams/PaymentPostParams;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;

    invoke-virtual {v8}, Lcom/payu/india/Model/PaymentParams;->getBankCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    const/4 v7, 0x0

    const-string v8, "SUCCESS"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(ILjava/lang/String;Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 369
    :cond_52
    const/16 v7, 0x138d

    const-string v8, "Invalid bank code please verify"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 373
    :pswitch_12
    const-string v7, "bankcode"

    const-string v8, "PAYUW"

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    const-string v7, "pg"

    const-string v8, "wallet"

    invoke-virtual {p0, v7, v8}, Lcom/payu/india/PostParams/PaymentPostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    const/4 v7, 0x0

    const-string v8, "SUCCESS"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/payu/india/PostParams/PaymentPostParams;->getReturnData(ILjava/lang/String;Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v7

    goto/16 :goto_0

    .line 88
    :sswitch_data_0
    .sparse-switch
        -0x58dedde3 -> :sswitch_3
        -0x5445afa8 -> :sswitch_2
        0x19e5f -> :sswitch_0
        0x302349 -> :sswitch_7
        0x30c10e -> :sswitch_8
        0x360c1c -> :sswitch_6
        0x36b35a -> :sswitch_9
        0x36b35b -> :sswitch_a
        0x36b35c -> :sswitch_b
        0x36b35d -> :sswitch_c
        0x36b35e -> :sswitch_d
        0x5c24b9c -> :sswitch_5
        0x69add05 -> :sswitch_1
        0x7f9753b -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 211
    :sswitch_data_1
    .sparse-switch
        0x860 -> :sswitch_e
        0x9b4 -> :sswitch_f
        0x10ca1 -> :sswitch_10
        0x1f7333 -> :sswitch_11
        0x508c5aae -> :sswitch_12
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method
