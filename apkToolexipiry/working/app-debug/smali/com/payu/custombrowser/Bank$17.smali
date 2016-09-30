.class Lcom/payu/custombrowser/Bank$17;
.super Ljava/lang/Object;
.source "Bank.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->onCancel(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/Bank;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 1970
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$17;->this$0:Lcom/payu/custombrowser/Bank;

    iput-object p2, p0, Lcom/payu/custombrowser/Bank$17;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1973
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$17;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/payu/custombrowser/Bank$17;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/payu/custombrowser/Bank$17;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1974
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1975
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$17;->this$0:Lcom/payu/custombrowser/Bank;

    sget v2, Lcom/payu/custombrowser/R$string;->cb_result:I

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$17;->val$result:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1976
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$17;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1977
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$17;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 1979
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
