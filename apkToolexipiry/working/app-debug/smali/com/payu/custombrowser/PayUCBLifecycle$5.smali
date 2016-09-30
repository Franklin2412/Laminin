.class Lcom/payu/custombrowser/PayUCBLifecycle$5;
.super Ljava/lang/Object;
.source "PayUCBLifecycle.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/PayUCBLifecycle;->initCBSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/PayUCBLifecycle;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/PayUCBLifecycle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/PayUCBLifecycle;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$5;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle$5;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    # invokes: Lcom/payu/custombrowser/PayUCBLifecycle;->dismissSlowUserWarningTimerOnTouch()V
    invoke-static {v0}, Lcom/payu/custombrowser/PayUCBLifecycle;->access$200(Lcom/payu/custombrowser/PayUCBLifecycle;)V

    .line 410
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle$5;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v0, v0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbTransparentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle$5;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v0, v0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbTransparentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle$5;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget v0, v0, Lcom/payu/custombrowser/PayUCBLifecycle;->frameState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 413
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle$5;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-virtual {v0}, Lcom/payu/custombrowser/PayUCBLifecycle;->minimizeWebviewHeight()V

    .line 415
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
