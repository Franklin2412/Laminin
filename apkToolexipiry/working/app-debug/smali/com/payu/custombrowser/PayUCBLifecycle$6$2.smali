.class Lcom/payu/custombrowser/PayUCBLifecycle$6$2;
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
    .line 459
    iput-object p1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$6$2;->this$1:Lcom/payu/custombrowser/PayUCBLifecycle$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 462
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle$6$2;->this$1:Lcom/payu/custombrowser/PayUCBLifecycle$6;

    iget-object v0, v0, Lcom/payu/custombrowser/PayUCBLifecycle$6;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    const-string v1, "user_input"

    const-string v2, "back_button_cancel"

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/PayUCBLifecycle;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle$6$2;->this$1:Lcom/payu/custombrowser/PayUCBLifecycle$6;

    iget-object v0, v0, Lcom/payu/custombrowser/PayUCBLifecycle$6;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-virtual {v0}, Lcom/payu/custombrowser/PayUCBLifecycle;->onBackCancelled()V

    .line 464
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 467
    return-void
.end method
