.class public Lcom/payu/magicretry/WebClient/MerchantsWebViewClient;
.super Lcom/payu/magicretry/WebClient/MagicRetryWebViewClient;
.source "MerchantsWebViewClient.java"


# direct methods
.method public constructor <init>(Lcom/payu/magicretry/MagicRetryFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/payu/magicretry/MagicRetryFragment;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/payu/magicretry/WebClient/MagicRetryWebViewClient;-><init>(Lcom/payu/magicretry/MagicRetryFragment;)V

    .line 17
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Lcom/payu/magicretry/WebClient/MagicRetryWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 21
    invoke-super {p0, p1, p2, p3}, Lcom/payu/magicretry/WebClient/MagicRetryWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 22
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "error"    # Landroid/webkit/WebResourceError;

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/payu/magicretry/WebClient/MagicRetryWebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 37
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Lcom/payu/magicretry/WebClient/MagicRetryWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
