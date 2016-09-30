.class Lcom/payu/payuui/Activity/OldPaymentActivity$2$2;
.super Ljava/lang/Object;
.source "OldPaymentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuui/Activity/OldPaymentActivity$2;->onFailure(Ljava/lang/String;)V
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
    .line 236
    iput-object p1, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$2$2;->this$1:Lcom/payu/payuui/Activity/OldPaymentActivity$2;

    iput-object p2, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$2$2;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 240
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "result"

    iget-object v2, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$2$2;->val$result:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    iget-object v1, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$2$2;->this$1:Lcom/payu/payuui/Activity/OldPaymentActivity$2;

    iget-object v1, v1, Lcom/payu/payuui/Activity/OldPaymentActivity$2;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/payu/payuui/Activity/OldPaymentActivity;->setResult(ILandroid/content/Intent;)V

    .line 242
    iget-object v1, p0, Lcom/payu/payuui/Activity/OldPaymentActivity$2$2;->this$1:Lcom/payu/payuui/Activity/OldPaymentActivity$2;

    iget-object v1, v1, Lcom/payu/payuui/Activity/OldPaymentActivity$2;->this$0:Lcom/payu/payuui/Activity/OldPaymentActivity;

    invoke-virtual {v1}, Lcom/payu/payuui/Activity/OldPaymentActivity;->finish()V

    .line 243
    return-void
.end method
