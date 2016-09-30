.class Lcom/payu/custombrowser/Bank$7;
.super Landroid/os/CountDownTimer;
.source "Bank.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->startPayUChromeLoaderEnableTimer()V
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
    .line 991
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$7;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 999
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$7;->this$0:Lcom/payu/custombrowser/Bank;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->progressBarVisibilityPayuChrome(ILjava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$7;->this$0:Lcom/payu/custombrowser/Bank;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/payu/custombrowser/Bank;->forwardJourneyForChromeLoaderIsComplete:Z

    .line 1001
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 995
    return-void
.end method
