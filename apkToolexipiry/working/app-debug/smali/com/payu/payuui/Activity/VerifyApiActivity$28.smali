.class Lcom/payu/payuui/Activity/VerifyApiActivity$28;
.super Ljava/lang/Object;
.source "VerifyApiActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuui/Activity/VerifyApiActivity;->getOfferStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

.field final synthetic val$getOfferDetailsDialog:Landroid/support/v7/app/AlertDialog;

.field final synthetic val$netBankingLinearLayout:Landroid/widget/LinearLayout;

.field final synthetic val$netBankingSpinner:Landroid/widget/Spinner;

.field final synthetic val$newCardLinearLayout:Landroid/widget/LinearLayout;

.field final synthetic val$offerCardNumberEditText:Landroid/widget/EditText;

.field final synthetic val$offerNameOnCardEditText:Landroid/widget/EditText;

.field final synthetic val$offerPaymentModeEditText:Landroid/widget/EditText;

.field final synthetic val$storedCardLinearLayout:Landroid/widget/LinearLayout;

.field final synthetic val$storedCardSpinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/support/v7/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/payuui/Activity/VerifyApiActivity;

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    iput-object p2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->val$netBankingLinearLayout:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->val$netBankingSpinner:Landroid/widget/Spinner;

    iput-object p4, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->val$newCardLinearLayout:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->val$offerPaymentModeEditText:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->val$offerCardNumberEditText:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->val$offerNameOnCardEditText:Landroid/widget/EditText;

    iput-object p8, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->val$storedCardLinearLayout:Landroid/widget/LinearLayout;

    iput-object p9, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->val$storedCardSpinner:Landroid/widget/Spinner;

    iput-object p10, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->val$getOfferDetailsDialog:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 1026
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    new-instance v2, Lcom/payu/india/Model/MerchantWebService;

    invoke-direct {v2}, Lcom/payu/india/Model/MerchantWebService;-><init>()V

    # setter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1, v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$002(Lcom/payu/payuui/Activity/VerifyApiActivity;Lcom/payu/india/Model/MerchantWebService;)Lcom/payu/india/Model/MerchantWebService;

    .line 1027
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$100(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PaymentParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PaymentParams;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setKey(Ljava/lang/String;)V

    .line 1028
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    const-string v2, "check_offer_status"

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setCommand(Ljava/lang/String;)V

    .line 1029
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->mPayuHashes:Lcom/payu/india/Model/PayuHashes;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$500(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PayuHashes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PayuHashes;->getCheckOfferStatusHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setHash(Ljava/lang/String;)V

    .line 1030
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$100(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PaymentParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PaymentParams;->getOfferKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar1(Ljava/lang/String;)V

    .line 1031
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$100(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PaymentParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PaymentParams;->getAmount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar2(Ljava/lang/String;)V

    .line 1033
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->val$netBankingLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1034
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    const-string v2, "NB"

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar3(Ljava/lang/String;)V

    .line 1035
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v2

    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->netBankingList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$700(Lcom/payu/payuui/Activity/VerifyApiActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->val$netBankingSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payu/india/Model/PaymentDetails;

    invoke-virtual {v1}, Lcom/payu/india/Model/PaymentDetails;->getBankCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/payu/india/Model/MerchantWebService;->setVar4(Ljava/lang/String;)V

    .line 1038
    :cond_0
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->val$newCardLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 1040
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->val$offerPaymentModeEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar3(Ljava/lang/String;)V

    .line 1041
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v2

    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->val$offerCardNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "VISA"

    :goto_0
    invoke-virtual {v2, v1}, Lcom/payu/india/Model/MerchantWebService;->setVar4(Ljava/lang/String;)V

    .line 1043
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->val$offerCardNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar5(Ljava/lang/String;)V

    .line 1045
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->val$offerNameOnCardEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar6(Ljava/lang/String;)V

    .line 1052
    :goto_1
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$100(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PaymentParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PaymentParams;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar7(Ljava/lang/String;)V

    .line 1053
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$100(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PaymentParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PaymentParams;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar8(Ljava/lang/String;)V

    .line 1054
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar9(Ljava/lang/String;)V

    .line 1057
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->val$storedCardLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 1058
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v2

    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->storedCardsList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$600(Lcom/payu/payuui/Activity/VerifyApiActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->val$storedCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v1}, Lcom/payu/india/Model/StoredCard;->getCardMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/payu/india/Model/MerchantWebService;->setVar3(Ljava/lang/String;)V

    .line 1059
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v2

    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->storedCardsList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$600(Lcom/payu/payuui/Activity/VerifyApiActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->val$storedCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v1}, Lcom/payu/india/Model/StoredCard;->getCardBin()Ljava/lang/String;

    move-result-object v1

    const-string v3, "4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "VISA"

    :goto_2
    invoke-virtual {v2, v1}, Lcom/payu/india/Model/MerchantWebService;->setVar4(Ljava/lang/String;)V

    .line 1060
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$100(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PaymentParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar10(Ljava/lang/String;)V

    .line 1061
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v2

    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->storedCardsList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$600(Lcom/payu/payuui/Activity/VerifyApiActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->val$storedCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payu/india/Model/StoredCard;

    invoke-virtual {v1}, Lcom/payu/india/Model/StoredCard;->getCardToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/payu/india/Model/MerchantWebService;->setVar11(Ljava/lang/String;)V

    .line 1063
    :cond_1
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    new-instance v2, Lcom/payu/india/PostParams/MerchantWebServicePostParams;

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v3}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;-><init>(Lcom/payu/india/Model/MerchantWebService;)V

    invoke-virtual {v2}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getMerchantWebServicePostParams()Lcom/payu/india/Model/PostData;

    move-result-object v2

    # setter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v1, v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$302(Lcom/payu/payuui/Activity/VerifyApiActivity;Lcom/payu/india/Model/PostData;)Lcom/payu/india/Model/PostData;

    .line 1065
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$300(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PostData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v1

    if-nez v1, :cond_5

    .line 1066
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$400(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PayuConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$300(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PostData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/PayuConfig;->setData(Ljava/lang/String;)V

    .line 1068
    new-instance v0, Lcom/payu/india/Tasks/GetOfferStatusTask;

    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    invoke-direct {v0, v1}, Lcom/payu/india/Tasks/GetOfferStatusTask;-><init>(Lcom/payu/india/Interfaces/GetOfferStatusApiListener;)V

    .line 1069
    .local v0, "getOfferStatusTask":Lcom/payu/india/Tasks/GetOfferStatusTask;
    new-array v1, v4, [Lcom/payu/india/Model/PayuConfig;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;
    invoke-static {v3}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$400(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PayuConfig;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/payu/india/Tasks/GetOfferStatusTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1072
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->val$getOfferDetailsDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 1076
    .end local v0    # "getOfferStatusTask":Lcom/payu/india/Tasks/GetOfferStatusTask;
    :goto_3
    return-void

    .line 1041
    :cond_2
    const-string v1, "MAST"

    goto/16 :goto_0

    .line 1048
    :cond_3
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar5(Ljava/lang/String;)V

    .line 1049
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar6(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1059
    :cond_4
    const-string v1, "MAST"

    goto/16 :goto_2

    .line 1074
    :cond_5
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$28;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$300(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PostData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_3
.end method
