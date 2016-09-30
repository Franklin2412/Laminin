.class Lcom/payu/custombrowser/Bank$27;
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

.field final synthetic val$cancelTxnSnooze:Landroid/widget/TextView;

.field final synthetic val$dismissSnoozeWindow:Landroid/widget/TextView;

.field final synthetic val$retryAnywayButton:Landroid/widget/Button;

.field final synthetic val$retryTransactionButton:Landroid/widget/Button;

.field final synthetic val$snoozeDialogHeaderText:Landroid/widget/TextView;

.field final synthetic val$snoozeMessageTextView:Landroid/widget/TextView;

.field final synthetic val$snoozeRetryDetailText:Landroid/widget/TextView;

.field final synthetic val$snoozeTransactionButton:Landroid/widget/Button;

.field final synthetic val$transactionSnoozedMessageTextView1:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 2599
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$27;->this$0:Lcom/payu/custombrowser/Bank;

    iput-object p2, p0, Lcom/payu/custombrowser/Bank$27;->val$cancelTxnSnooze:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/payu/custombrowser/Bank$27;->val$dismissSnoozeWindow:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/payu/custombrowser/Bank$27;->val$snoozeTransactionButton:Landroid/widget/Button;

    iput-object p5, p0, Lcom/payu/custombrowser/Bank$27;->val$retryTransactionButton:Landroid/widget/Button;

    iput-object p6, p0, Lcom/payu/custombrowser/Bank$27;->val$snoozeMessageTextView:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/payu/custombrowser/Bank$27;->val$snoozeRetryDetailText:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/payu/custombrowser/Bank$27;->val$snoozeDialogHeaderText:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/payu/custombrowser/Bank$27;->val$transactionSnoozedMessageTextView1:Landroid/widget/TextView;

    iput-object p10, p0, Lcom/payu/custombrowser/Bank$27;->val$retryAnywayButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 2602
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->this$0:Lcom/payu/custombrowser/Bank;

    iget v1, v0, Lcom/payu/custombrowser/Bank;->snoozeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/payu/custombrowser/Bank;->snoozeCount:I

    .line 2603
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v1, "snooze_interaction_time"

    invoke-static {}, Lcom/payu/custombrowser/CustomBrowserMain;->getSystemCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 2604
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->maximiseWebviewHeight()V

    .line 2605
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->this$0:Lcom/payu/custombrowser/Bank;

    iput v6, v0, Lcom/payu/custombrowser/Bank;->frameState:I

    .line 2606
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbSlideBarView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2607
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbSlideBarView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2609
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->onHelpUnavailable()V

    .line 2611
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/payu/custombrowser/Bank;->snoozeClickedTime:J

    .line 2614
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->this$0:Lcom/payu/custombrowser/Bank;

    iput-boolean v6, v0, Lcom/payu/custombrowser/Bank;->isSnoozeBroadCastReceiverRegistered:Z

    .line 2617
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->this$0:Lcom/payu/custombrowser/Bank;

    # setter for: Lcom/payu/custombrowser/Bank;->isPageStoppedForcefully:Z
    invoke-static {v0, v6}, Lcom/payu/custombrowser/Bank;->access$002(Lcom/payu/custombrowser/Bank;Z)Z

    .line 2619
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 2620
    sget-object v0, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserData;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2621
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->bindService()V

    .line 2624
    :cond_1
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->this$0:Lcom/payu/custombrowser/Bank;

    iput-object v7, v0, Lcom/payu/custombrowser/Bank;->mPassword:Ljava/lang/String;

    .line 2626
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank$27;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/Bank;->unregisterBroadcast(Landroid/content/BroadcastReceiver;)V

    .line 2630
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->val$cancelTxnSnooze:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2631
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->val$dismissSnoozeWindow:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2632
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->val$snoozeTransactionButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 2633
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->val$retryTransactionButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 2634
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->val$snoozeMessageTextView:Landroid/widget/TextView;

    const-string v1, "We have paused your transaction because the network was unable to process it now. We will notify you when the network improves."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2636
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->val$snoozeRetryDetailText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2637
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->val$snoozeDialogHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank$27;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/payu/custombrowser/R$string;->cb_transaction_paused:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2638
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->val$transactionSnoozedMessageTextView1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2639
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->val$retryAnywayButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 2642
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v1, ""

    invoke-virtual {v0, v4, v1}, Lcom/payu/custombrowser/Bank;->progressBarVisibilityPayuChrome(ILjava/lang/String;)V

    .line 2645
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v1, "snooze_window_action"

    const-string v2, "snooze_click"

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 2646
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v1, "snooze_load_url"

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$27;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 2649
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->this$0:Lcom/payu/custombrowser/Bank;

    iput-object v7, v0, Lcom/payu/custombrowser/Bank;->slowUserCountDownTimer:Landroid/os/CountDownTimer;

    .line 2652
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$27;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0, v5}, Lcom/payu/custombrowser/Bank;->setCbBlankOverlay(I)V

    .line 2653
    return-void
.end method
