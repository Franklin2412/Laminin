.class Lcom/payu/custombrowser/Bank$5;
.super Ljava/lang/Object;
.source "Bank.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->onPageFinishWebclient(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/Bank;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 912
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$5;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 919
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$5;->this$0:Lcom/payu/custombrowser/Bank;

    # getter for: Lcom/payu/custombrowser/Bank;->isPageStoppedForcefully:Z
    invoke-static {v0}, Lcom/payu/custombrowser/Bank;->access$000(Lcom/payu/custombrowser/Bank;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/Bank$5;->this$0:Lcom/payu/custombrowser/Bank;

    # getter for: Lcom/payu/custombrowser/Bank;->pageStarted:Z
    invoke-static {v0}, Lcom/payu/custombrowser/Bank;->access$100(Lcom/payu/custombrowser/Bank;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/Bank$5;->this$0:Lcom/payu/custombrowser/Bank;

    iget-boolean v0, v0, Lcom/payu/custombrowser/Bank;->isSnoozeWindowVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/Bank$5;->this$0:Lcom/payu/custombrowser/Bank;

    iget-boolean v0, v0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    if-nez v0, :cond_1

    .line 921
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$5;->this$0:Lcom/payu/custombrowser/Bank;

    iget-boolean v0, v0, Lcom/payu/custombrowser/Bank;->isSnoozeWindowVisible:Z

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$5;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v1, "snooze_window_automatically_disappear_time"

    invoke-static {}, Lcom/payu/custombrowser/CustomBrowserMain;->getSystemCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$5;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 928
    :cond_1
    return-void
.end method
