.class Lcom/payu/payuui/Activity/PaymentsActivity$1;
.super Lcom/payu/custombrowser/PayUCustomBrowserCallback;
.source "PaymentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuui/Activity/PaymentsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/payuui/Activity/PaymentsActivity;


# direct methods
.method constructor <init>(Lcom/payu/payuui/Activity/PaymentsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/payuui/Activity/PaymentsActivity;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/payu/payuui/Activity/PaymentsActivity$1;->this$0:Lcom/payu/payuui/Activity/PaymentsActivity;

    invoke-direct {p0}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public initializeMagicRetry(Lcom/payu/custombrowser/Bank;Landroid/webkit/WebView;Lcom/payu/magicretry/MagicRetryFragment;)V
    .locals 3
    .param p1, "payUCustomBrowser"    # Lcom/payu/custombrowser/Bank;
    .param p2, "webview"    # Landroid/webkit/WebView;
    .param p3, "magicRetryFragment"    # Lcom/payu/magicretry/MagicRetryFragment;

    .prologue
    .line 173
    const-string v1, "leak test"

    const-string v2, "initializeMagicRetry"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 176
    .local v0, "urlList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/payu/payuui/Activity/PaymentsActivity$1;->this$0:Lcom/payu/payuui/Activity/PaymentsActivity;

    iget-object v1, v1, Lcom/payu/payuui/Activity/PaymentsActivity;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/payu/payuui/Activity/PaymentsActivity$1;->this$0:Lcom/payu/payuui/Activity/PaymentsActivity;

    iget-object v2, v2, Lcom/payu/payuui/Activity/PaymentsActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {v2}, Lcom/payu/india/Model/PayuConfig;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {p1, v0}, Lcom/payu/custombrowser/Bank;->setMagicRetry(Ljava/util/Map;)V

    .line 178
    return-void
.end method

.method public onBackApprove()V
    .locals 2

    .prologue
    .line 154
    const-string v0, "leak test"

    const-string v1, "onBackApprove"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/payu/payuui/Activity/PaymentsActivity$1;->this$0:Lcom/payu/payuui/Activity/PaymentsActivity;

    invoke-virtual {v0}, Lcom/payu/payuui/Activity/PaymentsActivity;->finish()V

    .line 157
    return-void
.end method

.method public onBackButton(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "alertDialogBuilder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 167
    const-string v0, "leak test"

    const-string v1, "onBackButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-super {p0, p1}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onBackButton(Landroid/app/AlertDialog$Builder;)V

    .line 169
    return-void
.end method

.method public onBackDismiss()V
    .locals 2

    .prologue
    .line 161
    const-string v0, "leak test"

    const-string v1, "onBackDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-super {p0}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onBackDismiss()V

    .line 163
    return-void
.end method

.method public onCBErrorReceived(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "errormsg"    # Ljava/lang/String;

    .prologue
    .line 143
    return-void
.end method

.method public onPaymentFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "payuResponse"    # Ljava/lang/String;
    .param p2, "merchantResponse"    # Ljava/lang/String;

    .prologue
    .line 110
    const-string v1, "leak test"

    const-string v2, "onPaymentFailure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/payu/payuui/Activity/PaymentsActivity$1;->this$0:Lcom/payu/payuui/Activity/PaymentsActivity;

    sget v2, Lcom/payu/payuui/R$string;->cb_result:I

    invoke-virtual {v1, v2}, Lcom/payu/payuui/Activity/PaymentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/payu/payuui/Activity/PaymentsActivity$1;->this$0:Lcom/payu/payuui/Activity/PaymentsActivity;

    sget v2, Lcom/payu/payuui/R$string;->cb_payu_response:I

    invoke-virtual {v1, v2}, Lcom/payu/payuui/Activity/PaymentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v1, p0, Lcom/payu/payuui/Activity/PaymentsActivity$1;->this$0:Lcom/payu/payuui/Activity/PaymentsActivity;

    # getter for: Lcom/payu/payuui/Activity/PaymentsActivity;->storeOneClickHash:I
    invoke-static {v1}, Lcom/payu/payuui/Activity/PaymentsActivity;->access$000(Lcom/payu/payuui/Activity/PaymentsActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/payu/payuui/Activity/PaymentsActivity$1;->this$0:Lcom/payu/payuui/Activity/PaymentsActivity;

    # getter for: Lcom/payu/payuui/Activity/PaymentsActivity;->merchantHash:Ljava/lang/String;
    invoke-static {v1}, Lcom/payu/payuui/Activity/PaymentsActivity;->access$100(Lcom/payu/payuui/Activity/PaymentsActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 116
    const-string v1, "merchant_hash"

    iget-object v2, p0, Lcom/payu/payuui/Activity/PaymentsActivity$1;->this$0:Lcom/payu/payuui/Activity/PaymentsActivity;

    # getter for: Lcom/payu/payuui/Activity/PaymentsActivity;->merchantHash:Ljava/lang/String;
    invoke-static {v2}, Lcom/payu/payuui/Activity/PaymentsActivity;->access$100(Lcom/payu/payuui/Activity/PaymentsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/payu/payuui/Activity/PaymentsActivity$1;->this$0:Lcom/payu/payuui/Activity/PaymentsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/payu/payuui/Activity/PaymentsActivity;->setResult(ILandroid/content/Intent;)V

    .line 120
    return-void
.end method

.method public onPaymentSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "payuResponse"    # Ljava/lang/String;
    .param p2, "merchantResponse"    # Ljava/lang/String;

    .prologue
    .line 130
    const-string v1, "leak test"

    const-string v2, "onpaymentsuccess"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/payu/payuui/Activity/PaymentsActivity$1;->this$0:Lcom/payu/payuui/Activity/PaymentsActivity;

    sget v2, Lcom/payu/payuui/R$string;->cb_result:I

    invoke-virtual {v1, v2}, Lcom/payu/payuui/Activity/PaymentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/payu/payuui/Activity/PaymentsActivity$1;->this$0:Lcom/payu/payuui/Activity/PaymentsActivity;

    sget v2, Lcom/payu/payuui/R$string;->cb_payu_response:I

    invoke-virtual {v1, v2}, Lcom/payu/payuui/Activity/PaymentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/payu/payuui/Activity/PaymentsActivity$1;->this$0:Lcom/payu/payuui/Activity/PaymentsActivity;

    # getter for: Lcom/payu/payuui/Activity/PaymentsActivity;->storeOneClickHash:I
    invoke-static {v1}, Lcom/payu/payuui/Activity/PaymentsActivity;->access$000(Lcom/payu/payuui/Activity/PaymentsActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/payu/payuui/Activity/PaymentsActivity$1;->this$0:Lcom/payu/payuui/Activity/PaymentsActivity;

    # getter for: Lcom/payu/payuui/Activity/PaymentsActivity;->merchantHash:Ljava/lang/String;
    invoke-static {v1}, Lcom/payu/payuui/Activity/PaymentsActivity;->access$100(Lcom/payu/payuui/Activity/PaymentsActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 135
    const-string v1, "merchant_hash"

    iget-object v2, p0, Lcom/payu/payuui/Activity/PaymentsActivity$1;->this$0:Lcom/payu/payuui/Activity/PaymentsActivity;

    # getter for: Lcom/payu/payuui/Activity/PaymentsActivity;->merchantHash:Ljava/lang/String;
    invoke-static {v2}, Lcom/payu/payuui/Activity/PaymentsActivity;->access$100(Lcom/payu/payuui/Activity/PaymentsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/payu/payuui/Activity/PaymentsActivity$1;->this$0:Lcom/payu/payuui/Activity/PaymentsActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/payu/payuui/Activity/PaymentsActivity;->setResult(ILandroid/content/Intent;)V

    .line 139
    return-void
.end method

.method public onPaymentTerminate()V
    .locals 2

    .prologue
    .line 124
    const-string v0, "leak test"

    const-string v1, "onPaymentTerminate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/payu/payuui/Activity/PaymentsActivity$1;->this$0:Lcom/payu/payuui/Activity/PaymentsActivity;

    invoke-virtual {v0}, Lcom/payu/payuui/Activity/PaymentsActivity;->finish()V

    .line 126
    return-void
.end method

.method public setCBProperties(Landroid/webkit/WebView;Lcom/payu/custombrowser/Bank;)V
    .locals 1
    .param p1, "webview"    # Landroid/webkit/WebView;
    .param p2, "payUCustomBrowser"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 148
    new-instance v0, Lcom/payu/custombrowser/PayUWebChromeClient;

    invoke-direct {v0, p2}, Lcom/payu/custombrowser/PayUWebChromeClient;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 150
    return-void
.end method
