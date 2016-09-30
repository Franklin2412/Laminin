.class Lcom/payu/payuui/Activity/VerifyApiActivity$20;
.super Ljava/lang/Object;
.source "VerifyApiActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuui/Activity/VerifyApiActivity;->getCardInformation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

.field final synthetic val$cardNumberEditText:Landroid/widget/EditText;

.field final synthetic val$getCardInfomationAlertDialog:Landroid/support/v7/app/AlertDialog;

.field final synthetic val$payuUtils:Lcom/payu/india/Payu/PayuUtils;


# direct methods
.method constructor <init>(Lcom/payu/payuui/Activity/VerifyApiActivity;Landroid/widget/EditText;Lcom/payu/india/Payu/PayuUtils;Landroid/support/v7/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/payuui/Activity/VerifyApiActivity;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$20;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    iput-object p2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$20;->val$cardNumberEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$20;->val$payuUtils:Lcom/payu/india/Payu/PayuUtils;

    iput-object p4, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$20;->val$getCardInfomationAlertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 766
    iget-object v5, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$20;->val$cardNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "cardNumber":Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$20;->val$payuUtils:Lcom/payu/india/Payu/PayuUtils;

    invoke-virtual {v5, v0}, Lcom/payu/india/Payu/PayuUtils;->validateCardNumber(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 768
    new-instance v4, Lcom/payu/india/Extras/PayUChecksum;

    invoke-direct {v4}, Lcom/payu/india/Extras/PayUChecksum;-><init>()V

    .line 769
    .local v4, "payUChecksum":Lcom/payu/india/Extras/PayUChecksum;
    iget-object v5, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$20;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;
    invoke-static {v5}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$100(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PaymentParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/payu/india/Model/PaymentParams;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/payu/india/Extras/PayUChecksum;->setKey(Ljava/lang/String;)V

    .line 770
    const-string v5, "check_isDomestic"

    invoke-virtual {v4, v5}, Lcom/payu/india/Extras/PayUChecksum;->setCommand(Ljava/lang/String;)V

    .line 772
    iget-object v5, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$20;->val$cardNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/payu/india/Extras/PayUChecksum;->setVar1(Ljava/lang/String;)V

    .line 773
    iget-object v5, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$20;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->bundle:Landroid/os/Bundle;
    invoke-static {v5}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$200(Lcom/payu/payuui/Activity/VerifyApiActivity;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "salt"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/payu/india/Extras/PayUChecksum;->setSalt(Ljava/lang/String;)V

    .line 775
    new-instance v2, Lcom/payu/india/Model/MerchantWebService;

    invoke-direct {v2}, Lcom/payu/india/Model/MerchantWebService;-><init>()V

    .line 776
    .local v2, "merchantWebService":Lcom/payu/india/Model/MerchantWebService;
    const-string v5, "check_isDomestic"

    invoke-virtual {v2, v5}, Lcom/payu/india/Model/MerchantWebService;->setCommand(Ljava/lang/String;)V

    .line 777
    iget-object v5, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$20;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;
    invoke-static {v5}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$100(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PaymentParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/payu/india/Model/PaymentParams;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/payu/india/Model/MerchantWebService;->setKey(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v4}, Lcom/payu/india/Extras/PayUChecksum;->getHash()Lcom/payu/india/Model/PostData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/payu/india/Model/MerchantWebService;->setHash(Ljava/lang/String;)V

    .line 781
    iget-object v5, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$20;->val$cardNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/payu/india/Model/MerchantWebService;->setVar1(Ljava/lang/String;)V

    .line 782
    new-instance v3, Lcom/payu/india/PostParams/MerchantWebServicePostParams;

    invoke-direct {v3, v2}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;-><init>(Lcom/payu/india/Model/MerchantWebService;)V

    .line 783
    .local v3, "merchantWebServicePostParams":Lcom/payu/india/PostParams/MerchantWebServicePostParams;
    iget-object v5, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$20;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    invoke-virtual {v3}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getMerchantWebServicePostParams()Lcom/payu/india/Model/PostData;

    move-result-object v6

    # setter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v5, v6}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$302(Lcom/payu/payuui/Activity/VerifyApiActivity;Lcom/payu/india/Model/PostData;)Lcom/payu/india/Model/PostData;

    .line 784
    iget-object v5, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$20;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v5}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$300(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PostData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v5

    if-nez v5, :cond_0

    .line 785
    iget-object v5, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$20;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;
    invoke-static {v5}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$400(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PayuConfig;

    move-result-object v5

    iget-object v6, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$20;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v6}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$300(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/payu/india/Model/PayuConfig;->setData(Ljava/lang/String;)V

    .line 786
    new-instance v1, Lcom/payu/india/Tasks/GetCardInformationTask;

    iget-object v5, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$20;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    invoke-direct {v1, v5}, Lcom/payu/india/Tasks/GetCardInformationTask;-><init>(Lcom/payu/india/Interfaces/GetCardInformationApiListener;)V

    .line 787
    .local v1, "getCardInformationTask":Lcom/payu/india/Tasks/GetCardInformationTask;
    new-array v5, v8, [Lcom/payu/india/Model/PayuConfig;

    iget-object v6, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$20;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;
    invoke-static {v6}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$400(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PayuConfig;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v1, v5}, Lcom/payu/india/Tasks/GetCardInformationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 788
    iget-object v5, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$20;->val$getCardInfomationAlertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 796
    .end local v1    # "getCardInformationTask":Lcom/payu/india/Tasks/GetCardInformationTask;
    .end local v2    # "merchantWebService":Lcom/payu/india/Model/MerchantWebService;
    .end local v3    # "merchantWebServicePostParams":Lcom/payu/india/PostParams/MerchantWebServicePostParams;
    .end local v4    # "payUChecksum":Lcom/payu/india/Extras/PayUChecksum;
    :goto_0
    return-void

    .line 790
    .restart local v2    # "merchantWebService":Lcom/payu/india/Model/MerchantWebService;
    .restart local v3    # "merchantWebServicePostParams":Lcom/payu/india/PostParams/MerchantWebServicePostParams;
    .restart local v4    # "payUChecksum":Lcom/payu/india/Extras/PayUChecksum;
    :cond_0
    iget-object v5, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$20;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    iget-object v6, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$20;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v6}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$300(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PostData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 794
    .end local v2    # "merchantWebService":Lcom/payu/india/Model/MerchantWebService;
    .end local v3    # "merchantWebServicePostParams":Lcom/payu/india/PostParams/MerchantWebServicePostParams;
    .end local v4    # "payUChecksum":Lcom/payu/india/Extras/PayUChecksum;
    :cond_1
    iget-object v5, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$20;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    const-string v6, "Invalid card number"

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
