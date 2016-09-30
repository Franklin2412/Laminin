.class Lcom/payu/payuui/Activity/OldPaymentActivity$2;
.super Ljava/lang/Object;
.source "OldPaymentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuui/Activity/OldPaymentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;


# direct methods
.method constructor <init>(Lcom/payu/payuui/Activity/OldPaymentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/payuui/Activity/OldPaymentActivity;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$2;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 231
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/payu/payuui/Activity/OldPaymentActivity$2;->onFailure(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$2;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    new-instance v1, Lcom/payu/payuui/Activity/OldPaymentActivity$2$2;

    invoke-direct {v1, p0, p1}, Lcom/payu/payuui/Activity/OldPaymentActivity$2$2;-><init>(Lcom/payu/payuui/Activity/OldPaymentActivity$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/payu/payuui/Activity/OldPaymentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 245
    return-void
.end method

.method public onMerchantHashReceived(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$2;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    new-instance v1, Lcom/payu/payuui/Activity/OldPaymentActivity$2$3;

    invoke-direct {v1, p0, p1}, Lcom/payu/payuui/Activity/OldPaymentActivity$2$3;-><init>(Lcom/payu/payuui/Activity/OldPaymentActivity$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/payu/payuui/Activity/OldPaymentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 271
    return-void
.end method

.method public onSuccess()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 209
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/payu/payuui/Activity/OldPaymentActivity$2;->onSuccess(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$2;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    new-instance v1, Lcom/payu/payuui/Activity/OldPaymentActivity$2$1;

    invoke-direct {v1, p0, p1}, Lcom/payu/payuui/Activity/OldPaymentActivity$2$1;-><init>(Lcom/payu/payuui/Activity/OldPaymentActivity$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/payu/payuui/Activity/OldPaymentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 227
    return-void
.end method
