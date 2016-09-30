.class Lcom/payu/payuui/Activity/VerifyApiActivity$34;
.super Ljava/lang/Object;
.source "VerifyApiActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuui/Activity/VerifyApiActivity;->deleteCvv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;


# direct methods
.method constructor <init>(Lcom/payu/payuui/Activity/VerifyApiActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/payuui/Activity/VerifyApiActivity;

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$34;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v4, 0x1

    .line 1163
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$34;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->selectedUserCard:Lcom/payu/india/Model/StoredCard;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$800(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/StoredCard;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1164
    new-instance v1, Lcom/payu/india/Model/MerchantWebService;

    invoke-direct {v1}, Lcom/payu/india/Model/MerchantWebService;-><init>()V

    .line 1165
    .local v1, "merchantWebService":Lcom/payu/india/Model/MerchantWebService;
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$34;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$100(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PaymentParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PaymentParams;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setKey(Ljava/lang/String;)V

    .line 1166
    const-string v2, "delete_store_card_cvv"

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setCommand(Ljava/lang/String;)V

    .line 1167
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$34;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->mPaymentParams:Lcom/payu/india/Model/PaymentParams;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$100(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PaymentParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PaymentParams;->getUserCredentials()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar1(Ljava/lang/String;)V

    .line 1168
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$34;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->selectedUserCard:Lcom/payu/india/Model/StoredCard;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$800(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/StoredCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/StoredCard;->getCardToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setVar2(Ljava/lang/String;)V

    .line 1169
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$34;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->mPayuHashes:Lcom/payu/india/Model/PayuHashes;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$500(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PayuHashes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PayuHashes;->getDeleteStoreCardCvv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/india/Model/MerchantWebService;->setHash(Ljava/lang/String;)V

    .line 1171
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$34;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    const/4 v3, 0x0

    # setter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v2, v3}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$302(Lcom/payu/payuui/Activity/VerifyApiActivity;Lcom/payu/india/Model/PostData;)Lcom/payu/india/Model/PostData;

    .line 1172
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$34;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    new-instance v3, Lcom/payu/india/PostParams/MerchantWebServicePostParams;

    invoke-direct {v3, v1}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;-><init>(Lcom/payu/india/Model/MerchantWebService;)V

    invoke-virtual {v3}, Lcom/payu/india/PostParams/MerchantWebServicePostParams;->getMerchantWebServicePostParams()Lcom/payu/india/Model/PostData;

    move-result-object v3

    # setter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v2, v3}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$302(Lcom/payu/payuui/Activity/VerifyApiActivity;Lcom/payu/india/Model/PostData;)Lcom/payu/india/Model/PostData;

    .line 1174
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$34;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$300(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PostData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/india/Model/PostData;->getCode()I

    move-result v2

    if-nez v2, :cond_1

    .line 1177
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$34;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;
    invoke-static {v2}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$400(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PayuConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$34;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v3}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$300(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PostData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/payu/india/Model/PayuConfig;->setData(Ljava/lang/String;)V

    .line 1179
    new-instance v0, Lcom/payu/india/Tasks/DeleteCvvTask;

    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$34;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    invoke-direct {v0, v2}, Lcom/payu/india/Tasks/DeleteCvvTask;-><init>(Lcom/payu/india/Interfaces/DeleteCvvApiListener;)V

    .line 1180
    .local v0, "deleteCvvTask":Lcom/payu/india/Tasks/DeleteCvvTask;
    new-array v2, v4, [Lcom/payu/india/Model/PayuConfig;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$34;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;
    invoke-static {v4}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$400(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PayuConfig;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/payu/india/Tasks/DeleteCvvTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1185
    .end local v0    # "deleteCvvTask":Lcom/payu/india/Tasks/DeleteCvvTask;
    .end local v1    # "merchantWebService":Lcom/payu/india/Model/MerchantWebService;
    :cond_0
    :goto_0
    return-void

    .line 1182
    .restart local v1    # "merchantWebService":Lcom/payu/india/Model/MerchantWebService;
    :cond_1
    iget-object v2, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$34;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    iget-object v3, p0, Lcom/payu/payuui/Activity/VerifyApiActivity$34;->this$0:Lcom/payu/payuui/Activity/VerifyApiActivity;

    # getter for: Lcom/payu/payuui/Activity/VerifyApiActivity;->postData:Lcom/payu/india/Model/PostData;
    invoke-static {v3}, Lcom/payu/payuui/Activity/VerifyApiActivity;->access$300(Lcom/payu/payuui/Activity/VerifyApiActivity;)Lcom/payu/india/Model/PostData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payu/india/Model/PostData;->getResult()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
