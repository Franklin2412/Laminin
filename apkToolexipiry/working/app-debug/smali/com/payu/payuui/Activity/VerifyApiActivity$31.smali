.class Lcom/payu/payuui/Activity/VerifyApiActivity$31;
.super Ljava/lang/Object;
.source "VerifyApiActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuui/Activity/VerifyApiActivity;->verifyPayment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

.field final synthetic val$verifyPaymentDialog:Landroid/support/v7/app/AlertDialog;

.field final synthetic val$verifyPaymentTransactionIdEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/widget/EditText;Landroid/support/v7/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/payuui/Activity/VerifyApiActivity;

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$31;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    iput-object p2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$31;->val$verifyPaymentTransactionIdEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$31;->val$verifyPaymentDialog:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 1107
    new-instance v1, Lcom/payu/india/Extras/PayUChecksum;

    invoke-direct {v1}, Lcom/payu/india/Extras/PayUChecksum;-><init>()V

    .line 1108
    .local v1, "payUChecksum":Lcom/payu/india/Extras/PayUChecksum;
    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$31;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;
    invoke-static {v3}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$100(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PaymentParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payu/india/Model/PaymentParams;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/payu/india/Extras/PayUChecksum;->setKey(Ljava/lang/String;)V

    .line 1109
    const-string v3, "verify_payment"

    invoke-virtual {v1, v3}, Lcom/payu/india/Extras/PayUChecksum;->setCommand(Ljava/lang/String;)V

    .line 1111
    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$31;->val$verifyPaymentTransactionIdEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/payu/india/Extras/PayUChecksum;->setVar1(Ljava/lang/String;)V

    .line 1112
    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$31;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->bundle:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$200(Lcom/payu/payuui/Activity/VerifyApiActivity;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "salt"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/payu/india/Extras/PayUChecksum;->setSalt(Ljava/lang/String;)V

    .line 1113
    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$31;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    invoke-virtual {v1}, Lcom/payu/india/Extras/PayUChecksum;->getHash()Lcom/payu/india/Model/PostData;

    move-result-object v4

    # setter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v3, v4}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$302(Lcom/payu/payuui/Activity/VerifyApiActivity;Lcom/payu/india/Model/PostData;)Lcom/payu/india/Model/PostData;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$31;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v3}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$300(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PostData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v3

    if-nez v3, :cond_1

    .line 1114
    new-instance v0, Lcom/payu/india/Model/MerchantWebService;

    invoke-direct {v0}, Lcom/payu/india/Model/MerchantWebService;-><init>()V

    .line 1115
    .local v0, "merchantWebService":Lcom/payu/india/Model/MerchantWebService;
    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$31;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;
    invoke-static {v3}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$100(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PaymentParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payu/india/Model/PaymentParams;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/payu/india/Model/MerchantWebService;->setKey(Ljava/lang/String;)V

    .line 1116
    const-string v3, "verify_payment"

    invoke-virtual {v0, v3}, Lcom/payu/india/Model/MerchantWebService;->setCommand(Ljava/lang/String;)V

    .line 1117
    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$31;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v3}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$300(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PostData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/payu/india/Model/MerchantWebService;->setHash(Ljava/lang/String;)V

    .line 1118
    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$31;->val$verifyPaymentTransactionIdEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/payu/india/Model/MerchantWebService;->setVar1(Ljava/lang/String;)V

    .line 1119
    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$31;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    new-instance v4, Lcom/payu/india/PostParams/MerchantWebServicePostParams;

    invoke-direct {v4, v0}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;-><init>(Lcom/payu/india/Model/MerchantWebService;)V

    invoke-virtual {v4}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getMerchantWebServicePostParams()Lcom/payu/india/Model/PostData;

    move-result-object v4

    # setter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v3, v4}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$302(Lcom/payu/payuui/Activity/VerifyApiActivity;Lcom/payu/india/Model/PostData;)Lcom/payu/india/Model/PostData;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$31;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v3}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$300(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PostData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v3

    if-nez v3, :cond_0

    .line 1120
    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$31;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;
    invoke-static {v3}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$400(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PayuConfig;

    move-result-object v3

    iget-object v4, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$31;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v4}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$300(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PostData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/india/Model/PayuConfig;->setData(Ljava/lang/String;)V

    .line 1123
    new-instance v2, Lcom/payu/india/Tasks/VerifyPaymentTask;

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$31;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    invoke-direct {v2, v3}, Lcom/payu/india/Tasks/VerifyPaymentTask;-><init>(Lcom/payu/india/Interfaces/VerifyPaymentApiListener;)V

    .line 1124
    .local v2, "verifyPaymentTask":Lcom/payu/india/Tasks/VerifyPaymentTask;
    new-array v3, v5, [Lcom/payu/india/Model/PayuConfig;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$31;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;
    invoke-static {v5}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$400(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PayuConfig;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/payu/india/Tasks/VerifyPaymentTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1126
    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$31;->val$verifyPaymentDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 1134
    .end local v0    # "merchantWebService":Lcom/payu/india/Model/MerchantWebService;
    .end local v2    # "verifyPaymentTask":Lcom/payu/india/Tasks/VerifyPaymentTask;
    :goto_0
    return-void

    .line 1129
    .restart local v0    # "merchantWebService":Lcom/payu/india/Model/MerchantWebService;
    :cond_0
    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$31;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    iget-object v4, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$31;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v4}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$300(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PostData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1132
    .end local v0    # "merchantWebService":Lcom/payu/india/Model/MerchantWebService;
    :cond_1
    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$31;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    iget-object v4, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$31;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v4}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$300(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PostData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
