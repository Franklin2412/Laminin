.class public Lcom/payu/payuui/Activity/OldPaymentActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "OldPaymentActivity.java"

# interfaces
.implements Lcom/payu/magicretry/MagicRetryFragment$ActivityCallback;


# instance fields
.field private UTF:Ljava/lang/String;

.field bundle:Landroid/os/Bundle;

.field cancelTransaction:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWebView:Landroid/webkit/WebView;

.field magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

.field private merchantHash:Ljava/lang/String;

.field payuConfig:Lcom/payu/india/Model/PayuConfig;

.field private smsPermission:Ljava/lang/Boolean;

.field private storeOneClickHash:I

.field txnId:Ljava/lang/String;

.field url:Ljava/lang/String;

.field private viewPortWide:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 43
    iput-boolean v1, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->cancelTransaction:Z

    .line 45
    iput-object v2, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->UTF:Ljava/lang/String;

    .line 47
    iput-boolean v1, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->viewPortWide:Z

    .line 53
    iput-object v2, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->txnId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/payu/payuui/Activity/OldPaymentActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Activity/OldPaymentActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$002(Lcom/payu/payuui/Activity/OldPaymentActivity;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/payu/payuui/Activity/OldPaymentActivity;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/payu/payuui/Activity/OldPaymentActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Activity/OldPaymentActivity;

    .prologue
    .line 40
    iget v0, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->storeOneClickHash:I

    return v0
.end method

.method static synthetic access$200(Lcom/payu/payuui/Activity/OldPaymentActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Activity/OldPaymentActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->merchantHash:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/payu/payuui/Activity/OldPaymentActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/payu/payuui/Activity/OldPaymentActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->merchantHash:Ljava/lang/String;

    return-object p1
.end method

.method private initMagicRetry()V
    .locals 7

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/payu/payuui/Activity/OldPaymentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 315
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    new-instance v3, Lcom/payu/magicretry/MagicRetryFragment;

    invoke-direct {v3}, Lcom/payu/magicretry/MagicRetryFragment;-><init>()V

    iput-object v3, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    .line 316
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 317
    .local v1, "newInformationBundle":Landroid/os/Bundle;
    const-string v3, "transaction_id"

    iget-object v4, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->txnId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v3, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    invoke-virtual {v3, v1}, Lcom/payu/magicretry/MagicRetryFragment;->setArguments(Landroid/os/Bundle;)V

    .line 320
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 321
    .local v2, "urlList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {v4}, Lcom/payu/india/Model/PayuConfig;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v3, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    invoke-virtual {v3, v2}, Lcom/payu/magicretry/MagicRetryFragment;->setUrlListWithPostData(Ljava/util/Map;)V

    .line 324
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    sget v4, Lcom/payu/payuui/R$id;->magic_retry_container:I

    iget-object v5, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    const-string v6, "magicRetry"

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 327
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/payu/payuui/Activity/OldPaymentActivity;->toggleFragmentVisibility(I)V

    .line 329
    iget-object v3, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/payu/magicretry/MagicRetryFragment;->isWhiteListingEnabled(Z)V

    .line 330
    return-void
.end method


# virtual methods
.method public hideMagicRetry()V
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/payu/payuui/Activity/OldPaymentActivity;->toggleFragmentVisibility(I)V

    .line 359
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    if-eqz p1, :cond_2

    .line 61
    const/4 v10, 0x0

    invoke-super {p0, v10}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/payu/payuui/Activity/OldPaymentActivity;->finish()V

    .line 66
    :goto_0
    sget v10, Lcom/payu/payuui/R$layout;->activity_payments:I

    invoke-virtual {p0, v10}, Lcom/payu/payuui/Activity/OldPaymentActivity;->setContentView(I)V

    .line 67
    sget v10, Lcom/payu/payuui/R$id;->webview:I

    invoke-virtual {p0, v10}, Lcom/payu/payuui/Activity/OldPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/webkit/WebView;

    iput-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->mWebView:Landroid/webkit/WebView;

    .line 72
    invoke-virtual {p0}, Lcom/payu/payuui/Activity/OldPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    iput-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->bundle:Landroid/os/Bundle;

    .line 73
    iget-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->bundle:Landroid/os/Bundle;

    const-string v11, "payuConfig"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/payu/india/Model/PayuConfig;

    iput-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    .line 74
    iget-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->bundle:Landroid/os/Bundle;

    const-string v11, "store_one_click_hash"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->storeOneClickHash:I

    .line 75
    sget v10, Lcom/payu/payuui/R$id;->webview:I

    invoke-virtual {p0, v10}, Lcom/payu/payuui/Activity/OldPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/webkit/WebView;

    iput-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->mWebView:Landroid/webkit/WebView;

    .line 77
    iget-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {v10}, Lcom/payu/india/Model/PayuConfig;->getEnvironment()I

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "https://secure.payu.in/_payment"

    :goto_1
    iput-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->url:Ljava/lang/String;

    .line 79
    iget-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {v10}, Lcom/payu/india/Model/PayuConfig;->getData()Ljava/lang/String;

    move-result-object v10

    const-string v11, "&"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, "list":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 82
    .local v7, "merchantKey":Ljava/lang/String;
    array-length v12, v6

    const/4 v10, 0x0

    move v11, v10

    :goto_2
    if-ge v11, v12, :cond_4

    aget-object v4, v6, v11

    .line 83
    .local v4, "item":Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "items":[Ljava/lang/String;
    array-length v10, v5

    const/4 v13, 0x2

    if-lt v10, v13, :cond_1

    .line 85
    const/4 v10, 0x0

    aget-object v3, v5, v10

    .line 86
    .local v3, "id":Ljava/lang/String;
    const/4 v10, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :cond_0
    :goto_3
    packed-switch v10, :pswitch_data_0

    .line 82
    .end local v3    # "id":Ljava/lang/String;
    :cond_1
    :goto_4
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_2

    .line 64
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "items":[Ljava/lang/String;
    .end local v6    # "list":[Ljava/lang/String;
    .end local v7    # "merchantKey":Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    .line 77
    :cond_3
    const-string v10, "https://mobiletest.payu.in/_payment"

    goto :goto_1

    .line 86
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "item":Ljava/lang/String;
    .restart local v5    # "items":[Ljava/lang/String;
    .restart local v6    # "list":[Ljava/lang/String;
    .restart local v7    # "merchantKey":Ljava/lang/String;
    :sswitch_0
    const-string v13, "txnid"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v10, 0x0

    goto :goto_3

    :sswitch_1
    const-string v13, "key"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v10, 0x1

    goto :goto_3

    :sswitch_2
    const-string v13, "pg"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v10, 0x2

    goto :goto_3

    .line 88
    :pswitch_0
    const/4 v10, 0x1

    aget-object v10, v5, v10

    iput-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->txnId:Ljava/lang/String;

    goto :goto_4

    .line 91
    :pswitch_1
    const/4 v10, 0x1

    aget-object v7, v5, v10

    .line 92
    goto :goto_4

    .line 94
    :pswitch_2
    const/4 v10, 0x1

    aget-object v10, v5, v10

    const-string v13, "NB"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 95
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->viewPortWide:Z

    goto :goto_4

    .line 102
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "items":[Ljava/lang/String;
    :cond_4
    :try_start_0
    const-string v10, "com.payu.custombrowser.Bank"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 103
    new-instance v1, Lcom/payu/payuui/Activity/OldPaymentActivity$1;

    invoke-direct {v1, p0}, Lcom/payu/payuui/Activity/OldPaymentActivity$1;-><init>(Lcom/payu/payuui/Activity/OldPaymentActivity;)V

    .line 152
    .local v1, "bank":Lcom/payu/custombrowser/Bank;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v0, "args":Landroid/os/Bundle;
    const-string v10, "webView"

    sget v11, Lcom/payu/payuui/R$id;->webview:I

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    const-string v10, "tranLayout"

    sget v11, Lcom/payu/payuui/R$id;->trans_overlay:I

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    const-string v10, "mainLayout"

    sget v11, Lcom/payu/payuui/R$id;->r_layout:I

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    const-string v10, "viewPortWide"

    iget-boolean v11, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->viewPortWide:Z

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 157
    const-string v10, "auto_select_otp"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    const-string v10, "auto_approve"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 159
    const-string v10, "backButton"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    const-string v11, "txnid"

    iget-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->txnId:Ljava/lang/String;

    if-nez v10, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    :goto_5
    invoke-virtual {v0, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v10, "merchantid"

    invoke-virtual {v0, v10, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/payu/payuui/Activity/OldPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "sms_permission"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->smsPermission:Ljava/lang/Boolean;

    .line 164
    const-string v10, "smsPermission"

    iget-object v11, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->smsPermission:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 166
    new-instance v8, Lcom/payu/india/Extras/PayUSdkDetails;

    invoke-direct {v8}, Lcom/payu/india/Extras/PayUSdkDetails;-><init>()V

    .line 167
    .local v8, "payUSdkDetails":Lcom/payu/india/Extras/PayUSdkDetails;
    const-string v10, "sdkname"

    invoke-virtual {v8}, Lcom/payu/india/Extras/PayUSdkDetails;->getSdkVersionName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v10, "store_one_click_hash"

    iget v11, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->storeOneClickHash:I

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    invoke-virtual {p0}, Lcom/payu/payuui/Activity/OldPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "showCustom"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 171
    const-string v10, "showCustom"

    invoke-virtual {p0}, Lcom/payu/payuui/Activity/OldPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "showCustom"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 173
    :cond_5
    const-string v10, "showCustom"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    invoke-virtual {v1, v0}, Lcom/payu/custombrowser/Bank;->setArguments(Landroid/os/Bundle;)V

    .line 175
    sget v10, Lcom/payu/payuui/R$id;->parent:I

    invoke-virtual {p0, v10}, Lcom/payu/payuui/Activity/OldPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->bringToFront()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    :try_start_1
    invoke-virtual {p0}, Lcom/payu/payuui/Activity/OldPaymentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v10

    sget v11, Lcom/payu/payuui/R$anim;->fade_in:I

    sget v12, Lcom/payu/payuui/R$anim;->cb_face_out:I

    invoke-virtual {v10, v11, v12}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v10

    sget v11, Lcom/payu/payuui/R$id;->parent:I

    invoke-virtual {v10, v11, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 183
    :goto_6
    :try_start_2
    invoke-direct {p0}, Lcom/payu/payuui/Activity/OldPaymentActivity;->initMagicRetry()V

    .line 185
    iget-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v11, Lcom/payu/custombrowser/PayUWebChromeClient;

    invoke-direct {v11, v1}, Lcom/payu/custombrowser/PayUWebChromeClient;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 186
    iget-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v11, Lcom/payu/custombrowser/PayUWebViewClient;

    iget-object v12, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    invoke-direct {v11, v1, v12, v7}, Lcom/payu/custombrowser/PayUWebViewClient;-><init>(Lcom/payu/custombrowser/Bank;Lcom/payu/magicretry/MagicRetryFragment;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 188
    iget-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    iget-object v11, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10, v11}, Lcom/payu/magicretry/MagicRetryFragment;->setWebView(Landroid/webkit/WebView;)V

    .line 190
    iget-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    invoke-virtual {v10, p0}, Lcom/payu/magicretry/MagicRetryFragment;->initMRSettingsFromSharedPreference(Landroid/content/Context;)V

    .line 192
    iget-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v11, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->url:Ljava/lang/String;

    iget-object v12, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {v12}, Lcom/payu/india/Model/PayuConfig;->getData()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 284
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "bank":Lcom/payu/custombrowser/Bank;
    .end local v8    # "payUSdkDetails":Lcom/payu/india/Extras/PayUSdkDetails;
    :goto_7
    return-void

    .line 160
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v1    # "bank":Lcom/payu/custombrowser/Bank;
    :cond_6
    iget-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->txnId:Ljava/lang/String;

    goto/16 :goto_5

    .line 178
    .restart local v8    # "payUSdkDetails":Lcom/payu/india/Extras/PayUSdkDetails;
    :catch_0
    move-exception v2

    .line 180
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    invoke-virtual {p0}, Lcom/payu/payuui/Activity/OldPaymentActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    .line 194
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "bank":Lcom/payu/custombrowser/Bank;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "payUSdkDetails":Lcom/payu/india/Extras/PayUSdkDetails;
    :catch_1
    move-exception v2

    .line 195
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    iget-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 196
    iget-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 197
    iget-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 199
    iget-boolean v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->viewPortWide:Z

    if-eqz v10, :cond_7

    .line 200
    iget-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v10

    iget-boolean v11, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->viewPortWide:Z

    invoke-virtual {v10, v11}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 203
    :cond_7
    sget v10, Lcom/payu/payuui/R$id;->trans_overlay:I

    invoke-virtual {p0, v10}, Lcom/payu/payuui/Activity/OldPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 204
    .local v9, "transOverlay":Landroid/view/View;
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v11, Lcom/payu/payuui/Activity/OldPaymentActivity$2;

    invoke-direct {v11, p0}, Lcom/payu/payuui/Activity/OldPaymentActivity$2;-><init>(Lcom/payu/payuui/Activity/OldPaymentActivity;)V

    const-string v12, "PayU"

    invoke-virtual {v10, v11, v12}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    iget-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v11, Landroid/webkit/WebChromeClient;

    invoke-direct {v11}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 274
    iget-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v11, Landroid/webkit/WebViewClient;

    invoke-direct {v11}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 275
    iget-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 276
    iget-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 277
    iget-object v10, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v11, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->url:Ljava/lang/String;

    iget-object v12, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {v12}, Lcom/payu/india/Model/PayuConfig;->getData()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto/16 :goto_7

    .line 86
    :sswitch_data_0
    .sparse-switch
        0xdf7 -> :sswitch_2
        0x19e5f -> :sswitch_1
        0x69add05 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/payu/payuui/Activity/OldPaymentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/payu/payuui/R$menu;->menu_payments:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 310
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 311
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 298
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 301
    .local v0, "id":I
    sget v1, Lcom/payu/payuui/R$id;->action_settings:I

    if-ne v0, v1, :cond_0

    .line 302
    const/4 v1, 0x1

    .line 305
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public showMagicRetry()V
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/payu/payuui/Activity/OldPaymentActivity;->toggleFragmentVisibility(I)V

    .line 354
    return-void
.end method

.method public toggleFragmentVisibility(I)V
    .locals 3
    .param p1, "flag"    # I

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/payu/payuui/Activity/OldPaymentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 335
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/payu/payuui/Activity/OldPaymentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 338
    iget-object v1, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    if-nez p1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/payu/payuui/Activity/OldPaymentActivity;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 343
    const-string v1, "#### PAYU"

    const-string v2, "hidhing magic retry"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
