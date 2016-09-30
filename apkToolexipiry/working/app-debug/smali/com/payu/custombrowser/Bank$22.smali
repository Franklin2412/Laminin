.class Lcom/payu/custombrowser/Bank$22;
.super Landroid/os/CountDownTimer;
.source "Bank.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->startSnoozeCountDownTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/Bank;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/Bank;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 2344
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$22;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 2352
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$22;->this$0:Lcom/payu/custombrowser/Bank;

    const/4 v1, 0x0

    # setter for: Lcom/payu/custombrowser/Bank;->isSnoozeTimerRunning:Z
    invoke-static {v0, v1}, Lcom/payu/custombrowser/Bank;->access$702(Lcom/payu/custombrowser/Bank;Z)Z

    .line 2353
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$22;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/payu/custombrowser/Bank$22;->this$0:Lcom/payu/custombrowser/Bank;

    iget v1, v1, Lcom/payu/custombrowser/Bank;->snoozeUrlLoadingPercentage:I

    if-ge v0, v1, :cond_0

    .line 2355
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$22;->this$0:Lcom/payu/custombrowser/Bank;

    iget-boolean v0, v0, Lcom/payu/custombrowser/Bank;->isSnoozeWindowVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/Bank$22;->this$0:Lcom/payu/custombrowser/Bank;

    # getter for: Lcom/payu/custombrowser/Bank;->showSnoozeWindow:Z
    invoke-static {v0}, Lcom/payu/custombrowser/Bank;->access$800(Lcom/payu/custombrowser/Bank;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/Bank$22;->this$0:Lcom/payu/custombrowser/Bank;

    # getter for: Lcom/payu/custombrowser/Bank;->isTransactionStatusReceived:Z
    invoke-static {v0}, Lcom/payu/custombrowser/Bank;->access$900(Lcom/payu/custombrowser/Bank;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2358
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$22;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->launchSnoozeWindow()V

    .line 2361
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$22;->this$0:Lcom/payu/custombrowser/Bank;

    # invokes: Lcom/payu/custombrowser/Bank;->stopSnoozeCountDownTimer()V
    invoke-static {v0}, Lcom/payu/custombrowser/Bank;->access$1000(Lcom/payu/custombrowser/Bank;)V

    .line 2362
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .param p1, "l"    # J

    .prologue
    .line 2347
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$22;->this$0:Lcom/payu/custombrowser/Bank;

    const/4 v1, 0x1

    # setter for: Lcom/payu/custombrowser/Bank;->isSnoozeTimerRunning:Z
    invoke-static {v0, v1}, Lcom/payu/custombrowser/Bank;->access$702(Lcom/payu/custombrowser/Bank;Z)Z

    .line 2348
    return-void
.end method
