.class public Lcom/payu/magicretry/MagicRetryFragment;
.super Landroid/support/v4/app/Fragment;
.source "MagicRetryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payu/magicretry/MagicRetryFragment$ActivityCallback;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static final KEY_TXNID:Ljava/lang/String; = "transaction_id"

.field public static final SP_IS_MR_ENABLED:Ljava/lang/String; = "MR_ENABLED"

.field public static final SP_MR_FILE_NAME:Ljava/lang/String; = "MR_SETTINGS"

.field public static final SP_WHITELISTED_URLS:Ljava/lang/String; = "MR_WHITELISTED_URLS"

.field private static analyticsKey:Ljava/lang/String; = null

.field private static bankName:Ljava/lang/String; = null

.field private static cbVersion:Ljava/lang/String; = null

.field private static disableMagicRetry:Z = false

.field private static final projectToken:Ljava/lang/String; = "68dbbac2c25bc048154999d13cb77a55"

.field private static whiteListedUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field PAYU_DOMAIN:Ljava/lang/String;

.field PAYU_DOMAIN_PROD:Ljava/lang/String;

.field PAYU_DOMAIN_TEST:Ljava/lang/String;

.field private activityCallbackHandler:Lcom/payu/magicretry/MagicRetryFragment$ActivityCallback;

.field private context:Landroid/content/Context;

.field private errorWasReceived:Z

.field private firstCall:I

.field private fromOnReceivedError:Z

.field private isWhiteListingEnabled:Z

.field private mAnalytics:Lcom/payu/magicretry/analytics/MRAnalytics;

.field private mWebView:Landroid/webkit/WebView;

.field private magicProgress:Landroid/widget/ProgressBar;

.field private magicRetryLayoutParent:Landroid/widget/LinearLayout;

.field private reloadUrl:Ljava/lang/String;

.field private retryButton:Landroid/widget/ImageView;

.field private txnID:Ljava/lang/String;

.field private urlListWithPostData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private waitingDotsLayoutParent:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/payu/magicretry/MagicRetryFragment;->whiteListedUrls:Ljava/util/List;

    .line 72
    sput-boolean v1, Lcom/payu/magicretry/MagicRetryFragment;->disableMagicRetry:Z

    .line 74
    sput-boolean v1, Lcom/payu/magicretry/MagicRetryFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 94
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 46
    iput-boolean v1, p0, Lcom/payu/magicretry/MagicRetryFragment;->errorWasReceived:Z

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->fromOnReceivedError:Z

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->urlListWithPostData:Ljava/util/Map;

    .line 70
    iput-boolean v1, p0, Lcom/payu/magicretry/MagicRetryFragment;->isWhiteListingEnabled:Z

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->txnID:Ljava/lang/String;

    .line 89
    const-string v0, "https://mobiletest.payu.in"

    iput-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->PAYU_DOMAIN_TEST:Ljava/lang/String;

    .line 90
    const-string v0, "https://secure.payu.in"

    iput-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->PAYU_DOMAIN_PROD:Ljava/lang/String;

    .line 91
    sget-boolean v0, Lcom/payu/magicretry/MagicRetryFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->PAYU_DOMAIN_TEST:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->PAYU_DOMAIN:Ljava/lang/String;

    .line 95
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->PAYU_DOMAIN_PROD:Ljava/lang/String;

    goto :goto_0
.end method

.method public static disableMagicRetry(Z)V
    .locals 0
    .param p0, "disable"    # Z

    .prologue
    .line 478
    sput-boolean p0, Lcom/payu/magicretry/MagicRetryFragment;->disableMagicRetry:Z

    .line 479
    return-void
.end method

.method private hideItems()V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/payu/magicretry/MagicRetryFragment;->hideMagicReloadProgressDialog()V

    .line 474
    return-void
.end method

.method private hideMagicReloadProgressDialog()V
    .locals 2

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/payu/magicretry/MagicRetryFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->waitingDotsLayoutParent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->waitingDotsLayoutParent:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->magicProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->magicProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->magicRetryLayoutParent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->magicRetryLayoutParent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 291
    :cond_2
    return-void
