.class public Lcom/payu/magicretry/WebClient/MagicRetryWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MagicRetryWebViewClient.java"


# instance fields
.field private magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/payu/magicretry/MagicRetryFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/payu/magicretry/MagicRetryFragment;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/payu/magicretry/WebClient/MagicRetryWebViewClient;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    .line 27
    return-void
.end method


# virtual methods
.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    .prologue
    .line 64
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 65
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string v0, "#### PAYU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MagicRetryWebViewClient.java: onPageFinished: URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payu/magicretry/Helpers/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/payu/magicretry/WebClient/MagicRetryWebViewClient;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/payu/magicretry/WebClient/MagicRetryWebViewClient;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    invoke-virtual {v0, p1, p2}, Lcom/payu/magicretry/MagicRetryFragment;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 31
    const-string v0, "#### PAYU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MagicRetryWebViewClient.java: onPageStarted: URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payu/magicretry/Helpers/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 40
    iget-object v0, p0, Lcom/payu/magicretry/WebClient/MagicRetryWebViewClient;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/payu/magicretry/WebClient/MagicRetryWebViewClient;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    invoke-virtual {v0, p1, p2}, Lcom/payu/magicretry/MagicRetryFragment;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "#### PAYU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MagicRetryWebViewClient.java: onReceivedError: URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payu/magicretry/Helpers/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/payu/magicretry/WebClient/MagicRetryWebViewClient;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/payu/magicretry/WebClient/MagicRetryWebViewClient;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    invoke-virtual {v0, p1, p4}, Lcom/payu/magicretry/MagicRetryFragment;->onReceivedError(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "error"    # Landroid/webkit/WebResourceError;

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 70
    const-string v0, "#### PAYU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MagicRetryWebViewClient.java: onReceivedError: URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payu/magicretry/Helpers/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/payu/magicretry/WebClient/MagicRetryWebViewClient;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/payu/magicretry/WebClient/MagicRetryWebViewClient;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/payu/magicretry/MagicRetryFragment;->onReceivedError(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 47
    const-string v0, "#### PAYU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MagicRetryWebViewClient.java: shouldOverrideUrlLoading: URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payu/magicretry/Helpers/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
