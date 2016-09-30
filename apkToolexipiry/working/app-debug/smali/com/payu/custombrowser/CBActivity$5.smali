.class Lcom/payu/custombrowser/CBActivity$5;
.super Ljava/lang/Object;
.source "CBActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/CBActivity;->showTransactionStatusDialog(Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/CBActivity;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/CBActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/CBActivity;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/payu/custombrowser/CBActivity$5;->this$0:Lcom/payu/custombrowser/CBActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity$5;->this$0:Lcom/payu/custombrowser/CBActivity;

    # getter for: Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;
    invoke-static {v0}, Lcom/payu/custombrowser/CBActivity;->access$000(Lcom/payu/custombrowser/CBActivity;)Lcom/payu/custombrowser/Bank;

    move-result-object v0

    const-string v1, "snooze_interaction_time"

    invoke-static {}, Lcom/payu/custombrowser/Bank;->getSystemCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity$5;->this$0:Lcom/payu/custombrowser/CBActivity;

    # getter for: Lcom/payu/custombrowser/CBActivity;->payUCustomBrowser:Lcom/payu/custombrowser/Bank;
    invoke-static {v0}, Lcom/payu/custombrowser/CBActivity;->access$000(Lcom/payu/custombrowser/CBActivity;)Lcom/payu/custombrowser/Bank;

    move-result-object v0

    const-string v1, "snooze_window_action"

    const-string v2, "snooze_cancel_transaction_click"

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity$5;->this$0:Lcom/payu/custombrowser/CBActivity;

    # getter for: Lcom/payu/custombrowser/CBActivity;->snoozeDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/payu/custombrowser/CBActivity;->access$100(Lcom/payu/custombrowser/CBActivity;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 338
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity$5;->this$0:Lcom/payu/custombrowser/CBActivity;

    # getter for: Lcom/payu/custombrowser/CBActivity;->snoozeDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/payu/custombrowser/CBActivity;->access$100(Lcom/payu/custombrowser/CBActivity;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->cancel()V

    .line 339
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity$5;->this$0:Lcom/payu/custombrowser/CBActivity;

    invoke-virtual {v0}, Lcom/payu/custombrowser/CBActivity;->finish()V

    .line 340
    return-void
.end method
