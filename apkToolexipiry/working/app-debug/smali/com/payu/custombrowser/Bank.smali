.class public Lcom/payu/custombrowser/Bank;
.super Lcom/payu/custombrowser/PayUCBLifecycle;
.source "Bank.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payu/custombrowser/Bank$ButtonOnclickListener;
    }
.end annotation


# static fields
.field public static Version:Ljava/lang/String;

.field public static keyAnalytics:Ljava/lang/String;

.field static paymentMode:Ljava/lang/String;

.field static sdkVersion:Ljava/lang/String;

.field static transactionID:Ljava/lang/String;

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
.field private buttonClickListener:Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

.field private currentLoadingProgress:I

.field enterOtpRunnable:Ljava/lang/Runnable;

.field private firstFinish:Z

.field private isFirstURLLoaded:Z

.field private isMRDataSet:Z

.field private isPageStoppedForcefully:Z

.field private isSnoozeTimerRunning:Z

.field private isTransactionStatusReceived:Z

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mLoadingJS:Z

.field private pageStarted:Z

.field private payUChromeLoaderDisableTimer:Landroid/os/CountDownTimer;

.field private payUChromeLoaderEnableTimer:Landroid/os/CountDownTimer;

.field private saveUserIDCheck:Z

.field private showSnoozeWindow:Z

.field private showToggleCheck:Z

.field public snoozeClickedTime:J

.field private snoozeLayout:Landroid/view/View;

.field private snoozeLoaderView:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

.field private snoozeretry:Z

.field private stopOnlyOnce:Z

.field private visibilitychecked:Z

