.class public Lcom/payu/custombrowser/CustomBrowserMain;
.super Landroid/support/v4/app/Fragment;
.source "CustomBrowserMain.java"

# interfaces
.implements Lcom/payu/custombrowser/util/CBConstant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payu/custombrowser/CustomBrowserMain$CBMainViewOnTouchListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true


# instance fields
.field final CB_URL:Ljava/lang/String;

.field activity:Landroid/app/Activity;

.field protected autoApprove:Z

.field protected autoSelectOtp:Z

.field protected backwardJourneyStarted:Z

.field backwardJourneyUrls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field bankName:Ljava/lang/String;

.field bundle:Landroid/os/Bundle;

.field cbBaseView:Landroid/widget/FrameLayout;

.field cbOldFlow:Z

.field cbSlideBarView:Landroid/view/View;

.field cbTransparentView:Landroid/view/View;

.field cbUtil:Lcom/payu/custombrowser/util/CBUtil;

.field private cbVisibleOnce:Z

.field cbWebPageProgressBar:Landroid/widget/ProgressBar;

.field cbWebView:Landroid/webkit/WebView;

.field checkForInput:I

.field countDownTimer:Landroid/os/CountDownTimer;

.field protected customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

.field drawable:Landroid/graphics/drawable/Drawable;

.field enterOTPView:Landroid/view/View;

.field eventArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field eventRecorded:Ljava/lang/String;

.field protected firstTouch:Z

.field protected forwardJourneyForChromeLoaderIsComplete:Z

.field frameState:I

.field isSnoozeWindowVisible:Z

.field isSuccessTransaction:Ljava/lang/Boolean;

.field protected isTxnNBType:Z

.field protected isWebviewReloading:Z

.field lastProgress:I

.field loadingLayout:Landroid/view/View;

.field loading_height:I

.field mAnalytics:Lcom/payu/custombrowser/analytics/CBAnalytics;

.field mBankJS:Lorg/json/JSONObject;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mJS:Lorg/json/JSONObject;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

.field maxWebview:I

.field merchantResponse:Ljava/lang/String;

.field merchantSMSPermission:Z

.field minWebview:I

.field nbhelpVisible:Z

.field protected pageType:Ljava/lang/String;

.field protected payuChromeLoaderDisabled:Z

.field payuDeviceAnalytics:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

.field payuPG:Z

.field payuReponse:Ljava/lang/String;

.field progressDialog:Landroid/app/ProgressDialog;

.field retryUrls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field serialExecutor:Ljava/util/concurrent/Executor;

.field snoozeDialog:Landroid/support/v7/app/AlertDialog;

.field public snoozeMode:I

.field storeOneClickHash:I

.field protected timeOfArrival:Ljava/lang/String;

.field protected timeOfDeparture:Ljava/lang/String;

.field protected timerProgress:Ljava/util/Timer;

.field verificationMsgReceived:Z

