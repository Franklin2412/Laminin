.class Lcom/payu/custombrowser/PayUCBLifecycle$6;
.super Ljava/lang/Object;
.source "PayUCBLifecycle.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/PayUCBLifecycle;->cbOldFlowOnCreateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/PayUCBLifecycle;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/PayUCBLifecycle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/PayUCBLifecycle;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$6;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 443
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_1

    const/4 v3, 0x4

    if-ne p2, v3, :cond_1

    .line 444
    iget-object v3, p0, Lcom/payu/custombrowser/PayUCBLifecycle$6;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-virtual {v3}, Lcom/payu/custombrowser/PayUCBLifecycle;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "backButton"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/payu/custombrowser/PayUCBLifecycle$6;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v3, v3, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 446
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 447
    const-string v2, "Do you really want to cancel the transaction ?"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 448
    const-string v2, "Ok"

    new-instance v3, Lcom/payu/custombrowser/PayUCBLifecycle$6$1;

    invoke-direct {v3, p0}, Lcom/payu/custombrowser/PayUCBLifecycle$6$1;-><init>(Lcom/payu/custombrowser/PayUCBLifecycle$6;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 459
    const-string v2, "Cancel"

    new-instance v3, Lcom/payu/custombrowser/PayUCBLifecycle$6$2;

    invoke-direct {v3, p0}, Lcom/payu/custombrowser/PayUCBLifecycle$6$2;-><init>(Lcom/payu/custombrowser/PayUCBLifecycle$6;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 470
    iget-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle$6;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    const-string v3, "user_input"

    const-string v4, "payu_back_button"

    invoke-virtual {v2, v3, v4}, Lcom/payu/custombrowser/PayUCBLifecycle;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle$6;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-virtual {v2, v0}, Lcom/payu/custombrowser/PayUCBLifecycle;->onBackPressed(Landroid/app/AlertDialog$Builder;)V

    .line 472
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 480
    .end local v0    # "alertDialog":Landroid/app/AlertDialog$Builder;
    :goto_0
    return v1

    .line 476
    :cond_0
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$6;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    const-string v3, "user_input"

    const-string v4, "m_back_button"

    invoke-virtual {v1, v3, v4}, Lcom/payu/custombrowser/PayUCBLifecycle;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$6;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v1, v1, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    :cond_1
    move v1, v2

    .line 480
    goto :goto_0
.end method
