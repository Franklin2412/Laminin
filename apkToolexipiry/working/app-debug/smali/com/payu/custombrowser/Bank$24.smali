.class Lcom/payu/custombrowser/Bank$24;
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
    .line 2523
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$24;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2526
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$24;->this$0:Lcom/payu/custombrowser/Bank;

    iget v1, v0, Lcom/payu/custombrowser/Bank;->snoozeCountBackwardJourney:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/payu/custombrowser/Bank;->snoozeCountBackwardJourney:I

    .line 2529
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$24;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 2530
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$24;->this$0:Lcom/payu/custombrowser/Bank;

    sget-object v1, Lcom/payu/custombrowser/util/CBAnalyticsConstant;->SNOOZE_BACKWARD_WINDOW_ACTION:Ljava/lang/String;

    const-string v2, "confirm_deduction_n"

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 2532
    return-void
.end method
