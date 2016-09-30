.class Lcom/payu/custombrowser/CustomBrowserMain$3;
.super Ljava/util/TimerTask;
.source "CustomBrowserMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/CustomBrowserMain;->showProgress(Landroid/content/Context;)Landroid/app/ProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field i:I

.field final synthetic this$0:Lcom/payu/custombrowser/CustomBrowserMain;

.field final synthetic val$drawables:[Landroid/graphics/drawable/Drawable;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/CustomBrowserMain;[Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/payu/custombrowser/CustomBrowserMain;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/payu/custombrowser/CustomBrowserMain$3;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iput-object p2, p0, Lcom/payu/custombrowser/CustomBrowserMain$3;->val$drawables:[Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/payu/custombrowser/CustomBrowserMain$3;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 543
    const/4 v0, -0x1

    iput v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$3;->i:I

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 2

    .prologue
    .line 547
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$3;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v0, v0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$3;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v0, v0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/payu/custombrowser/CustomBrowserMain$3$1;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/CustomBrowserMain$3$1;-><init>(Lcom/payu/custombrowser/CustomBrowserMain$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    :cond_0
    monitor-exit p0

    return-void

    .line 547
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