.field private webpageNotFoundError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    const-string v0, "6.1.1"

    sput-object v0, Lcom/payu/custombrowser/Bank;->Version:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/payu/custombrowser/Bank;->whiteListedUrls:Ljava/util/List;

    .line 119
    const-string v0, "6.1.1"

    sput-object v0, Lcom/payu/custombrowser/Bank;->Version:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 183
    invoke-direct {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 131
    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->isSnoozeTimerRunning:Z

    .line 133
    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->isPageStoppedForcefully:Z

    .line 142
    iput-boolean v2, p0, Lcom/payu/custombrowser/Bank;->firstFinish:Z

    .line 144
    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->mLoadingJS:Z

    .line 148
    iput-boolean v2, p0, Lcom/payu/custombrowser/Bank;->saveUserIDCheck:Z

    .line 157
    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->isMRDataSet:Z

    .line 169
    iput-boolean v2, p0, Lcom/payu/custombrowser/Bank;->showSnoozeWindow:Z

    .line 173
    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->pageStarted:Z

    .line 174
    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->webpageNotFoundError:Z

    .line 187
    new-instance v0, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

    invoke-direct {v0, p0}, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;-><init>(Lcom/payu/custombrowser/Bank;)V

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->buttonClickListener:Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

    .line 188
    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->showToggleCheck:Z

    .line 189
    new-instance v0, Lcom/payu/custombrowser/custombar/CustomProgressBar;

    invoke-direct {v0}, Lcom/payu/custombrowser/custombar/CustomProgressBar;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->customProgressBar:Lcom/payu/custombrowser/custombar/CustomProgressBar;

    .line 190
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->backwardJourneyUrls:Ljava/util/Set;

    .line 191
    new-instance v0, Lcom/payu/custombrowser/util/CBUtil;

    invoke-direct {v0}, Lcom/payu/custombrowser/util/CBUtil;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    .line 192
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->serialExecutor:Ljava/util/concurrent/Executor;

    .line 193
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->retryUrls:Ljava/util/Set;

    .line 195
    return-void
.end method

.method static synthetic access$000(Lcom/payu/custombrowser/Bank;)Z
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->isPageStoppedForcefully:Z

    return v0
.end method

.method static synthetic access$002(Lcom/payu/custombrowser/Bank;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/Bank;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/payu/custombrowser/Bank;->isPageStoppedForcefully:Z

    return p1
.end method

.method static synthetic access$100(Lcom/payu/custombrowser/Bank;)Z
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->pageStarted:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/payu/custombrowser/Bank;)V
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->stopSnoozeCountDownTimer()V

    return-void
.end method

.method static synthetic access$1100(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/widgets/SnoozeLoaderView;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeLoaderView:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/payu/custombrowser/Bank;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/Bank;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/payu/custombrowser/Bank;->retryPayment(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/payu/custombrowser/Bank;)Z
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->saveUserIDCheck:Z

    return v0
.end method

.method static synthetic access$202(Lcom/payu/custombrowser/Bank;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/Bank;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/payu/custombrowser/Bank;->saveUserIDCheck:Z

    return p1
.end method

.method static synthetic access$300(Lcom/payu/custombrowser/Bank;)Z
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->showToggleCheck:Z

    return v0
.end method

.method static synthetic access$302(Lcom/payu/custombrowser/Bank;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/Bank;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/payu/custombrowser/Bank;->showToggleCheck:Z

    return p1
.end method

.method static synthetic access$402(Lcom/payu/custombrowser/Bank;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/Bank;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/payu/custombrowser/Bank;->mLoadingJS:Z

    return p1
.end method

.method static synthetic access$500(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$ButtonOnclickListener;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->buttonClickListener:Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/payu/custombrowser/Bank;)V
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->checkPermission()V

    return-void
.end method

.method static synthetic access$702(Lcom/payu/custombrowser/Bank;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/Bank;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/payu/custombrowser/Bank;->isSnoozeTimerRunning:Z

    return p1
.end method

.method static synthetic access$800(Lcom/payu/custombrowser/Bank;)Z
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->showSnoozeWindow:Z

    return v0
.end method

.method static synthetic access$900(Lcom/payu/custombrowser/Bank;)Z
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/Bank;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->isTransactionStatusReceived:Z

    return v0
.end method

.method private checkPermission()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 352
    iget-boolean v3, p0, Lcom/payu/custombrowser/Bank;->checkedPermission:Z

    if-nez v3, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/payu/custombrowser/Bank;->merchantSMSPermission:Z

    if-eqz v3, :cond_2

    .line 353
    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->checkedPermission:Z

    .line 354
    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 355
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "android.permission.RECEIVE_SMS"

    aput-object v4, v3, v2

    invoke-virtual {p0, v3, v1}, Lcom/payu/custombrowser/Bank;->requestPermissions([Ljava/lang/String;I)V

    .line 356
    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->checkPermissionVisibility:Z

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->permissionGranted:Z

    .line 359
    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->SMSOTPClicked:Z

    if-eqz v1, :cond_0

    .line 361
    :try_start_0
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->mJS:Lorg/json/JSONObject;

    sget v4, Lcom/payu/custombrowser/R$string;->cb_otp:I

    invoke-virtual {p0, v4}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 365
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 371
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->onHelpAvailable()V

    .line 372
    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->permissionGranted:Z

    .line 374
    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->SMSOTPClicked:Z

    if-eqz v1, :cond_0

    .line 376
    :try_start_1
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->mJS:Lorg/json/JSONObject;

    sget v4, Lcom/payu/custombrowser/R$string;->cb_otp:I

    invoke-virtual {p0, v4}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 377
    :catch_2
    move-exception v0

    .line 378
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    move v1, v2

    .line 372
    goto :goto_1

    .line 379
    :catch_3
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initializeSnoozeTimer()V
    .locals 3

    .prologue
    .line 579
    sget-object v0, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserData;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    const-string v1, "snoozeEnabled"

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/util/CBUtil;->getBooleanSharedPreferenceDefaultTrue(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getEnableSnooze()I

    move-result v0

    iget v1, p0, Lcom/payu/custombrowser/Bank;->snoozeCount:I

    if-le v0, v1, :cond_1

    .line 582
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->isSnoozeTimerRunning:Z

    if-eqz v0, :cond_0

    .line 583
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->stopSnoozeCountDownTimer()V

    .line 585
    :cond_0
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->startSnoozeCountDownTimer()V

    .line 588
    :cond_1
    return-void
.end method

.method public static isUrlWhiteListed(Ljava/lang/String;)Z
    .locals 4
    .param p0, "currentUrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 207
    const-string v2, "https://secure.payu.in"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https://mobiletest.payu.in"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "_response"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    :goto_0
    return v1

    .line 211
    :cond_1
    sget-object v2, Lcom/payu/custombrowser/Bank;->whiteListedUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 212
    .local v0, "whiteListedUrl":Ljava/lang/String;
    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 216
    .end local v0    # "whiteListedUrl":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private jellyBeanOnReceivedError()V
    .locals 1

    .prologue
    .line 777
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->setIsPageStoppedForcefully(Z)V

    .line 778
    return-void
.end method

.method private retryPayment(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 3224
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payu/custombrowser/R$id;->button_retry_transaction:I

    if-ne v0, v1, :cond_2

    .line 3225
    iget v0, p0, Lcom/payu/custombrowser/Bank;->snoozeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/payu/custombrowser/Bank;->snoozeCount:I

    .line 3226
    const-string v0, "snooze_interaction_time"

    invoke-static {}, Lcom/payu/custombrowser/Bank;->getSystemCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 3227
    const-string v0, "snooze_window_action"

    const-string v1, "snooze_retry_click"

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 3235
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/payu/custombrowser/Bank;->isTransactionStatusReceived:Z

    .line 3237
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/custombrowser/util/CBUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3239
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://secure.payu.in/_payment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/custombrowser/Bank;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3240
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->reloadWebView()V

    .line 3250
    :goto_1
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 3253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->slowUserCountDownTimer:Landroid/os/CountDownTimer;

    .line 3255
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payu/custombrowser/R$id;->button_retry_anyway:I

    if-ne v0, v1, :cond_1

    .line 3257
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->killSnoozeService()V

    .line 3259
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 3260
    .local v7, "mNotificationManager":Landroid/app/NotificationManager;
    sget v0, Lcom/payu/custombrowser/util/CBConstant;->SNOOZE_NOTIFICATION_ID:I

    invoke-virtual {v7, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 3268
    .end local v7    # "mNotificationManager":Landroid/app/NotificationManager;
    :cond_1
    :goto_2
    return-void

    .line 3229
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payu/custombrowser/R$id;->button_retry_anyway:I

    if-ne v0, v1, :cond_0

    .line 3230
    const-string v0, "snooze_txn_paused_user_interaction_time"

    invoke-static {}, Lcom/payu/custombrowser/Bank;->getSystemCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 3231
    const-string v0, "snooze_txn_paused_window_action"

    const-string v1, "retry_anyway_click"

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3242
    :cond_3
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://secure.payu.in/_payment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://mobiletest.payu.in/_payment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3244
    :cond_4
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sure_pay_cancelled"

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    sget-object v4, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    iget-object v5, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v5}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static/range {v0 .. v6}, Lcom/payu/custombrowser/util/CBUtil;->getLogMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->markPreviousTxnAsUserCanceled(Ljava/lang/String;)V

    .line 3247
    :cond_5
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/Bank;->reloadWebView(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3265
    :cond_6
    const-string v0, "snooze_resume_url"

    const-string v1, "Not internet connection"

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 3266
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Not internet connection"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method private showMagicRetryCB()V
    .locals 5

    .prologue
    .line 504
    :try_start_0
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->mBankJS:Lorg/json/JSONObject;

    const-string v4, "getMagicRetryUrls"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :goto_0
    return-void

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private snoozeOnReceivedError()V
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->setIsPageStoppedForcefully(Z)V

    .line 438
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->launchSnoozeWindow(I)V

    .line 439
    return-void
.end method

.method private startPayUChromeLoaderDisbaleTimer()V
    .locals 6

    .prologue
    .line 955
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->payUChromeLoaderDisableTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->payUChromeLoaderDisableTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->payUChromeLoaderEnableTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 960
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->payUChromeLoaderEnableTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 963
    :cond_1
    new-instance v0, Lcom/payu/custombrowser/Bank$6;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/payu/custombrowser/Bank$6;-><init>(Lcom/payu/custombrowser/Bank;JJ)V

    .line 972
    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank$6;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->payUChromeLoaderDisableTimer:Landroid/os/CountDownTimer;

    .line 973
    return-void
.end method

.method private startPayUChromeLoaderEnableTimer()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 987
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->payUChromeLoaderEnableTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->payUChromeLoaderEnableTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 991
    :cond_0
    new-instance v0, Lcom/payu/custombrowser/Bank$7;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/payu/custombrowser/Bank$7;-><init>(Lcom/payu/custombrowser/Bank;JJ)V

    .line 1002
    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank$7;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->payUChromeLoaderEnableTimer:Landroid/os/CountDownTimer;

    .line 1003
    return-void
.end method

.method private startSnoozeCountDownTimer()V
    .locals 6

    .prologue
    .line 2344
    new-instance v0, Lcom/payu/custombrowser/Bank$22;

    iget v1, p0, Lcom/payu/custombrowser/Bank;->snoozeUrlLoadingTimeout:I

    int-to-long v2, v1

    const-wide/16 v4, 0x1f4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/payu/custombrowser/Bank$22;-><init>(Lcom/payu/custombrowser/Bank;JJ)V

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 2364
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 2365
    return-void
.end method

.method private stopSnoozeCountDownTimer()V
    .locals 1

    .prologue
    .line 2373
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 2374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->isSnoozeTimerRunning:Z

    .line 2375
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 2376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 2378
    :cond_0
    return-void
.end method

.method private stopWifi()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 787
    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->stopOnlyOnce:Z

    if-nez v1, :cond_0

    .line 788
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->stopOnlyOnce:Z

    .line 789
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 790
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 794
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return-void

    .line 792
    :cond_0
    iput-boolean v3, p0, Lcom/payu/custombrowser/Bank;->stopOnlyOnce:Z

    goto :goto_0
.end method

.method private updateWhitelistedRetryUrls(Ljava/util/List;)V
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
    .line 2908
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/payu/custombrowser/Bank;->whiteListedUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2909
    const-string v0, "#### PAYU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MR Cleared whitelisted urls, length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/payu/custombrowser/Bank;->whiteListedUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payu/custombrowser/util/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2910
    sget-object v0, Lcom/payu/custombrowser/Bank;->whiteListedUrls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2911
    const-string v0, "#### PAYU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MR Updated whitelisted urls, length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/payu/custombrowser/Bank;->whiteListedUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payu/custombrowser/util/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2912
    return-void
.end method


# virtual methods
.method addCustomBrowserEventAnalytics()V
    .locals 2

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->eventArray:Ljava/util/ArrayList;

    const-string v1, "CUSTOM_BROWSER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1794
    const-string v0, "CUSTOM_BROWSER"

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    .line 1795
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->eventArray:Ljava/util/ArrayList;

    const-string v1, "CUSTOM_BROWSER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1796
    const-string v0, "cb_status"

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    :cond_0
    return-void
.end method

.method public bankFound(Ljava/lang/String;)V
    .locals 5
    .param p1, "bank"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1239
    iget-boolean v3, p0, Lcom/payu/custombrowser/Bank;->visibilitychecked:Z

    if-nez v3, :cond_0

    .line 1240
    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/Bank;->checkVisibilityCB(Ljava/lang/String;)V

    .line 1241
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/payu/custombrowser/Bank;->visibilitychecked:Z

    .line 1244
    :cond_0
    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/Bank;->cbSetBankDrawable(Ljava/lang/String;)V

    .line 1245
    const-string v3, "com.payu.magicretry.MagicRetryFragment"

    const-string v4, "bankName"

    invoke-static {v3, p1, v4}, Lcom/payu/custombrowser/util/CBUtil;->setVariableReflection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1248
    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    new-instance v4, Lcom/payu/custombrowser/Bank$12;

    invoke-direct {v4, p0}, Lcom/payu/custombrowser/Bank$12;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1257
    :cond_1
    iput-object p1, p0, Lcom/payu/custombrowser/Bank;->bankName:Ljava/lang/String;

    .line 1258
    iget-boolean v3, p0, Lcom/payu/custombrowser/Bank;->mPageReady:Z

    if-nez v3, :cond_3

    .line 1261
    :try_start_0
    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->loadingLayout:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1262
    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    new-instance v4, Lcom/payu/custombrowser/Bank$13;

    invoke-direct {v4, p0}, Lcom/payu/custombrowser/Bank$13;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1269
    :cond_2
    iget-boolean v3, p0, Lcom/payu/custombrowser/Bank;->isPageStoppedForcefully:Z

    if-nez v3, :cond_3

    .line 1270
    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->loadingLayout:Landroid/view/View;

    if-nez v3, :cond_5

    .line 1271
    const-string v3, "loading"

    const-string v4, "{}"

    invoke-virtual {p0, v3, v4}, Lcom/payu/custombrowser/Bank;->convertToNative(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1290
    :cond_3
    :goto_0
    iget-boolean v3, p0, Lcom/payu/custombrowser/Bank;->mLoadingJS:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->mJS:Lorg/json/JSONObject;

    if-nez v3, :cond_4

    .line 1294
    new-instance v1, Lcom/payu/custombrowser/Bank$14;

    invoke-direct {v1, p0, p1}, Lcom/payu/custombrowser/Bank$14;-><init>(Lcom/payu/custombrowser/Bank;Ljava/lang/String;)V

    .line 1343
    .local v1, "serialRunnable":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->serialExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1346
    .end local v1    # "serialRunnable":Ljava/lang/Runnable;
    :cond_4
    return-void

    .line 1275
    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_3

    .line 1276
    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    sget v4, Lcom/payu/custombrowser/R$id;->help_view:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1277
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->loadingLayout:Landroid/view/View;

    if-eq v3, v2, :cond_3

    .line 1278
    const-string v3, "loading"

    const-string v4, "{}"

    invoke-virtual {p0, v3, v4}, Lcom/payu/custombrowser/Bank;->convertToNative(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1283
    .end local v2    # "view":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 1284
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bindService()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2719
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->snoozeBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2720
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->snoozeBroadCastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->SNOOZE_GET_WEBVIEW_STATUS_INTENT_ACTION:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2721
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    const-class v2, Lcom/payu/custombrowser/services/SnoozeService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2724
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cb_config"

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2726
    const-string v1, "currentUrl"

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->webviewUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2728
    const-string v1, "merchantCheckoutActivity"

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getMerchantCheckoutActivityPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2731
    iput-boolean v5, p0, Lcom/payu/custombrowser/Bank;->isSnoozeServiceBounded:Z

    .line 2732
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->snoozeServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v5}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2735
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2736
    return-void
.end method

.method public convertToNative(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "fields"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1363
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->isSnoozeWindowVisible:Z

    if-eqz v0, :cond_0

    .line 1364
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 1368
    const-string v0, "snooze_window_action"

    const-string v1, "snooze_window_dismissed_by_cb"

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    const-string v0, "snooze_window_automatically_disappear_time"

    invoke-static {}, Lcom/payu/custombrowser/Bank;->getSystemCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/payu/custombrowser/Bank$15;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/Bank$15;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1380
    invoke-static {}, Lcom/payu/custombrowser/Bank;->getSystemCurrentTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->timeOfArrival:Ljava/lang/String;

    .line 1381
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1382
    const-string v0, "departure"

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->timeOfArrival:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    const-string v0, ""

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    .line 1386
    :cond_1
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->showCB:Z

    if-eqz v0, :cond_2

    .line 1387
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/payu/custombrowser/Bank$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/payu/custombrowser/Bank$16;-><init>(Lcom/payu/custombrowser/Bank;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1787
    :cond_2
    return-void
.end method

.method public dismissPayULoader()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2952
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 2953
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2954
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 2959
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->webpageNotFoundError:Z

    if-nez v0, :cond_0

    .line 2963
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->forwardJourneyForChromeLoaderIsComplete:Z

    .line 2964
    const-string v0, "stag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting forwardJourneyForChromeLoaderIsComplete = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/payu/custombrowser/Bank;->forwardJourneyForChromeLoaderIsComplete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payu/custombrowser/util/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2967
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->startSlowUserWarningTimer()V

    .line 2970
    :cond_0
    return-void
.end method

.method protected dismissSlowUserWarningTimer()V
    .locals 2

    .prologue
    .line 3007
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->slowUserCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 3008
    const-string v0, "sTag"

    const-string v1, "Shutting down slowUserCountDownTimer"

    invoke-static {v0, v1}, Lcom/payu/custombrowser/util/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3009
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->slowUserCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 3011
    :cond_0
    return-void
.end method

.method public dismissSnoozeWindow()V
    .locals 1

    .prologue
    .line 2765
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->isSnoozeWindowVisible:Z

    .line 2767
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2768
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 2769
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->cancel()V

    .line 2772
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->setCbBlankOverlay(I)V

    .line 2774
    :cond_0
    return-void
.end method

.method enter_otp(Ljava/lang/String;)V
    .locals 29
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 1997
    invoke-virtual/range {p0 .. p0}, Lcom/payu/custombrowser/Bank;->prepareSmsListener()V

    .line 1999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    const-string v3, "payment_initiated"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2000
    const-string v2, "CUSTOM_BROWSER"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    .line 2001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->eventArray:Ljava/util/ArrayList;

    const-string v3, "CUSTOM_BROWSER"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2002
    const-string v2, "cb_status"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 2006
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->customProgressBar:Lcom/payu/custombrowser/custombar/CustomProgressBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    sget v5, Lcom/payu/custombrowser/R$id;->progress:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/payu/custombrowser/custombar/CustomProgressBar;->removeProgressDialog(Landroid/view/View;)V

    .line 2012
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/payu/custombrowser/Bank;->checkLoading:Z

    .line 2013
    invoke-virtual/range {p0 .. p0}, Lcom/payu/custombrowser/Bank;->onHelpAvailable()V

    .line 2015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->cbTransparentView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 2016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->cbTransparentView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2018
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    if-nez v2, :cond_3

    .line 2019
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/payu/custombrowser/R$layout;->wait_for_otp:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    .line 2021
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->approve:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 2022
    .local v12, "approveButton":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->Regenerate_layout_gone:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    .line 2023
    .local v26, "regenerateLayoutGone":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->Enter_manually_gone:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 2024
    .local v9, "enterManuallyGone":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->pin_layout_gone:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 2025
    .local v8, "pinLayoutGone":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->regenerate_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 2026
    .local v11, "regenerateLayout":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->bank_logo:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 2027
    .local v19, "im":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->timer:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 2028
    .local v28, "timerView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->otp_sms:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    .line 2029
    .local v14, "otpSms":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->waiting:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 2030
    .local v13, "waiting":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->pin:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 2031
    .local v15, "pinButton":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->retry:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 2032
    .local v16, "retryButton":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->enter_manually:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 2033
    .local v17, "enterManuallyButton":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->retry_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 2034
    .local v10, "retryText":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->progress:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 2035
    .local v20, "mProgress":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->otp_recieved:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 2036
    .local v22, "otpReceived":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2037
    const v2, 0x3e99999a    # 0.3f

    invoke-static {v2, v12}, Lcom/payu/custombrowser/util/CBUtil;->setAlpha(FLandroid/view/View;)V

    .line 2038
    const/16 v2, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2039
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2040
    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2041
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2042
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2043
    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2044
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2045
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2046
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2047
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2048
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2049
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2050
    const/16 v2, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2051
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 2052
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2053
    :cond_4
    new-instance v2, Lcom/payu/custombrowser/Bank$18;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v14, v12}, Lcom/payu/custombrowser/Bank$18;-><init>(Lcom/payu/custombrowser/Bank;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v14, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2082
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->customProgressBar:Lcom/payu/custombrowser/custombar/CustomProgressBar;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/payu/custombrowser/custombar/CustomProgressBar;->showDialog(Landroid/view/View;)V

    .line 2083
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2084
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2086
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2087
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/payu/custombrowser/Bank;->frameState:I

    .line 2092
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/payu/custombrowser/Bank;->frameState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 2093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->cbSlideBarView:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 2094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->cbSlideBarView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2098
    :cond_5
    :try_start_0
    new-instance v23, Lorg/json/JSONObject;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2099
    .local v23, "p":Lorg/json/JSONObject;
    sget v2, Lcom/payu/custombrowser/R$string;->cb_regenerate:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget v2, Lcom/payu/custombrowser/R$string;->cb_regenerate:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v25, 0x1

    .line 2100
    .local v25, "regenerate":Z
    :goto_1
    sget v2, Lcom/payu/custombrowser/R$string;->cb_skip_screen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget v2, Lcom/payu/custombrowser/R$string;->cb_skip_screen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v27, 0x1

    .line 2101
    .local v27, "skipScreen":Z
    :goto_2
    sget v2, Lcom/payu/custombrowser/R$string;->cb_pin:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget v2, Lcom/payu/custombrowser/R$string;->cb_pin:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v24, 0x1

    .line 2103
    .local v24, "pin":Z
    :goto_3
    if-eqz v27, :cond_12

    .line 2105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_6

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_6

    .line 2107
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2108
    if-eqz v25, :cond_10

    .line 2109
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2110
    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2111
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2122
    :goto_4
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2123
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2124
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->buttonClickListener:Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

    invoke-virtual {v15, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->buttonClickListener:Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->buttonClickListener:Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/payu/custombrowser/Bank;->updateHeight(Landroid/view/View;)V

    .line 2144
    :cond_6
    :goto_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_7

    .line 2146
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/payu/custombrowser/Bank;->permissionGranted:Z

    if-nez v2, :cond_7

    .line 2151
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 2152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->linear_layout_waiting_for_otp:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    .line 2153
    .local v21, "otpLayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/payu/custombrowser/Bank;->showSoftKeyboard(Landroid/view/View;)V

    .line 2154
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2155
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2156
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2157
    const/16 v2, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2158
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2159
    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2161
    new-instance v2, Lcom/payu/custombrowser/Bank$20;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v14, v12}, Lcom/payu/custombrowser/Bank$20;-><init>(Lcom/payu/custombrowser/Bank;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v14, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2198
    .end local v21    # "otpLayout":Landroid/widget/LinearLayout;
    .end local v23    # "p":Lorg/json/JSONObject;
    .end local v24    # "pin":Z
    .end local v25    # "regenerate":Z
    .end local v27    # "skipScreen":Z
    :cond_7
    :goto_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_13

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/payu/custombrowser/Bank;->permissionGranted:Z

    if-nez v2, :cond_13

    .line 2199
    const/16 v4, 0x2d

    .line 2204
    .local v4, "time_wait_for_sms":I
    :goto_7
    new-instance v2, Lcom/payu/custombrowser/Bank$21;

    move-object/from16 v3, p0

    move-object/from16 v5, v28

    move-object/from16 v6, p1

    move-object/from16 v7, v26

    invoke-direct/range {v2 .. v17}, Lcom/payu/custombrowser/Bank$21;-><init>(Lcom/payu/custombrowser/Bank;ILandroid/widget/TextView;Ljava/lang/String;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/Button;Landroid/view/View;Landroid/widget/EditText;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/payu/custombrowser/Bank;->enterOtpRunnable:Ljava/lang/Runnable;

    .line 2269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->mPassword:Ljava/lang/String;

    if-eqz v2, :cond_b

    if-eqz v14, :cond_b

    invoke-virtual {v14}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_b

    .line 2270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/payu/custombrowser/Bank;->waitingOTPTimer:Ljava/util/Timer;

    invoke-virtual {v2, v3}, Lcom/payu/custombrowser/util/CBUtil;->cancelTimer(Ljava/util/Timer;)V

    .line 2271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    sget v3, Lcom/payu/custombrowser/R$id;->timer:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    const-string v3, "payment_initiated"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    const-string v3, "CUSTOM_BROWSER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2273
    :cond_8
    const-string v2, "received_otp_direct"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    .line 2274
    const-string v2, "otp_received"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 2277
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->mPassword:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2278
    sget v2, Lcom/payu/custombrowser/R$string;->cb_approve_otp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2279
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 2280
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/payu/custombrowser/Bank;->autoApprove:Z

    if-eqz v2, :cond_a

    .line 2281
    invoke-virtual {v12}, Landroid/widget/Button;->performClick()Z

    .line 2282
    const-string v2, "auto_approve"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    .line 2283
    const-string v2, "user_input"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    :cond_a
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v12}, Lcom/payu/custombrowser/util/CBUtil;->setAlpha(FLandroid/view/View;)V

    .line 2289
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->customProgressBar:Lcom/payu/custombrowser/custombar/CustomProgressBar;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/payu/custombrowser/custombar/CustomProgressBar;->removeDialog(Landroid/view/View;)V

    .line 2292
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2293
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2295
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2297
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2298
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->buttonClickListener:Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/payu/custombrowser/Bank$ButtonOnclickListener;->setView(Landroid/view/View;)V

    .line 2300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->buttonClickListener:Lcom/payu/custombrowser/Bank$ButtonOnclickListener;

    invoke-virtual {v12, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2303
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->enterOTPView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/payu/custombrowser/Bank;->updateHeight(Landroid/view/View;)V

    .line 2304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2305
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/payu/custombrowser/Bank;->frameState:I

    .line 2310
    :goto_8
    return-void

    .line 2089
    .end local v4    # "time_wait_for_sms":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/payu/custombrowser/Bank;->maximiseWebviewHeight()V

    goto/16 :goto_0

    .line 2099
    .restart local v23    # "p":Lorg/json/JSONObject;
    :cond_d
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 2100
    .restart local v25    # "regenerate":Z
    :cond_e
    const/16 v27, 0x0

    goto/16 :goto_2

    .line 2101
    .restart local v27    # "skipScreen":Z
    :cond_f
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 2113
    .restart local v24    # "pin":Z
    :cond_10
    if-eqz v24, :cond_11

    .line 2114
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2118
    :goto_9
    const/16 v2, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2119
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 2193
    .end local v23    # "p":Lorg/json/JSONObject;
    .end local v24    # "pin":Z
    .end local v25    # "regenerate":Z
    .end local v27    # "skipScreen":Z
    :catch_0
    move-exception v18

    .line 2194
    .local v18, "e":Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 2116
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v23    # "p":Lorg/json/JSONObject;
    .restart local v24    # "pin":Z
    .restart local v25    # "regenerate":Z
    .restart local v27    # "skipScreen":Z
    :cond_11
    const/16 v2, 0x8

    :try_start_2
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    .line 2132
    :cond_12
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/payu/custombrowser/Bank;->waitingOTPTimer:Ljava/util/Timer;

    .line 2133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->waitingOTPTimer:Ljava/util/Timer;

    new-instance v3, Lcom/payu/custombrowser/Bank$19;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/payu/custombrowser/Bank$19;-><init>(Lcom/payu/custombrowser/Bank;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    .line 2201
    .end local v23    # "p":Lorg/json/JSONObject;
    .end local v24    # "pin":Z
    .end local v25    # "regenerate":Z
    .end local v27    # "skipScreen":Z
    :cond_13
    const/16 v4, 0x1e

    .restart local v4    # "time_wait_for_sms":I
    goto/16 :goto_7

    .line 2307
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/payu/custombrowser/Bank;->maximiseWebviewHeight()V

    goto :goto_8
.end method

.method public getBankName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->bankName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 342
    const-string v0, ""

    .line 343
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->bankName:Ljava/lang/String;

    goto :goto_0
.end method

.method getCode(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 2320
    const-string v0, "pin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2321
    const/4 v0, 0x3

    .line 2335
    :goto_0
    return v0

    .line 2322
    :cond_0
    const-string v0, "password"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2323
    const/4 v0, 0x1

    goto :goto_0

    .line 2324
    :cond_1
    const-string v0, "enter manually"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2325
    const/4 v0, 0x4

    goto :goto_0

    .line 2326
    :cond_2
    const-string v0, "approve"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2327
    const/4 v0, 0x5

    goto :goto_0

    .line 2328
    :cond_3
    const-string v0, "otp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "use sms otp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2329
    :cond_4
    const/4 v0, 0x6

    goto :goto_0

    .line 2330
    :cond_5
    const-string v0, "sms otp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2331
    const/4 v0, 0x7

    goto :goto_0

    .line 2332
    :cond_6
    const-string v0, "regenerate otp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2333
    const/4 v0, 0x2

    goto :goto_0

    .line 2335
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getPageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    return-object v0
.end method

.method public getSnoozeLoaderView()Lcom/payu/custombrowser/widgets/SnoozeLoaderView;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeLoaderView:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    return-object v0
.end method

.method public getUserId()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/payu/custombrowser/Bank$8;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/Bank$8;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1024
    :cond_0
    return-void
.end method

.method public hideMagicRetry()V
    .locals 1

    .prologue
    .line 2847
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->toggleFragmentVisibility(I)V

    .line 2848
    return-void
.end method

.method public initMagicRetry()V
    .locals 6

    .prologue
    .line 2791
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 2792
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    new-instance v2, Lcom/payu/magicretry/MagicRetryFragment;

    invoke-direct {v2}, Lcom/payu/magicretry/MagicRetryFragment;-><init>()V

    iput-object v2, p0, Lcom/payu/custombrowser/Bank;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    .line 2793
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2794
    .local v1, "newInformationBundle":Landroid/os/Bundle;
    sget-object v2, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserData;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2796
    const-string v2, "transaction_id"

    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v3}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2798
    :cond_0
    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    invoke-virtual {v2, v1}, Lcom/payu/magicretry/MagicRetryFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2799
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/payu/custombrowser/R$id;->magic_retry_container:I

    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    const-string v5, "magicRetry"

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 2800
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/payu/custombrowser/Bank;->toggleFragmentVisibility(I)V

    .line 2801
    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/payu/magicretry/MagicRetryFragment;->isWhiteListingEnabled(Z)V

    .line 2802
    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Lcom/payu/magicretry/MagicRetryFragment;->setWebView(Landroid/webkit/WebView;)V

    .line 2803
    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/payu/magicretry/MagicRetryFragment;->initMRSettingsFromSharedPreference(Landroid/content/Context;)V

    .line 2805
    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getEnableSnooze()I

    move-result v2

    if-lez v2, :cond_1

    .line 2807
    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;

    sget-object v4, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;-><init>(Lcom/payu/custombrowser/Bank;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2812
    :goto_0
    return-void

    .line 2810
    :cond_1
    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/payu/custombrowser/PayUWebViewClient;

    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    sget-object v5, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5}, Lcom/payu/custombrowser/PayUWebViewClient;-><init>(Lcom/payu/custombrowser/Bank;Lcom/payu/magicretry/MagicRetryFragment;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0
.end method

.method public isInBackWardJourney(Ljava/lang/String;)Z
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 807
    :try_start_0
    iget-boolean v4, p0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    if-nez v4, :cond_5

    .line 808
    const-string v4, "https://secure.payu.in"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "https://mobiletest.payu.in"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const-string v4, "_response"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 828
    :cond_1
    :goto_0
    return v2

    .line 811
    :cond_2
    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->backwardJourneyUrls:Ljava/util/Set;

    if-eqz v4, :cond_1

    .line 812
    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->backwardJourneyUrls:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 813
    .local v0, "backwardJourneyUrl":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .end local v0    # "backwardJourneyUrl":Ljava/lang/String;
    :cond_4
    move v2, v3

    .line 818
    goto :goto_0

    :cond_5
    move v2, v3

    .line 822
    goto :goto_0

    .line 826
    :catch_0
    move-exception v1

    .line 827
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 828
    goto :goto_0
.end method

.method public killSnoozeService()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v0}, Lcom/payu/custombrowser/services/SnoozeService;->killSnoozeService()V

    .line 276
    :cond_0
    return-void
.end method

.method public launchSnoozeWindow()V
    .locals 1

    .prologue
    .line 2384
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->launchSnoozeWindow(I)V

    .line 2385
    return-void
.end method

.method public launchSnoozeWindow(I)V
    .locals 23
    .param p1, "mode"    # I

    .prologue
    .line 2397
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/payu/custombrowser/Bank;->setCbBlankOverlay(I)V

    .line 2403
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    if-eqz v2, :cond_1

    .line 2404
    move-object/from16 v0, p0

    iget v2, v0, Lcom/payu/custombrowser/Bank;->snoozeCountBackwardJourney:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v3}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getEnableSnooze()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 2711
    :cond_0
    :goto_0
    return-void

    .line 2407
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/payu/custombrowser/Bank;->snoozeCount:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v3}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getEnableSnooze()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2412
    :cond_2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/payu/custombrowser/Bank;->snoozeMode:I

    .line 2413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2415
    invoke-virtual/range {p0 .. p0}, Lcom/payu/custombrowser/Bank;->dismissSlowUserWarning()V

    .line 2417
    const/16 v2, 0x8

    const-string v3, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/payu/custombrowser/Bank;->progressBarVisibilityPayuChrome(ILjava/lang/String;)V

    .line 2419
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/payu/custombrowser/Bank;->isSnoozeWindowVisible:Z

    .line 2421
    const-string v2, "snooze_window_status"

    const-string v3, "snooze_visible"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 2422
    const-string v2, "snooze_appear_url"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/payu/custombrowser/Bank;->webviewUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 2424
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    const-string v22, "Warn"

    .line 2425
    .local v22, "modeStr":Ljava/lang/String;
    :goto_1
    const-string v2, "snooze_window_launch_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 2426
    const-string v2, "snooze_window_appear_time"

    invoke-static {}, Lcom/payu/custombrowser/Bank;->getSystemCurrentTime()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 2434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v21

    .line 2435
    .local v21, "layoutInflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->snoozeLayout:Landroid/view/View;

    if-nez v2, :cond_3

    .line 2436
    sget v2, Lcom/payu/custombrowser/R$layout;->cb_layout_snooze:I

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/payu/custombrowser/Bank;->snoozeLayout:Landroid/view/View;

    .line 2438
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->snoozeLayout:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->text_view_snooze_message:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2439
    .local v5, "snoozeMessageTextView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->snoozeLayout:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->text_view_transaction_snoozed_message1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 2440
    .local v7, "transactionSnoozedMessageTextView1":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->snoozeLayout:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->button_cancel_transaction:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 2441
    .local v13, "dismissSnoozeWindow":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->snoozeLayout:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->button_snooze_transaction:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 2442
    .local v6, "snoozeTransactionButton":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->snoozeLayout:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->button_retry_transaction:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 2443
    .local v15, "retryTransactionButton":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->snoozeLayout:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->text_view_cancel_snooze_window:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2444
    .local v12, "cancelTxnSnooze":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->snoozeLayout:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->t_confirm:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 2445
    .local v8, "tConfirm":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->snoozeLayout:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->t_nconfirm:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 2446
    .local v9, "tNConfirm":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->snoozeLayout:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->snooze_header_txt:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2447
    .local v4, "snoozeDialogHeaderText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->snoozeLayout:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->text_view_retry_message_detail:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 2448
    .local v17, "snoozeRetryDetailText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->snoozeLayout:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->button_retry_anyway:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    .line 2449
    .local v20, "retryAnywayButton":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->snoozeLayout:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->snooze_loader_view:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/payu/custombrowser/Bank;->snoozeLoaderView:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    .line 2451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->snoozeLoaderView:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->setVisibility(I)V

    .line 2452
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2453
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2454
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2455
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2456
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2457
    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2458
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2459
    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2460
    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2461
    const/16 v2, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    sget v3, Lcom/payu/custombrowser/R$string;->cb_slownetwork_status:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    sget v3, Lcom/payu/custombrowser/R$string;->cb_try_later:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    sget v3, Lcom/payu/custombrowser/R$string;->cb_retry_restart:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2471
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/payu/custombrowser/Bank;->payuPG:Z

    if-eqz v2, :cond_6

    .line 2473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/payu/custombrowser/R$string;->cb_slow_internet_confirmation:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/payu/custombrowser/R$string;->cb_receive_sms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/payu/custombrowser/R$string;->cb_confirm_transaction:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2476
    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2477
    const/16 v2, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2478
    const/16 v2, 0x8

    invoke-virtual {v15, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2479
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2480
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2481
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2482
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2483
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2484
    const/16 v2, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2486
    move-object/from16 v0, p0

    iget v2, v0, Lcom/payu/custombrowser/Bank;->snoozeVisibleCountBackwdJourney:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/payu/custombrowser/Bank;->snoozeVisibleCountBackwdJourney:I

    .line 2488
    const-string v2, "snooze_backward_visible"

    const-string v3, "Y"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 2495
    :goto_2
    new-instance v2, Lcom/payu/custombrowser/Bank$23;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/payu/custombrowser/Bank$23;-><init>(Lcom/payu/custombrowser/Bank;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2523
    new-instance v2, Lcom/payu/custombrowser/Bank$24;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/payu/custombrowser/Bank$24;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2534
    new-instance v2, Lcom/payu/custombrowser/Bank$25;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/payu/custombrowser/Bank$25;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2555
    new-instance v2, Lcom/payu/custombrowser/Bank$26;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/payu/custombrowser/Bank$26;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v15, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2599
    new-instance v10, Lcom/payu/custombrowser/Bank$27;

    move-object/from16 v11, p0

    move-object v14, v6

    move-object/from16 v16, v5

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    invoke-direct/range {v10 .. v20}, Lcom/payu/custombrowser/Bank$27;-><init>(Lcom/payu/custombrowser/Bank;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;)V

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2656
    new-instance v2, Lcom/payu/custombrowser/Bank$28;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/payu/custombrowser/Bank$28;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2670
    new-instance v2, Lcom/payu/custombrowser/Bank$29;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/payu/custombrowser/Bank$29;-><init>(Lcom/payu/custombrowser/Bank;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    if-nez v2, :cond_4

    .line 2681
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/payu/custombrowser/Bank;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    .line 2682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/payu/custombrowser/Bank;->snoozeLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 2683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    new-instance v3, Lcom/payu/custombrowser/Bank$30;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/payu/custombrowser/Bank$30;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    new-instance v3, Lcom/payu/custombrowser/Bank$31;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/payu/custombrowser/Bank$31;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2708
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/payu/custombrowser/Bank;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 2424
    .end local v4    # "snoozeDialogHeaderText":Landroid/widget/TextView;
    .end local v5    # "snoozeMessageTextView":Landroid/widget/TextView;
    .end local v6    # "snoozeTransactionButton":Landroid/widget/Button;
    .end local v7    # "transactionSnoozedMessageTextView1":Landroid/widget/TextView;
    .end local v8    # "tConfirm":Landroid/widget/TextView;
    .end local v9    # "tNConfirm":Landroid/widget/TextView;
    .end local v12    # "cancelTxnSnooze":Landroid/widget/TextView;
    .end local v13    # "dismissSnoozeWindow":Landroid/widget/TextView;
    .end local v15    # "retryTransactionButton":Landroid/widget/Button;
    .end local v17    # "snoozeRetryDetailText":Landroid/widget/TextView;
    .end local v20    # "retryAnywayButton":Landroid/widget/Button;
    .end local v21    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v22    # "modeStr":Ljava/lang/String;
    :cond_5
    const-string v22, "Fail"

    goto/16 :goto_1

    .line 2491
    .restart local v4    # "snoozeDialogHeaderText":Landroid/widget/TextView;
    .restart local v5    # "snoozeMessageTextView":Landroid/widget/TextView;
    .restart local v6    # "snoozeTransactionButton":Landroid/widget/Button;
    .restart local v7    # "transactionSnoozedMessageTextView1":Landroid/widget/TextView;
    .restart local v8    # "tConfirm":Landroid/widget/TextView;
    .restart local v9    # "tNConfirm":Landroid/widget/TextView;
    .restart local v12    # "cancelTxnSnooze":Landroid/widget/TextView;
    .restart local v13    # "dismissSnoozeWindow":Landroid/widget/TextView;
    .restart local v15    # "retryTransactionButton":Landroid/widget/Button;
    .restart local v17    # "snoozeRetryDetailText":Landroid/widget/TextView;
    .restart local v20    # "retryAnywayButton":Landroid/widget/Button;
    .restart local v21    # "layoutInflater":Landroid/view/LayoutInflater;
    .restart local v22    # "modeStr":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/payu/custombrowser/Bank;->snoozeVisibleCountFwdJourney:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/payu/custombrowser/Bank;->snoozeVisibleCountFwdJourney:I

    goto/16 :goto_2
.end method

.method public markPreviousTxnAsUserCanceled(Ljava/lang/String;)V
    .locals 1
    .param p1, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 3219
    new-instance v0, Lcom/payu/custombrowser/widgets/SurePayCancelAsyncTaskHelper;

    invoke-direct {v0, p1}, Lcom/payu/custombrowser/widgets/SurePayCancelAsyncTaskHelper;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/payu/custombrowser/widgets/SurePayCancelAsyncTaskHelper;->execute()V

    .line 3220
    return-void
.end method

.method public nativeHelperForNB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "fields"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/payu/custombrowser/Bank$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/payu/custombrowser/Bank$9;-><init>(Lcom/payu/custombrowser/Bank;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1208
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/payu/custombrowser/Bank$10;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/Bank$10;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1214
    return-void
.end method

.method public onCancel()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1961
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->onCancel(Ljava/lang/String;)V

    .line 1962
    return-void
.end method

.method public onCancel(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1970
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/payu/custombrowser/Bank$17;

    invoke-direct {v1, p0, p1}, Lcom/payu/custombrowser/Bank$17;-><init>(Lcom/payu/custombrowser/Bank;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1981
    return-void
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1868
    iput-object p1, p0, Lcom/payu/custombrowser/Bank;->merchantResponse:Ljava/lang/String;

    .line 1869
    return-void
.end method

.method public onLoadResourse(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 839
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    const-string v0, "https://mwsrec.npci.org.in/MWS/Scripts/MerchantScript_v1.0.js"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://swasrec2.npci.org.in"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://swasrec.npci.org.in"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    :cond_0
    return-void
.end method

.method public onMerchantHashReceived(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/payu/custombrowser/Bank$3;

    invoke-direct {v1, p0, p1}, Lcom/payu/custombrowser/Bank$3;-><init>(Lcom/payu/custombrowser/Bank;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 572
    :cond_0
    return-void
.end method

.method public onOverrideURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->cbWebPageProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->cbWebPageProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 434
    :cond_0
    return-void
.end method

.method public onPageFinishWebclient(Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v7, -0x1

    .line 856
    iput-boolean v2, p0, Lcom/payu/custombrowser/Bank;->pageStarted:Z

    .line 858
    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isRemoving()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 859
    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "last_url"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "f:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/payu/custombrowser/util/CBUtil;->setStringSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->startPayUChromeLoaderDisbaleTimer()V

    .line 869
    iget-boolean v2, p0, Lcom/payu/custombrowser/Bank;->firstFinish:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "mainLayout"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v7, :cond_0

    .line 871
    :try_start_0
    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "mainLayout"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 872
    .local v0, "activityRootView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/payu/custombrowser/Bank$4;

    invoke-direct {v3, p0, v0}, Lcom/payu/custombrowser/Bank$4;-><init>(Lcom/payu/custombrowser/Bank;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 898
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/payu/custombrowser/Bank;->firstFinish:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    .end local v0    # "activityRootView":Landroid/view/View;
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/payu/custombrowser/Bank;->isPageStoppedForcefully:Z

    if-nez v2, :cond_1

    .line 908
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->stopSnoozeCountDownTimer()V

    .line 912
    :cond_1
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/payu/custombrowser/Bank$5;

    invoke-direct {v3, p0}, Lcom/payu/custombrowser/Bank$5;-><init>(Lcom/payu/custombrowser/Bank;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 930
    return-void

    .line 900
    :catch_0
    move-exception v1

    .line 901
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPageFinished()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1801
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 1802
    iput-boolean v2, p0, Lcom/payu/custombrowser/Bank;->mPageReady:Z

    .line 1804
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->approve_flag:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1805
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->onHelpUnavailable()V

    .line 1806
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/Bank;->approve_flag:Ljava/lang/Boolean;

    .line 1809
    :cond_0
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->loadingLayout:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->loadingLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1810
    iput v2, p0, Lcom/payu/custombrowser/Bank;->frameState:I

    .line 1811
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->maximiseWebviewHeight()V

    .line 1812
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->onHelpUnavailable()V

    .line 1815
    :cond_1
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1818
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->mJS:Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->showCB:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->isPageStoppedForcefully:Z

    if-nez v1, :cond_2

    .line 1820
    :try_start_0
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->mJS:Lorg/json/JSONObject;

    sget v4, Lcom/payu/custombrowser/R$string;->cb_init:I

    invoke-virtual {p0, v4}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1825
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->mBankJS:Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->mJS:Lorg/json/JSONObject;

    if-nez v1, :cond_3

    .line 1826
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbTransparentView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1827
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbTransparentView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1831
    :cond_3
    return-void

    .line 1821
    :catch_0
    move-exception v0

    .line 1822
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPageStarted()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1834
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1835
    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->nbhelpVisible:Z

    if-eqz v1, :cond_0

    .line 1836
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->onHelpUnavailable()V

    .line 1837
    iput-boolean v2, p0, Lcom/payu/custombrowser/Bank;->nbhelpVisible:Z

    .line 1839
    :cond_0
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1840
    iput-boolean v2, p0, Lcom/payu/custombrowser/Bank;->mPageReady:Z

    .line 1841
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->mBankJS:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 1843
    :try_start_0
    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->showCB:Z

    if-eqz v1, :cond_1

    .line 1844
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->mBankJS:Lorg/json/JSONObject;

    sget v4, Lcom/payu/custombrowser/R$string;->cb_detect_bank:I

    invoke-virtual {p0, v4}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1845
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->showMagicRetryCB()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1852
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbTransparentView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1853
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbTransparentView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1856
    :cond_2
    return-void

    .line 1848
    :catch_0
    move-exception v0

    .line 1849
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPageStartedWebclient(Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 593
    iput-boolean v7, p0, Lcom/payu/custombrowser/Bank;->pageStarted:Z

    .line 596
    iput-boolean v6, p0, Lcom/payu/custombrowser/Bank;->isPageStoppedForcefully:Z

    .line 601
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-eq v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->webpageNotFoundError:Z

    if-eqz v1, :cond_1

    .line 604
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->jellyBeanOnReceivedError()V

    .line 609
    :cond_1
    iput-boolean v6, p0, Lcom/payu/custombrowser/Bank;->webpageNotFoundError:Z

    .line 612
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->dismissSlowUserWarning()V

    .line 615
    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->payuPG:Z

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    const-string v1, "https://mobiletest.payu.in/_payment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https://secure.payu.in/_payment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 616
    :cond_2
    iput-boolean v7, p0, Lcom/payu/custombrowser/Bank;->payuPG:Z

    .line 619
    :cond_3
    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->isFirstURLLoaded:Z

    if-nez v1, :cond_5

    .line 621
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 622
    sget-object v1, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserData;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->getPostData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    sget-object v1, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserData;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->getPostURL()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 623
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    sget-object v2, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserData;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->getPostData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setPayuPostData(Ljava/lang/String;)V

    .line 624
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    sget-object v2, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserData;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->getPostURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setPostURL(Ljava/lang/String;)V

    .line 627
    sget-object v1, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserData;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->setPostURL(Ljava/lang/String;)V

    .line 628
    sget-object v1, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserData;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->setPostData(Ljava/lang/String;)V

    .line 636
    :cond_4
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/payu/custombrowser/Bank;->checkIfTransactionNBType(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->isTxnNBType:Z

    .line 638
    iput-boolean v7, p0, Lcom/payu/custombrowser/Bank;->isFirstURLLoaded:Z

    .line 641
    :cond_5
    iput-boolean v7, p0, Lcom/payu/custombrowser/Bank;->showSnoozeWindow:Z

    .line 643
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 644
    invoke-static {}, Lcom/payu/custombrowser/Bank;->getSystemCurrentTime()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/Bank;->timeOfDeparture:Ljava/lang/String;

    .line 645
    const-string v1, "departure"

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->timeOfDeparture:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v1, ""

    iput-object v1, p0, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    .line 649
    :cond_6
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 650
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "last_url"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/payu/custombrowser/util/CBUtil;->setStringSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbWebPageProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_7

    .line 654
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbWebPageProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 658
    :cond_7
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->payUChromeLoaderDisableTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_8

    .line 659
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->payUChromeLoaderDisableTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 662
    :cond_8
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbWebPageProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_9

    .line 663
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbWebPageProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 664
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbWebPageProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 667
    :cond_9
    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/Bank;->isInBackWardJourney(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    .line 673
    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->forwardJourneyForChromeLoaderIsComplete:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    if-eqz v1, :cond_b

    .line 674
    :cond_a
    invoke-virtual {p0, v6, p1}, Lcom/payu/custombrowser/Bank;->progressBarVisibilityPayuChrome(ILjava/lang/String;)V

    .line 677
    :cond_b
    iput-object p1, p0, Lcom/payu/custombrowser/Bank;->webviewUrl:Ljava/lang/String;

    .line 680
    sget-object v1, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    if-eqz v1, :cond_12

    sget-object v1, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserData;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 684
    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    if-eqz v1, :cond_c

    .line 686
    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->isTxnNBType:Z

    if-eqz v1, :cond_15

    .line 688
    iput-boolean v6, p0, Lcom/payu/custombrowser/Bank;->isSnoozeWindowVisible:Z

    .line 706
    :cond_c
    :goto_0
    const-string v1, "https://mobiletest.payu.in/_payment_options"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 707
    iput-object v8, p0, Lcom/payu/custombrowser/Bank;->mJS:Lorg/json/JSONObject;

    .line 712
    :cond_d
    :try_start_0
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v2

    const-string v3, "surl"

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/util/CBUtil;->getDataFromPostData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 713
    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v2

    const-string v3, "surl"

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/util/CBUtil;->getDataFromPostData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    :cond_e
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 714
    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v2

    const-string v3, "furl"

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/util/CBUtil;->getDataFromPostData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 715
    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v2

    const-string v3, "furl"

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/util/CBUtil;->getDataFromPostData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 716
    :cond_f
    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/Bank;->isRetryURL(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 718
    :cond_10
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->showSnoozeWindow:Z

    .line 719
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 720
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->hideCB()V

    .line 721
    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/Bank;->isRetryURL(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 723
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->resetAutoSelectOTP()V

    .line 724
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    .line 726
    :cond_11
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->stopSnoozeCountDownTimer()V

    .line 728
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    if-eqz v1, :cond_12

    .line 731
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v1}, Lcom/payu/custombrowser/services/SnoozeService;->killSnoozeService()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    :cond_12
    :goto_1
    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->isTxnNBType:Z

    if-eqz v1, :cond_13

    .line 764
    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->snoozeretry:Z

    if-nez v1, :cond_13

    .line 766
    iput-boolean v7, p0, Lcom/payu/custombrowser/Bank;->snoozeretry:Z

    .line 769
    :cond_13
    return-void

    .line 632
    :cond_14
    new-instance v1, Lcom/payu/custombrowser/util/MissingParamException;

    const-string v2, "POST Data or POST URL Missing or wrong POST URL"

    invoke-direct {v1, v2}, Lcom/payu/custombrowser/util/MissingParamException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 690
    :cond_15
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    goto/16 :goto_0

    .line 738
    :cond_16
    :try_start_1
    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->isSnoozeEnabled:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSnoozeMode()I

    move-result v1

    if-ne v1, v7, :cond_12

    .line 741
    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    if-nez v1, :cond_12

    .line 742
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->snoozeConfigMap:Lcom/payu/custombrowser/util/SnoozeConfigMap;

    invoke-virtual {v1, p1}, Lcom/payu/custombrowser/util/SnoozeConfigMap;->getPercentageAndTimeout(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/Bank;->snoozeLoadPercentageAndTimeOut:[I

    .line 743
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->snoozeLoadPercentageAndTimeOut:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, p0, Lcom/payu/custombrowser/Bank;->snoozeUrlLoadingPercentage:I

    .line 744
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->snoozeLoadPercentageAndTimeOut:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, p0, Lcom/payu/custombrowser/Bank;->snoozeUrlLoadingTimeout:I

    .line 748
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->initializeSnoozeTimer()V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 752
    :catch_0
    move-exception v0

    .line 753
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public onPayuFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    if-eqz v0, :cond_0

    .line 1882
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v0}, Lcom/payu/custombrowser/services/SnoozeService;->killSnoozeService()V

    .line 1885
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1886
    const-string v0, "failure_transaction"

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    .line 1887
    const-string v0, "trxn_status"

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->isSuccessTransaction:Ljava/lang/Boolean;

    .line 1889
    iput-object p1, p0, Lcom/payu/custombrowser/Bank;->payuReponse:Ljava/lang/String;

    .line 1892
    :cond_1
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->cancelTransactionNofication()V

    .line 1893
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->callTimer()V

    .line 1894
    return-void
.end method

.method public onPayuSuccess(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1918
    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    if-eqz v2, :cond_0

    .line 1919
    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v2}, Lcom/payu/custombrowser/services/SnoozeService;->killSnoozeService()V

    .line 1922
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/payu/custombrowser/Bank;->isSuccessTransaction:Ljava/lang/Boolean;

    .line 1925
    const-string v2, "success_transaction"

    iput-object v2, p0, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    .line 1926
    const-string v2, "trxn_status"

    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->eventRecorded:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    iput-object p1, p0, Lcom/payu/custombrowser/Bank;->payuReponse:Ljava/lang/String;

    .line 1930
    iget v2, p0, Lcom/payu/custombrowser/Bank;->storeOneClickHash:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1932
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->payuReponse:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1934
    .local v1, "hashObject":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "card_token"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "merchant_hash"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/payu/custombrowser/util/CBUtil;->storeInSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1939
    .end local v1    # "hashObject":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->cancelTransactionNofication()V

    .line 1940
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->callTimer()V

    .line 1941
    return-void

    .line 1935
    :catch_0
    move-exception v0

    .line 1936
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onProgressChanged(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    const/16 v3, 0x64

    .line 517
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbWebPageProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbWebPageProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 522
    if-ne p1, v3, :cond_1

    .line 523
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbWebPageProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbWebPageProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 525
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 526
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/payu/custombrowser/Bank$2;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/Bank$2;-><init>(Lcom/payu/custombrowser/Bank;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 543
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/Bank;->startAnimation(I)V

    goto :goto_0
.end method

.method public onReceivedErrorWebClient(ILjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 448
    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->webpageNotFoundError:Z

    .line 452
    :try_start_0
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 454
    sget-object v1, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserData;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 458
    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    if-nez v1, :cond_4

    .line 459
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->snoozeOnReceivedError()V

    .line 477
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->onHelpUnavailable()V

    .line 478
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbBaseView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 479
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbWebPageProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_1

    .line 480
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbWebPageProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 484
    :cond_1
    iget v1, p0, Lcom/payu/custombrowser/Bank;->maxWebview:I

    if-eqz v1, :cond_2

    .line 485
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->maximiseWebviewHeight()V

    .line 486
    const/4 v1, 0x1

    iput v1, p0, Lcom/payu/custombrowser/Bank;->frameState:I

    .line 488
    :cond_2
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->hideCB()V

    .line 489
    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->cbOldFlow:Z

    if-nez v1, :cond_3

    .line 490
    sget-object v1, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserData;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onCBErrorReceived(ILjava/lang/String;)V

    .line 499
    :cond_3
    :goto_1
    return-void

    .line 460
    :cond_4
    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->isTxnNBType:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/payu/custombrowser/Bank;->snoozeCountBackwardJourney:I

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getEnableSnooze()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 462
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->isPageStoppedForcefully:Z

    .line 463
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 464
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/payu/custombrowser/Bank;->launchSnoozeWindow(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onSuccess()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1903
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->onSuccess(Ljava/lang/String;)V

    .line 1904
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1952
    iput-object p1, p0, Lcom/payu/custombrowser/Bank;->merchantResponse:Ljava/lang/String;

    .line 1953
    return-void
.end method

.method public reInit()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/payu/custombrowser/Bank$11;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/Bank$11;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1229
    :cond_0
    return-void
.end method

.method public reloadWVNative()V
    .locals 1

    .prologue
    .line 3196
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 3197
    return-void
.end method

.method public reloadWVUsingJS()V
    .locals 2

    .prologue
    .line 3189
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    const-string v1, "javascript:window.location.reload(true)"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3190
    return-void
.end method

.method public reloadWVUsingJSFromCache()V
    .locals 2

    .prologue
    .line 3203
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    const-string v1, "javascript:window.location.reload()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3204
    return-void
.end method

.method public reloadWebView()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v0}, Lcom/payu/custombrowser/services/SnoozeService;->killSnoozeService()V

    .line 285
    :cond_0
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->isSnoozeWindowVisible:Z

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->registerSMSBroadcast()V

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->isWebviewReloading:Z

    .line 292
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->isSnoozeEnabled:Z

    if-eqz v0, :cond_2

    .line 293
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->initializeSnoozeTimer()V

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 296
    const-string v0, "snooze_resume_url"

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const/16 v0, 0x13

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_4

    .line 298
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 303
    :cond_3
    :goto_0
    return-void

    .line 300
    :cond_4
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->reloadWVUsingJS()V

    goto :goto_0
.end method

.method public reloadWebView(Ljava/lang/String;)V
    .locals 2
    .param p1, "resumeUrl"    # Ljava/lang/String;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v0}, Lcom/payu/custombrowser/services/SnoozeService;->killSnoozeService()V

    .line 312
    :cond_0
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->isSnoozeWindowVisible:Z

    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 315
    :cond_1
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->registerSMSBroadcast()V

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->isWebviewReloading:Z

    .line 319
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->isSnoozeEnabled:Z

    if-eqz v0, :cond_2

    .line 320
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->initializeSnoozeTimer()V

    .line 323
    :cond_2
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 324
    const-string v0, "snooze_resume_url"

    invoke-virtual {p0, v0, p1}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const/16 v0, 0x13

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_3

    .line 326
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 333
    :goto_0
    return-void

    .line 328
    :cond_3
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->reloadWVUsingJS()V

    goto :goto_0

    .line 331
    :cond_4
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/Bank;->reloadWebView(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reloadWebView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postParams"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 245
    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->forwardJourneyForChromeLoaderIsComplete:Z

    .line 246
    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->isWebviewReloading:Z

    .line 249
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->registerSMSBroadcast()V

    .line 250
    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    .line 251
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v0}, Lcom/payu/custombrowser/services/SnoozeService;->killSnoozeService()V

    .line 254
    :cond_0
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->isSnoozeWindowVisible:Z

    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 260
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->progressDialog:Landroid/app/ProgressDialog;

    .line 263
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_4

    .line 264
    :cond_3
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 266
    :cond_4
    const-string v0, "snooze_resume_url"

    invoke-virtual {p0, v0, p1}, Lcom/payu/custombrowser/Bank;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->resetAutoSelectOTP()V

    .line 269
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 270
    return-void
.end method

.method public setIsPageStoppedForcefully(Z)V
    .locals 0
    .param p1, "isPageStoppedForcefully"    # Z

    .prologue
    .line 2897
    iput-boolean p1, p0, Lcom/payu/custombrowser/Bank;->isPageStoppedForcefully:Z

    .line 2898
    return-void
.end method

.method public setMRData(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->isMRDataSet:Z

    if-nez v0, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/payu/magicretry/MagicRetryFragment;->setMRData(Ljava/lang/String;Landroid/content/Context;)V

    .line 422
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/payu/custombrowser/util/CBUtil;->updateRetryData(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/payu/custombrowser/Bank;->updateWhitelistedRetryUrls(Ljava/util/List;)V

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->isMRDataSet:Z

    .line 426
    :cond_0
    return-void
.end method

.method public setMagicRetry(Ljava/util/Map;)V
    .locals 1
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
    .line 2782
    .local p1, "urlList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    if-eqz v0, :cond_0

    .line 2783
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    invoke-virtual {v0, p1}, Lcom/payu/magicretry/MagicRetryFragment;->setUrlListWithPostData(Ljava/util/Map;)V

    .line 2785
    :cond_0
    return-void
.end method

.method public setSnoozeConfig(Ljava/lang/String;)V
    .locals 2
    .param p1, "snoozeConfig"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2939
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/payu/custombrowser/util/CBUtil;->storeSnoozeConfigInSharedPref(Landroid/content/Context;Ljava/lang/String;)Lcom/payu/custombrowser/util/SnoozeConfigMap;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeConfigMap:Lcom/payu/custombrowser/util/SnoozeConfigMap;

    .line 2940
    return-void
.end method

.method public setSnoozeEnabled(Z)V
    .locals 3
    .param p1, "snoozeEnabled"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 935
    if-nez p1, :cond_0

    .line 939
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setEnableSnooze(I)V

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    const-string v1, "snoozeEnabled"

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/payu/custombrowser/util/CBUtil;->setBooleanSharedPreference(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 944
    return-void
.end method

.method public setTransactionStatusReceived(Z)V
    .locals 0
    .param p1, "transactionStatusReceived"    # Z

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/payu/custombrowser/Bank;->isTransactionStatusReceived:Z

    .line 222
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 4
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1034
    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->saveUserIDCheck:Z

    if-eqz v1, :cond_1

    .line 1035
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1038
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->bankName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1}, Lcom/payu/custombrowser/util/CBUtil;->storeInSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    :cond_0
    :goto_0
    return-void

    .line 1043
    :cond_1
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->bankName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/util/CBUtil;->getStringSharedPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1044
    .local v0, "savedParam":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1046
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->bankName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/util/CBUtil;->removeFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showBackButtonDialog()V
    .locals 5

    .prologue
    .line 2852
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2853
    .local v0, "backButtonClickAlertDialog":Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2855
    const-string v3, "Do you really want to cancel the transaction ?"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2856
    const-string v3, "Ok"

    new-instance v4, Lcom/payu/custombrowser/Bank$32;

    invoke-direct {v4, p0}, Lcom/payu/custombrowser/Bank$32;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2872
    const-string v3, "Cancel"

    new-instance v4, Lcom/payu/custombrowser/Bank$33;

    invoke-direct {v4, p0}, Lcom/payu/custombrowser/Bank$33;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2881
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2882
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2883
    .local v2, "wmlp":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x7d3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2886
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2887
    return-void
.end method

.method public showCustomBrowser(Z)V
    .locals 2
    .param p1, "showCustomBrowser"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 395
    iput-boolean p1, p0, Lcom/payu/custombrowser/Bank;->showCB:Z

    .line 396
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/payu/custombrowser/Bank$1;

    invoke-direct {v1, p0, p1}, Lcom/payu/custombrowser/Bank$1;-><init>(Lcom/payu/custombrowser/Bank;Z)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 414
    :cond_0
    return-void
.end method

.method public showMagicRetry()V
    .locals 1

    .prologue
    .line 2839
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 2840
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->toggleFragmentVisibility(I)V

    .line 2841
    return-void
.end method

.method protected startSlowUserWarningTimer()V
    .locals 2

    .prologue
    .line 2979
    const-string v0, "sTag"

    const-string v1, "Attempting to start slowUserCountDownTimer"

    invoke-static {v0, v1}, Lcom/payu/custombrowser/util/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2981
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->slowUserCountDownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    .line 2982
    const-string v0, "sTag"

    const-string v1, "Starting slowUserCountDownTimer"

    invoke-static {v0, v1}, Lcom/payu/custombrowser/util/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3001
    :cond_0
    return-void
.end method

.method public startSnoozeServiceVerifyPayment(Ljava/lang/String;)V
    .locals 6
    .param p1, "verifyParam"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 2742
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->snoozeBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2743
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->snoozeBroadCastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->SNOOZE_GET_WEBVIEW_STATUS_INTENT_ACTION:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2744
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    const-class v2, Lcom/payu/custombrowser/services/SnoozeService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2746
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cb_config"

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2747
    const-string v1, "verificationMsgReceived"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2748
    const-string v1, "merchantCheckoutActivity"

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getMerchantCheckoutActivityPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2749
    const-string v1, "verify_add_param"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2751
    iput-boolean v5, p0, Lcom/payu/custombrowser/Bank;->isSnoozeServiceBounded:Z

    .line 2752
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->snoozeServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v5}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2753
    iput-boolean v5, p0, Lcom/payu/custombrowser/Bank;->isSnoozeBroadCastReceiverRegistered:Z

    .line 2757
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2758
    return-void
.end method

.method public toggleFragmentVisibility(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 2820
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2821
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 2822
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 2824
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2832
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    :goto_0
    return-void

    .line 2825
    .restart local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 2827
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method
