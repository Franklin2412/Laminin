.class Lcom/payu/custombrowser/Bank$1;
.super Ljava/lang/Object;
.source "Bank.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->showCustomBrowser(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/Bank;

.field final synthetic val$showCustomBrowser:Z


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$1;->this$0:Lcom/payu/custombrowser/Bank;

    iput-boolean p2, p0, Lcom/payu/custombrowser/Bank$1;->val$showCustomBrowser:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 400
    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank$1;->val$showCustomBrowser:Z

    if-nez v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$1;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->maximiseWebviewHeight()V

    .line 402
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$1;->this$0:Lcom/payu/custombrowser/Bank;

    const/4 v2, 0x1

    iput v2, v1, Lcom/payu/custombrowser/Bank;->frameState:I

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$1;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->cbSlideBarView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$1;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->cbSlideBarView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$1;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->onHelpUnavailable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :cond_1
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
