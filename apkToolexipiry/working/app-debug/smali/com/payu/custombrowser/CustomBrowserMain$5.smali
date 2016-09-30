.class Lcom/payu/custombrowser/CustomBrowserMain$5;
.super Landroid/os/CountDownTimer;
.source "CustomBrowserMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/CustomBrowserMain;->callTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/CustomBrowserMain;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/CustomBrowserMain;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/CustomBrowserMain;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 807
    iput-object p1, p0, Lcom/payu/custombrowser/CustomBrowserMain$5;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 814
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$5;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v0, v0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$5;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v0, v0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/payu/custombrowser/CustomBrowserMain$5$1;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/CustomBrowserMain$5$1;-><init>(Lcom/payu/custombrowser/CustomBrowserMain$5;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 826
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 811
    return-void
.end method
