.class Lcom/payu/custombrowser/Bank$23;
.super Ljava/lang/Object;
.source "Bank.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->launchSnoozeWindow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/Bank;

.field final synthetic val$snoozeDialogHeaderText:Landroid/widget/TextView;

.field final synthetic val$snoozeMessageTextView:Landroid/widget/TextView;

.field final synthetic val$snoozeTransactionButton:Landroid/widget/Button;

.field final synthetic val$tConfirm:Landroid/widget/TextView;

.field final synthetic val$tNConfirm:Landroid/widget/TextView;

.field final synthetic val$transactionSnoozedMessageTextView1:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 2495
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$23;->this$0:Lcom/payu/custombrowser/Bank;

    iput-object p2, p0, Lcom/payu/custombrowser/Bank$23;->val$snoozeDialogHeaderText:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/payu/custombrowser/Bank$23;->val$snoozeMessageTextView:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/payu/custombrowser/Bank$23;->val$snoozeTransactionButton:Landroid/widget/Button;

    iput-object p5, p0, Lcom/payu/custombrowser/Bank$23;->val$transactionSnoozedMessageTextView1:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/payu/custombrowser/Bank$23;->val$tConfirm:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/payu/custombrowser/Bank$23;->val$tNConfirm:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 2499
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$23;->this$0:Lcom/payu/custombrowser/Bank;

    sget-object v1, Lcom/payu/custombrowser/util/CBAnalyticsConstant;->SNOOZE_BACKWARD_WINDOW_ACTION:Ljava/lang/String;

    const-string v2, "confirm_deduction_y"

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 2501
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$23;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->waitingOTPTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2502
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$23;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->waitingOTPTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2503
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$23;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->waitingOTPTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 2505
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$23;->this$0:Lcom/payu/custombrowser/Bank;

    iget v1, v0, Lcom/payu/custombrowser/Bank;->snoozeCountBackwardJourney:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/payu/custombrowser/Bank;->snoozeCountBackwardJourney:I

    .line 2509
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$23;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2510
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$23;->val$snoozeDialogHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank$23;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/payu/custombrowser/R$string;->cb_confirm_transaction:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2511
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$23;->val$snoozeMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank$23;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    sget v2, Lcom/payu/custombrowser/R$string;->cb_transaction_status:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2512
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$23;->this$0:Lcom/payu/custombrowser/Bank;

    # getter for: Lcom/payu/custombrowser/Bank;->snoozeLoaderView:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;
    invoke-static {v0}, Lcom/payu/custombrowser/Bank;->access$1100(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->setVisibility(I)V

    .line 2513
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$23;->this$0:Lcom/payu/custombrowser/Bank;

    # getter for: Lcom/payu/custombrowser/Bank;->snoozeLoaderView:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;
    invoke-static {v0}, Lcom/payu/custombrowser/Bank;->access$1100(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->startAnimation()V

    .line 2514
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$23;->val$snoozeTransactionButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2515
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$23;->val$transactionSnoozedMessageTextView1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2516
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$23;->val$tConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2517
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$23;->val$tNConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2518
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$23;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank$23;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/payu/custombrowser/R$string;->cb_confirm_transaction:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/Bank;->startSnoozeServiceVerifyPayment(Ljava/lang/String;)V

    .line 2519
    return-void
.end method
