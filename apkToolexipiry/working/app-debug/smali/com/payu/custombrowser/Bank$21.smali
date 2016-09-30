.class Lcom/payu/custombrowser/Bank$21;
.super Ljava/lang/Object;
.source "Bank.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->enter_otp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field i:I

.field final synthetic this$0:Lcom/payu/custombrowser/Bank;

.field final synthetic val$approveButton:Landroid/widget/Button;

.field final synthetic val$enterManuallyButton:Landroid/view/View;

.field final synthetic val$enterManuallyGone:Landroid/view/View;

.field final synthetic val$otpSms:Landroid/widget/EditText;

.field final synthetic val$params:Ljava/lang/String;

.field final synthetic val$pinButton:Landroid/view/View;

.field final synthetic val$pinLayoutGone:Landroid/view/View;

.field final synthetic val$regenerateLayout:Landroid/view/View;

.field final synthetic val$regenerateLayoutGone:Landroid/view/View;

.field final synthetic val$retryButton:Landroid/view/View;

.field final synthetic val$retryText:Landroid/view/View;

.field final synthetic val$time_wait_for_sms:I

.field final synthetic val$timerView:Landroid/widget/TextView;

.field final synthetic val$waiting:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;ILandroid/widget/TextView;Ljava/lang/String;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/Button;Landroid/view/View;Landroid/widget/EditText;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 2204
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$21;->this$0:Lcom/payu/custombrowser/Bank;

    iput p2, p0, Lcom/payu/custombrowser/Bank$21;->val$time_wait_for_sms:I

    iput-object p3, p0, Lcom/payu/custombrowser/Bank$21;->val$timerView:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/payu/custombrowser/Bank$21;->val$params:Ljava/lang/String;

    iput-object p5, p0, Lcom/payu/custombrowser/Bank$21;->val$regenerateLayoutGone:Landroid/view/View;

    iput-object p6, p0, Lcom/payu/custombrowser/Bank$21;->val$pinLayoutGone:Landroid/view/View;

    iput-object p7, p0, Lcom/payu/custombrowser/Bank$21;->val$enterManuallyGone:Landroid/view/View;

    iput-object p8, p0, Lcom/payu/custombrowser/Bank$21;->val$retryText:Landroid/view/View;

    iput-object p9, p0, Lcom/payu/custombrowser/Bank$21;->val$regenerateLayout:Landroid/view/View;

    iput-object p10, p0, Lcom/payu/custombrowser/Bank$21;->val$approveButton:Landroid/widget/Button;

    iput-object p11, p0, Lcom/payu/custombrowser/Bank$21;->val$waiting:Landroid/view/View;

    iput-object p12, p0, Lcom/payu/custombrowser/Bank$21;->val$otpSms:Landroid/widget/EditText;

    iput-object p13, p0, Lcom/payu/custombrowser/Bank$21;->val$pinButton:Landroid/view/View;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/payu/custombrowser/Bank$21;->val$retryButton:Landroid/view/View;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/payu/custombrowser/Bank$21;->val$enterManuallyButton:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2207
    iget v1, p0, Lcom/payu/custombrowser/Bank$21;->val$time_wait_for_sms:I

    iput v1, p0, Lcom/payu/custombrowser/Bank$21;->i:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 2212
    iget v6, p0, Lcom/payu/custombrowser/Bank$21;->i:I

    if-nez v6, :cond_5

    .line 2214
    :try_start_0
    iget-object v6, p0, Lcom/payu/custombrowser/Bank$21;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v6, v6, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/payu/custombrowser/Bank$21;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v6, v6, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/payu/custombrowser/Bank$21;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v6, v6, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    sget v7, Lcom/payu/custombrowser/R$id;->otp_sms:I

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2215
    iget-object v6, p0, Lcom/payu/custombrowser/Bank$21;->val$timerView:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2216
    new-instance v1, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/payu/custombrowser/Bank$21;->val$params:Ljava/lang/String;

    invoke-direct {v1, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2217
    .local v1, "p":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/payu/custombrowser/Bank$21;->this$0:Lcom/payu/custombrowser/Bank;

    sget v7, Lcom/payu/custombrowser/R$string;->cb_regenerate:I

    invoke-virtual {v6, v7}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/payu/custombrowser/Bank$21;->this$0:Lcom/payu/custombrowser/Bank;

    sget v7, Lcom/payu/custombrowser/R$string;->cb_regenerate:I

    invoke-virtual {v6, v7}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v3, v2

    .line 2218
    .local v3, "regenerate":Z
    :goto_0
    iget-object v6, p0, Lcom/payu/custombrowser/Bank$21;->this$0:Lcom/payu/custombrowser/Bank;

    sget v7, Lcom/payu/custombrowser/R$string;->cb_pin:I

    invoke-virtual {v6, v7}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/payu/custombrowser/Bank$21;->this$0:Lcom/payu/custombrowser/Bank;

    sget v7, Lcom/payu/custombrowser/R$string;->cb_pin:I

    invoke-virtual {v6, v7}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2220
    .local v2, "pin":Z
    :goto_1
    if-eqz v3, :cond_3

    .line 2221
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$21;->val$regenerateLayoutGone:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2222
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$21;->val$pinLayoutGone:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2223
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$21;->val$enterManuallyGone:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2234
    :goto_2
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$21;->val$retryText:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2235
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$21;->val$regenerateLayout:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2236
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$21;->val$approveButton:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 2237
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$21;->val$waiting:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2238
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$21;->val$otpSms:Landroid/widget/EditText;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2239
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$21;->val$pinButton:Landroid/view/View;

    iget-object v6, p0, Lcom/payu/custombrowser/Bank$21;->this$0:Lcom/payu/custombrowser/Bank;

    # getter for: Lcom/payu/custombrowser/Bank;->buttonClickListener:Lcom/payu/custombrowser/Bank$ButtonOnclickListener;
    invoke-static {v6}, Lcom/payu/custombrowser/Bank;->access$500(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2240
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$21;->val$retryButton:Landroid/view/View;

    iget-object v6, p0, Lcom/payu/custombrowser/Bank$21;->this$0:Lcom/payu/custombrowser/Bank;

    # getter for: Lcom/payu/custombrowser/Bank;->buttonClickListener:Lcom/payu/custombrowser/Bank$ButtonOnclickListener;
    invoke-static {v6}, Lcom/payu/custombrowser/Bank;->access$500(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2241
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$21;->val$enterManuallyButton:Landroid/view/View;

    iget-object v6, p0, Lcom/payu/custombrowser/Bank$21;->this$0:Lcom/payu/custombrowser/Bank;

    # getter for: Lcom/payu/custombrowser/Bank;->buttonClickListener:Lcom/payu/custombrowser/Bank$ButtonOnclickListener;
    invoke-static {v6}, Lcom/payu/custombrowser/Bank;->access$500(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2242
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$21;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v6, p0, Lcom/payu/custombrowser/Bank$21;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v6, v6, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/payu/custombrowser/Bank;->updateHeight(Landroid/view/View;)V

    .line 2266
    .end local v1    # "p":Lorg/json/JSONObject;
    .end local v2    # "pin":Z
    .end local v3    # "regenerate":Z
    :cond_0
    :goto_3
    return-void

    .restart local v1    # "p":Lorg/json/JSONObject;
    :cond_1
    move v3, v5

    .line 2217
    goto :goto_0

    .restart local v3    # "regenerate":Z
    :cond_2
    move v2, v5

    .line 2218
    goto :goto_1

    .line 2225
    .restart local v2    # "pin":Z
    :cond_3
    if-eqz v2, :cond_4

    .line 2226
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$21;->val$pinLayoutGone:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2230
    :goto_4
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$21;->val$regenerateLayoutGone:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2231
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$21;->val$enterManuallyGone:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2244
    .end local v1    # "p":Lorg/json/JSONObject;
    .end local v2    # "pin":Z
    .end local v3    # "regenerate":Z
    :catch_0
    move-exception v0

    .line 2245
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 2228
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "p":Lorg/json/JSONObject;
    .restart local v2    # "pin":Z
    .restart local v3    # "regenerate":Z
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$21;->val$pinLayoutGone:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 2247
    .end local v1    # "p":Lorg/json/JSONObject;
    .end local v2    # "pin":Z
    .end local v3    # "regenerate":Z
    :cond_5
    iget-object v6, p0, Lcom/payu/custombrowser/Bank$21;->val$otpSms:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->hasFocus()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/payu/custombrowser/Bank$21;->val$otpSms:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2249
    iget v6, p0, Lcom/payu/custombrowser/Bank$21;->i:I

    iget v7, p0, Lcom/payu/custombrowser/Bank$21;->val$time_wait_for_sms:I

    if-ne v6, v7, :cond_6

    .line 2250
    iget-object v6, p0, Lcom/payu/custombrowser/Bank$21;->val$timerView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2254
    :cond_6
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_8

    iget-object v5, p0, Lcom/payu/custombrowser/Bank$21;->this$0:Lcom/payu/custombrowser/Bank;

    iget-boolean v5, v5, Lcom/payu/custombrowser/Bank;->permissionGranted:Z

    if-nez v5, :cond_8

    .line 2255
    iget v5, p0, Lcom/payu/custombrowser/Bank$21;->i:I

    if-eq v5, v2, :cond_7

    .line 2256
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/payu/custombrowser/Bank$21;->i:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  secs remaining to regenerate OTP\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2263
    .local v4, "tMessage":Ljava/lang/String;
    :goto_5
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$21;->val$timerView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2264
    iget v5, p0, Lcom/payu/custombrowser/Bank$21;->i:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/payu/custombrowser/Bank$21;->i:I

    goto :goto_3

    .line 2258
    .end local v4    # "tMessage":Ljava/lang/String;
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/payu/custombrowser/Bank$21;->i:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sec remaining to regenerate OTP\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "tMessage":Ljava/lang/String;
    goto :goto_5

    .line 2261
    .end local v4    # "tMessage":Ljava/lang/String;
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/payu/custombrowser/Bank$21;->i:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "tMessage":Ljava/lang/String;
    goto :goto_5
.end method
