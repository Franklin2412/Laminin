.class Lcom/payu/custombrowser/Bank$16;
.super Ljava/lang/Object;
.source "Bank.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->convertToNative(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/Bank;

.field final synthetic val$fields:Ljava/lang/String;

.field final synthetic val$params:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    iput-object p2, p0, Lcom/payu/custombrowser/Bank$16;->val$fields:Ljava/lang/String;

    iput-object p3, p0, Lcom/payu/custombrowser/Bank$16;->val$params:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->loadingLayout:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->customProgressBar:Lcom/payu/custombrowser/custombar/CustomProgressBar;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->loadingLayout:Landroid/view/View;

    move-object/from16 v18, v0

    sget v19, Lcom/payu/custombrowser/R$id;->progress:I

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/payu/custombrowser/custombar/CustomProgressBar;->removeProgressDialog(Landroid/view/View;)V

    .line 1392
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->customProgressBar:Lcom/payu/custombrowser/custombar/CustomProgressBar;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    move-object/from16 v18, v0

    sget v19, Lcom/payu/custombrowser/R$id;->progress:I

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/payu/custombrowser/custombar/CustomProgressBar;->removeProgressDialog(Landroid/view/View;)V

    .line 1396
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->waitingOTPTimer:Ljava/util/Timer;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->enterOtpRunnable:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->waitingOTPTimer:Ljava/util/Timer;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/payu/custombrowser/util/CBUtil;->cancelTimer(Ljava/util/Timer;)V

    .line 1400
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->val$fields:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v18, v0

    sget v19, Lcom/payu/custombrowser/R$string;->cb_error:I

    invoke-virtual/range {v18 .. v19}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->onBankError()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1778
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 1780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    const-string v18, "arrival"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->timeOfArrival:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    :cond_4
    return-void

    .line 1404
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->val$fields:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "parse error"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->onBankError()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1774
    :catch_0
    move-exception v5

    .line 1776
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1407
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->val$fields:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "loading"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/payu/custombrowser/Bank;->pin_selected_flag:Z

    move/from16 v17, v0

    if-nez v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/payu/custombrowser/Bank;->checkLoading:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 1408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->onHelpAvailable()V

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbTransparentView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbTransparentView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1413
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->loadingLayout:Landroid/view/View;

    move-object/from16 v17, v0

    if-nez v17, :cond_8

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v18

    sget v19, Lcom/payu/custombrowser/R$layout;->loading:I

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/payu/custombrowser/Bank;->loadingLayout:Landroid/view/View;

    .line 1415
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->loadingLayout:Landroid/view/View;

    move-object/from16 v17, v0

    sget v18, Lcom/payu/custombrowser/R$id;->bank_logo:I

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1417
    .local v7, "im":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1422
    :cond_9
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/payu/custombrowser/Bank;->chooseActionHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v11, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1423
    .local v11, "params":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->loadingLayout:Landroid/view/View;

    move-object/from16 v17, v0

    sget v18, Lcom/payu/custombrowser/R$id;->loading:I

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1424
    .local v9, "layoutView":Landroid/view/View;
    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1425
    invoke-virtual {v9}, Landroid/view/View;->requestLayout()V

    .line 1426
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->customProgressBar:Lcom/payu/custombrowser/custombar/CustomProgressBar;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->loadingLayout:Landroid/view/View;

    move-object/from16 v18, v0

    sget v19, Lcom/payu/custombrowser/R$id;->progress:I

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/payu/custombrowser/custombar/CustomProgressBar;->showDialog(Landroid/view/View;)V

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->loadingLayout:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/payu/custombrowser/Bank;->frameState:I

    .line 1436
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->loadingLayout:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/payu/custombrowser/Bank;->updateHeight(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1434
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->maximiseWebviewHeight()V

    goto :goto_1

    .line 1437
    .end local v7    # "im":Landroid/widget/ImageView;
    .end local v9    # "layoutView":Landroid/view/View;
    .end local v11    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->val$fields:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v18, v0

    sget v19, Lcom/payu/custombrowser/R$string;->cb_choose:I

    invoke-virtual/range {v18 .. v19}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 1438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    const-string v18, "Choose Screen"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->addCustomBrowserEventAnalytics()V

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/payu/custombrowser/Bank;->frameState:I

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/payu/custombrowser/Bank;->checkLoading:Z

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbTransparentView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbTransparentView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1447
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v17

    sget v18, Lcom/payu/custombrowser/R$layout;->choose_action:I

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 1448
    .local v16, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/payu/custombrowser/Bank;->maxWebview:I

    move/from16 v17, v0

    if-nez v17, :cond_d

    .line 1449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->calculateMaximumWebViewHeight()V

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->maximiseWebviewHeight()V

    .line 1452
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbSlideBarView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbSlideBarView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1456
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/Bank;->calculateCBHeight(Landroid/view/View;)V

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->onHelpAvailable()V

    .line 1458
    const/16 v17, -0x2

    const/16 v18, -0x2

    invoke-virtual/range {v16 .. v18}, Landroid/view/View;->measure(II)V

    .line 1459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/payu/custombrowser/Bank;->chooseActionHeight:I

    .line 1461
    sget v17, Lcom/payu/custombrowser/R$id;->bank_logo:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1463
    .restart local v7    # "im":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1466
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v17

    if-eqz v17, :cond_10

    .line 1469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/payu/custombrowser/Bank;->frameState:I

    .line 1472
    :cond_10
    new-instance v14, Landroid/text/SpannableStringBuilder;

    const-string v17, "Select an option for Faster payment"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1473
    .local v14, "str":Landroid/text/SpannableStringBuilder;
    new-instance v17, Landroid/text/style/StyleSpan;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v18, 0x15

    const/16 v19, 0x1b

    const/16 v20, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1474
    sget v17, Lcom/payu/custombrowser/R$id;->choose_text:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1475
    .local v15, "tv":Landroid/widget/TextView;
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1478
    :try_start_3
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->val$params:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1479
    .local v8, "jsonObject":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    sget v18, Lcom/payu/custombrowser/R$string;->cb_otp:I

    invoke-virtual/range {v17 .. v18}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    sget v18, Lcom/payu/custombrowser/R$string;->cb_otp:I

    invoke-virtual/range {v17 .. v18}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_12

    .line 1480
    sget v17, Lcom/payu/custombrowser/R$id;->otp:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1481
    sget v17, Lcom/payu/custombrowser/R$id;->view:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1491
    :cond_11
    :goto_2
    sget v17, Lcom/payu/custombrowser/R$id;->otp:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v18, v0

    # getter for: Lcom/payu/custombrowser/Bank;->buttonClickListener:Lcom/payu/custombrowser/Bank$ButtonOnclickListener;
    invoke-static/range {v18 .. v18}, Lcom/payu/custombrowser/Bank;->access$500(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    sget v18, Lcom/payu/custombrowser/R$string;->cb_pin:I

    invoke-virtual/range {v17 .. v18}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    sget v18, Lcom/payu/custombrowser/R$string;->cb_pin:I

    invoke-virtual/range {v17 .. v18}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_13

    .line 1493
    sget v17, Lcom/payu/custombrowser/R$id;->pin:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1494
    sget v17, Lcom/payu/custombrowser/R$id;->view:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1547
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    sget v18, Lcom/payu/custombrowser/R$string;->cb_error:I

    invoke-virtual/range {v17 .. v18}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1548
    sget v17, Lcom/payu/custombrowser/R$id;->error_message:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1549
    sget v17, Lcom/payu/custombrowser/R$id;->error_message:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    const-string v18, "error"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1551
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v5

    .line 1553
    .local v5, "e":Lorg/json/JSONException;
    :try_start_4
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 1483
    .end local v5    # "e":Lorg/json/JSONException;
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    :cond_12
    :try_start_5
    sget v17, Lcom/payu/custombrowser/R$id;->otp:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v18, v0

    # getter for: Lcom/payu/custombrowser/Bank;->buttonClickListener:Lcom/payu/custombrowser/Bank$ButtonOnclickListener;
    invoke-static/range {v18 .. v18}, Lcom/payu/custombrowser/Bank;->access$500(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/payu/custombrowser/Bank;->autoSelectOtp:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    const-string v18, "auto_otp_select"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    const-string v18, "user_input"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    sget v17, Lcom/payu/custombrowser/R$id;->otp:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->performClick()Z

    .line 1488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/payu/custombrowser/Bank;->autoSelectOtp:Z

    goto/16 :goto_2

    .line 1496
    :cond_13
    sget v17, Lcom/payu/custombrowser/R$id;->pin:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    new-instance v18, Lcom/payu/custombrowser/Bank$16$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/payu/custombrowser/Bank$16$1;-><init>(Lcom/payu/custombrowser/Bank$16;Lorg/json/JSONObject;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_3

    .line 1559
    .end local v7    # "im":Landroid/widget/ImageView;
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v14    # "str":Landroid/text/SpannableStringBuilder;
    .end local v15    # "tv":Landroid/widget/TextView;
    .end local v16    # "view":Landroid/view/View;
    :cond_14
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->val$fields:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v18, v0

    sget v19, Lcom/payu/custombrowser/R$string;->cb_incorrect_OTP_2:I

    invoke-virtual/range {v18 .. v19}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 1560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    const-string v18, "OTP Page"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    .line 1561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->addCustomBrowserEventAnalytics()V

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/payu/custombrowser/Bank;->checkLoading:Z

    .line 1563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->onHelpAvailable()V

    .line 1564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v17

    sget v18, Lcom/payu/custombrowser/R$layout;->retry_otp:I

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 1565
    .restart local v16    # "view":Landroid/view/View;
    sget v17, Lcom/payu/custombrowser/R$id;->bank_logo:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1567
    .restart local v7    # "im":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_15

    .line 1568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1570
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v17

    if-eqz v17, :cond_17

    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/payu/custombrowser/Bank;->frameState:I

    .line 1581
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->mPassword:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_16

    .line 1582
    sget v17, Lcom/payu/custombrowser/R$id;->regenerate_layout:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1583
    sget v17, Lcom/payu/custombrowser/R$id;->Regenerate_layout_gone:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1585
    :try_start_7
    new-instance v10, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->val$params:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1586
    .local v10, "p":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    sget v18, Lcom/payu/custombrowser/R$string;->cb_pin:I

    invoke-virtual/range {v17 .. v18}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    sget v18, Lcom/payu/custombrowser/R$string;->cb_pin:I

    invoke-virtual/range {v17 .. v18}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_19

    const/4 v12, 0x1

    .line 1588
    .local v12, "pin":Z
    :goto_5
    sget v17, Lcom/payu/custombrowser/R$id;->enter_manually:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v18, v0

    # getter for: Lcom/payu/custombrowser/Bank;->buttonClickListener:Lcom/payu/custombrowser/Bank$ButtonOnclickListener;
    invoke-static/range {v18 .. v18}, Lcom/payu/custombrowser/Bank;->access$500(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1589
    if-eqz v12, :cond_1a

    .line 1590
    sget v17, Lcom/payu/custombrowser/R$id;->pin_layout_gone:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1594
    :goto_6
    sget v17, Lcom/payu/custombrowser/R$id;->pin:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v18, v0

    # getter for: Lcom/payu/custombrowser/Bank;->buttonClickListener:Lcom/payu/custombrowser/Bank$ButtonOnclickListener;
    invoke-static/range {v18 .. v18}, Lcom/payu/custombrowser/Bank;->access$500(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 1599
    .end local v10    # "p":Lorg/json/JSONObject;
    .end local v12    # "pin":Z
    :cond_16
    :goto_7
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/Bank;->updateHeight(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1576
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbSlideBarView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_18

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbSlideBarView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1578
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->maximiseWebviewHeight()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_4

    .line 1586
    .restart local v10    # "p":Lorg/json/JSONObject;
    :cond_19
    const/4 v12, 0x0

    goto :goto_5

    .line 1592
    .restart local v12    # "pin":Z
    :cond_1a
    :try_start_9
    sget v17, Lcom/payu/custombrowser/R$id;->pin_layout_gone:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_6

    .line 1595
    .end local v10    # "p":Lorg/json/JSONObject;
    .end local v12    # "pin":Z
    :catch_2
    move-exception v5

    .line 1596
    .local v5, "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 1600
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "im":Landroid/widget/ImageView;
    .end local v16    # "view":Landroid/view/View;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->val$fields:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v18, v0

    sget v19, Lcom/payu/custombrowser/R$string;->cb_retry_otp:I

    invoke-virtual/range {v18 .. v19}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_26

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    const-string v18, "OTP Page"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->addCustomBrowserEventAnalytics()V

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/payu/custombrowser/Bank;->checkLoading:Z

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->onHelpAvailable()V

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->hideSoftKeyboard()V

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbTransparentView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1c

    .line 1607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbTransparentView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1610
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v17

    sget v18, Lcom/payu/custombrowser/R$layout;->retry_otp:I

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 1611
    .restart local v16    # "view":Landroid/view/View;
    sget v17, Lcom/payu/custombrowser/R$id;->bank_logo:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1613
    .restart local v7    # "im":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1d

    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1616
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 1620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/payu/custombrowser/Bank;->frameState:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 1628
    :goto_8
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->mPassword:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_1e

    .line 1629
    new-instance v10, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->val$params:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1630
    .restart local v10    # "p":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    sget v18, Lcom/payu/custombrowser/R$string;->cb_regenerate:I

    invoke-virtual/range {v17 .. v18}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    sget v18, Lcom/payu/custombrowser/R$string;->cb_regenerate:I

    invoke-virtual/range {v17 .. v18}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_21

    const/4 v13, 0x1

    .line 1631
    .local v13, "regenerate":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    sget v18, Lcom/payu/custombrowser/R$string;->cb_pin:I

    invoke-virtual/range {v17 .. v18}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    sget v18, Lcom/payu/custombrowser/R$string;->cb_pin:I

    invoke-virtual/range {v17 .. v18}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_22

    const/4 v12, 0x1

    .line 1633
    .restart local v12    # "pin":Z
    :goto_a
    sget v17, Lcom/payu/custombrowser/R$id;->regenerate_layout:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1634
    if-eqz v13, :cond_24

    .line 1635
    sget v17, Lcom/payu/custombrowser/R$id;->Regenerate_layout_gone:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1636
    if-eqz v12, :cond_23

    .line 1637
    sget v17, Lcom/payu/custombrowser/R$id;->Enter_manually_gone:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1638
    sget v17, Lcom/payu/custombrowser/R$id;->pin_layout_gone:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1654
    .end local v10    # "p":Lorg/json/JSONObject;
    .end local v12    # "pin":Z
    .end local v13    # "regenerate":Z
    :cond_1e
    :goto_b
    sget v17, Lcom/payu/custombrowser/R$id;->pin:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v18, v0

    # getter for: Lcom/payu/custombrowser/Bank;->buttonClickListener:Lcom/payu/custombrowser/Bank$ButtonOnclickListener;
    invoke-static/range {v18 .. v18}, Lcom/payu/custombrowser/Bank;->access$500(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1655
    sget v17, Lcom/payu/custombrowser/R$id;->enter_manually:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v18, v0

    # getter for: Lcom/payu/custombrowser/Bank;->buttonClickListener:Lcom/payu/custombrowser/Bank$ButtonOnclickListener;
    invoke-static/range {v18 .. v18}, Lcom/payu/custombrowser/Bank;->access$500(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1656
    sget v17, Lcom/payu/custombrowser/R$id;->retry:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v18, v0

    # getter for: Lcom/payu/custombrowser/Bank;->buttonClickListener:Lcom/payu/custombrowser/Bank$ButtonOnclickListener;
    invoke-static/range {v18 .. v18}, Lcom/payu/custombrowser/Bank;->access$500(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    # getter for: Lcom/payu/custombrowser/Bank;->buttonClickListener:Lcom/payu/custombrowser/Bank$ButtonOnclickListener;
    invoke-static/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->access$500(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->setView(Landroid/view/View;)V

    .line 1658
    sget v17, Lcom/payu/custombrowser/R$id;->approve:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v18, v0

    # getter for: Lcom/payu/custombrowser/Bank;->buttonClickListener:Lcom/payu/custombrowser/Bank$ButtonOnclickListener;
    invoke-static/range {v18 .. v18}, Lcom/payu/custombrowser/Bank;->access$500(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 1662
    :goto_c
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/Bank;->updateHeight(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1622
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbSlideBarView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_20

    .line 1623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbSlideBarView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1624
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->maximiseWebviewHeight()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_8

    .line 1630
    .restart local v10    # "p":Lorg/json/JSONObject;
    :cond_21
    const/4 v13, 0x0

    goto/16 :goto_9

    .line 1631
    .restart local v13    # "regenerate":Z
    :cond_22
    const/4 v12, 0x0

    goto/16 :goto_a

    .line 1640
    .restart local v12    # "pin":Z
    :cond_23
    :try_start_d
    sget v17, Lcom/payu/custombrowser/R$id;->Enter_manually_gone:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1641
    sget v17, Lcom/payu/custombrowser/R$id;->pin_layout_gone:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_b

    .line 1659
    .end local v10    # "p":Lorg/json/JSONObject;
    .end local v12    # "pin":Z
    .end local v13    # "regenerate":Z
    :catch_3
    move-exception v5

    .line 1660
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_e
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    goto :goto_c

    .line 1644
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v10    # "p":Lorg/json/JSONObject;
    .restart local v12    # "pin":Z
    .restart local v13    # "regenerate":Z
    :cond_24
    if-eqz v12, :cond_25

    .line 1645
    :try_start_f
    sget v17, Lcom/payu/custombrowser/R$id;->pin_layout_gone:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1649
    :goto_d
    sget v17, Lcom/payu/custombrowser/R$id;->Regenerate_layout_gone:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1650
    sget v17, Lcom/payu/custombrowser/R$id;->Enter_manually_gone:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    .line 1647
    :cond_25
    sget v17, Lcom/payu/custombrowser/R$id;->pin_layout_gone:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    goto :goto_d

    .line 1663
    .end local v7    # "im":Landroid/widget/ImageView;
    .end local v10    # "p":Lorg/json/JSONObject;
    .end local v12    # "pin":Z
    .end local v13    # "regenerate":Z
    .end local v16    # "view":Landroid/view/View;
    :cond_26
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->val$fields:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v18, v0

    sget v19, Lcom/payu/custombrowser/R$string;->cb_enter_pin:I

    invoke-virtual/range {v18 .. v19}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_29

    .line 1665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    const-string v18, "PIN Page"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    .line 1666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->addCustomBrowserEventAnalytics()V

    .line 1668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbSlideBarView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_27

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbSlideBarView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1671
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->onHelpUnavailable()V

    .line 1672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/payu/custombrowser/Bank;->pin_selected_flag:Z

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/payu/custombrowser/Bank;->approve_flag:Ljava/lang/Boolean;

    .line 1674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->maximiseWebviewHeight()V

    .line 1675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/payu/custombrowser/Bank;->frameState:I

    .line 1676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbTransparentView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_28

    .line 1677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbTransparentView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1679
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->maximiseWebviewHeight()V

    .line 1680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->removeAllViews()V

    goto/16 :goto_0

    .line 1681
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->val$fields:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v18, v0

    sget v19, Lcom/payu/custombrowser/R$string;->cb_enter_otp:I

    invoke-virtual/range {v18 .. v19}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2a

    .line 1682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    const-string v18, "OTP Page"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/payu/custombrowser/Bank;->SMSOTPClicked:Z

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    # invokes: Lcom/payu/custombrowser/Bank;->checkPermission()V
    invoke-static/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->access$600(Lcom/payu/custombrowser/Bank;)V

    .line 1686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->val$params:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/payu/custombrowser/Bank;->enterOtpParams:Ljava/lang/String;

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/payu/custombrowser/Bank;->checkPermissionVisibility:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 1688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->addCustomBrowserEventAnalytics()V

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->val$params:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/payu/custombrowser/Bank;->enter_otp(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1705
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->val$fields:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v18, v0

    sget v19, Lcom/payu/custombrowser/R$string;->cb_incorrect_pin:I

    invoke-virtual/range {v18 .. v19}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2d

    .line 1706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    const-string v18, "Choose Screen"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    .line 1707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->addCustomBrowserEventAnalytics()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    .line 1711
    :try_start_11
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->val$params:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1712
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    sget v18, Lcom/payu/custombrowser/R$string;->cb_otp:I

    invoke-virtual/range {v17 .. v18}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    sget v18, Lcom/payu/custombrowser/R$string;->cb_otp:I

    invoke-virtual/range {v17 .. v18}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/payu/custombrowser/Bank;->checkLoading:Z

    .line 1714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->onHelpAvailable()V

    .line 1715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v17

    sget v18, Lcom/payu/custombrowser/R$layout;->choose_action:I

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 1717
    .restart local v16    # "view":Landroid/view/View;
    sget v17, Lcom/payu/custombrowser/R$id;->bank_logo:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1719
    .restart local v7    # "im":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2b

    .line 1720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1722
    :cond_2b
    sget v17, Lcom/payu/custombrowser/R$id;->error_message:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1723
    .local v6, "errorText":Landroid/widget/TextView;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lcom/payu/custombrowser/R$string;->cb_incorrect_password:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1726
    sget v17, Lcom/payu/custombrowser/R$id;->choose_text:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1727
    .local v4, "chooseText":Landroid/widget/TextView;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lcom/payu/custombrowser/R$string;->cb_retry:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1734
    sget v17, Lcom/payu/custombrowser/R$id;->otp:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v18, v0

    # getter for: Lcom/payu/custombrowser/Bank;->buttonClickListener:Lcom/payu/custombrowser/Bank$ButtonOnclickListener;
    invoke-static/range {v18 .. v18}, Lcom/payu/custombrowser/Bank;->access$500(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1735
    sget v17, Lcom/payu/custombrowser/R$id;->pin:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v18, v0

    # getter for: Lcom/payu/custombrowser/Bank;->buttonClickListener:Lcom/payu/custombrowser/Bank$ButtonOnclickListener;
    invoke-static/range {v18 .. v18}, Lcom/payu/custombrowser/Bank;->access$500(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/Bank;->updateHeight(Landroid/view/View;)V

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v17

    if-eqz v17, :cond_2c

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/payu/custombrowser/Bank;->frameState:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    goto/16 :goto_0

    .line 1744
    .end local v4    # "chooseText":Landroid/widget/TextView;
    .end local v6    # "errorText":Landroid/widget/TextView;
    .end local v7    # "im":Landroid/widget/ImageView;
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v16    # "view":Landroid/view/View;
    :catch_4
    move-exception v5

    .line 1745
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_12
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    goto/16 :goto_0

    .line 1741
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "chooseText":Landroid/widget/TextView;
    .restart local v6    # "errorText":Landroid/widget/TextView;
    .restart local v7    # "im":Landroid/widget/ImageView;
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    .restart local v16    # "view":Landroid/view/View;
    :cond_2c
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->maximiseWebviewHeight()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    goto/16 :goto_0

    .line 1747
    .end local v4    # "chooseText":Landroid/widget/TextView;
    .end local v6    # "errorText":Landroid/widget/TextView;
    .end local v7    # "im":Landroid/widget/ImageView;
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v16    # "view":Landroid/view/View;
    :cond_2d
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->val$fields:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v18, v0

    sget v19, Lcom/payu/custombrowser/R$string;->cb_register_option:I

    invoke-virtual/range {v18 .. v19}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_30

    .line 1748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    const-string v18, "Register Page"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    .line 1749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->addCustomBrowserEventAnalytics()V

    .line 1750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->onHelpAvailable()V

    .line 1751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v17

    sget v18, Lcom/payu/custombrowser/R$layout;->register:I

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 1752
    .restart local v16    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1754
    sget v17, Lcom/payu/custombrowser/R$id;->bank_logo:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1756
    .restart local v7    # "im":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2e

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1759
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/Bank;->updateHeight(Landroid/view/View;)V

    .line 1760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v17

    if-eqz v17, :cond_2f

    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/payu/custombrowser/Bank;->frameState:I

    goto/16 :goto_0

    .line 1763
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->maximiseWebviewHeight()V

    goto/16 :goto_0

    .line 1766
    .end local v7    # "im":Landroid/widget/ImageView;
    .end local v16    # "view":Landroid/view/View;
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->maximiseWebviewHeight()V

    .line 1767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/payu/custombrowser/Bank;->frameState:I

    .line 1768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbSlideBarView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_31

    .line 1769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->cbSlideBarView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 1771
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/payu/custombrowser/Bank;->onHelpUnavailable()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    goto/16 :goto_0
.end method
