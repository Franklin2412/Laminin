.class Lcom/payu/custombrowser/services/SnoozeService$3;
.super Landroid/os/CountDownTimer;
.source "SnoozeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/services/SnoozeService;->downloadImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/services/SnoozeService;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/services/SnoozeService;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/services/SnoozeService;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 274
    iput-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService$3;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService$3;->cancel()V

    .line 282
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$3;->this$0:Lcom/payu/custombrowser/services/SnoozeService;

    const/4 v1, 0x1

    # setter for: Lcom/payu/custombrowser/services/SnoozeService;->isImageDownloadTimedOut:Z
    invoke-static {v0, v1}, Lcom/payu/custombrowser/services/SnoozeService;->access$802(Lcom/payu/custombrowser/services/SnoozeService;Z)Z

    .line 283
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "l"    # J

    .prologue
    .line 277
    return-void
.end method
