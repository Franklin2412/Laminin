.class Lcom/payu/custombrowser/PayUCBLifecycle$6$1;
.super Ljava/lang/Object;
.source "PayUCBLifecycle.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/PayUCBLifecycle$6;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/payu/custombrowser/PayUCBLifecycle$6;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/PayUCBLifecycle$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/payu/custombrowser/PayUCBLifecycle$6;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$6$1;->this$1:Lcom/payu/custombrowser/PayUCBLifecycle$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 451
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle$6$1;->this$1:Lcom/payu/custombrowser/PayUCBLifecycle$6;

    iget-object v0, v0, Lcom/payu/custombrowser/PayUCBLifecycle$6;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    const-string v1, "user_input"

    const-string v2, "back_button_ok"

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/PayUCBLifecycle;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 453
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle$6$1;->this$1:Lcom/payu/custombrowser/PayUCBLifecycle$6;

    iget-object v0, v0, Lcom/payu/custombrowser/PayUCBLifecycle$6;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-virtual {v0}, Lcom/payu/custombrowser/PayUCBLifecycle;->onBackApproved()V

    .line 456
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle$6$1;->this$1:Lcom/payu/custombrowser/PayUCBLifecycle$6;

    iget-object v0, v0, Lcom/payu/custombrowser/PayUCBLifecycle$6;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v0, v0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 457
    return-void
.end method
