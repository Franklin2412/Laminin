.class Lcom/payu/custombrowser/Bank$16$1$1;
.super Ljava/lang/Object;
.source "Bank.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank$16$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/payu/custombrowser/Bank$16$1;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank$16$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/payu/custombrowser/Bank$16$1;

    .prologue
    .line 1517
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$16$1$1;->this$2:Lcom/payu/custombrowser/Bank$16$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1521
    :try_start_0
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$16$1$1;->this$2:Lcom/payu/custombrowser/Bank$16$1;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v2, "password_click"

    iput-object v2, v1, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    .line 1522
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$16$1$1;->this$2:Lcom/payu/custombrowser/Bank$16$1;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    const-string v2, "user_input"

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$16$1$1;->this$2:Lcom/payu/custombrowser/Bank$16$1;

    iget-object v3, v3, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v3, v3, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v3, v3, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$16$1$1;->this$2:Lcom/payu/custombrowser/Bank$16$1;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/Bank$16$1$1;->this$2:Lcom/payu/custombrowser/Bank$16$1;

    iget-object v3, v3, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

    iget-object v3, v3, Lcom/payu/custombrowser/Bank$16;->this$0:Lcom/payu/custombrowser/Bank;

    iget-object v3, v3, Lcom/payu/custombrowser/Bank;->mJS:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/payu/custombrowser/Bank$16$1$1;->this$2:Lcom/payu/custombrowser/Bank$16$1;

    iget-object v4, v4, Lcom/payu/custombrowser/Bank$16$1;->this$1:Lcom/payu/custombrowser/Bank$16;

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
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1527
    :goto_0
    return-void

    .line 1524
    :catch_0
    move-exception v0

    .line 1525
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
