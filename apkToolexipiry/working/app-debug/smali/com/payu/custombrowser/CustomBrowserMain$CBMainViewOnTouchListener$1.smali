.class Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener$1;
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
    .line 920
    iput-object p1, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener$1;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 924
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener$1;->this$1:Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;

    iget-object v0, v0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v0, v0, Lcom/payu/custombrowser/CustomBrowserMain;->cbSlideBarView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 925
    return-void
.end method
