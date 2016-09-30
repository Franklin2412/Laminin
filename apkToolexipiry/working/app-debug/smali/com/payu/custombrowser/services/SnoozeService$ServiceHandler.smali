.class final Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;
.super Landroid/os/Handler;
.source "SnoozeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/services/SnoozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/services/SnoozeService;


# direct methods
.method public constructor <init>(Lcom/payu/custombrowser/services/SnoozeService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 611
    iput-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    .line 612
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 613
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 621
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    const/4 v1, 0x1

    # setter for: Lcom/payu/custombrowser/services/SnoozeService;->isServiceAlive:Z
    invoke-static {v0, v1}, Lcom/payu/custombrowser/services/SnoozeService;->access$602(Lcom/payu/custombrowser/services/SnoozeService;Z)Z

    .line 623
    iget-object v6, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    new-instance v0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$1;

    const-wide/32 v2, 0x1b7740

    const-wide/16 v4, 0x1388

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$1;-><init>(Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;JJ)V

    # setter for: Lcom/payu/custombrowser/services/SnoozeService;->killSnoozeServiceCounter:Landroid/os/CountDownTimer;
    invoke-static {v6, v0}, Lcom/payu/custombrowser/services/SnoozeService;->access$2202(Lcom/payu/custombrowser/services/SnoozeService;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 652
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->killSnoozeServiceCounter:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->access$2200(Lcom/payu/custombrowser/services/SnoozeService;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 656
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    # setter for: Lcom/payu/custombrowser/services/SnoozeService;->trackWebViewStatusHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/payu/custombrowser/services/SnoozeService;->access$2602(Lcom/payu/custombrowser/services/SnoozeService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 657
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # getter for: Lcom/payu/custombrowser/services/SnoozeService;->trackWebViewStatusHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->access$2600(Lcom/payu/custombrowser/services/SnoozeService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$2;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler$2;-><init>(Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 689
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    # invokes: Lcom/payu/custombrowser/services/SnoozeService;->calculateInternetSpeed()V
    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->access$3000(Lcom/payu/custombrowser/services/SnoozeService;)V

    .line 690
    return-void
.end method
