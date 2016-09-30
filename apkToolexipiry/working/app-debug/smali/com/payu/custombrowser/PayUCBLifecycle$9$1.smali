.class Lcom/payu/custombrowser/PayUCBLifecycle$9$1;
.super Ljava/lang/Object;
.source "PayUCBLifecycle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/PayUCBLifecycle$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/payu/custombrowser/PayUCBLifecycle$9;

.field final synthetic val$snoozeConfig:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/PayUCBLifecycle$9;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/payu/custombrowser/PayUCBLifecycle$9;

    .prologue
    .line 921
    iput-object p1, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9$1;->this$1:Lcom/payu/custombrowser/PayUCBLifecycle$9;

    iput-object p2, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9$1;->val$snoozeConfig:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 924
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9$1;->this$1:Lcom/payu/custombrowser/PayUCBLifecycle$9;

    iget-object v0, v0, Lcom/payu/custombrowser/PayUCBLifecycle$9;->this$0:Lcom/payu/custombrowser/PayUCBLifecycle;

    iget-object v0, v0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle$9$1;->val$snoozeConfig:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 926
    return-void
.end method
