.class Lcom/payu/custombrowser/CBActivity$7;
.super Ljava/lang/Object;
.source "CBActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 353
    iput-object p1, p0, Lcom/payu/custombrowser/CBActivity$7;->this$0:Lcom/payu/custombrowser/CBActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity$7;->this$0:Lcom/payu/custombrowser/CBActivity;

    # getter for: Lcom/payu/custombrowser/CBActivity;->snoozeDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/payu/custombrowser/CBActivity;->access$100(Lcom/payu/custombrowser/CBActivity;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity$7;->this$0:Lcom/payu/custombrowser/CBActivity;

    # getter for: Lcom/payu/custombrowser/CBActivity;->snoozeDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/payu/custombrowser/CBActivity;->access$100(Lcom/payu/custombrowser/CBActivity;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity$7;->this$0:Lcom/payu/custombrowser/CBActivity;

    # getter for: Lcom/payu/custombrowser/CBActivity;->snoozeDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/payu/custombrowser/CBActivity;->access$100(Lcom/payu/custombrowser/CBActivity;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->cancel()V

    .line 358
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity$7;->this$0:Lcom/payu/custombrowser/CBActivity;

    # getter for: Lcom/payu/custombrowser/CBActivity;->snoozeDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/payu/custombrowser/CBActivity;->access$100(Lcom/payu/custombrowser/CBActivity;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 359
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity$7;->this$0:Lcom/payu/custombrowser/CBActivity;

    invoke-virtual {v0}, Lcom/payu/custombrowser/CBActivity;->finish()V

    .line 361
    :cond_0
    return-void
.end method
