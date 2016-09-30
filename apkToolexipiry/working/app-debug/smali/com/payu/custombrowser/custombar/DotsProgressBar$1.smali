.class Lcom/payu/custombrowser/custombar/DotsProgressBar$1;
.super Ljava/lang/Object;
.source "DotsProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/custombar/DotsProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/custombar/DotsProgressBar;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/custombar/DotsProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/custombar/DotsProgressBar;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->this$0:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 57
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->this$0:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    iget-object v1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->this$0:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    # getter for: Lcom/payu/custombrowser/custombar/DotsProgressBar;->mIndex:I
    invoke-static {v1}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->access$000(Lcom/payu/custombrowser/custombar/DotsProgressBar;)I

    move-result v1

    iget-object v2, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->this$0:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    # getter for: Lcom/payu/custombrowser/custombar/DotsProgressBar;->step:I
    invoke-static {v2}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->access$100(Lcom/payu/custombrowser/custombar/DotsProgressBar;)I

    move-result v2

    add-int/2addr v1, v2

    # setter for: Lcom/payu/custombrowser/custombar/DotsProgressBar;->mIndex:I
    invoke-static {v0, v1}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->access$002(Lcom/payu/custombrowser/custombar/DotsProgressBar;I)I

    .line 58
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->this$0:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    # getter for: Lcom/payu/custombrowser/custombar/DotsProgressBar;->mIndex:I
    invoke-static {v0}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->access$000(Lcom/payu/custombrowser/custombar/DotsProgressBar;)I

    move-result v0

    if-gez v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->this$0:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    # setter for: Lcom/payu/custombrowser/custombar/DotsProgressBar;->mIndex:I
    invoke-static {v0, v3}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->access$002(Lcom/payu/custombrowser/custombar/DotsProgressBar;I)I

    .line 60
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->this$0:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    # setter for: Lcom/payu/custombrowser/custombar/DotsProgressBar;->step:I
    invoke-static {v0, v3}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->access$102(Lcom/payu/custombrowser/custombar/DotsProgressBar;I)I

    .line 67
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->this$0:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    # getter for: Lcom/payu/custombrowser/custombar/DotsProgressBar;->isDotProgressStopped:Z
    invoke-static {v0}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->access$300(Lcom/payu/custombrowser/custombar/DotsProgressBar;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->this$0:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    invoke-virtual {v0}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->invalidate()V

    .line 69
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->this$0:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    # getter for: Lcom/payu/custombrowser/custombar/DotsProgressBar;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->access$500(Lcom/payu/custombrowser/custombar/DotsProgressBar;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->this$0:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    # getter for: Lcom/payu/custombrowser/custombar/DotsProgressBar;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->access$400(Lcom/payu/custombrowser/custombar/DotsProgressBar;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    :cond_1
    return-void

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->this$0:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    # getter for: Lcom/payu/custombrowser/custombar/DotsProgressBar;->mIndex:I
    invoke-static {v0}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->access$000(Lcom/payu/custombrowser/custombar/DotsProgressBar;)I

    move-result v0

    iget-object v1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->this$0:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    # getter for: Lcom/payu/custombrowser/custombar/DotsProgressBar;->mDotCount:I
    invoke-static {v1}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->access$200(Lcom/payu/custombrowser/custombar/DotsProgressBar;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->this$0:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    const/4 v1, 0x0

    # setter for: Lcom/payu/custombrowser/custombar/DotsProgressBar;->mIndex:I
    invoke-static {v0, v1}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->access$002(Lcom/payu/custombrowser/custombar/DotsProgressBar;I)I

    .line 64
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->this$0:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    # setter for: Lcom/payu/custombrowser/custombar/DotsProgressBar;->step:I
    invoke-static {v0, v3}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->access$102(Lcom/payu/custombrowser/custombar/DotsProgressBar;I)I

    goto :goto_0
.end method
