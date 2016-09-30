.class public Lcom/payu/custombrowser/PayUCBLifecycle$PayUCBLifeCycleTouchListener;
.super Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;
.source "PayUCBLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/PayUCBLifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PayUCBLifeCycleTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/PayUCBLifecycle;


# direct methods
.method public constructor <init>(Lcom/payu/custombrowser/PayUCBLifecycle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/PayUCBLifecycle;

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$PayUCBLifeCycleTouchListener;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-direct {p0, p1}, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;-><init>(Lcom/payu/custombrowser/CustomBrowserMain;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1131
    const-string v0, "sTag"

    const-string v1, "onTouch of PayUCBLifeCycleCalled"

    invoke-static {v0, v1}, Lcom/payu/custombrowser/util/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle$PayUCBLifeCycleTouchListener;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    # invokes: Lcom/payu/custombrowser/PayUCBLifecycle;->dismissSlowUserWarningTimerOnTouch()V
    invoke-static {v0}, Lcom/payu/custombrowser/PayUCBLifecycle;->access$200(Lcom/payu/custombrowser/PayUCBLifecycle;)V

    .line 1136
    invoke-super {p0, p1, p2}, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
