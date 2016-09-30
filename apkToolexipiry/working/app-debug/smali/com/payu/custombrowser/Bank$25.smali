.class Lcom/payu/custombrowser/Bank$25;
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


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 2534
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$25;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2537
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->this$0:Lcom/payu/custombrowser/Bank;

    iget-boolean v0, v0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    if-eqz v0, :cond_0

    .line 2538
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->this$0:Lcom/payu/custombrowser/Bank;

    iget v1, v0, Lcom/payu/custombrowser/Bank;->snoozeCountBackwardJourney:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/payu/custombrowser/Bank;->snoozeCountBackwardJourney:I

    .line 2544
    :goto_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v1, "snooze_interaction_time"

    invoke-static {}, Lcom/payu/custombrowser/CustomBrowserMain;->getSystemCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->this$0:Lcom/payu/custombrowser/Bank;

    iget-boolean v0, v0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    if-eqz v0, :cond_1

    .line 2551
    :goto_1
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 2552
    return-void

    .line 2540
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->this$0:Lcom/payu/custombrowser/Bank;

    iget v1, v0, Lcom/payu/custombrowser/Bank;->snoozeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/payu/custombrowser/Bank;->snoozeCount:I

    goto :goto_0

    .line 2549
    :cond_1
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$25;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v1, "snooze_window_action"

    const-string v2, "snooze_cancel_window_click"

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
