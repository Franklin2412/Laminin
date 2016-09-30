.class public Lcom/payu/india/Payu/PayuConstants$INIT;
.super Ljava/lang/Object;
.source "PayuConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/india/Payu/PayuConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "INIT"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 383
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->PG_SET:Ljava/util/Set;

    const-string v1, "CC"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 384
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->PG_SET:Ljava/util/Set;

    const-string v1, "EMI"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 385
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->PG_SET:Ljava/util/Set;

    const-string v1, "CASH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->PG_SET:Ljava/util/Set;

    const-string v1, "NB"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 387
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->PG_SET:Ljava/util/Set;

    const-string v1, "PAYU_MONEY"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 390
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "verify_payment"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 391
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "check_payment"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 392
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "cancel_refund_transaction"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 393
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "check_action_status"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 394
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "capture_transaction"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "update_requests"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 396
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "cod_verify"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 397
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "cod_cancel"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 398
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "cod_settled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 399
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "get_TDR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "udf_update"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 401
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "create_invoice"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 402
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "check_offer_status"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 403
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "getNetbankingStatus"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 404
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "getIssuingBankStatus"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 405
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "get_Transaction_Details"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 406
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "get_transaction_info"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 407
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "check_isDomestic"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 408
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "get_user_cards"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "save_user_card"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "edit_user_card"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 411
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "delete_user_card"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 412
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "get_merchant_ibibo_codes"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 413
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "vas_for_mobile_sdk"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 414
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "payment_related_details_for_mobile_sdk"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 415
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "mobileHashTestWs"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "get_hashes"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 417
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "check_offer_details"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 419
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "getEmiAmountAccordingToInterest"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 421
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "merchant_cvv_data"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 422
    sget-object v0, Lcom/payu/india/Payu/PayuConstants;->COMMAND_SET:Ljava/util/Set;

    const-string v1, "delete_store_card_cvv"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 424
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    return-void
.end method
