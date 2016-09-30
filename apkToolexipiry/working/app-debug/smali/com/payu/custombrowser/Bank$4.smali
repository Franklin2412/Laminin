.class Lcom/payu/custombrowser/Bank$4;
.super Ljava/lang/Object;
.source "Bank.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->onPageFinishWebclient(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final DefaultKeyboardDP:I

.field private final EstimatedKeyboardDP:I

.field private final r:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/payu/custombrowser/Bank;

.field final synthetic val$activityRootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 873
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$4;->this$0:Lcom/payu/custombrowser/Bank;

    iput-object p2, p0, Lcom/payu/custombrowser/Bank$4;->val$activityRootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 874
    const/16 v0, 0x64

    iput v0, p0, Lcom/payu/custombrowser/Bank$4;->DefaultKeyboardDP:I

    .line 875
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/16 v0, 0x30

    :goto_0
    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/payu/custombrowser/Bank$4;->EstimatedKeyboardDP:I

    .line 876
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/Bank$4;->r:Landroid/graphics/Rect;

    return-void

    .line 875
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 880
    iget-object v6, p0, Lcom/payu/custombrowser/Bank$4;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v6, v6, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/payu/custombrowser/Bank$4;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v6, v6, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/payu/custombrowser/Bank$4;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v6}, Lcom/payu/custombrowser/Bank;->isRemoving()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/payu/custombrowser/Bank$4;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v6}, Lcom/payu/custombrowser/Bank;->isAdded()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 882
    iget v6, p0, Lcom/payu/custombrowser/Bank$4;->EstimatedKeyboardDP:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/payu/custombrowser/Bank$4;->val$activityRootView:Landroid/view/View;

    .line 883
    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v4, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v0, v6

    .line 885
    .local v0, "estimatedKeyboardHeight":I
    iget-object v6, p0, Lcom/payu/custombrowser/Bank$4;->val$activityRootView:Landroid/view/View;

    iget-object v7, p0, Lcom/payu/custombrowser/Bank$4;->r:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 886
    iget-object v6, p0, Lcom/payu/custombrowser/Bank$4;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/payu/custombrowser/Bank$4;->r:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/payu/custombrowser/Bank$4;->r:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    sub-int v1, v6, v7

    .line 887
    .local v1, "heightDiff":I
    if-lt v1, v0, :cond_1

    move v3, v4

    .line 888
    .local v3, "isShown":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 889
    iget-object v6, p0, Lcom/payu/custombrowser/Bank$4;->this$0:Lcom/payu/custombrowser/Bank;

    iget v6, v6, Lcom/payu/custombrowser/Bank;->checkForInput:I

    if-nez v6, :cond_0

    .line 890
    iget-object v6, p0, Lcom/payu/custombrowser/Bank$4;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v6, v6, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 891
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v6, 0x3

    invoke-virtual {v2, v6, v5}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 892
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$4;->this$0:Lcom/payu/custombrowser/Bank;

    iput v4, v5, Lcom/payu/custombrowser/Bank;->checkForInput:I

    .line 896
    .end local v0    # "estimatedKeyboardHeight":I
    .end local v1    # "heightDiff":I
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v3    # "isShown":Z
    :cond_0
    return-void

    .restart local v0    # "estimatedKeyboardHeight":I
    .restart local v1    # "heightDiff":I
    :cond_1
    move v3, v5

    .line 887
    goto :goto_0
.end method
