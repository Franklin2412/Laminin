.class public Lcom/payu/payuui/Activity/PaymentsActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "PaymentsActivity.java"


# instance fields
.field private UTF:Ljava/lang/String;

.field bundle:Landroid/os/Bundle;

.field cancelTransaction:Z

.field private mPayuUtils:Lcom/payu/india/Payu/PayuUtils;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field magicRetry:Ljava/lang/String;

.field magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

.field private merchantHash:Ljava/lang/String;

.field merchantKey:Ljava/lang/String;

.field payuConfig:Lcom/payu/india/Model/PayuConfig;

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

    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 30
    iput-boolean v1, p0, Lcom/payu/payuui/Activity/PaymentsActivity;->cancelTransaction:Z

    .line 32
    iput-object v2, p0, Lcom/payu/payuui/Activity/PaymentsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 33
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/payu/payuui/Activity/PaymentsActivity;->UTF:Ljava/lang/String;

    .line 34
    iput-boolean v1, p0, Lcom/payu/payuui/Activity/PaymentsActivity;->viewPortWide:Z

    .line 39
    iput-object v2, p0, Lcom/payu/payuui/Activity/PaymentsActivity;->txnId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/payu/payuui/Activity/PaymentsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Activity/PaymentsActivity;

    .prologue
    .line 27
    iget v0, p0, Lcom/payu/payuui/Activity/PaymentsActivity;->storeOneClickHash:I

    return v0
.end method

