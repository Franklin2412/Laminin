.class Lcom/payu/custombrowser/Bank$2;
.super Ljava/lang/Object;
.source "Bank.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->onProgressChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/Bank;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$2;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$2;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/Bank$2;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/Bank$2;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/Bank$2;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$2;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbWebPageProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$2;->this$0:Lcom/payu/custombrowser/Bank;

    const/4 v1, 0x0

    iput v1, v0, Lcom/payu/custombrowser/Bank;->lastProgress:I

    .line 535
    :cond_0
    return-void
.end method
