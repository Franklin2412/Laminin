.class public Lcom/payu/custombrowser/PayUSnoozeWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "PayUSnoozeWebViewClient.java"


# instance fields
.field private bank:Lcom/payu/custombrowser/Bank;

.field private loadingFinished:Z

.field private mainUrl:Ljava/lang/String;

.field private redirect:Z


# direct methods
.method public constructor <init>(Lcom/payu/custombrowser/Bank;Ljava/lang/String;)V
    .locals 1
    .param p1, "bank"    # Lcom/payu/custombrowser/Bank;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "merchantKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;->loadingFinished:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;->redirect:Z

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;->mainUrl:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;->bank:Lcom/payu/custombrowser/Bank;

    .line 54
    sget-object v0, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 55
    sput-object p2, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;->bank:Lcom/payu/custombrowser/Bank;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;->bank:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0, p1, p2}, Lcom/payu/custombrowser/Bank;->onLoadResourse(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 93
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 72
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 73
    iget-boolean v0, p0, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;->redirect:Z

    if-nez v0, :cond_0

    .line 74
    iput-boolean v2, p0, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;->loadingFinished:Z

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;->mainUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    iput-boolean v2, p0, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;->loadingFinished:Z

    .line 79
    iput-boolean v1, p0, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;->redirect:Z

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;->bank:Lcom/payu/custombrowser/Bank;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;->bank:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0, p2}, Lcom/payu/custombrowser/Bank;->onPageFinishWebclient(Ljava/lang/String;)V

    .line 87
    :cond_1
    return-void

    .line 81
    :cond_2
    iput-boolean v1, p0, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;->redirect:Z

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;->loadingFinished:Z

    .line 64
    iget-object v0, p0, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;->bank:Lcom/payu/custombrowser/Bank;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;->bank:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0, p2}, Lcom/payu/custombrowser/Bank;->onPageStartedWebclient(Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    if-eqz p4, :cond_0

    .line 102
    iget-object v0, p0, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;->bank:Lcom/payu/custombrowser/Bank;

    if-eqz v0, :cond_0

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;->bank:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0, p2, p3}, Lcom/payu/custombrowser/Bank;->onReceivedErrorWebClient(ILjava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "error"    # Landroid/webkit/WebResourceError;

    .prologue
    .line 111
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 112
    iget-object v0, p0, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;->bank:Lcom/payu/custombrowser/Bank;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;->bank:Lcom/payu/custombrowser/Bank;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->onReceivedErrorWebClient(ILjava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    .line 123
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 148
    iput-object p2, p0, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;->mainUrl:Ljava/lang/String;

    .line 149
    iget-boolean v0, p0, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;->loadingFinished:Z

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;->redirect:Z

    .line 153
    :cond_0
    iput-boolean v1, p0, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;->loadingFinished:Z

    .line 155
    iget-object v0, p0, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;->bank:Lcom/payu/custombrowser/Bank;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;->bank:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0, p2}, Lcom/payu/custombrowser/Bank;->onOverrideURL(Ljava/lang/String;)V

    .line 159
    :cond_1
    return v1
.end method
