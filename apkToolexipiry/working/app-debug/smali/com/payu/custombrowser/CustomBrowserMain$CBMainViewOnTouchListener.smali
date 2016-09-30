.class public Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;
.super Ljava/lang/Object;
.source "CustomBrowserMain.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/CustomBrowserMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CBMainViewOnTouchListener"
.end annotation


# instance fields
.field height:I

.field initialY:F

.field isTouch:Z

.field final synthetic this$0:Lcom/payu/custombrowser/CustomBrowserMain;


# direct methods
.method public constructor <init>(Lcom/payu/custombrowser/CustomBrowserMain;)V
    .locals 1
    .param p1, "this$0"    # Lcom/payu/custombrowser/CustomBrowserMain;

    .prologue
    .line 896
    iput-object p1, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 899
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->isTouch:Z

    .line 900
    const/4 v0, 0x0

    iput v0, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->height:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v10, 0x1f4

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 904
    iget-object v7, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-boolean v7, v7, Lcom/payu/custombrowser/CustomBrowserMain;->nbhelpVisible:Z

    if-nez v7, :cond_0

    .line 905
    iget-object v7, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    invoke-virtual {v7}, Lcom/payu/custombrowser/CustomBrowserMain;->maximiseWebviewHeight()V

    .line 906
    iget-boolean v7, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->isTouch:Z

    if-nez v7, :cond_1

    .line 998
    :cond_0
    :goto_0
    return v5

    .line 908
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 909
    .local v0, "action":I
    iget-object v7, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v7, v7, Lcom/payu/custombrowser/CustomBrowserMain;->cbSlideBarView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    .line 910
    iget-object v7, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v7, v7, Lcom/payu/custombrowser/CustomBrowserMain;->cbSlideBarView:Landroid/view/View;

    invoke-virtual {v7, v5}, Landroid/view/View;->setClickable(Z)V

    .line 911
    iget-object v7, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v7, v7, Lcom/payu/custombrowser/CustomBrowserMain;->cbSlideBarView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 913
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v7, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->height:I

    int-to-float v7, v7

    invoke-direct {v1, v9, v9, v7, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 914
    .local v1, "animate":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v1, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 915
    invoke-virtual {v1, v6}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 916
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 917
    iget-object v7, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v7, v7, Lcom/payu/custombrowser/CustomBrowserMain;->cbBaseView:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 918
    iput-boolean v5, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->isTouch:Z

    .line 919
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 920
    .local v3, "handler":Landroid/os/Handler;
    new-instance v5, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener$1;

    invoke-direct {v5, p0}, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener$1;-><init>(Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;)V

    const-wide/16 v8, 0x14

    invoke-virtual {v3, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 927
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 928
    .local v4, "handlertrans":Landroid/os/Handler;
    new-instance v5, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener$2;

    invoke-direct {v5, p0}, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener$2;-><init>(Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;)V

    invoke-virtual {v4, v5, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v1    # "animate":Landroid/view/animation/TranslateAnimation;
    .end local v3    # "handler":Landroid/os/Handler;
    .end local v4    # "handlertrans":Landroid/os/Handler;
    :cond_2
    :goto_1
    :pswitch_0
    move v5, v6

    .line 995
    goto :goto_0

    .line 942
    :cond_3
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 944
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->initialY:F

    goto :goto_1

    .line 951
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 960
    .local v2, "finalY":F
    iget v7, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->initialY:F

    cmpg-float v7, v7, v2

    if-gez v7, :cond_2

    .line 961
    iget-object v7, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v7, v7, Lcom/payu/custombrowser/CustomBrowserMain;->cbBaseView:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    iget v7, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->initialY:F

    sub-float v7, v2, v7

    cmpl-float v7, v7, v9

    if-lez v7, :cond_2

    .line 962
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->height:I

    .line 963
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0x1e

    int-to-float v7, v7

    invoke-direct {v1, v9, v9, v9, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 964
    .restart local v1    # "animate":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v1, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 965
    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 966
    invoke-virtual {v1, v6}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 967
    invoke-virtual {v1, v6}, Landroid/view/animation/TranslateAnimation;->setZAdjustment(I)V

    .line 968
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 969
    iget-object v7, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v7, v7, Lcom/payu/custombrowser/CustomBrowserMain;->cbTransparentView:Landroid/view/View;

    if-eqz v7, :cond_4

    .line 970
    iget-object v7, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->this$0:Lcom/payu/custombrowser/CustomBrowserMain;

    iget-object v7, v7, Lcom/payu/custombrowser/CustomBrowserMain;->cbTransparentView:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 971
    :cond_4
    iput-boolean v5, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->isTouch:Z

    .line 972
    iput-boolean v6, p0, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;->isTouch:Z

    .line 973
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 974
    .restart local v3    # "handler":Landroid/os/Handler;
    new-instance v5, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener$3;

    invoke-direct {v5, p0}, Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener$3;-><init>(Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;)V

    const-wide/16 v8, 0x190

    invoke-virtual {v3, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 942
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
