.class Lcom/payu/custombrowser/CBActivity$6;
.super Ljava/lang/Object;
.source "CBActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 342
    iput-object p1, p0, Lcom/payu/custombrowser/CBActivity$6;->this$0:Lcom/payu/custombrowser/CBActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity$6;->this$0:Lcom/payu/custombrowser/CBActivity;

    # getter for: Lcom/payu/custombrowser/CBActivity;->snoozeDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/payu/custombrowser/CBActivity;->access$100(Lcom/payu/custombrowser/CBActivity;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 346
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity$6;->this$0:Lcom/payu/custombrowser/CBActivity;

    # getter for: Lcom/payu/custombrowser/CBActivity;->snoozeDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/payu/custombrowser/CBActivity;->access$100(Lcom/payu/custombrowser/CBActivity;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->cancel()V

    .line 348
    return-void
.end method
