.class Lcom/payu/custombrowser/widgets/SnoozeLoaderView$2;
.super Ljava/util/TimerTask;
.source "SnoozeLoaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/widgets/SnoozeLoaderView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView$2;->this$0:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView$2;->this$0:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    # getter for: Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->blinkPosition:I
    invoke-static {v0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->access$000(Lcom/payu/custombrowser/widgets/SnoozeLoaderView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView$2;->this$0:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    const/4 v1, 0x0

    # setter for: Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->blinkPosition:I
    invoke-static {v0, v1}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->access$002(Lcom/payu/custombrowser/widgets/SnoozeLoaderView;I)I

    .line 239
    :goto_0
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView$2;->this$0:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    # getter for: Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->shouldStartAnimation:Z
    invoke-static {v0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->access$100(Lcom/payu/custombrowser/widgets/SnoozeLoaderView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView$2;->this$0:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    iget-object v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView$2;->this$0:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    # getter for: Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->blinkPosition:I
    invoke-static {v1}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->access$000(Lcom/payu/custombrowser/widgets/SnoozeLoaderView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->updateBar(I)V

    .line 244
    :goto_1
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView$2;->this$0:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    iget-object v1, p0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView$2;->this$0:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    # getter for: Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->blinkPosition:I
    invoke-static {v1}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->access$000(Lcom/payu/custombrowser/widgets/SnoozeLoaderView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    # setter for: Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->blinkPosition:I
    invoke-static {v0, v1}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->access$002(Lcom/payu/custombrowser/widgets/SnoozeLoaderView;I)I

    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView$2;->cancel()Z

    goto :goto_1
.end method
