.class Lcom/payu/payuui/Activity/VerifyApiActivity$8;
.super Ljava/lang/Object;
.source "VerifyApiActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuui/Activity/VerifyApiActivity;->saveUserCard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

.field final synthetic val$cardExpiryMonthEditText:Landroid/widget/EditText;

.field final synthetic val$cardExpiryYearEditText:Landroid/widget/EditText;

.field final synthetic val$cardHolderNameEditText:Landroid/widget/EditText;

.field final synthetic val$cardNameEditText:Landroid/widget/EditText;

.field final synthetic val$cardNumberEditText:Landroid/widget/EditText;

.field final synthetic val$saveUserCardDialog:Landroid/support/v7/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/support/v7/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/payuui/Activity/VerifyApiActivity;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    iput-object p2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->val$cardHolderNameEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->val$cardNameEditText:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->val$cardNumberEditText:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->val$cardExpiryMonthEditText:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->val$cardExpiryYearEditText:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->val$saveUserCardDialog:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 537
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    new-instance v2, Lcom/payu/india/Model/MerchantWebService;

    invoke-direct {v2}, Lcom/payu/india/Model/MerchantWebService;-><init>()V

    # setter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1, v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$002(Lcom/payu/payuui/Activity/VerifyApiActivity;Lcom/payu/india/Model/MerchantWebService;)Lcom/payu/india/Model/MerchantWebService;

    .line 538
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$100(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PaymentParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PaymentParams;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setKey(Ljava/lang/String;)V

    .line 539
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    const-string v2, "delete_store_card_cvv"

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setCommand(Ljava/lang/String;)V

    .line 540
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->mPayuHashes:Lcom/payu/india/Model/PayuHashes;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$500(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PayuHashes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PayuHashes;->getSaveCardHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setHash(Ljava/lang/String;)V

    .line 541
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$100(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PaymentParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar1(Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->val$cardHolderNameEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar2(Ljava/lang/String;)V

    .line 543
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    const-string v2, "CC"

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar3(Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    const-string v2, "CC"

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar4(Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->val$cardNameEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar5(Ljava/lang/String;)V

    .line 546
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->val$cardNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar6(Ljava/lang/String;)V

    .line 547
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->val$cardExpiryMonthEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar7(Ljava/lang/String;)V

    .line 548
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->val$cardExpiryYearEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar8(Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    new-instance v2, Lcom/payu/india/PostParams/MerchantWebServicePostParams;

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v3}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;-><init>(Lcom/payu/india/Model/MerchantWebService;)V

    invoke-virtual {v2}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getMerchantWebServicePostParams()Lcom/payu/india/Model/PostData;

    move-result-object v2

    # setter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v1, v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$302(Lcom/payu/payuui/Activity/VerifyApiActivity;Lcom/payu/india/Model/PostData;)Lcom/payu/india/Model/PostData;

    .line 552
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$300(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PostData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 553
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;
    invoke-static {v1}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$400(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PayuConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$300(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PostData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/PayuConfig;->setData(Ljava/lang/String;)V

    .line 555
    new-instance v0, Lcom/payu/india/Tasks/SaveCardTask;

    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    invoke-direct {v0, v1}, Lcom/payu/india/Tasks/SaveCardTask;-><init>(Lcom/payu/india/Interfaces/SaveCardApiListener;)V

    .line 556
    .local v0, "saveCardTask":Lcom/payu/india/Tasks/SaveCardTask;
    new-array v1, v4, [Lcom/payu/india/Model/PayuConfig;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;
    invoke-static {v3}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$400(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PayuConfig;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/payu/india/Tasks/SaveCardTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 559
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->val$saveUserCardDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 563
    .end local v0    # "saveCardTask":Lcom/payu/india/Tasks/SaveCardTask;
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$8;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$300(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PostData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
