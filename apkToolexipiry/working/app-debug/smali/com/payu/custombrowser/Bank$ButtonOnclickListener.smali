.class public Lcom/payu/custombrowser/Bank$ButtonOnclickListener;
.super Ljava/lang/Object;
.source "Bank.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/Bank;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ButtonOnclickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/Bank;

.field private view_edit:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/payu/custombrowser/Bank;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 3016
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3025
    const-string v5, ""

    .line 3026
    .local v5, "str":Ljava/lang/String;
    instance-of v8, p1, Landroid/widget/Button;

    if-eqz v8, :cond_2

    .line 3027
    check-cast p1, Landroid/widget/Button;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3030
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/payu/custombrowser/Bank;->getCode(Ljava/lang/String;)I

    move-result v1

    .line 3031
    .local v1, "code":I
    packed-switch v1, :pswitch_data_0

    .line 3182
    :cond_1
    :goto_1
    return-void

    .line 3028
    .end local v1    # "code":I
    .restart local p1    # "v":Landroid/view/View;
    :cond_2
    instance-of v8, p1, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 3029
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 3034
    .restart local v1    # "code":I
    :pswitch_0
    :try_start_0
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v9, "regenerate_click"

    iput-object v9, v8, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    .line 3035
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v9, "user_input"

    iget-object v10, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v10, v10, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 3036
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/payu/custombrowser/Bank;->mPassword:Ljava/lang/String;

    .line 3037
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v8, v8, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "javascript:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v10, v10, Lcom/payu/custombrowser/Bank;->mJS:Lorg/json/JSONObject;

    iget-object v11, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    sget v12, Lcom/payu/custombrowser/R$string;->cb_regen_otp:I

    invoke-virtual {v11, v12}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3038
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v8}, Lcom/payu/custombrowser/Bank;->prepareSmsListener()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3039
    :catch_0
    move-exception v2

    .line 3040
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 3046
    .end local v2    # "e":Lorg/json/JSONException;
    :pswitch_1
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/payu/custombrowser/Bank;->SMSOTPClicked:Z

    .line 3047
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    # invokes: Lcom/payu/custombrowser/Bank;->checkPermission()V
    invoke-static {v8}, Lcom/payu/custombrowser/Bank;->access$600(Lcom/payu/custombrowser/Bank;)V

    .line 3048
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v9, "otp_click"

    iput-object v9, v8, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    .line 3049
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v9, "user_input"

    iget-object v10, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v10, v10, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 3050
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-ge v8, v9, :cond_1

    .line 3051
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/payu/custombrowser/Bank;->mPassword:Ljava/lang/String;

    .line 3052
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v8}, Lcom/payu/custombrowser/Bank;->prepareSmsListener()V

    goto/16 :goto_1

    .line 3057
    :pswitch_2
    :try_start_1
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v8}, Lcom/payu/custombrowser/Bank;->hideKeyboardForcefully()V

    .line 3058
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/payu/custombrowser/Bank;->mPassword:Ljava/lang/String;

    .line 3059
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/payu/custombrowser/Bank;->checkLoading:Z

    .line 3060
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v8, Lcom/payu/custombrowser/Bank;->approve_flag:Ljava/lang/Boolean;

    .line 3061
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v8}, Lcom/payu/custombrowser/Bank;->onHelpUnavailable()V

    .line 3062
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v8}, Lcom/payu/custombrowser/Bank;->maximiseWebviewHeight()V

    .line 3063
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    const/4 v9, 0x1

    iput v9, v8, Lcom/payu/custombrowser/Bank;->frameState:I

    .line 3064
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v8}, Lcom/payu/custombrowser/Bank;->prepareSmsListener()V

    .line 3065
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->view_edit:Landroid/view/View;

    sget v9, Lcom/payu/custombrowser/R$id;->otp_sms:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x5

    if-le v8, v9, :cond_1

    .line 3066
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v9, "approved_otp"

    iput-object v9, v8, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    .line 3067
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v9, "user_input"

    iget-object v10, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v10, v10, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 3068
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v9, "Approve_btn_clicked_time"

    invoke-static {}, Lcom/payu/custombrowser/CustomBrowserMain;->getSystemCurrentTime()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 3069
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v9, v8, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "javascript:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v10, v10, Lcom/payu/custombrowser/Bank;->mJS:Lorg/json/JSONObject;

    iget-object v11, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    sget v12, Lcom/payu/custombrowser/R$string;->cb_process_otp:I

    invoke-virtual {v11, v12}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "(\""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v8, v8, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    sget v11, Lcom/payu/custombrowser/R$id;->otp_sms:I

    invoke-virtual {v8, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3070
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->view_edit:Landroid/view/View;

    sget v9, Lcom/payu/custombrowser/R$id;->otp_sms:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 3072
    :catch_1
    move-exception v2

    .line 3073
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 3078
    .end local v2    # "e":Lorg/json/JSONException;
    :pswitch_3
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v8, v8, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lcom/payu/custombrowser/R$layout;->wait_for_otp:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 3079
    .local v7, "view":Landroid/view/View;
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v9, "enter_manually_click"

    iput-object v9, v8, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    .line 3081
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v9, "user_input"

    iget-object v10, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v10, v10, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 3083
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    iget v8, v8, Lcom/payu/custombrowser/Bank;->chooseActionHeight:I

    if-nez v8, :cond_3

    .line 3084
    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 3085
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iput v9, v8, Lcom/payu/custombrowser/Bank;->chooseActionHeight:I

    .line 3088
    :cond_3
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v8, v8, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 3089
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v8, v8, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3091
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v8, v8, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3092
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    const/4 v9, 0x2

    iput v9, v8, Lcom/payu/custombrowser/Bank;->frameState:I

    .line 3097
    :goto_2
    sget v8, Lcom/payu/custombrowser/R$id;->bank_logo:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 3100
    .local v3, "im":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v8, v8, Lcom/payu/custombrowser/Bank;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_4

    .line 3101
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v8, v8, Lcom/payu/custombrowser/Bank;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3103
    :cond_4
    sget v8, Lcom/payu/custombrowser/R$id;->waiting:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3104
    const v6, 0x3e99999a    # 0.3f

    .line 3105
    .local v6, "val":F
    sget v8, Lcom/payu/custombrowser/R$id;->approve:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 3106
    .local v0, "approveButton":Landroid/widget/Button;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setClickable(Z)V

    .line 3108
    sget v8, Lcom/payu/custombrowser/R$id;->otp_sms:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 3109
    .local v4, "otpSMS":Landroid/widget/EditText;
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v8, v4}, Lcom/payu/custombrowser/Bank;->showSoftKeyboard(Landroid/view/View;)V

    .line 3110
    invoke-static {v6, v0}, Lcom/payu/custombrowser/util/CBUtil;->setAlpha(FLandroid/view/View;)V

    .line 3112
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 3113
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 3114
    sget v8, Lcom/payu/custombrowser/R$id;->regenerate_layout:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3115
    sget v8, Lcom/payu/custombrowser/R$id;->progress:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3116
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v8, v4}, Lcom/payu/custombrowser/Bank;->showSoftKeyboard(Landroid/view/View;)V

    .line 3118
    new-instance v8, Lcom/payu/custombrowser/Bank$ButtonOnclickListener$1;

    invoke-direct {v8, p0, v7, v0}, Lcom/payu/custombrowser/Bank$ButtonOnclickListener$1;-><init>(Lcom/payu/custombrowser/Bank$ButtonOnclickListener;Landroid/view/View;Landroid/widget/Button;)V

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3150
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v8, v7}, Lcom/payu/custombrowser/Bank;->updateHeight(Landroid/view/View;)V

    goto/16 :goto_1

    .line 3094
    .end local v0    # "approveButton":Landroid/widget/Button;
    .end local v3    # "im":Landroid/widget/ImageView;
    .end local v4    # "otpSMS":Landroid/widget/EditText;
    .end local v6    # "val":F
    :cond_5
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v8}, Lcom/payu/custombrowser/Bank;->maximiseWebviewHeight()V

    goto :goto_2

    .line 3157
    .end local v7    # "view":Landroid/view/View;
    :pswitch_4
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/payu/custombrowser/Bank;->pin_selected_flag:Z

    .line 3158
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v8, Lcom/payu/custombrowser/Bank;->approve_flag:Ljava/lang/Boolean;

    .line 3159
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v8}, Lcom/payu/custombrowser/Bank;->maximiseWebviewHeight()V

    .line 3160
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    const/4 v9, 0x1

    iput v9, v8, Lcom/payu/custombrowser/Bank;->frameState:I

    .line 3161
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v8}, Lcom/payu/custombrowser/Bank;->onHelpUnavailable()V

    .line 3163
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v8, v8, Lcom/payu/custombrowser/Bank;->cbSlideBarView:Landroid/view/View;

    if-eqz v8, :cond_6

    .line 3164
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v8, v8, Lcom/payu/custombrowser/Bank;->cbSlideBarView:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3166
    :cond_6
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v8, v8, Lcom/payu/custombrowser/Bank;->cbTransparentView:Landroid/view/View;

    if-eqz v8, :cond_7

    .line 3167
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v8, v8, Lcom/payu/custombrowser/Bank;->cbTransparentView:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3170
    :cond_7
    :try_start_2
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v8, v8, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "javascript:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v10, v10, Lcom/payu/custombrowser/Bank;->mJS:Lorg/json/JSONObject;

    iget-object v11, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    sget v12, Lcom/payu/custombrowser/R$string;->cb_pin:I

    invoke-virtual {v11, v12}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3171
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v9, "password_click"

    iput-object v9, v8, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    .line 3172
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v9, "user_input"

    iget-object v10, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v10, v10, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 3173
    :catch_2
    move-exception v2

    .line 3174
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 3179
    .end local v2    # "e":Lorg/json/JSONException;
    :pswitch_5
    iget-object v8, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v8, v8, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    const-string v9, "button text not matching any click listener option"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 3031
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "view_ed"    # Landroid/view/View;

    .prologue
    .line 3020
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->view_edit:Landroid/view/View;

    .line 3021
    return-void
.end method
