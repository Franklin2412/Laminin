.class Lcom/payu/custombrowser/Bank$16$1;
.super Ljava/lang/Object;
.source "Bank.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/payu/custombrowser/Bank$16;

.field final synthetic val$jsonObject:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank$16;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/payu/custombrowser/Bank$16;

    .prologue
    .line 1496
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iput-object p2, p0, Lcom/payu/custombrowser/Bank$16$1;->val$jsonObject:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 1502
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    iput-boolean v3, v1, Lcom/payu/custombrowser/Bank;->pin_selected_flag:Z

    .line 1503
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/payu/custombrowser/Bank;->approve_flag:Ljava/lang/Boolean;

    .line 1504
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->maximiseWebviewHeight()V

    .line 1505
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    iput v3, v1, Lcom/payu/custombrowser/Bank;->frameState:I

    .line 1506
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->cbTransparentView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1507
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->cbTransparentView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1509
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$16$1;->val$jsonObject:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    sget v3, Lcom/payu/custombrowser/R$string;->cb_register:I

    invoke-virtual {v2, v3}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/payu/custombrowser/Bank$16$1;->val$jsonObject:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    sget v3, Lcom/payu/custombrowser/R$string;->cb_register:I

    invoke-virtual {v2, v3}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1510
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/payu/custombrowser/R$layout;->register_pin:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 1511
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1512
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1514
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1515
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    const/4 v2, 0x2

    iput v2, v1, Lcom/payu/custombrowser/Bank;->frameState:I

    .line 1517
    :cond_1
    sget v1, Lcom/payu/custombrowser/R$id;->pin:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/payu/custombrowser/Bank$16$1$1;

    invoke-direct {v2, p0}, Lcom/payu/custombrowser/Bank$16$1$1;-><init>(Lcom/payu/custombrowser/Bank$16$1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1529
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$16$1;->val$jsonObject:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    sget v3, Lcom/payu/custombrowser/R$string;->cb_otp:I

    invoke-virtual {v2, v3}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/payu/custombrowser/Bank$16$1;->val$jsonObject:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    sget v3, Lcom/payu/custombrowser/R$string;->cb_otp:I

    invoke-virtual {v2, v3}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1530
    sget v1, Lcom/payu/custombrowser/R$id;->otp:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1532
    :cond_2
    sget v1, Lcom/payu/custombrowser/R$id;->otp:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    # getter for: Lcom/payu/custombrowser/Bank;->buttonClickListener:Lcom/payu/custombrowser/Bank$ButtonOnclickListener;
    invoke-static {v2}, Lcom/payu/custombrowser/Bank;->access$500(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1543
    :goto_0
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1, p1}, Lcom/payu/custombrowser/Bank;->updateHeight(Landroid/view/View;)V

    .line 1544
    return-void

    .line 1534
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v2, "password_click"

    iput-object v2, v1, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    .line 1535
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v2, "user_input"

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v3, v3, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v3, v3, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->onHelpUnavailable()V

    .line 1538
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v3, v3, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v3, v3, Lcom/payu/custombrowser/Bank;->mJS:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v4, v4, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    sget v5, Lcom/payu/custombrowser/R$string;->cb_pin:I

    invoke-virtual {v4, v5}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1540
    :catch_0
    move-exception v0

    .line 1541
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
