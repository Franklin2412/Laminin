.class public Lcom/payu/custombrowser/PayUCustomBrowserCallback;
.super Ljava/lang/Object;
.source "PayUCustomBrowserCallback.java"


# instance fields
.field private postData:Ljava/lang/String;

.field private postURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPostData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->postData:Ljava/lang/String;

    return-object v0
.end method

.method public getPostURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->postURL:Ljava/lang/String;

    return-object v0
.end method

.method public initializeMagicRetry(Lcom/payu/custombrowser/Bank;Landroid/webkit/WebView;Lcom/payu/magicretry/MagicRetryFragment;)V
    .locals 0
    .param p1, "payUCustomBrowser"    # Lcom/payu/custombrowser/Bank;
    .param p2, "webview"    # Landroid/webkit/WebView;
    .param p3, "magicRetryFragment"    # Lcom/payu/magicretry/MagicRetryFragment;

    .prologue
    .line 44
    return-void
.end method

.method public onBackApprove()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public onBackButton(Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .param p1, "alertDialogBuilder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 35
    return-void
.end method

.method public onBackDismiss()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onCBErrorReceived(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "errormsg"    # Ljava/lang/String;

    .prologue
    .line 24
    return-void
.end method

.method public onPaymentFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "payuResult"    # Ljava/lang/String;
    .param p2, "merchantResponse"    # Ljava/lang/String;

    .prologue
    .line 15
    return-void
.end method

.method public onPaymentSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "payuResult"    # Ljava/lang/String;
    .param p2, "merchantResponse"    # Ljava/lang/String;

    .prologue
    .line 21
    return-void
.end method

.method public onPaymentTerminate()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public setCBProperties(Landroid/webkit/WebView;Lcom/payu/custombrowser/Bank;)V
    .locals 0
    .param p1, "webview"    # Landroid/webkit/WebView;
    .param p2, "payUCustomBrowser"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 32
    return-void
.end method

.method public setCBProperties(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "postURL"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "postData"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-virtual {p0, p2}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->setPostData(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->setPostURL(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public setPostData(Ljava/lang/String;)V
    .locals 0
    .param p1, "postData"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->postData:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setPostURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "postURL"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->postURL:Ljava/lang/String;

    .line 60
    return-void
.end method
