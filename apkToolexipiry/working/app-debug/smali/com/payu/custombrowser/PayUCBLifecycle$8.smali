.class Lcom/payu/custombrowser/PayUCBLifecycle$8;
.super Ljava/lang/Object;
.source "PayUCBLifecycle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/PayUCBLifecycle;->fillOTP(Landroid/content/BroadcastReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

.field final synthetic val$otpSMS:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/PayUCBLifecycle;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payu/custombrowser/PayUCBLifecycle;

    .prologue
    .line 843
    iput-object p1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$8;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iput-object p2, p0, Lcom/payu/custombrowser/PayUCBLifecycle$8;->val$otpSMS:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 847
    :try_start_0
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$8;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/payu/custombrowser/PayUCBLifecycle;->mPassword:Ljava/lang/String;

    .line 848
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$8;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    const-string v2, "approved_otp"

    iput-object v2, v1, Lcom/payu/custombrowser/PayUCBLifecycle;->eventRecorded:Ljava/lang/String;

    .line 849
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$8;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    const-string v2, "user_input"

    iget-object v3, p0, Lcom/payu/custombrowser/PayUCBLifecycle$8;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v3, v3, Lcom/payu/custombrowser/PayUCBLifecycle;->eventRecorded:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/PayUCBLifecycle;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$8;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    const-string v2, "Approve_btn_clicked_time"

    invoke-static {}, Lcom/payu/custombrowser/CustomBrowserMain;->getSystemCurrentTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/PayUCBLifecycle;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$8;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-virtual {v1}, Lcom/payu/custombrowser/PayUCBLifecycle;->prepareSmsListener()V

    .line 853
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$8;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/payu/custombrowser/PayUCBLifecycle;->checkLoading:Z

    .line 854
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$8;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/payu/custombrowser/PayUCBLifecycle;->approve_flag:Ljava/lang/Boolean;

    .line 855
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$8;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-virtual {v1}, Lcom/payu/custombrowser/PayUCBLifecycle;->onHelpUnavailable()V

    .line 856
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$8;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-virtual {v1}, Lcom/payu/custombrowser/PayUCBLifecycle;->maximiseWebviewHeight()V

    .line 857
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$8;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    const/4 v2, 0x1

    iput v2, v1, Lcom/payu/custombrowser/PayUCBLifecycle;->frameState:I

    .line 858
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$8;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v1, v1, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/PayUCBLifecycle$8;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v3, v3, Lcom/payu/custombrowser/PayUCBLifecycle;->mJS:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/payu/custombrowser/PayUCBLifecycle$8;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    sget v5, Lcom/payu/custombrowser/R$string;->cb_process_otp:I

    invoke-virtual {v4, v5}, Lcom/payu/custombrowser/PayUCBLifecycle;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/PayUCBLifecycle$8;->val$otpSMS:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 859
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$8;->val$otpSMS:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 860
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$8;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    invoke-virtual {v1}, Lcom/payu/custombrowser/PayUCBLifecycle;->hideSoftKeyboard()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 867
    :goto_0
    return-void

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 864
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 865
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
