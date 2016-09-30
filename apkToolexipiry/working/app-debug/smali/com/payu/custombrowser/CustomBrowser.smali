.class public Lcom/payu/custombrowser/CustomBrowser;
.super Ljava/lang/Object;
.source "CustomBrowser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCustomBrowser(Landroid/app/Activity;Lcom/payu/custombrowser/bean/CustomBrowserConfig;Lcom/payu/custombrowser/PayUCustomBrowserCallback;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cbCustomBrowserConfig"    # Lcom/payu/custombrowser/bean/CustomBrowserConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "cbPayUCustomBrowserCallback"    # Lcom/payu/custombrowser/PayUCustomBrowserCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 22
    sget-object v1, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v1, p3}, Lcom/payu/custombrowser/bean/CustomBrowserData;->setPayuCustomBrowserCallback(Lcom/payu/custombrowser/PayUCustomBrowserCallback;)V

    .line 25
    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getEnableSnooze()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://secure.payu.in/_payment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://mobiletest.payu.in/_payment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 27
    :cond_0
    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setPayuPostData(Ljava/lang/String;)V

    .line 31
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&snooze="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getEnableSnooze()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setPayuPostData(Ljava/lang/String;)V

    .line 34
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/payu/custombrowser/CBActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cb_config"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 36
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 37
    return-void
.end method