.method static synthetic access$100(Lcom/payu/payuui/Activity/PaymentsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payu/payuui/Activity/PaymentsActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/payu/payuui/Activity/PaymentsActivity;->merchantHash:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    if-nez p1, :cond_4

    .line 46
    new-instance v7, Lcom/payu/india/Payu/PayuUtils;

    invoke-direct {v7}, Lcom/payu/india/Payu/PayuUtils;-><init>()V

    iput-object v7, p0, Lcom/payu/payuui/Activity/PaymentsActivity;->mPayuUtils:Lcom/payu/india/Payu/PayuUtils;

    .line 47
    invoke-virtual {p0}, Lcom/payu/payuui/Activity/PaymentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, p0, Lcom/payu/payuui/Activity/PaymentsActivity;->bundle:Landroid/os/Bundle;

    .line 48
    iget-object v7, p0, Lcom/payu/payuui/Activity/PaymentsActivity;->bundle:Landroid/os/Bundle;

    const-string v11, "payuConfig"

    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/payu/india/Model/PayuConfig;

    iput-object v7, p0, Lcom/payu/payuui/Activity/PaymentsActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    .line 49
    iget-object v7, p0, Lcom/payu/payuui/Activity/PaymentsActivity;->bundle:Landroid/os/Bundle;

    const-string v11, "store_one_click_hash"

    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/payu/payuui/Activity/PaymentsActivity;->storeOneClickHash:I

    .line 50
    iget-object v7, p0, Lcom/payu/payuui/Activity/PaymentsActivity;->bundle:Landroid/os/Bundle;

    const-string v11, "magic_retry"

    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/payu/payuui/Activity/PaymentsActivity;->magicRetry:Ljava/lang/String;

    .line 51
    iget-object v7, p0, Lcom/payu/payuui/Activity/PaymentsActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {v7}, Lcom/payu/india/Model/PayuConfig;->getEnvironment()I

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "https://secure.payu.in/_payment"

    :goto_0
    iput-object v7, p0, Lcom/payu/payuui/Activity/PaymentsActivity;->url:Ljava/lang/String;

    .line 52
    iget-object v7, p0, Lcom/payu/payuui/Activity/PaymentsActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {v7}, Lcom/payu/india/Model/PayuConfig;->getData()Ljava/lang/String;

    move-result-object v7

    const-string v11, "&"

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "list":[Ljava/lang/String;
    array-length v12, v5

    move v11, v8

    :goto_1
    if-ge v11, v12, :cond_3

    aget-object v3, v5, v11

    .line 66
    .local v3, "item":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "items":[Ljava/lang/String;
    array-length v7, v4

    if-lt v7, v10, :cond_1

    .line 68
    aget-object v2, v4, v8

    .line 69
    .local v2, "id":Ljava/lang/String;
    const/4 v7, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :cond_0
    :goto_2
    packed-switch v7, :pswitch_data_0

    .line 65
    .end local v2    # "id":Ljava/lang/String;
    :cond_1
    :goto_3
    add-int/lit8 v7, v11, 0x1

    move v11, v7

    goto :goto_1

    .line 51
    .end local v3    # "item":Ljava/lang/String;
    .end local v4    # "items":[Ljava/lang/String;
    .end local v5    # "list":[Ljava/lang/String;
    :cond_2
    const-string v7, "https://mobiletest.payu.in/_payment"

    goto :goto_0

    .line 69
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v3    # "item":Ljava/lang/String;
    .restart local v4    # "items":[Ljava/lang/String;
    .restart local v5    # "list":[Ljava/lang/String;
    :sswitch_0
    const-string v13, "txnid"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    move v7, v8

    goto :goto_2

    :sswitch_1
    const-string v13, "key"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    move v7, v9

    goto :goto_2

    :sswitch_2
    const-string v13, "pg"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    move v7, v10

    goto :goto_2

    .line 71
    :pswitch_0
    aget-object v7, v4, v9

    iput-object v7, p0, Lcom/payu/payuui/Activity/PaymentsActivity;->txnId:Ljava/lang/String;

    goto :goto_3

    .line 74
    :pswitch_1
    aget-object v7, v4, v9

    iput-object v7, p0, Lcom/payu/payuui/Activity/PaymentsActivity;->merchantKey:Ljava/lang/String;

    goto :goto_3

    .line 77
    :pswitch_2
    aget-object v7, v4, v9

    const-string v13, "NB"

    invoke-virtual {v7, v13}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 78
    iput-boolean v9, p0, Lcom/payu/payuui/Activity/PaymentsActivity;->viewPortWide:Z

    goto :goto_3

    .line 107
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "item":Ljava/lang/String;
    .end local v4    # "items":[Ljava/lang/String;
    :cond_3
    new-instance v6, Lcom/payu/payuui/Activity/PaymentsActivity$1;

    invoke-direct {v6, p0}, Lcom/payu/payuui/Activity/PaymentsActivity$1;-><init>(Lcom/payu/payuui/Activity/PaymentsActivity;)V

    .line 181
    .local v6, "payUCustomBrowserCallback":Lcom/payu/custombrowser/PayUCustomBrowserCallback;
    new-instance v0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    iget-object v7, p0, Lcom/payu/payuui/Activity/PaymentsActivity;->merchantKey:Ljava/lang/String;

    iget-object v10, p0, Lcom/payu/payuui/Activity/PaymentsActivity;->txnId:Ljava/lang/String;

    invoke-direct {v0, v7, v10}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .local v0, "customBrowserConfig":Lcom/payu/custombrowser/bean/CustomBrowserConfig;
    iget-boolean v7, p0, Lcom/payu/payuui/Activity/PaymentsActivity;->viewPortWide:Z

    invoke-virtual {v0, v7}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setViewPortWideEnable(Z)V

    .line 183
    invoke-virtual {v0, v8}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setAutoApprove(Z)V

    .line 184
    invoke-virtual {v0, v8}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setAutoSelectOTP(Z)V

    .line 185
    invoke-virtual {v0, v8}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setDisableBackButtonDialog(Z)V

    .line 186
    invoke-virtual {v0, v9}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setStoreOneClickHash(I)V

    .line 188
    invoke-virtual {v0, v9}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setMerchantSMSPermission(Z)V

    .line 192
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v0, v7}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setmagicRetry(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_4
    iget-object v7, p0, Lcom/payu/payuui/Activity/PaymentsActivity;->payuConfig:Lcom/payu/india/Model/PayuConfig;

    invoke-virtual {v7}, Lcom/payu/india/Model/PayuConfig;->getData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setPayuPostData(Ljava/lang/String;)V

    .line 199
    iget-object v7, p0, Lcom/payu/payuui/Activity/PaymentsActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setPostURL(Ljava/lang/String;)V

    .line 202
    const-string v7, "com.payu.payuui.Activity.MerchantCheckoutActivity"

    invoke-virtual {v0, v7}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setMerchantCheckoutActivityPath(Ljava/lang/String;)V

    .line 203
    new-instance v7, Lcom/payu/custombrowser/CustomBrowser;

    invoke-direct {v7}, Lcom/payu/custombrowser/CustomBrowser;-><init>()V

    invoke-virtual {v7, p0, v0, v6}, Lcom/payu/custombrowser/CustomBrowser;->addCustomBrowser(Landroid/app/Activity;Lcom/payu/custombrowser/bean/CustomBrowserConfig;Lcom/payu/custombrowser/PayUCustomBrowserCallback;)V

    .line 205
    .end local v0    # "customBrowserConfig":Lcom/payu/custombrowser/bean/CustomBrowserConfig;
    .end local v5    # "list":[Ljava/lang/String;
    .end local v6    # "payUCustomBrowserCallback":Lcom/payu/custombrowser/PayUCustomBrowserCallback;
    :cond_4
    return-void

    .line 193
    .restart local v0    # "customBrowserConfig":Lcom/payu/custombrowser/bean/CustomBrowserConfig;
    .restart local v5    # "list":[Ljava/lang/String;
    .restart local v6    # "payUCustomBrowserCallback":Lcom/payu/custombrowser/PayUCustomBrowserCallback;
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 69
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
