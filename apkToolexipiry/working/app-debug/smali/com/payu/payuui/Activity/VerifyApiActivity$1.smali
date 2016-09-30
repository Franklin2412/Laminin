.class Lcom/payu/payuui/Activity/VerifyApiActivity$1;
.super Ljava/lang/Object;
.source "VerifyApiActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuui/Activity/VerifyApiActivity;->getEmiAmountAccordingToInterest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$inputEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/payuui/Activity/VerifyApiActivity;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$1;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    iput-object p2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$1;->val$inputEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 261
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$1;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    new-instance v3, Lcom/payu/india/Model/MerchantWebService;

    invoke-direct {v3}, Lcom/payu/india/Model/MerchantWebService;-><init>()V

    # setter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v2, v3}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$002(Lcom/payu/payuui/Activity/VerifyApiActivity;Lcom/payu/india/Model/MerchantWebService;)Lcom/payu/india/Model/MerchantWebService;

    .line 263
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$1;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$1;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;
    invoke-static {v3}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$100(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PaymentParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payu/india/Model/PaymentParams;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/payu/india/Model/MerchantWebService;->setKey(Ljava/lang/String;)V

    .line 265
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$1;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v2

    const-string v3, "getEmiAmountAccordingToInterest"

    invoke-virtual {v2, v3}, Lcom/payu/india/Model/MerchantWebService;->setCommand(Ljava/lang/String;)V

    .line 271
    new-instance v1, Lcom/payu/india/Extras/PayUChecksum;

    invoke-direct {v1}, Lcom/payu/india/Extras/PayUChecksum;-><init>()V

    .line 272
    .local v1, "payUChecksum":Lcom/payu/india/Extras/PayUChecksum;
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$1;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$100(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PaymentParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PaymentParams;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Extras/PayUChecksum;->setKey(Ljava/lang/String;)V

    .line 273
    const-string v2, "getEmiAmountAccordingToInterest"

    invoke-virtual {v1, v2}, Lcom/payu/india/Extras/PayUChecksum;->setCommand(Ljava/lang/String;)V

    .line 274
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$1;->val$inputEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Extras/PayUChecksum;->setVar1(Ljava/lang/String;)V

    .line 275
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$1;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->bundle:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$200(Lcom/payu/payuui/Activity/VerifyApiActivity;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "salt"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Extras/PayUChecksum;->setSalt(Ljava/lang/String;)V

    .line 277
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$1;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    invoke-virtual {v1}, Lcom/payu/india/Extras/PayUChecksum;->getHash()Lcom/payu/india/Model/PostData;

    move-result-object v3

    # setter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v2, v3}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$302(Lcom/payu/payuui/Activity/VerifyApiActivity;Lcom/payu/india/Model/PostData;)Lcom/payu/india/Model/PostData;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$1;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$300(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PostData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v2

    if-nez v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$1;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$1;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v3}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$300(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PostData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/payu/india/Model/MerchantWebService;->setHash(Ljava/lang/String;)V

    .line 283
    :cond_0
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$1;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$1;->val$inputEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/payu/india/Model/MerchantWebService;->setVar1(Ljava/lang/String;)V

    .line 285
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$1;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    new-instance v3, Lcom/payu/india/PostParams/MerchantWebServicePostParams;

    iget-object v4, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$1;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->merchantWebService:Lcom/payu/india/Model/MerchantWebService;
    invoke-static {v4}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$000(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/MerchantWebService;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;-><init>(Lcom/payu/india/Model/MerchantWebService;)V

    invoke-virtual {v3}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getMerchantWebServicePostParams()Lcom/payu/india/Model/PostData;

    move-result-object v3

    # setter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v2, v3}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$302(Lcom/payu/payuui/Activity/VerifyApiActivity;Lcom/payu/india/Model/PostData;)Lcom/payu/india/Model/PostData;

    .line 287
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$1;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$300(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PostData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v2

    if-nez v2, :cond_1

    .line 289
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$1;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$400(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PayuConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$1;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v3}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$300(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PostData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/payu/india/Model/PayuConfig;->setData(Ljava/lang/String;)V

    .line 292
    new-instance v0, Lcom/payu/india/Tasks/GetEmiAmountAccordingToInterestTask;

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$1;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    invoke-direct {v0, v2}, Lcom/payu/india/Tasks/GetEmiAmountAccordingToInterestTask;-><init>(Lcom/payu/india/Interfaces/GetEmiAmountAccordingToInterestApiListener;)V

    .line 293
    .local v0, "getEmiAmountAccordingToInterestTask":Lcom/payu/india/Tasks/GetEmiAmountAccordingToInterestTask;
    new-array v2, v5, [Lcom/payu/india/Model/PayuConfig;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$1;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;
    invoke-static {v4}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$400(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PayuConfig;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/payu/india/Tasks/GetEmiAmountAccordingToInterestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 295
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 301
    .end local v0    # "getEmiAmountAccordingToInterestTask":Lcom/payu/india/Tasks/GetEmiAmountAccordingToInterestTask;
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$1;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$1;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v3}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$300(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PostData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
