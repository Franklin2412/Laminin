.class Lcom/payu/custombrowser/Bank$19;
.super Ljava/util/TimerTask;
.source "Bank.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->enter_otp(Ljava/lang/String;)V
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
    .line 2133
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$19;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 2

    .prologue
    .line 2137
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$19;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2138
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$19;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank$19;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->enterOtpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2140
    :cond_0
    monitor-exit p0

    return-void

    .line 2137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
