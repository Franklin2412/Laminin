.class Lcom/payu/payuui/Activity/OldPaymentActivity$2$1;
.super Ljava/lang/Object;
.source "OldPaymentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuui/Activity/OldPaymentActivity$2;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/payu/payuui/Activity/OldPaymentActivity$2;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/payu/payuui/Activity/OldPaymentActivity$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/payu/payuui/Activity/OldPaymentActivity$2;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$2$1;->this$1:Lcom/payu/payuui/Activity/OldPaymentActivity$2;

    iput-object p2, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$2$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 217
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 218
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "result"

    iget-object v2, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$2$1;->val$result:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    iget-object v1, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$2$1;->this$1:Lcom/payu/payuui/Activity/OldPaymentActivity$2;

    iget-object v1, v1, Lcom/payu/payuui/Activity/OldPaymentActivity$2;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    # getter for: Lcom/payu/payuui/Activity/OldPaymentActivity;->storeOneClickHash:I
    invoke-static {v1}, Lcom/payu/payuui/Activity/OldPaymentActivity;->access$100(Lcom/payu/payuui/Activity/OldPaymentActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$2$1;->this$1:Lcom/payu/payuui/Activity/OldPaymentActivity$2;

    iget-object v1, v1, Lcom/payu/payuui/Activity/OldPaymentActivity$2;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    # getter for: Lcom/payu/payuui/Activity/OldPaymentActivity;->merchantHash:Ljava/lang/String;
    invoke-static {v1}, Lcom/payu/payuui/Activity/OldPaymentActivity;->access$200(Lcom/payu/payuui/Activity/OldPaymentActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 220
    const-string v1, "merchant_hash"

    iget-object v2, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$2$1;->this$1:Lcom/payu/payuui/Activity/OldPaymentActivity$2;

    iget-object v2, v2, Lcom/payu/payuui/Activity/OldPaymentActivity$2;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    # getter for: Lcom/payu/payuui/Activity/OldPaymentActivity;->merchantHash:Ljava/lang/String;
    invoke-static {v2}, Lcom/payu/payuui/Activity/OldPaymentActivity;->access$200(Lcom/payu/payuui/Activity/OldPaymentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$2$1;->this$1:Lcom/payu/payuui/Activity/OldPaymentActivity$2;

    iget-object v1, v1, Lcom/payu/payuui/Activity/OldPaymentActivity$2;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/payu/payuui/Activity/OldPaymentActivity;->setResult(ILandroid/content/Intent;)V

    .line 223
    iget-object v1, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$2$1;->this$1:Lcom/payu/payuui/Activity/OldPaymentActivity$2;

    iget-object v1, v1, Lcom/payu/payuui/Activity/OldPaymentActivity$2;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    invoke-virtual {v1}, Lcom/payu/payuui/Activity/OldPaymentActivity;->finish()V

    .line 224
    return-void
.end method
