.class Lcom/payu/custombrowser/Bank$9$2;
.super Ljava/lang/Object;
.source "Bank.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/payu/custombrowser/Bank$9;

.field final synthetic val$bContinue:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank$9;Landroid/widget/Button;)V
    .locals 0
    .param p1, "this$1"    # Lcom/payu/custombrowser/Bank$9;

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$9$2;->this$1:Lcom/payu/custombrowser/Bank$9;

    iput-object p2, p0, Lcom/payu/custombrowser/Bank$9$2;->val$bContinue:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1129
    :try_start_0
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$9$2;->this$1:Lcom/payu/custombrowser/Bank$9;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v2, "user_input"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/payu/custombrowser/util/CBAnalyticsConstant;->NB_BUTTON_CLICK:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/payu/custombrowser/Bank$9$2;->val$bContinue:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$9$2;->this$1:Lcom/payu/custombrowser/Bank$9;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$9$2;->this$1:Lcom/payu/custombrowser/Bank$9;

    iget-object v3, v3, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v3, v3, Lcom/payu/custombrowser/Bank;->mJS:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/payu/custombrowser/Bank$9$2;->this$1:Lcom/payu/custombrowser/Bank$9;

    iget-object v4, v4, Lcom/payu/custombrowser/Bank$9;->this$0:Lcom/payu/custombrowser/Bank;

    sget v5, Lcom/payu/custombrowser/R$string;->cb_btn_action:I

    invoke-virtual {v4, v5}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    :goto_0
    return-void

    .line 1132
    :catch_0
    move-exception v0

    .line 1133
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
