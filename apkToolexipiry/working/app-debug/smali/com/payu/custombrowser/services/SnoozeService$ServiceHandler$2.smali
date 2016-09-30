.class Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$2;
.super Ljava/lang/Object;
.source "SnoozeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    .prologue
    .line 657
    iput-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$2;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 660
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$2;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->isServiceAlive:Z
    invoke-static {v1}, Lcom/payu/custombrowser/services/SnoozeService;->access$600(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 661
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$2;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->broadCastingMessage:Ljava/lang/String;
    invoke-static {v1}, Lcom/payu/custombrowser/services/SnoozeService;->access$2800(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$2;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v2, v2, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->receivedMessage:Ljava/lang/String;
    invoke-static {v2}, Lcom/payu/custombrowser/services/SnoozeService;->access$2700(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 663
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$2;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    const/4 v2, 0x1

    # setter for: Lcom/payu/custombrowser/services/SnoozeService;->isWebViewAlive:Z
    invoke-static {v1, v2}, Lcom/payu/custombrowser/services/SnoozeService;->access$2002(Lcom/payu/custombrowser/services/SnoozeService;Z)Z

    .line 675
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$2;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->trackWebViewStatusHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/payu/custombrowser/services/SnoozeService;->access$2600(Lcom/payu/custombrowser/services/SnoozeService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 678
    new-instance v0, Landroid/content/Intent;

    const-string v1, "webview_status_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 679
    .local v0, "broadCastIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$2;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/payu/custombrowser/services/SnoozeService;->broadCastingMessage:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/payu/custombrowser/services/SnoozeService;->access$2802(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;)Ljava/lang/String;

    .line 680
    const-string v1, "snooze_broad_cast_message"

    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$2;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v2, v2, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->broadCastingMessage:Ljava/lang/String;
    invoke-static {v2}, Lcom/payu/custombrowser/services/SnoozeService;->access$2800(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$2;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 684
    .end local v0    # "broadCastIntent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 665
    :cond_2
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$2;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    const/4 v2, 0x0

    # setter for: Lcom/payu/custombrowser/services/SnoozeService;->isWebViewAlive:Z
    invoke-static {v1, v2}, Lcom/payu/custombrowser/services/SnoozeService;->access$2002(Lcom/payu/custombrowser/services/SnoozeService;Z)Z

    .line 666
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$2;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->isServiceAlive:Z
    invoke-static {v1}, Lcom/payu/custombrowser/services/SnoozeService;->access$600(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$2;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->verifyPaymentCheck:Z
    invoke-static {v1}, Lcom/payu/custombrowser/services/SnoozeService;->access$1800(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$2;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->isNotificationIntentPrepared:Z
    invoke-static {v1}, Lcom/payu/custombrowser/services/SnoozeService;->access$2400(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$2;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->isWebViewIntentPrepared:Z
    invoke-static {v1}, Lcom/payu/custombrowser/services/SnoozeService;->access$2900(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 667
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$2;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$2;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v2, v2, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->payuResponse:Ljava/lang/String;
    invoke-static {v2}, Lcom/payu/custombrowser/services/SnoozeService;->access$400(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/payu/custombrowser/services/SnoozeService;->launchNotificationTransactionUpdate(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/payu/custombrowser/services/SnoozeService;->access$500(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 668
    :cond_3
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$2;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->isServiceAlive:Z
    invoke-static {v1}, Lcom/payu/custombrowser/services/SnoozeService;->access$600(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$2;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->isNotificationIntentPrepared:Z
    invoke-static {v1}, Lcom/payu/custombrowser/services/SnoozeService;->access$2400(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$2;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->isWebViewIntentPrepared:Z
    invoke-static {v1}, Lcom/payu/custombrowser/services/SnoozeService;->access$2900(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$2;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$2;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v2, v2, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->isWebViewAlive:Z
    invoke-static {v2}, Lcom/payu/custombrowser/services/SnoozeService;->access$2000(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v2

    # invokes: Lcom/payu/custombrowser/services/SnoozeService;->launchNotification(Z)V
    invoke-static {v1, v2}, Lcom/payu/custombrowser/services/SnoozeService;->access$2100(Lcom/payu/custombrowser/services/SnoozeService;Z)V

    goto/16 :goto_0
.end method