.field webviewUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 62
    const-string v0, "https://mobiletest.payu.in/js/sdk_js/v3/"

    iput-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->CB_URL:Ljava/lang/String;

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->snoozeMode:I

    .line 66
    iput-boolean v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->payuChromeLoaderDisabled:Z

    .line 68
    iput-boolean v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->backwardJourneyStarted:Z

    .line 71
    iput-boolean v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->forwardJourneyForChromeLoaderIsComplete:Z

    .line 75
    iput-boolean v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->firstTouch:Z

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->pageType:Ljava/lang/String;

    .line 111
    iput-boolean v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->isSnoozeWindowVisible:Z

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->eventArray:Ljava/util/ArrayList;

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private deviceAnalytics(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .param p1, "sdkMerchantKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 346
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 348
    .local v0, "deviceDetails":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "payu_id"

    iget-object v3, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    const-string v4, "PAYUID"

    invoke-virtual {v3, v4, p2}, Lcom/payu/custombrowser/util/CBUtil;->getCookie(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    const-string v2, "txnid"

    sget-object v3, Lcom/payu/custombrowser/Bank;->transactionID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    const-string v2, "merchant_key"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    const-string v2, "device_os_version"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    const-string v2, "device_resolution"

    iget-object v3, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v4, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/payu/custombrowser/util/CBUtil;->getDeviceDensity(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    const-string v2, "device_manufacturer"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string v2, "device_model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 355
    const-string v2, "network_info"

    iget-object v3, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v4, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/custombrowser/util/CBUtil;->getNetworkStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    const-string v2, "network_strength"

    iget-object v3, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v4, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/custombrowser/util/CBUtil;->getNetworkStrength(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 357
    const-string v2, "sdk_version_name"

    sget-object v3, Lcom/payu/custombrowser/Bank;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    const-string v2, "cb_version_name"

    const-string v3, "6.1.1"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    const-string v2, "package_name"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    const-string v2, "com.payu.magicretry.MagicRetryFragment"

    const-string v3, "analyticsKey"

    invoke-static {v2, p1, v3}, Lcom/payu/custombrowser/util/CBUtil;->setVariableReflection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    new-instance v2, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    iget-object v3, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "cb_local_cache_device"

    invoke-direct {v2, v3, v4}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain;->payuDeviceAnalytics:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    .line 362
    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain;->payuDeviceAnalytics:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v1

    .line 364
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSystemCurrentTime()Ljava/lang/String;
    .locals 6

    .prologue
    .line 230
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 231
    .local v0, "currentDate":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 232
    .local v2, "df":Ljava/text/DateFormat;
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 237
    .end local v2    # "df":Ljava/text/DateFormat;
    :goto_0
    return-object v1

    .line 234
    :catch_0
    move-exception v3

    .line 235
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    const-string v1, ""

    goto :goto_0
.end method

.method private showProgress(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 513
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payu/custombrowser/CustomBrowserMain;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 515
    .local v10, "mInflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x4

    new-array v7, v0, [Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    .line 517
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$drawable;->l_icon1:I

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/CustomBrowserMain;->cbGetDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v7, v12

    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    .line 518
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$drawable;->l_icon2:I

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/CustomBrowserMain;->cbGetDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v7, v13

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    .line 519
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/payu/custombrowser/R$drawable;->l_icon3:I

    invoke-virtual {p0, v1, v2}, Lcom/payu/custombrowser/CustomBrowserMain;->cbGetDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    .line 520
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/payu/custombrowser/R$drawable;->l_icon4:I

    invoke-virtual {p0, v1, v2}, Lcom/payu/custombrowser/CustomBrowserMain;->cbGetDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v7, v0

    .line 523
    .local v7, "drawables":[Landroid/graphics/drawable/Drawable;
    sget v0, Lcom/payu/custombrowser/R$layout;->cb_prog_dialog:I

    invoke-virtual {v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 524
    .local v9, "layout":Landroid/view/View;
    sget v0, Lcom/payu/custombrowser/R$id;->imageView:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 525
    .local v8, "imageView":Landroid/widget/ImageView;
    sget v0, Lcom/payu/custombrowser/R$id;->dialog_desc:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 526
    .local v6, "dialogDesc":Landroid/widget/TextView;
    iget-boolean v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->isWebviewReloading:Z

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    sget v1, Lcom/payu/custombrowser/R$string;->cb_resuming_transaction:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iput-boolean v12, p0, Lcom/payu/custombrowser/CustomBrowserMain;->isWebviewReloading:Z

    .line 534
    :goto_0
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_2

    .line 535
    new-instance v11, Landroid/app/ProgressDialog;

    sget v0, Lcom/payu/custombrowser/R$style;->cb_progress_dialog:I

    invoke-direct {v11, p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 539
    .local v11, "progDialog":Landroid/app/ProgressDialog;
    :goto_1
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->timerProgress:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/util/CBUtil;->cancelTimer(Ljava/util/Timer;)V

    .line 541
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->timerProgress:Ljava/util/Timer;

    .line 542
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->timerProgress:Ljava/util/Timer;

    new-instance v1, Lcom/payu/custombrowser/CustomBrowserMain$3;

    invoke-direct {v1, p0, v7, v8}, Lcom/payu/custombrowser/CustomBrowserMain$3;-><init>(Lcom/payu/custombrowser/CustomBrowserMain;[Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 569
    invoke-virtual {v11}, Landroid/app/ProgressDialog;->show()V

    .line 570
    invoke-virtual {v11, v9}, Landroid/app/ProgressDialog;->setContentView(Landroid/view/View;)V

    .line 571
    invoke-virtual {v11, v13}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 572
    invoke-virtual {v11, v12}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 573
    new-instance v0, Lcom/payu/custombrowser/CustomBrowserMain$4;

    invoke-direct {v0, p0}, Lcom/payu/custombrowser/CustomBrowserMain$4;-><init>(Lcom/payu/custombrowser/CustomBrowserMain;)V

    invoke-virtual {v11, v0}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 583
    .end local v6    # "dialogDesc":Landroid/widget/TextView;
    .end local v7    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v8    # "imageView":Landroid/widget/ImageView;
    .end local v9    # "layout":Landroid/view/View;
    .end local v10    # "mInflater":Landroid/view/LayoutInflater;
    .end local v11    # "progDialog":Landroid/app/ProgressDialog;
    :cond_0
    return-object v11

    .line 531
    .restart local v6    # "dialogDesc":Landroid/widget/TextView;
    .restart local v7    # "drawables":[Landroid/graphics/drawable/Drawable;
    .restart local v8    # "imageView":Landroid/widget/ImageView;
    .restart local v9    # "layout":Landroid/view/View;
    .restart local v10    # "mInflater":Landroid/view/LayoutInflater;
    :cond_1
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    sget v1, Lcom/payu/custombrowser/R$string;->cb_please_wait:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 537
    :cond_2
    iget-object v11, p0, Lcom/payu/custombrowser/CustomBrowserMain;->progressDialog:Landroid/app/ProgressDialog;

    .restart local v11    # "progDialog":Landroid/app/ProgressDialog;
    goto :goto_1
.end method


# virtual methods
.method addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 377
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    iget-object v7, p0, Lcom/payu/custombrowser/CustomBrowserMain;->mAnalytics:Lcom/payu/custombrowser/analytics/CBAnalytics;

    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/CustomBrowserMain;->bankName:Ljava/lang/String;

    sget-object v4, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    sget-object v5, Lcom/payu/custombrowser/Bank;->transactionID:Ljava/lang/String;

    iget-object v6, p0, Lcom/payu/custombrowser/CustomBrowserMain;->pageType:Ljava/lang/String;

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/payu/custombrowser/util/CBUtil;->getLogMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/payu/custombrowser/analytics/CBAnalytics;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method calculateCBHeight(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, -0x2

    .line 457
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 458
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->loading_height:I

    .line 459
    iget v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->maxWebview:I

    if-eqz v0, :cond_0

    .line 460
    iget v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->maxWebview:I

    iget v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->loading_height:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->minWebview:I

    .line 462
    :cond_0
    return-void
.end method

.method calculateMaximumWebViewHeight()V
    .locals 4

    .prologue
    .line 471
    :try_start_0
    iget v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->maxWebview:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->bankName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 472
    const-string v1, "testwebview"

    const-string v2, "calculate webview height"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbWebView:Landroid/webkit/WebView;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->measure(II)V

    .line 474
    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestLayout()V

    .line 475
    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->maxWebview:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method callTimer()V
    .locals 6

    .prologue
    .line 807
    new-instance v0, Lcom/payu/custombrowser/CustomBrowserMain$5;

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/payu/custombrowser/CustomBrowserMain$5;-><init>(Lcom/payu/custombrowser/CustomBrowserMain;JJ)V

    .line 827
    invoke-virtual {v0}, Lcom/payu/custombrowser/CustomBrowserMain$5;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->countDownTimer:Landroid/os/CountDownTimer;

    .line 828
    return-void
.end method

.method protected cancelTransactionNofication()V
    .locals 3

    .prologue
    .line 891
    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 892
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    sget v1, Lcom/payu/custombrowser/util/CBConstant;->TRANSACTION_STATUS_NOTIFICATION_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 893
    sget v1, Lcom/payu/custombrowser/util/CBConstant;->SNOOZE_NOTIFICATION_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 894
    return-void
.end method

.method public cbGetDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    .prologue
    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method cbSetBankDrawable(Ljava/lang/String;)V
    .locals 4
    .param p1, "bankNameImage"    # Ljava/lang/String;

    .prologue
    .line 396
    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 397
    if-eqz p1, :cond_1

    .line 400
    :try_start_0
    const-string v1, "sbinet"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sbi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/payu/custombrowser/R$drawable;->sbi:I

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/util/CBUtil;->getDrawableCB(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->drawable:Landroid/graphics/drawable/Drawable;

    .line 435
    :cond_1
    :goto_0
    return-void

    .line 402
    :cond_2
    const-string v1, "icici"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "icicinet"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "icicicc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 403
    :cond_3
    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/payu/custombrowser/R$drawable;->icici:I

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/util/CBUtil;->getDrawableCB(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->drawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 404
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    const-string v1, "kotaknet"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "kotak"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 405
    :cond_5
    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/payu/custombrowser/R$drawable;->kotak:I

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/util/CBUtil;->getDrawableCB(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 406
    :cond_6
    const-string v1, "indus"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 407
    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/payu/custombrowser/R$drawable;->induslogo:I

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/util/CBUtil;->getDrawableCB(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 408
    :cond_7
    const-string v1, "hdfc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "hdfcnet"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 409
    :cond_8
    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/payu/custombrowser/R$drawable;->hdfc_bank:I

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/util/CBUtil;->getDrawableCB(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->drawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 410
    :cond_9
    const-string v1, "yesnet"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 411
    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/payu/custombrowser/R$drawable;->yesbank_logo:I

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/util/CBUtil;->getDrawableCB(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->drawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 412
    :cond_a
    const-string v1, "sc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 413
    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/payu/custombrowser/R$drawable;->scblogo:I

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/util/CBUtil;->getDrawableCB(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->drawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 414
    :cond_b
    const-string v1, "axisnet"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "axis"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 415
    :cond_c
    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/payu/custombrowser/R$drawable;->axis_logo:I

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/util/CBUtil;->getDrawableCB(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->drawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 416
    :cond_d
    const-string v1, "amex"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 417
    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/payu/custombrowser/R$drawable;->cb_amex_logo:I

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/util/CBUtil;->getDrawableCB(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->drawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 418
    :cond_e
    const-string v1, "hdfcnet"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "hdfc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 419
    :cond_f
    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    sget v3, Lcom/payu/custombrowser/R$drawable;->hdfc_bank:I

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/util/CBUtil;->getDrawableCB(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->drawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 420
    :cond_10
    const-string v1, "ing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 421
    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/payu/custombrowser/R$drawable;->ing_logo:I

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/util/CBUtil;->getDrawableCB(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->drawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 422
    :cond_11
    const-string v1, "idbi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 423
    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/payu/custombrowser/R$drawable;->idbi:I

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/util/CBUtil;->getDrawableCB(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->drawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 424
    :cond_12
    const-string v1, "citi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 425
    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/payu/custombrowser/R$drawable;->citi:I

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/util/CBUtil;->getDrawableCB(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->drawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 427
    :cond_13
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->drawable:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected checkIfTransactionNBType(Ljava/lang/String;)Z
    .locals 6
    .param p1, "postData"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 192
    :try_start_0
    iget-object v3, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v4, p0, Lcom/payu/custombrowser/CustomBrowserMain;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v4}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pg"

    invoke-virtual {v3, v4, v5}, Lcom/payu/custombrowser/util/CBUtil;->getDataFromPostData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "transactionType":Ljava/lang/String;
    const-string v3, "nb"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    const/4 v2, 0x1

    .line 201
    .end local v1    # "transactionType":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public checkVisibilityCB(Ljava/lang/String;)V
    .locals 1
    .param p1, "bank"    # Ljava/lang/String;

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/payu/custombrowser/CustomBrowserMain;->checkVisibilityCB(Ljava/lang/String;Z)V

    .line 268
    return-void
.end method

.method public checkVisibilityCB(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "bank"    # Ljava/lang/String;
    .param p2, "checkSnooze"    # Z

    .prologue
    .line 273
    :try_start_0
    invoke-virtual {p0}, Lcom/payu/custombrowser/CustomBrowserMain;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/payu/custombrowser/CustomBrowserMain;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/payu/custombrowser/CustomBrowserMain$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/payu/custombrowser/CustomBrowserMain$2;-><init>(Lcom/payu/custombrowser/CustomBrowserMain;ZLjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method communicationError()V
    .locals 2

    .prologue
    .line 638
    const/16 v0, 0x8

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/CustomBrowserMain;->progressBarVisibilityPayuChrome(ILjava/lang/String;)V

    .line 639
    return-void
.end method

.method hideCB()V
    .locals 1

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/payu/custombrowser/CustomBrowserMain;->maximiseWebviewHeight()V

    .line 672
    const/4 v0, 0x1

    iput v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->frameState:I

    .line 673
    invoke-virtual {p0}, Lcom/payu/custombrowser/CustomBrowserMain;->onHelpUnavailable()V

    .line 674
    return-void
.end method

.method hideKeyboardForcefully()V
    .locals 4

    .prologue
    .line 441
    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 442
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 443
    iget-object v2, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 444
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 446
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method hideSoftKeyboard()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 324
    return-void
.end method

.method protected initAnalytics(Ljava/lang/String;)V
    .locals 2
    .param p1, "sdkMerchantKey"    # Ljava/lang/String;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "local_cache_analytics"

    invoke-static {v0, v1}, Lcom/payu/custombrowser/analytics/CBAnalytics;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/payu/custombrowser/analytics/CBAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->mAnalytics:Lcom/payu/custombrowser/analytics/CBAnalytics;

    .line 337
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/payu/custombrowser/CustomBrowserMain;->deviceAnalytics(Ljava/lang/String;Landroid/content/Context;)V

    .line 338
    return-void
.end method

.method public isRetryURL(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 743
    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->retryUrls:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 744
    const-string v1, "https://mobiletest.payu.in/_payment_options"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 751
    :goto_0
    return v1

    .line 746
    :cond_0
    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->retryUrls:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 747
    .local v0, "retryUrl":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 748
    const/4 v1, 0x1

    goto :goto_0

    .line 751
    .end local v0    # "retryUrl":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadUrlWebView(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "mJS"    # Lorg/json/JSONObject;
    .param p2, "functName"    # Ljava/lang/String;

    .prologue
    .line 877
    return-void
.end method

.method maximiseWebviewHeight()V
    .locals 2

    .prologue
    .line 486
    iget v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->maxWebview:I

    if-nez v0, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/payu/custombrowser/CustomBrowserMain;->calculateMaximumWebViewHeight()V

    .line 488
    :cond_0
    iget v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->maxWebview:I

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->maxWebview:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 490
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestLayout()V

    .line 492
    :cond_1
    return-void
.end method

.method minimizeWebviewHeight()V
    .locals 2

    .prologue
    .line 499
    iget v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->maxWebview:I

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->minWebview:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 501
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestLayout()V

    .line 503
    :cond_0
    return-void
.end method

.method public onBackApproved()V
    .locals 0

    .prologue
    .line 884
    return-void
.end method

.method public onBackCancelled()V
    .locals 0

    .prologue
    .line 888
    return-void
.end method

.method public onBackPressed(Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .param p1, "alertDialog"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 880
    return-void
.end method

.method public onBankError()V
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    sget v1, Lcom/payu/custombrowser/R$id;->parent:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 715
    return-void
.end method

.method public onHelpAvailable()V
    .locals 2

    .prologue
    .line 722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbVisibleOnce:Z

    .line 723
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    sget v1, Lcom/payu/custombrowser/R$id;->parent:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 724
    return-void
.end method

.method public onHelpUnavailable()V
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    sget v1, Lcom/payu/custombrowser/R$id;->parent:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 707
    :cond_0
    return-void
.end method

.method onMerchantUrlFinished()V
    .locals 2

    .prologue
    .line 836
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/payu/custombrowser/CustomBrowserMain$6;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/CustomBrowserMain$6;-><init>(Lcom/payu/custombrowser/CustomBrowserMain;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 872
    :cond_0
    return-void
.end method

.method progressBarVisibilityPayuChrome(ILjava/lang/String;)V
    .locals 1
    .param p1, "visibility"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 618
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/payu/custombrowser/CustomBrowserMain;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/payu/custombrowser/CustomBrowserMain;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 631
    :cond_1
    :goto_0
    return-void

    .line 624
    :cond_2
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->payuChromeLoaderDisabled:Z

    if-nez v0, :cond_1

    .line 625
    iget-boolean v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->isSnoozeWindowVisible:Z

    if-nez v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/payu/custombrowser/CustomBrowserMain;->showProgress(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method public registerBroadcast(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1
    .param p1, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 685
    iput-object p1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 686
    invoke-virtual {p0}, Lcom/payu/custombrowser/CustomBrowserMain;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 687
    return-void
.end method

.method protected resetAutoSelectOTP()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 206
    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getAutoSelectOTP()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->autoSelectOtp:Z

    .line 207
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setUrlString()V
    .locals 5

    .prologue
    .line 758
    iget-object v3, p0, Lcom/payu/custombrowser/CustomBrowserMain;->mBankJS:Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 770
    :try_start_0
    iget-object v3, p0, Lcom/payu/custombrowser/CustomBrowserMain;->mBankJS:Lorg/json/JSONObject;

    const-string v4, "postPaymentPgUrlList"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 771
    iget-object v3, p0, Lcom/payu/custombrowser/CustomBrowserMain;->mBankJS:Lorg/json/JSONObject;

    const-string v4, "postPaymentPgUrlList"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 772
    .local v2, "urlStr":Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "||"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    .local v1, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 774
    iget-object v3, p0, Lcom/payu/custombrowser/CustomBrowserMain;->backwardJourneyUrls:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 795
    .end local v1    # "st":Ljava/util/StringTokenizer;
    .end local v2    # "urlStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 796
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/payu/custombrowser/CustomBrowserMain;->communicationError()V

    .line 797
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 800
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void

    .line 779
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/payu/custombrowser/CustomBrowserMain;->mBankJS:Lorg/json/JSONObject;

    const-string v4, "retryList"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 780
    iget-object v3, p0, Lcom/payu/custombrowser/CustomBrowserMain;->mBankJS:Lorg/json/JSONObject;

    const-string v4, "retryUrlList"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 781
    .restart local v2    # "urlStr":Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "||"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    .restart local v1    # "st":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 783
    iget-object v3, p0, Lcom/payu/custombrowser/CustomBrowserMain;->retryUrls:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method showSoftKeyboard(Landroid/view/View;)V
    .locals 2
    .param p1, "editText"    # Landroid/view/View;

    .prologue
    .line 312
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 313
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 314
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 315
    return-void
.end method

.method showTransparentView(Landroid/view/View;Landroid/content/Context;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 247
    if-eqz p1, :cond_0

    .line 248
    sget v2, Lcom/payu/custombrowser/R$anim;->cb_fade_in:I

    invoke-static {p2, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 249
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 250
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 251
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/payu/custombrowser/CustomBrowserMain$1;

    invoke-direct {v2, p0, p1}, Lcom/payu/custombrowser/CustomBrowserMain$1;-><init>(Lcom/payu/custombrowser/CustomBrowserMain;Landroid/view/View;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 258
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method startAnimation(I)V
    .locals 5
    .param p1, "newProgress"    # I

    .prologue
    .line 648
    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/payu/custombrowser/CustomBrowserMain;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/payu/custombrowser/CustomBrowserMain;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 649
    iget v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->lastProgress:I

    if-le v1, p1, :cond_0

    .line 650
    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbWebPageProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 651
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 652
    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbWebPageProgressBar:Landroid/widget/ProgressBar;

    const-string v2, "progress"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 653
    .local v0, "animation":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 654
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 655
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 662
    .end local v0    # "animation":Landroid/animation/ObjectAnimator;
    :goto_0
    iput p1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->lastProgress:I

    .line 664
    :cond_1
    return-void

    .line 657
    :cond_2
    const/16 v1, 0xa

    if-gt p1, v1, :cond_3

    .line 658
    const/16 p1, 0xa

    .line 660
    :cond_3
    iget-object v1, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbWebPageProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method public unregisterBroadcast(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 695
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 697
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 699
    :cond_0
    return-void
.end method

.method public wasCBVisibleOnce()Z
    .locals 1

    .prologue
    .line 727
    iget-boolean v0, p0, Lcom/payu/custombrowser/CustomBrowserMain;->cbVisibleOnce:Z

    return v0
.end method
