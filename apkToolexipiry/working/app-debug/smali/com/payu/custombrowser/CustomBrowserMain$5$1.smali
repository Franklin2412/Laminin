.class Lcom/payu/custombrowser/CustomBrowserMain$5$1;
.super Ljava/lang/Object;
.source "CustomBrowserMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/CustomBrowserMain$5;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/payu/custombrowser/CustomBrowserMain$5;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/CustomBrowserMain$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/payu/custombrowser/CustomBrowserMain$5;

    .prologue
    .line 815
    iput-object p1, p0, Lcom/payu/custombrowser/CustomBrowserMain$5$1;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$5$1;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$5;

    iget-object v0, v0, Lcom/payu/custombrowser/CustomBrowserMain$5;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v0, v0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$5$1;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$5;

    iget-object v0, v0, Lcom/payu/custombrowser/CustomBrowserMain$5;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v0, v0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$5$1;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$5;

    iget-object v0, v0, Lcom/payu/custombrowser/CustomBrowserMain$5;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    invoke-virtual {v0}, Lcom/payu/custombrowser/CustomBrowserMain;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$5$1;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$5;

    iget-object v0, v0, Lcom/payu/custombrowser/CustomBrowserMain$5;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    invoke-virtual {v0}, Lcom/payu/custombrowser/CustomBrowserMain;->onMerchantUrlFinished()V

    .line 823
    :cond_0
    return-void
.end method
