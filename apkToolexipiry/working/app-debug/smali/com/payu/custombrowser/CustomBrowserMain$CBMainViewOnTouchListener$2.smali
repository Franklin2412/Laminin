.class Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener$2;
.super Ljava/lang/Object;
.source "CustomBrowserMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;

    .prologue
    .line 928
    iput-object p1, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener$2;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 931
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener$2;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->isTouch:Z

    .line 932
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener$2;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;

    iget-object v0, v0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    const/4 v1, 0x2

    iput v1, v0, Lcom/payu/custombrowser/CustomBrowserMain;->frameState:I

    .line 933
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener$2;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;

    iget-object v0, v0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v0, v0, Lcom/payu/custombrowser/CustomBrowserMain;->cbTransparentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener$2;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;

    iget-object v0, v0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v0, v0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener$2;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;

    iget-object v0, v0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v0, v0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener$2;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;

    iget-object v0, v0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener$2;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;

    iget-object v1, v1, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v1, v1, Lcom/payu/custombrowser/CustomBrowserMain;->cbTransparentView:Landroid/view/View;

    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener$2;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;

    iget-object v2, v2, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v2, v2, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/CustomBrowserMain;->showTransparentView(Landroid/view/View;Landroid/content/Context;)V

    .line 937
    :cond_0
    return-void
.end method