.end method

.method private initViewElements(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 149
    sget v0, Lcom/payu/magicretry/R$id;->magic_reload_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->magicProgress:Landroid/widget/ProgressBar;

    .line 150
    sget v0, Lcom/payu/magicretry/R$id;->retry_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->retryButton:Landroid/widget/ImageView;

    .line 155
    sget v0, Lcom/payu/magicretry/R$id;->waiting_dots_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->waitingDotsLayoutParent:Landroid/widget/LinearLayout;

    .line 156
    sget v0, Lcom/payu/magicretry/R$id;->magic_retry_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->magicRetryLayoutParent:Landroid/widget/LinearLayout;

    .line 158
    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->magicRetryLayoutParent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->waitingDotsLayoutParent:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->retryButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-void
.end method

.method public static isUrlWhiteListed(Ljava/lang/String;)Z
    .locals 3
    .param p0, "currentUrl"    # Ljava/lang/String;

    .prologue
    .line 583
    sget-object v1, Lcom/payu/magicretry/MagicRetryFragment;->whiteListedUrls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 584
    .local v0, "whiteListedUrl":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 585
    const/4 v1, 0x1

    .line 588
    .end local v0    # "whiteListedUrl":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWhiteListedURL(Ljava/lang/String;)Z
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 456
    iget-boolean v2, p0, Lcom/payu/magicretry/MagicRetryFragment;->isWhiteListingEnabled:Z

    if-eqz v2, :cond_1

    .line 457
    sget-object v2, Lcom/payu/magicretry/MagicRetryFragment;->whiteListedUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 458
    .local v0, "whiteListedUrl":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 459
    const-string v2, "#### PAYU"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WHITELISTED URL FOUND.. SHOWING MAGIC RETRY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/payu/magicretry/Helpers/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    .end local v0    # "whiteListedUrl":Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 463
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private performReload()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 198
    const-string v0, "#### PAYU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PayUWebViewClient.java Reloading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/magicretry/MagicRetryFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->reloadUrl:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->urlListWithPostData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->urlListWithPostData:Ljava/util/Map;

    iget-object v1, p0, Lcom/payu/magicretry/MagicRetryFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/payu/magicretry/Helpers/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iput-boolean v3, p0, Lcom/payu/magicretry/MagicRetryFragment;->fromOnReceivedError:Z

    .line 208
    iget-object v1, p0, Lcom/payu/magicretry/MagicRetryFragment;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->urlListWithPostData:Ljava/util/Map;

    iget-object v3, p0, Lcom/payu/magicretry/MagicRetryFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 212
    const-string v0, "m_retry_input"

    const-string v1, "click_m_retry"

    invoke-virtual {p0, v0, v1}, Lcom/payu/magicretry/MagicRetryFragment;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-direct {p0}, Lcom/payu/magicretry/MagicRetryFragment;->showMagicReloadProgressDialog()V

    .line 238
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/payu/magicretry/Helpers/Util;->showNetworkNotAvailableError(Landroid/content/Context;)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/payu/magicretry/Helpers/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    iput-boolean v3, p0, Lcom/payu/magicretry/MagicRetryFragment;->fromOnReceivedError:Z

    .line 223
    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 227
    const-string v0, "m_retry_input"

    const-string v1, "click_m_retry"

    invoke-virtual {p0, v0, v1}, Lcom/payu/magicretry/MagicRetryFragment;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Lcom/payu/magicretry/MagicRetryFragment;->showMagicReloadProgressDialog()V

    goto :goto_0

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/payu/magicretry/Helpers/Util;->showNetworkNotAvailableError(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static processAndAddWhiteListedUrls(Ljava/lang/String;)V
    .locals 8
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 513
    if-eqz p0, :cond_2

    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 515
    const-string v3, "\\|"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, "urls":[Ljava/lang/String;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 517
    .local v0, "url":Ljava/lang/String;
    const-string v5, "#### PAYU"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Split Url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/payu/magicretry/Helpers/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 520
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 521
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 522
    .local v2, "whiteListedUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/payu/magicretry/MagicRetryFragment;->setWhitelistedURL(Ljava/util/List;)V

    .line 524
    .end local v2    # "whiteListedUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-string v3, "#### PAYU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Whitelisted URLs from JS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/payu/magicretry/Helpers/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .end local v1    # "urls":[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static setMRData(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 534
    if-nez p0, :cond_0

    .line 535
    const-string v0, "MR_SETTINGS"

    const-string v1, "MR_ENABLED"

    invoke-static {p1, v0, v1, v2}, Lcom/payu/magicretry/Helpers/SharedPreferenceUtil;->addBooleanToSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 537
    invoke-static {v3}, Lcom/payu/magicretry/MagicRetryFragment;->disableMagicRetry(Z)V

    .line 538
    const-string v0, "#### PAYU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MR SP Setting 1) Disable MR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/payu/magicretry/MagicRetryFragment;->disableMagicRetry:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payu/magicretry/Helpers/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v0, "MR_SETTINGS"

    const-string v1, "MR_WHITELISTED_URLS"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/payu/magicretry/Helpers/SharedPreferenceUtil;->addStringToSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/payu/magicretry/MagicRetryFragment;->setWhitelistedURL(Ljava/util/List;)V

    .line 544
    const-string v0, "#### PAYU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MR SP Setting 2) Clear white listed urls, length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/payu/magicretry/MagicRetryFragment;->whiteListedUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payu/magicretry/Helpers/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :goto_0
    const-string v0, "#### PAYU"

    const-string v1, "MR DATA UPDATED IN SHARED PREFERENCES"

    invoke-static {v0, v1}, Lcom/payu/magicretry/Helpers/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    return-void

    .line 546
    :cond_0
    const-string v0, "MR_SETTINGS"

    const-string v1, "MR_ENABLED"

    invoke-static {p1, v0, v1, v3}, Lcom/payu/magicretry/Helpers/SharedPreferenceUtil;->addBooleanToSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 548
    invoke-static {v2}, Lcom/payu/magicretry/MagicRetryFragment;->disableMagicRetry(Z)V

    .line 549
    const-string v0, "#### PAYU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MR SP Setting 1) Disable MR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/payu/magicretry/MagicRetryFragment;->disableMagicRetry:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payu/magicretry/Helpers/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v0, "MR_SETTINGS"

    const-string v1, "MR_WHITELISTED_URLS"

    invoke-static {p1, v0, v1, p0}, Lcom/payu/magicretry/Helpers/SharedPreferenceUtil;->addStringToSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-static {p0}, Lcom/payu/magicretry/MagicRetryFragment;->processAndAddWhiteListedUrls(Ljava/lang/String;)V

    .line 554
    const-string v0, "#### PAYU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MR SP Setting 2) Update white listed urls, length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/payu/magicretry/MagicRetryFragment;->whiteListedUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payu/magicretry/Helpers/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setWhitelistedURL(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 497
    .local p0, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/payu/magicretry/MagicRetryFragment;->whiteListedUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 498
    const-string v0, "#### PAYU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MR Cleared whitelisted urls, length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/payu/magicretry/MagicRetryFragment;->whiteListedUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payu/magicretry/Helpers/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    sget-object v0, Lcom/payu/magicretry/MagicRetryFragment;->whiteListedUrls:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 500
    const-string v0, "#### PAYU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MR Updated whitelisted urls, length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/payu/magicretry/MagicRetryFragment;->whiteListedUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payu/magicretry/Helpers/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method private showMagicReloadProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->magicRetryLayoutParent:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->waitingDotsLayoutParent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->magicProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 266
    return-void
.end method


# virtual methods
.method public addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 441
    :try_start_0
    invoke-virtual {p0}, Lcom/payu/magicretry/MagicRetryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payu/magicretry/MagicRetryFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payu/magicretry/MagicRetryFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/payu/magicretry/MagicRetryFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->mAnalytics:Lcom/payu/magicretry/analytics/MRAnalytics;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->mAnalytics:Lcom/payu/magicretry/analytics/MRAnalytics;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/payu/magicretry/MagicRetryFragment;->getLogMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/magicretry/analytics/MRAnalytics;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 444
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getCookie(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p1, "cookieName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 390
    const-string v2, ""

    .line 393
    .local v2, "cookieValue":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/payu/magicretry/MagicRetryFragment;->PAYU_DOMAIN:Ljava/lang/String;

    .line 394
    .local v5, "siteName":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 395
    .local v1, "cookieManager":Landroid/webkit/CookieManager;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-ge v8, v9, :cond_0

    .line 396
    invoke-static {p2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 397
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 399
    :cond_0
    invoke-virtual {v1, v5}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, "cookies":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 401
    const-string v8, ";"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 402
    .local v6, "temp":[Ljava/lang/String;
    array-length v9, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v0, v6, v8

    .line 403
    .local v0, "ar1":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 404
    const-string v10, "="

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 405
    .local v7, "temp1":[Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v2, v7, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    .end local v7    # "temp1":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 409
    .end local v0    # "ar1":Ljava/lang/String;
    .end local v1    # "cookieManager":Landroid/webkit/CookieManager;
    .end local v3    # "cookies":Ljava/lang/String;
    .end local v5    # "siteName":Ljava/lang/String;
    .end local v6    # "temp":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 410
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 412
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v2
.end method

.method getLogMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 422
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 423
    .local v1, "eventAnalytics":Lorg/json/JSONObject;
    const-string v2, "payu_id"

    const-string v3, "PAYUID"

    iget-object v4, p0, Lcom/payu/magicretry/MagicRetryFragment;->context:Landroid/content/Context;

    invoke-virtual {p0, v3, v4}, Lcom/payu/magicretry/MagicRetryFragment;->getCookie(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 424
    const-string v3, "txnid"

    iget-object v2, p0, Lcom/payu/magicretry/MagicRetryFragment;->txnID:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 425
    const-string v2, "merchant_key"

    sget-object v3, Lcom/payu/magicretry/MagicRetryFragment;->analyticsKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 426
    const-string v2, "page_type"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    const-string v2, "key"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    const-string v2, "value"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 429
    const-string v2, "package_name"

    invoke-virtual {p0}, Lcom/payu/magicretry/MagicRetryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 430
    const-string v3, "bank"

    sget-object v2, Lcom/payu/magicretry/MagicRetryFragment;->bankName:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 431
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 434
    .end local v1    # "eventAnalytics":Lorg/json/JSONObject;
    :goto_2
    return-object v2

    .line 424
    .restart local v1    # "eventAnalytics":Lorg/json/JSONObject;
    :cond_0
    iget-object v2, p0, Lcom/payu/magicretry/MagicRetryFragment;->txnID:Ljava/lang/String;

    goto :goto_0

    .line 430
    :cond_1
    sget-object v2, Lcom/payu/magicretry/MagicRetryFragment;->bankName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 432
    .end local v1    # "eventAnalytics":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 434
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public initAnalytics(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 139
    new-instance v0, Lcom/payu/magicretry/analytics/MRAnalytics;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "local_cache_analytics_mr"

    invoke-direct {v0, v1, v2}, Lcom/payu/magicretry/analytics/MRAnalytics;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->mAnalytics:Lcom/payu/magicretry/analytics/MRAnalytics;

    .line 141
    return-void
.end method

.method public initMRSettingsFromSharedPreference(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 562
    const-string v5, "MR_SETTINGS"

    const-string v6, "MR_ENABLED"

    sget-boolean v2, Lcom/payu/magicretry/MagicRetryFragment;->disableMagicRetry:Z

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {p1, v5, v6, v2}, Lcom/payu/magicretry/Helpers/SharedPreferenceUtil;->getBooleanFromSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 564
    .local v0, "isMREnabled":Z
    if-nez v0, :cond_1

    :goto_1
    invoke-static {v3}, Lcom/payu/magicretry/MagicRetryFragment;->disableMagicRetry(Z)V

    .line 566
    const-string v2, "MR_SETTINGS"

    const-string v3, "MR_WHITELISTED_URLS"

    const-string v4, ""

    invoke-static {p1, v2, v3, v4}, Lcom/payu/magicretry/Helpers/SharedPreferenceUtil;->getStringFromSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, "whiteListedUrls":Ljava/lang/String;
    invoke-static {v1}, Lcom/payu/magicretry/MagicRetryFragment;->processAndAddWhiteListedUrls(Ljava/lang/String;)V

    .line 568
    return-void

    .end local v0    # "isMREnabled":Z
    .end local v1    # "whiteListedUrls":Ljava/lang/String;
    :cond_0
    move v2, v4

    .line 562
    goto :goto_0

    .restart local v0    # "isMREnabled":Z
    :cond_1
    move v3, v4

    .line 564
    goto :goto_1
.end method

.method public isWhiteListingEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 509
    iput-boolean p1, p0, Lcom/payu/magicretry/MagicRetryFragment;->isWhiteListingEnabled:Z

    .line 510
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 56
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 188
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/payu/magicretry/MagicRetryFragment$ActivityCallback;

    move-object v2, v0

    iput-object v2, p0, Lcom/payu/magicretry/MagicRetryFragment;->activityCallbackHandler:Lcom/payu/magicretry/MagicRetryFragment$ActivityCallback;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    return-void

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnHeadlineSelectedListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payu/magicretry/R$id;->retry_btn:I

    if-ne v0, v1, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/payu/magicretry/MagicRetryFragment;->performReload()V

    .line 179
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/payu/magicretry/MagicRetryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/payu/magicretry/MagicRetryFragment;->context:Landroid/content/Context;

    .line 101
    invoke-virtual {p0}, Lcom/payu/magicretry/MagicRetryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "transaction_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/payu/magicretry/MagicRetryFragment;->txnID:Ljava/lang/String;

    .line 103
    sget v2, Lcom/payu/magicretry/R$layout;->magicretry_fragment:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/payu/magicretry/MagicRetryFragment;->initViewElements(Landroid/view/View;)V

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v1, "whiteListedUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "https://secure.payu.in/_payment"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    const-string v2, "https://secure.payu.in/_secure_payment"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    const-string v2, "https://www.payumoney.com/txn/#/user/"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    const-string v2, "https://mpi.onlinesbi.com/electraSECURE/vbv/MPIEntry.jsp"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    const-string v2, "https://netsafe.hdfcbank.com/ACSWeb/com.enstage.entransact.servers.AccessControlServerSSL"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    const-string v2, "https://www.citibank.co.in/acspage/cap_nsapi.so"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    const-string v2, "https://acs.icicibank.com/acspage/cap"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    const-string v2, "https://secure.payu.in/_payment"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    const-string v2, "https://www.citibank.co.in/servlets/TransReq"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    const-string v2, "https://netsafe.hdfcbank.com/ACSWeb/com.enstage.entransact.servers.AccessControlServerSSL"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    const-string v2, "https://netsafe.hdfcbank.com/ACSWeb/jsp/MerchantPost.jsp"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    const-string v2, "https://netsafe.hdfcbank.com/ACSWeb/jsp/SCode.jsp"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    const-string v2, "https://netsafe.hdfcbank.com/ACSWeb/com.enstage.entransact.servers.AccessControlServerSSL"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    const-string v2, "https://netsafe.hdfcbank.com/ACSWeb/jsp/payerAuthOptions.jsp"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    const-string v2, "https://cardsecurity.enstage.com/ACSWeb/EnrollWeb/KotakBank/server/AccessControlServer"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    const-string v2, "https://cardsecurity.enstage.com/ACSWeb/EnrollWeb/KotakBank/server/OtpServer"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    const-string v2, "https://www.citibank.co.in/acspage/cap_nsapi.so"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    const-string v2, "https://acs.icicibank.com/acspage/cap"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    const-string v2, "https://secureonline.idbibank.com/ACSWeb/EnrollWeb/IDBIBank/server/AccessControlServer"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    const-string v2, "https://vpos.amxvpos.com/vpcpay"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {p0}, Lcom/payu/magicretry/MagicRetryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/payu/magicretry/MagicRetryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/payu/magicretry/MagicRetryFragment;->initAnalytics(Landroid/app/Activity;)V

    .line 132
    :cond_0
    return-object v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/payu/magicretry/MagicRetryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payu/magicretry/MagicRetryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-boolean v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->fromOnReceivedError:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->errorWasReceived:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->reloadUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->activityCallbackHandler:Lcom/payu/magicretry/MagicRetryFragment$ActivityCallback;

    invoke-interface {v0}, Lcom/payu/magicretry/MagicRetryFragment$ActivityCallback;->hideMagicRetry()V

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/magicretry/MagicRetryFragment;->errorWasReceived:Z

    .line 320
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 301
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "mWebView"    # Landroid/webkit/WebView;
    .param p2, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 336
    :try_start_0
    const-string v1, "m_retry_error"

    const-string v2, "UTF-8"

    invoke-static {p2, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/payu/magicretry/MagicRetryFragment;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget v1, p0, Lcom/payu/magicretry/MagicRetryFragment;->firstCall:I

    if-nez v1, :cond_0

    .line 339
    const-string v1, "mr_version"

    const-string v2, "1.0.6"

    invoke-virtual {p0, v1, v2}, Lcom/payu/magicretry/MagicRetryFragment;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget v1, p0, Lcom/payu/magicretry/MagicRetryFragment;->firstCall:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/payu/magicretry/MagicRetryFragment;->firstCall:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/payu/magicretry/MagicRetryFragment;->disableMagicRetry:Z

    if-nez v1, :cond_2

    .line 347
    const-string v1, "#### PAYU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebView URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FAILING URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/payu/magicretry/Helpers/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-direct {p0}, Lcom/payu/magicretry/MagicRetryFragment;->hideItems()V

    .line 350
    if-eqz p2, :cond_3

    invoke-direct {p0, p2}, Lcom/payu/magicretry/MagicRetryFragment;->isWhiteListedURL(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 352
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/payu/magicretry/MagicRetryFragment;->fromOnReceivedError:Z

    .line 353
    iget-object v1, p0, Lcom/payu/magicretry/MagicRetryFragment;->activityCallbackHandler:Lcom/payu/magicretry/MagicRetryFragment$ActivityCallback;

    if-eqz v1, :cond_1

    .line 355
    iget-object v1, p0, Lcom/payu/magicretry/MagicRetryFragment;->activityCallbackHandler:Lcom/payu/magicretry/MagicRetryFragment$ActivityCallback;

    invoke-interface {v1}, Lcom/payu/magicretry/MagicRetryFragment$ActivityCallback;->showMagicRetry()V

    .line 360
    :cond_1
    const-string v1, "m_retry_input"

    const-string v2, "show_m_retry"

    invoke-virtual {p0, v1, v2}, Lcom/payu/magicretry/MagicRetryFragment;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/magicretry/MagicRetryFragment;->reloadUrl:Ljava/lang/String;

    .line 368
    :cond_2
    :goto_1
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 365
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/payu/magicretry/MagicRetryFragment;->reloadUrl:Ljava/lang/String;

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 325
    return-void
.end method

.method public setUrlListWithPostData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "urlListWithPostData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/payu/magicretry/MagicRetryFragment;->urlListWithPostData:Ljava/util/Map;

    .line 247
    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "wv"    # Landroid/webkit/WebView;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/payu/magicretry/MagicRetryFragment;->mWebView:Landroid/webkit/WebView;

    .line 171
    return-void
.end method
