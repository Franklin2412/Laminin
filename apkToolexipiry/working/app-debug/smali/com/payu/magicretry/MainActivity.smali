.class public Lcom/payu/magicretry/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field fragment:Lcom/payu/magicretry/MagicRetryFragment;

.field wv:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget v1, Lcom/payu/magicretry/R$layout;->magicretry_main:I

    invoke-virtual {p0, v1}, Lcom/payu/magicretry/MainActivity;->setContentView(I)V

    .line 28
    sget v1, Lcom/payu/magicretry/R$id;->wv1:I

    invoke-virtual {p0, v1}, Lcom/payu/magicretry/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/payu/magicretry/MainActivity;->wv:Landroid/webkit/WebView;

    .line 30
    invoke-virtual {p0}, Lcom/payu/magicretry/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 31
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    new-instance v1, Lcom/payu/magicretry/MagicRetryFragment;

    invoke-direct {v1}, Lcom/payu/magicretry/MagicRetryFragment;-><init>()V

    iput-object v1, p0, Lcom/payu/magicretry/MainActivity;->fragment:Lcom/payu/magicretry/MagicRetryFragment;

    .line 34
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/payu/magicretry/R$id;->magic_retry_container:I

    iget-object v3, p0, Lcom/payu/magicretry/MainActivity;->fragment:Lcom/payu/magicretry/MagicRetryFragment;

    const-string v4, "magicRetry"

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 36
    iget-object v1, p0, Lcom/payu/magicretry/MainActivity;->wv:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 37
    iget-object v1, p0, Lcom/payu/magicretry/MainActivity;->wv:Landroid/webkit/WebView;

    new-instance v2, Lcom/payu/magicretry/WebClient/MerchantsWebViewClient;

    iget-object v3, p0, Lcom/payu/magicretry/MainActivity;->fragment:Lcom/payu/magicretry/MagicRetryFragment;

    invoke-direct {v2, v3}, Lcom/payu/magicretry/WebClient/MerchantsWebViewClient;-><init>(Lcom/payu/magicretry/MagicRetryFragment;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 39
    iget-object v1, p0, Lcom/payu/magicretry/MainActivity;->fragment:Lcom/payu/magicretry/MagicRetryFragment;

    iget-object v2, p0, Lcom/payu/magicretry/MainActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Lcom/payu/magicretry/MagicRetryFragment;->setWebView(Landroid/webkit/WebView;)V

    .line 42
    iget-object v1, p0, Lcom/payu/magicretry/MainActivity;->wv:Landroid/webkit/WebView;

    const-string v2, "http://google.com"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/payu/magicretry/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/payu/magicretry/R$menu;->menu_main:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 59
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 62
    .local v0, "id":I
    sget v1, Lcom/payu/magicretry/R$id;->action_settings:I

    if-ne v0, v1, :cond_0

    .line 63
    const/4 v1, 0x1

    .line 66
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public toggleFragmentVisibility()V
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/payu/magicretry/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 72
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v1, p0, Lcom/payu/magicretry/MainActivity;->fragment:Lcom/payu/magicretry/MagicRetryFragment;

    invoke-virtual {v1}, Lcom/payu/magicretry/MagicRetryFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/payu/magicretry/MainActivity;->fragment:Lcom/payu/magicretry/MagicRetryFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/payu/magicretry/MainActivity;->fragment:Lcom/payu/magicretry/MagicRetryFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method
