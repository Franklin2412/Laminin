.class public Lcom/payu/india/PostParams/MerchantWebServicePostParams;
.super Lcom/payu/india/Payu/PayuUtils;
.source "MerchantWebServicePostParams.java"


# instance fields
.field private merchantWebService:Lcom/payu/india/Model/MerchantWebService;

.field private post:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/payu/india/Payu/PayuUtils;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/payu/india/Model/MerchantWebService;)V
    .locals 0
    .param p1, "merchantWebService"    # Lcom/payu/india/Model/MerchantWebService;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/payu/india/Payu/PayuUtils;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    .line 56
    return-void
.end method


# virtual methods
.method public getMerchantWebServicePostParams()Lcom/payu/india/Model/PostData;
    .locals 14

    .prologue
    const/16 v13, 0x138a

    const/4 v10, 0x6

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    .line 67
    const/4 v1, 0x0

    .line 68
    .local v1, "expiryMonth":I
    const/4 v2, 0x0

    .line 72
    .local v2, "expiryYear":I
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v11, "udid"

    invoke-virtual {p0}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getUdid()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v11, "imei"

    invoke-virtual {p0}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getImei()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getKey()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 76
    const-string v6, "Mandatory param key is missing"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    .line 514
    :goto_0
    return-object v6

    .line 78
    :cond_0
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v11, "key"

    iget-object v12, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v12}, Lcom/payu/india/Model/MerchantWebService;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getHash()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 81
    const-string v6, "Mandatory param hash is missing"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto :goto_0

    .line 83
    :cond_1
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v11, "hash"

    iget-object v12, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v12}, Lcom/payu/india/Model/MerchantWebService;->getHash()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getCommand()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    iget-object v11, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v11}, Lcom/payu/india/Model/MerchantWebService;->getCommand()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 86
    :cond_2
    const-string v6, "Mandatory param command is missing"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto :goto_0

    .line 88
    :cond_3
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v11, "command"

    iget-object v12, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v12}, Lcom/payu/india/Model/MerchantWebService;->getCommand()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getCommand()Ljava/lang/String;

    move-result-object v11

    const/4 v6, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_4
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 514
    :goto_2
    const-string v6, "SUCCESS"

    iget-object v8, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->trimAmpersand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v6, v8}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(ILjava/lang/String;Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 89
    :sswitch_0
    const-string v12, "payment_related_details_for_mobile_sdk"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v6, v7

    goto :goto_1

    :sswitch_1
    const-string v12, "vas_for_mobile_sdk"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v6, v8

    goto :goto_1

    :sswitch_2
    const-string v12, "get_merchant_ibibo_codes"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v6, v9

    goto :goto_1

    :sswitch_3
    const-string v12, "verify_payment"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v6, 0x3

    goto :goto_1

    :sswitch_4
    const-string v12, "check_payment"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v6, 0x4

    goto :goto_1

    :sswitch_5
    const-string v12, "cancel_refund_transaction"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v6, 0x5

    goto :goto_1

    :sswitch_6
    const-string v12, "check_action_status"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v6, v10

    goto :goto_1

    :sswitch_7
    const-string v12, "capture_transaction"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v6, 0x7

    goto :goto_1

    :sswitch_8
    const-string v12, "update_requests"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v6, 0x8

    goto :goto_1

    :sswitch_9
    const-string v12, "cod_verify"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v6, 0x9

    goto :goto_1

    :sswitch_a
    const-string v12, "cod_cancel"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v6, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string v12, "cod_settled"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v6, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v12, "get_TDR"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v6, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v12, "udf_update"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v6, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string v12, "create_invoice"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v6, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string v12, "check_offer_status"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v6, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string v12, "getNetbankingStatus"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v6, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string v12, "getIssuingBankStatus"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v6, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string v12, "get_Transaction_Details"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v6, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string v12, "get_transaction_info"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v6, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string v12, "check_isDomestic"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v6, 0x14

    goto/16 :goto_1

    :sswitch_15
    const-string v12, "get_user_cards"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v6, 0x15

    goto/16 :goto_1

    :sswitch_16
    const-string v12, "save_user_card"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v6, 0x16

    goto/16 :goto_1

    :sswitch_17
    const-string v12, "edit_user_card"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v6, 0x17

    goto/16 :goto_1

    :sswitch_18
    const-string v12, "delete_user_card"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v6, 0x18

    goto/16 :goto_1

    :sswitch_19
    const-string v12, "delete_store_card_cvv"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v6, 0x19

    goto/16 :goto_1

    :sswitch_1a
    const-string v12, "mobileHashTestWs"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v6, 0x1a

    goto/16 :goto_1

    :sswitch_1b
    const-string v12, "get_hashes"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v6, 0x1b

    goto/16 :goto_1

    :sswitch_1c
    const-string v12, "check_offer_details"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v6, 0x1c

    goto/16 :goto_1

    :sswitch_1d
    const-string v12, "getEmiAmountAccordingToInterest"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v6, 0x1d

    goto/16 :goto_1

    .line 91
    :pswitch_0
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    .line 92
    const-string v6, "Mandatory param var1 is missing var1 should be user_credentials (merchant_key:unique_user_id.) to get the merchant information and stored card or default to get only the merchant information"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 94
    :cond_5
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var1"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 98
    :pswitch_1
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    .line 99
    const-string v6, "Mandatory param var1 is missing var1 Please send var1 as \'default\'"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 101
    :cond_6
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var1"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v8, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    const-string v6, "var2"

    const-string v9, "default"

    invoke-virtual {p0, v6, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v8, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    const-string v6, "var3"

    const-string v9, "default"

    invoke-virtual {p0, v6, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 102
    :cond_7
    const-string v6, "var2"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v6, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 103
    :cond_8
    const-string v6, "var3"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar3()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v6, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 107
    :pswitch_2
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9

    .line 108
    const-string v6, "Mandatory param var1 is missing var1 Please send var1 as \'default\'"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 110
    :cond_9
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var1"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 114
    :pswitch_3
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_a

    .line 115
    const-string v6, "Mandatory param var1 is missing var1should be the Transaction id (txnid)if you want to verify more than one transaction please separate them by pipe : ex 6234567|45678987|4567876 "

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 117
    :cond_a
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var1"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 121
    :pswitch_4
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_b

    .line 122
    const-string v6, "Mandatory param var1 is missing var1should be the Payu id (mihpayid) of the transaction which was given by payu."

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 124
    :cond_b
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var1"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 129
    :pswitch_5
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_c

    .line 130
    const-string v6, "Mandatory param var1 is missing var1should be the Payu id (mihpayid) of the transaction which was given by payu."

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 131
    :cond_c
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_d

    .line 132
    const-string v6, "Mandatory param var2 is missing var2should be the Token ID(unique token from merchant)"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 133
    :cond_d
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar3()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_e

    .line 134
    const-string v6, "Mandatory param var3 is missing var3  should contain the amount which needs to be refunded. Please note that both partial and full refunds are allowed."

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 136
    :cond_e
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var1"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var2"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var3"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar3()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 142
    :pswitch_6
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_f

    .line 143
    const-string v6, "Mandatory param var1 is missing var1should be the Request ID which you get while cancel_refund_transaction api"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 145
    :cond_f
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var1"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 149
    :pswitch_7
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_10

    .line 150
    const-string v6, "Mandatory param var1 is missing var1should be the Payu id (mihpayid) of the transaction which was given by payu."

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 151
    :cond_10
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_11

    .line 152
    const-string v6, "Mandatory param var2 is missing should be the Token ID(unique token from merchant)"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 155
    :cond_11
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var1"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var2"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 160
    :pswitch_8
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_12

    .line 161
    const-string v6, "Mandatory param var1 is missing var1should be the Payu id (mihpayid) of the transaction which was given by payu."

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 162
    :cond_12
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_13

    .line 163
    const-string v6, "Mandatory param var2 is missing var2should be the Request ID which you get while cancel_refund_transaction api"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 164
    :cond_13
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar3()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_14

    .line 165
    const-string v6, "Mandatory param var3 is missing var3should be the Bank Ref Id for the requested transaction."

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 166
    :cond_14
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar4()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_15

    .line 167
    const-string v6, "Mandatory param var4 is missing var4 Amount should be a Double value example 5.00"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 168
    :cond_15
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar5()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_16

    .line 169
    const-string v6, "Mandatory param var5 is missing var5should be the Action (cancel/capture/refund)"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 170
    :cond_16
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar6()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_17

    .line 171
    const-string v6, "Mandatory param var6 is missing var6 should be new status to be set"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 173
    :cond_17
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var1"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var2"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var3"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar3()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var4"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar4()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var5"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar5()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var6"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar6()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 182
    :pswitch_9
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_18

    .line 183
    const-string v6, "Mandatory param var1 is missing var1should be the Payu id (mihpayid) of the transaction which was given by payu."

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 184
    :cond_18
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_19

    .line 185
    const-string v6, "Mandatory param var2 is missing var2should be the Token ID(unique token from merchant)"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 186
    :cond_19
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar3()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1a

    .line 187
    const-string v6, "Mandatory param var3 is missing var3 Amount should be a Double value example 5.00"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 189
    :cond_1a
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var1"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var2"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var3"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar3()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 195
    :pswitch_a
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1b

    .line 196
    const-string v6, "Mandatory param var1 is missing var1should be the Payu id (mihpayid) of the transaction which was given by payu."

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 197
    :cond_1b
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1c

    .line 198
    const-string v6, "Mandatory param var2 is missing var2should be the Token ID(unique token from merchant)"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 199
    :cond_1c
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar3()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1d

    .line 200
    const-string v6, "Mandatory param var3 is missing var3 Amount should be a Double value example 5.00"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 202
    :cond_1d
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var1"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var2"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var3"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar3()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 208
    :pswitch_b
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1e

    .line 209
    const-string v6, "Mandatory param var1 is missing var1should be the Payu id (mihpayid) of the transaction which was given by payu."

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 210
    :cond_1e
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1f

    .line 211
    const-string v6, "Mandatory param var2 is missing var2should be the Token ID(unique token from merchant)"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 212
    :cond_1f
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar3()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_20

    .line 213
    const-string v6, "5001 var3 Amount should be a Double value example 5.00"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 215
    :cond_20
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var1"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var2"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var3"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar3()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 221
    :pswitch_c
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_21

    .line 222
    const-string v6, "Mandatory param var1 is missing var1should be the Payu id (mihpayid) of the transaction which was given by payu."

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 224
    :cond_21
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var1"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 228
    :pswitch_d
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_22

    .line 229
    const-string v6, "Mandatory param var1 is missing var1should be the Transaction id (txnid)"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 231
    :cond_22
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v10, "var1"

    iget-object v11, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v11}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget-object v10, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_23

    const-string v6, ""

    :goto_5
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget-object v10, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar3()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_24

    const-string v6, ""

    :goto_6
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget-object v10, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar4()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_25

    const-string v6, ""

    :goto_7
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget-object v10, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar5()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_26

    const-string v6, ""

    :goto_8
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget-object v10, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar6()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_27

    const-string v6, ""

    :goto_9
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :pswitch_e
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_28

    .line 240
    const-string v6, "Mandatory param var1 is missing"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 232
    :cond_23
    const-string v6, "var2"

    iget-object v11, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v11}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v6, v11}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 233
    :cond_24
    const-string v6, "var3"

    iget-object v11, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v11}, Lcom/payu/india/Model/MerchantWebService;->getVar3()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v6, v11}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 234
    :cond_25
    const-string v6, "var4"

    iget-object v11, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v11}, Lcom/payu/india/Model/MerchantWebService;->getVar4()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v6, v11}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 235
    :cond_26
    const-string v6, "var5"

    iget-object v11, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v11}, Lcom/payu/india/Model/MerchantWebService;->getVar5()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v6, v11}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    .line 236
    :cond_27
    const-string v6, "var6"

    iget-object v11, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v11}, Lcom/payu/india/Model/MerchantWebService;->getVar6()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v6, v11}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    .line 243
    :cond_28
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 244
    .local v4, "invoiceObject":Lorg/json/JSONObject;
    const/4 v6, 0x6

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v10, "amount"

    aput-object v10, v3, v6

    const/4 v6, 0x1

    const-string v10, "txnid"

    aput-object v10, v3, v6

    const/4 v6, 0x2

    const-string v10, "productinfo"

    aput-object v10, v3, v6

    const/4 v6, 0x3

    const-string v10, "firstname"

    aput-object v10, v3, v6

    const/4 v6, 0x4

    const-string v10, "email"

    aput-object v10, v3, v6

    const/4 v6, 0x5

    const-string v10, "phone"

    aput-object v10, v3, v6

    .line 246
    .local v3, "invoiceMandatoryKeys":[Ljava/lang/String;
    array-length v11, v3

    move v10, v7

    :goto_a
    if-ge v10, v11, :cond_2c

    aget-object v5, v3, v10

    .line 247
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_29

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v8, :cond_2a

    .line 248
    :cond_29
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mandatory param "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is missing for creating an Invoice"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 250
    :cond_2a
    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_1

    :cond_2b
    :goto_b
    packed-switch v6, :pswitch_data_1

    .line 246
    :goto_c
    :pswitch_f
    add-int/lit8 v6, v10, 0x1

    move v10, v6

    goto :goto_a

    .line 250
    :sswitch_1e
    const-string v12, "amount"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2b

    move v6, v7

    goto :goto_b

    :sswitch_1f
    const-string v12, "txnid"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2b

    move v6, v8

    goto :goto_b

    :sswitch_20
    const-string v12, "productinfo"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2b

    move v6, v9

    goto :goto_b

    :sswitch_21
    const-string v12, "firstname"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2b

    const/4 v6, 0x3

    goto :goto_b

    :sswitch_22
    const-string v12, "email"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2b

    const/4 v6, 0x4

    goto :goto_b

    :sswitch_23
    const-string v12, "phone"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v12

    if-eqz v12, :cond_2b

    const/4 v6, 0x5

    goto :goto_b

    .line 253
    :pswitch_10
    :try_start_1
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_c

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/16 v6, 0x138b

    :try_start_2
    const-string v7, " Amount should be a Double value example 5.00"

    invoke-virtual {p0, v6, v7}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 271
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "key":Ljava/lang/String;
    :cond_2c
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var1"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 272
    .end local v3    # "invoiceMandatoryKeys":[Ljava/lang/String;
    .end local v4    # "invoiceObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 273
    .local v0, "e":Lorg/json/JSONException;
    const/16 v6, 0x1396

    const-string v7, "var1  should be a stringified JSON object; It seems there is an exception while parsing JSON"

    invoke-virtual {p0, v6, v7}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 278
    .end local v0    # "e":Lorg/json/JSONException;
    :pswitch_11
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2d

    .line 279
    const-string v6, "Mandatory param var1 is missing var1 should be offer key example : offer@1234 "

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 282
    :cond_2d
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var1"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget-object v8, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v9, "var2"

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2e

    const-string v6, ""

    :goto_d
    invoke-virtual {p0, v9, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v8, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v9, "var3"

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar3()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2f

    const-string v6, ""

    :goto_e
    invoke-virtual {p0, v9, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    iget-object v8, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v9, "var4"

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar4()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_30

    const-string v6, ""

    :goto_f
    invoke-virtual {p0, v9, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-object v8, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v9, "var5"

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar5()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_31

    const-string v6, ""

    :goto_10
    invoke-virtual {p0, v9, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    iget-object v8, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v9, "var6"

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar6()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_32

    const-string v6, ""

    :goto_11
    invoke-virtual {p0, v9, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-object v8, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v9, "var7"

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar7()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_33

    const-string v6, ""

    :goto_12
    invoke-virtual {p0, v9, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    iget-object v8, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v9, "var8"

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar8()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_34

    const-string v6, ""

    :goto_13
    invoke-virtual {p0, v9, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget-object v8, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v9, "var9"

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar9()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_35

    const-string v6, ""

    :goto_14
    invoke-virtual {p0, v9, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    iget-object v8, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v9, "var10"

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar10()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_36

    const-string v6, ""

    :goto_15
    invoke-virtual {p0, v9, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget-object v8, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v9, "var11"

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar11()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_37

    const-string v6, ""

    :goto_16
    invoke-virtual {p0, v9, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 283
    :cond_2e
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_d

    .line 284
    :cond_2f
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar3()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_e

    .line 285
    :cond_30
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar4()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_f

    .line 286
    :cond_31
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar5()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_10

    .line 287
    :cond_32
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar6()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_11

    .line 288
    :cond_33
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar7()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_12

    .line 289
    :cond_34
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar8()Ljava/lang/String;

    move-result-object v6

    goto :goto_13

    .line 290
    :cond_35
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar9()Ljava/lang/String;

    move-result-object v6

    goto :goto_14

    .line 291
    :cond_36
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar10()Ljava/lang/String;

    move-result-object v6

    goto :goto_15

    .line 292
    :cond_37
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar11()Ljava/lang/String;

    move-result-object v6

    goto :goto_16

    .line 297
    :pswitch_12
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_38

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v8, :cond_39

    .line 298
    :cond_38
    const-string v6, "Mandatory param var1 is missing var1should be the bank code for one bank, default for getting all banks"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 300
    :cond_39
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var1"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 304
    :pswitch_13
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3a

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v6, v10, :cond_3b

    .line 305
    :cond_3a
    const-string v6, "Mandatory param var1 is missing var1number or the card bin (first 6 digit of the card)"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 307
    :cond_3b
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var1"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 311
    :pswitch_14
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3c

    .line 312
    const-string v6, "Mandatory param var1 is missing var1should be the from date in YYYY-MM-DD format"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 313
    :cond_3c
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3d

    .line 314
    const-string v6, "Mandatory param var2 is missing var2till date in YYYY-MM-DD format."

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 316
    :cond_3d
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var1"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var2"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 321
    :pswitch_15
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3e

    .line 322
    const-string v6, "Mandatory param var1 is missing var1should be the from date in YYYY-MM-DD hh:mm:ss format"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 323
    :cond_3e
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3f

    .line 324
    const-string v6, "Mandatory param var2 is missing var2should be the till date in YYYY-MM-DD hh:mm:ss format."

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 326
    :cond_3f
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var1"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var2"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 331
    :pswitch_16
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_40

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v10, :cond_41

    .line 332
    :cond_40
    const-string v6, "Mandatory param var1 is missing var1number or the card bin (first 6 digit of the card)"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 334
    :cond_41
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var1"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 338
    :pswitch_17
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_42

    .line 339
    const-string v6, "Mandatory param var1 is missing var1should be the user credentials and it should be merchant_key:unique_user_id."

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 341
    :cond_42
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var1"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 345
    :pswitch_18
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_43

    .line 346
    const-string v6, "Mandatory param var1 is missing var1should be the user credentials and it should be merchant_key:unique_user_id."

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 348
    :cond_43
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v9, "var1"

    iget-object v10, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v10}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_44

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v8, :cond_45

    .line 351
    :cond_44
    const-string v6, "Mandatory param var2 is missing var2should be the card name (nickname of the card)"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 353
    :cond_45
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v9, "var2"

    iget-object v10, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v10}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar3()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_46

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar3()Ljava/lang/String;

    move-result-object v6

    const-string v9, "CC"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_47

    .line 356
    :cond_46
    const-string v6, "Mandatory param var3 is missing var3should be the card mode; please use CC as card mode"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 358
    :cond_47
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v9, "var3"

    iget-object v10, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v10}, Lcom/payu/india/Model/MerchantWebService;->getVar3()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar4()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_48

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar4()Ljava/lang/String;

    move-result-object v6

    const-string v9, "CC"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_49

    .line 361
    :cond_48
    const-string v6, "Mandatory param var4 is missing var4should be the card type; please use CC as card type"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 363
    :cond_49
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v9, "var4"

    iget-object v10, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v10}, Lcom/payu/india/Model/MerchantWebService;->getVar4()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar5()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4a

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v8, :cond_4b

    .line 366
    :cond_4a
    const-string v6, "Mandatory param var5 is missing var5 should be name on card"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 368
    :cond_4b
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var5"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar5()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar6()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4c

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar6()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->validateCardNumber(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4d

    .line 371
    :cond_4c
    const-string v6, "Mandatory param var6 is missing var6 should be a valid credit / debit card number"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 373
    :cond_4d
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var6"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar6()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const/4 v1, 0x0

    .line 377
    const/4 v2, 0x0

    .line 379
    :try_start_3
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar7()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v1

    .line 384
    :try_start_4
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar8()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v2

    .line 388
    invoke-virtual {p0, v1, v2}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->validateExpiry(II)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 389
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var7"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar7()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var8"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar8()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 380
    :catch_2
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v6, " Invalid month, it should be two digit number range from 01 to 12 MM format"

    invoke-virtual {p0, v13, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 385
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v0

    .line 386
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, " Invalid year, year should be 4 digit YYYY format"

    invoke-virtual {p0, v13, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 392
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_4e
    const/16 v6, 0x1394

    const-string v7, " It seems the card is expired!"

    invoke-virtual {p0, v6, v7}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 396
    :pswitch_19
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4f

    .line 397
    const-string v6, "Mandatory param var1 is missing var1should be the user credentials and it should be merchant_key:unique_user_id."

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 399
    :cond_4f
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v9, "var1"

    iget-object v10, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v10}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_50

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v8, :cond_51

    .line 402
    :cond_50
    const-string v6, "Mandatory param var2 is missing var2should be the card token, you get the card token when you store/fetch a card"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 405
    :cond_51
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v9, "var2"

    iget-object v10, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v10}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar3()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_52

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar3()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v8, :cond_53

    .line 408
    :cond_52
    const-string v6, "Mandatory param var3 is missing var3should be the card name (nickname of the card)"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 410
    :cond_53
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v9, "var3"

    iget-object v10, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v10}, Lcom/payu/india/Model/MerchantWebService;->getVar3()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v10, "var4"

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar4()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_55

    const-string v6, "CC"

    :goto_17
    invoke-virtual {p0, v10, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v10, "var5"

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar5()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_56

    const-string v6, "CC"

    :goto_18
    invoke-virtual {p0, v10, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar6()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_54

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar6()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v8, :cond_57

    .line 417
    :cond_54
    const-string v6, "Mandatory param var6 is missing var6 should be name on card"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 413
    :cond_55
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar4()Ljava/lang/String;

    move-result-object v6

    goto :goto_17

    .line 414
    :cond_56
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar5()Ljava/lang/String;

    move-result-object v6

    goto :goto_18

    .line 419
    :cond_57
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var6"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar6()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar7()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_58

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar7()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->validateCardNumber(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_59

    .line 422
    :cond_58
    const-string v6, "Mandatory param var7 is missing var7 should be a valid credit / debit card number"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 424
    :cond_59
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var7"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar7()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    const/4 v1, 0x0

    .line 427
    const/4 v2, 0x0

    .line 429
    :try_start_5
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar8()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v1

    .line 434
    :try_start_6
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar9()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v2

    .line 438
    invoke-virtual {p0, v1, v2}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->validateExpiry(II)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 439
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var8"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar8()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var9"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar9()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 430
    :catch_4
    move-exception v0

    .line 431
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, " Invalid month, it should be two digit number range from 01 to 12 MM format"

    invoke-virtual {p0, v13, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 435
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v0

    .line 436
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, " Invalid year, year should be 4 digit YYYY format"

    invoke-virtual {p0, v13, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 442
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_5a
    const/16 v6, 0x1394

    const-string v7, " It seems the card is expired!"

    invoke-virtual {p0, v6, v7}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(ILjava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 446
    :pswitch_1a
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5b

    .line 447
    const-string v6, "Mandatory param var1 is missing should be the user credentials and it should be merchant_key:unique_user_id."

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 449
    :cond_5b
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var1"

    iget-object v10, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v10}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v8, v10}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5c

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v9, :cond_5c

    .line 452
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var2"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 454
    :cond_5c
    const-string v6, "Mandatory param var2 is missing var2should be the card token, you get the card token when you store/fetch a card"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 459
    :pswitch_1b
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5d

    .line 460
    const-string v6, "Mandatory param var1 is missing should be the user credentials and it should be merchant_key:unique_user_id."

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 462
    :cond_5d
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var1"

    iget-object v10, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v10}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v8, v10}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5e

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v9, :cond_5e

    .line 465
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var2"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 467
    :cond_5e
    const-string v6, "Mandatory param var2 is missing var2should be the card token, you get the card token when you store/fetch a card"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 472
    :pswitch_1c
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5f

    .line 473
    const-string v6, "Mandatory param var1 is missing"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 475
    :cond_5f
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var1"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 480
    :pswitch_1d
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_60

    .line 481
    const-string v6, "Mandatory param var1 is missing"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 483
    :cond_60
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var1"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 487
    :pswitch_1e
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_61

    .line 488
    const-string v6, "Mandatory param var1 is missing"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 490
    :cond_61
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var1"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_62

    .line 493
    const-string v6, "Mandatory param var2 is missing"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 495
    :cond_62
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var2"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar3()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_63

    .line 498
    const-string v6, "Mandatory param var3 is missing"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 500
    :cond_63
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var3"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar3()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    iget-object v8, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v9, "var4"

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar4()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_64

    const-string v6, ""

    :goto_19
    invoke-virtual {p0, v9, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    iget-object v8, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v9, "var5"

    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar5()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_65

    const-string v6, ""

    :goto_1a
    invoke-virtual {p0, v9, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 502
    :cond_64
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar4()Ljava/lang/String;

    move-result-object v6

    goto :goto_19

    .line 503
    :cond_65
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar5()Ljava/lang/String;

    move-result-object v6

    goto :goto_1a

    .line 506
    :pswitch_1f
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v6}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_66

    .line 507
    const-string v6, "Mandatory param var1 is missing"

    invoke-virtual {p0, v6}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getReturnData(Ljava/lang/String;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    goto/16 :goto_0

    .line 509
    :cond_66
    iget-object v6, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->post:Ljava/lang/StringBuilder;

    const-string v8, "var1"

    iget-object v9, p0, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;

    invoke-virtual {v9}, Lcom/payu/india/Model/MerchantWebService;->getVar1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->concatParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 89
    nop

    :sswitch_data_0
    .sparse-switch
        -0x61ed7af4 -> :sswitch_f
        -0x6121c09b -> :sswitch_7
        -0x6013f423 -> :sswitch_0
        -0x5de31c01 -> :sswitch_14
        -0x5d5d2cf1 -> :sswitch_17
        -0x5a0d6cdf -> :sswitch_a
        -0x41a2d586 -> :sswitch_8
        -0x3b8edcc8 -> :sswitch_12
        -0x396712e0 -> :sswitch_9
        -0x24883772 -> :sswitch_11
        -0x24264d3e -> :sswitch_16
        -0x178ed802 -> :sswitch_1a
        -0x1641ca31 -> :sswitch_4
        -0x16026a90 -> :sswitch_18
        -0xdd51f98 -> :sswitch_1c
        -0x4759887 -> :sswitch_c
        -0x2535b4f -> :sswitch_10
        0x17bf4766 -> :sswitch_19
        0x29b3e678 -> :sswitch_15
        0x2e5c4f24 -> :sswitch_6
        0x33096345 -> :sswitch_1b
        0x3488ceea -> :sswitch_e
        0x3719d176 -> :sswitch_2
        0x63742651 -> :sswitch_d
        0x658f1e7c -> :sswitch_5
        0x6df348b2 -> :sswitch_b
        0x7150ee4a -> :sswitch_1
        0x75cc0f38 -> :sswitch_13
        0x77411ec4 -> :sswitch_1d
        0x7c1cd840 -> :sswitch_3
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
        :pswitch_e
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch

    .line 250
    :sswitch_data_1
    .sparse-switch
        -0x58dedde3 -> :sswitch_20
        -0x5445afa8 -> :sswitch_1e
        0x5c24b9c -> :sswitch_22
        0x65b3d6e -> :sswitch_23
        0x69add05 -> :sswitch_1f
        0x7f9753b -> :sswitch_21
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method
