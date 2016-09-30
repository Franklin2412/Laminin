.class Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$1;
.super Landroid/os/CountDownTimer;
.source "SnoozeService.java"


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
.method constructor <init>(Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;JJ)V
    .locals 0
    .param p1, "this$1"    # Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 623
    iput-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$1;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 637
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$1;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->isWebViewAlive:Z
    invoke-static {v1}, Lcom/payu/custombrowser/services/SnoozeService;->access$2000(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$1;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->isNotificationIntentPrepared:Z
    invoke-static {v1}, Lcom/payu/custombrowser/services/SnoozeService;->access$2400(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 639
    new-instance v0, Landroid/content/Intent;

    const-string v1, "webview_status_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 640
    .local v0, "broadCastIntent":Landroid/content/Intent;
    const-string v1, "snoozeServiceStatus"

    const-string v2, "snoozeServiceDead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$1;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 645
    .end local v0    # "broadCastIntent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$1;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->isNotificationIntentPrepared:Z
    invoke-static {v1}, Lcom/payu/custombrowser/services/SnoozeService;->access$2400(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 647
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$1;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # invokes: Lcom/payu/custombrowser/services/SnoozeService;->launchNoInternetNotification()V
    invoke-static {v1}, Lcom/payu/custombrowser/services/SnoozeService;->access$2500(Lcom/payu/custombrowser/services/SnoozeService;)V

    .line 649
    :cond_1
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$1;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v1, v1, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v1}, Lcom/payu/custombrowser/services/SnoozeService;->killSnoozeService()V

    .line 650
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "l"    # J

    .prologue
    .line 626
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$1;->this$1:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v0, v0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    const-wide/32 v2, 0x1b7740

    sub-long/2addr v2, p1

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    # setter for: Lcom/payu/custombrowser/services/SnoozeService;->timeToNotify:J
    invoke-static {v0, v2, v3}, Lcom/payu/custombrowser/services/SnoozeService;->access$2302(Lcom/payu/custombrowser/services/SnoozeService;J)J

    .line 627
    return-void
.end method
