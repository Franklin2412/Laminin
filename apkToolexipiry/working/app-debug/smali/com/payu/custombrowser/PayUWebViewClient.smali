.class public Lcom/payu/custombrowser/PayUWebViewClient;
.super Lcom/payu/magicretry/WebClient/MagicRetryWebViewClient;
.source "PayUWebViewClient.java"


# instance fields
.field private bank:Lcom/payu/custombrowser/Bank;

.field private loadingFinished:Z

.field private mainUrl:Ljava/lang/String;

.field private redirect:Z


# direct methods
.method public constructor <init>(Lcom/payu/custombrowser/Bank;Lcom/payu/magicretry/MagicRetryFragment;Ljava/lang/String;)V
    .locals 1
    .param p1, "bank"    # Lcom/payu/custombrowser/Bank;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "magicRetryFragment"    # Lcom/payu/magicretry/MagicRetryFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "merchantKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 63
    invoke-direct {p0, p2}, Lcom/payu/magicretry/WebClient/MagicRetryWebViewClient;-><init>(Lcom/payu/magicretry/MagicRetryFragment;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->loadingFinished:Z

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->redirect:Z

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->mainUrl:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/payu/custombrowser/PayUWebViewClient;->bank:Lcom/payu/custombrowser/Bank;

    .line 65
    sget-object v0, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 66
    sput-object p3, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    .line 67
    :cond_0
    return-void
.end method

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
    .line 55
    invoke-direct {p0}, Lcom/payu/magicretry/WebClient/MagicRetryWebViewClient;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->loadingFinished:Z

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->redirect:Z

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->mainUrl:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/payu/custombrowser/PayUWebViewClient;->bank:Lcom/payu/custombrowser/Bank;

    .line 57
    sget-object v0, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 58
    sput-object p2, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->bank:Lcom/payu/custombrowser/Bank;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->bank:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0, p1, p2}, Lcom/payu/custombrowser/Bank;->onLoadResourse(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 107
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/payu/magicretry/WebClient/MagicRetryWebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-super {p0, p1, p2}, Lcom/payu/magicretry/WebClient/MagicRetryWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 87
    iget-boolean v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->redirect:Z

    if-nez v0, :cond_0

    .line 88
    iput-boolean v2, p0, Lcom/payu/custombrowser/PayUWebViewClient;->loadingFinished:Z

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->mainUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    iput-boolean v2, p0, Lcom/payu/custombrowser/PayUWebViewClient;->loadingFinished:Z

    .line 93
    iput-boolean v1, p0, Lcom/payu/custombrowser/PayUWebViewClient;->redirect:Z

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->bank:Lcom/payu/custombrowser/Bank;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->bank:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0, p2}, Lcom/payu/custombrowser/Bank;->onPageFinishWebclient(Ljava/lang/String;)V

    .line 101
    :cond_1
    return-void

    .line 95
    :cond_2
    iput-boolean v1, p0, Lcom/payu/custombrowser/PayUWebViewClient;->redirect:Z

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 72
    invoke-super {p0, p1, p2, p3}, Lcom/payu/magicretry/WebClient/MagicRetryWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->loadingFinished:Z

    .line 75
    iget-object v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->bank:Lcom/payu/custombrowser/Bank;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->bank:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0, p2}, Lcom/payu/custombrowser/Bank;->onPageStartedWebclient(Ljava/lang/String;)V

    .line 78
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
    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Lcom/payu/magicretry/WebClient/MagicRetryWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 116
    if-eqz p4, :cond_0

    .line 117
    iget-object v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->bank:Lcom/payu/custombrowser/Bank;

    if-eqz v0, :cond_0

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->bank:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0, p2, p3}, Lcom/payu/custombrowser/Bank;->onReceivedErrorWebClient(ILjava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "error"    # Landroid/webkit/WebResourceError;

    .prologue
    .line 126
    invoke-super {p0, p1, p2, p3}, Lcom/payu/magicretry/WebClient/MagicRetryWebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 128
    iget-object v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->bank:Lcom/payu/custombrowser/Bank;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->bank:Lcom/payu/custombrowser/Bank;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->onReceivedErrorWebClient(ILjava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    .line 139
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 141
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

    .line 163
    iput-object p2, p0, Lcom/payu/custombrowser/PayUWebViewClient;->mainUrl:Ljava/lang/String;

    .line 164
    iget-boolean v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->loadingFinished:Z

    if-nez v0, :cond_0

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->redirect:Z

    .line 167
    :cond_0
    iput-boolean v1, p0, Lcom/payu/custombrowser/PayUWebViewClient;->loadingFinished:Z

    .line 168
    iget-object v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->bank:Lcom/payu/custombrowser/Bank;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/payu/custombrowser/PayUWebViewClient;->bank:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0, p2}, Lcom/payu/custombrowser/Bank;->onOverrideURL(Ljava/lang/String;)V

    .line 171
    :cond_1
    return v1
.end method
