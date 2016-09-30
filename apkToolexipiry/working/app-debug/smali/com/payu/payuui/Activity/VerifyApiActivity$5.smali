.class Lcom/payu/payuui/Activity/VerifyApiActivity$5;
.super Ljava/lang/Object;
.source "VerifyApiActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuui/Activity/VerifyApiActivity;->checkOfferDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

.field final synthetic val$bankCodeLayout:Landroid/widget/LinearLayout;

.field final synthetic val$cardNumberLayout:Landroid/widget/LinearLayout;

.field final synthetic val$checkOfferDetails:Landroid/support/v7/app/AlertDialog;

.field final synthetic val$netBankingLayout:Landroid/widget/LinearLayout;

.field final synthetic val$netBankingSpinner:Landroid/widget/Spinner;

.field final synthetic val$offerAmountEditText:Landroid/widget/EditText;

.field final synthetic val$offerCardNumberEditText:Landroid/widget/EditText;

.field final synthetic val$storedCardSpinner:Landroid/widget/Spinner;

.field final synthetic val$userCredentialsAndTokenLayout:Landroid/widget/LinearLayout;

.field final synthetic val$userCredentialsLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/support/v7/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/payuui/Activity/VerifyApiActivity;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    iput-object p2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->val$cardNumberLayout:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->val$offerCardNumberEditText:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->val$userCredentialsLayout:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->val$userCredentialsAndTokenLayout:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->val$storedCardSpinner:Landroid/widget/Spinner;

    iput-object p7, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->val$netBankingLayout:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->val$bankCodeLayout:Landroid/widget/LinearLayout;

    iput-object p9, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->val$netBankingSpinner:Landroid/widget/Spinner;

    iput-object p10, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->val$offerAmountEditText:Landroid/widget/EditText;

    iput-object p11, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->val$checkOfferDetails:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 422
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    new-instance v2, Lcom/payu/india/Model/MerchantWebService;

    invoke-direct {v2}, Lcom/payu/india/Model/MerchantWebService;-><init>()V

    # setter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1, v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$002(Lcom/payu/payuui/Activity/VerifyApiActivity;Lcom/payu/india/Model/MerchantWebService;)Lcom/payu/india/Model/MerchantWebService;

    .line 423
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$100(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PaymentParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PaymentParams;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setKey(Ljava/lang/String;)V

    .line 424
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    const-string v2, "check_offer_details"

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setCommand(Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->mPayuHashes:Lcom/payu/india/Model/PayuHashes;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$500(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PayuHashes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PayuHashes;->getCheckOfferDetailsHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setHash(Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$100(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PaymentParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PaymentParams;->getOfferKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar1(Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->val$cardNumberLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 439
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar2(Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->val$offerCardNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar3(Ljava/lang/String;)V

    .line 455
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->val$offerAmountEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar5(Ljava/lang/String;)V

    .line 457
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    new-instance v2, Lcom/payu/india/PostParams/MerchantWebServicePostParams;

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v3}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;-><init>(Lcom/payu/india/Model/MerchantWebService;)V

    invoke-virtual {v2}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getMerchantWebServicePostParams()Lcom/payu/india/Model/PostData;

    move-result-object v2

    # setter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v1, v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$302(Lcom/payu/payuui/Activity/VerifyApiActivity;Lcom/payu/india/Model/PostData;)Lcom/payu/india/Model/PostData;

    .line 459
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$300(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PostData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v1

    if-nez v1, :cond_5

    .line 460
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$400(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PayuConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$300(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PostData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/PayuConfig;->setData(Ljava/lang/String;)V

    .line 462
    new-instance v0, Lcom/payu/india/Tasks/CheckOfferDetailsTask;

    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    invoke-direct {v0, v1}, Lcom/payu/india/Tasks/CheckOfferDetailsTask;-><init>(Lcom/payu/india/Interfaces/CheckOfferDetailsApiListener;)V

    .line 463
    .local v0, "checkOfferDetailsTask":Lcom/payu/india/Tasks/CheckOfferDetailsTask;
    new-array v1, v4, [Lcom/payu/india/Model/PayuConfig;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;
    invoke-static {v3}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$400(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PayuConfig;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/payu/india/Tasks/CheckOfferDetailsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 466
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->val$checkOfferDetails:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 470
    .end local v0    # "checkOfferDetailsTask":Lcom/payu/india/Tasks/CheckOfferDetailsTask;
    :goto_1
    return-void

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->val$userCredentialsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 442
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar2(Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$100(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PaymentParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar3(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 444
    :cond_2
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->val$userCredentialsAndTokenLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 445
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar2(Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$100(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PaymentParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar3(Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v2

    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->storedCardsList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$600(Lcom/payu/payuui/Activity/VerifyApiActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->val$storedCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v1}, Lcom/payu/india/Model/StoredCard;->getCardToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/payu/india/Model/MerchantWebService;->setVar4(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 448
    :cond_3
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->val$netBankingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 449
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar2(Ljava/lang/String;)V

    .line 450
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    const-string v2, "NB"

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar3(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 451
    :cond_4
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->val$bankCodeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar2(Ljava/lang/String;)V

    .line 453
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v2

    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->netBankingList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$700(Lcom/payu/payuui/Activity/VerifyApiActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->val$netBankingSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payu/india/Model/PaymentDetails;

    invoke-virtual {v1}, Lcom/payu/india/Model/PaymentDetails;->getBankCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/payu/india/Model/MerchantWebService;->setVar3(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 468
    :cond_5
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$5;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$300(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PostData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method
