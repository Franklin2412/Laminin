.class public abstract Lcom/payu/custombrowser/PayUCBLifecycle;
.super Lcom/payu/custombrowser/CustomBrowserMain;
.source "PayUCBLifecycle.java"

# interfaces
.implements Lcom/payu/custombrowser/cbinterface/MagicRetryCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payu/custombrowser/PayUCBLifecycle$PayUCBLifeCycleTouchListener;
    }
.end annotation


# static fields
.field private static isFromSnoozeService:Z

.field public static snoozeImageDownloadTimeout:I

.field protected static whiteListedUrls:Ljava/util/List;
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
.field SMSOTPClicked:Z

.field private SNOOZE_BROAD_CAST_MESSAGE:Ljava/lang/String;

.field protected SNOOZE_GET_WEBVIEW_STATUS_INTENT_ACTION:Ljava/lang/String;

.field approve_flag:Ljava/lang/Boolean;

.field cbBlankOverlay:Landroid/view/View;

.field checkLoading:Z

.field checkPermissionVisibility:Z

.field checkedPermission:Z

.field chooseActionHeight:I

.field customProgressBar:Lcom/payu/custombrowser/custombar/CustomProgressBar;

.field enterOtpParams:Ljava/lang/String;

.field protected isSnoozeBroadCastReceiverRegistered:Z

.field protected isSnoozeEnabled:Z

.field protected isSnoozeServiceBounded:Z

.field mPageReady:Z

.field mPassword:Ljava/lang/String;

.field permissionGranted:Z

.field pin_selected_flag:Z

.field showCB:Z

.field protected slowUserCountDownTimer:Landroid/os/CountDownTimer;

.field protected slowUserWarningDialog:Landroid/app/AlertDialog;

.field protected snoozeBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field snoozeConfigMap:Lcom/payu/custombrowser/util/SnoozeConfigMap;

.field protected snoozeCount:I

.field protected snoozeCountBackwardJourney:I

.field snoozeLoadPercentageAndTimeOut:[I

.field protected snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

.field protected snoozeServiceConnection:Landroid/content/ServiceConnection;

.field protected snoozeUrlLoadingPercentage:I

.field protected snoozeUrlLoadingTimeout:I

.field protected snoozeVisibleCountBackwdJourney:I

.field protected snoozeVisibleCountFwdJourney:I

.field waitingOTPTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/payu/custombrowser/PayUCBLifecycle;->whiteListedUrls:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lcom/payu/custombrowser/CustomBrowserMain;-><init>()V

    .line 66
    const-string v0, "webview_status_action"

    iput-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->SNOOZE_GET_WEBVIEW_STATUS_INTENT_ACTION:Ljava/lang/String;

    .line 72
    iput-boolean v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->isSnoozeBroadCastReceiverRegistered:Z

    .line 74
    iput-boolean v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->isSnoozeServiceBounded:Z

    .line 76
    iput v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeCount:I

    .line 78
    iput v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeCountBackwardJourney:I

    .line 80
    iput-boolean v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->isSnoozeEnabled:Z

    .line 93
    new-instance v0, Lcom/payu/custombrowser/PayUCBLifecycle$1;

    invoke-direct {v0, p0}, Lcom/payu/custombrowser/PayUCBLifecycle$1;-><init>(Lcom/payu/custombrowser/PayUCBLifecycle;)V

    iput-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeServiceConnection:Landroid/content/ServiceConnection;

    .line 116
    iput-boolean v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->showCB:Z

    .line 122
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->approve_flag:Ljava/lang/Boolean;

    .line 128
    iput-boolean v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->permissionGranted:Z

    .line 130
    iput-boolean v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->checkedPermission:Z

    .line 134
    iput-boolean v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->mPageReady:Z

    .line 136
    iput-boolean v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->SMSOTPClicked:Z

    .line 142
    const-string v0, "snooze_broad_cast_message"

    iput-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->SNOOZE_BROAD_CAST_MESSAGE:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/payu/custombrowser/PayUCBLifecycle;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/PayUCBLifecycle;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->SNOOZE_BROAD_CAST_MESSAGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/payu/custombrowser/PayUCBLifecycle;)V
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/PayUCBLifecycle;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->updateSnoozeDialogWithSnoozeServiceStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/payu/custombrowser/PayUCBLifecycle;)V
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/PayUCBLifecycle;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->dismissSlowUserWarningTimerOnTouch()V

    return-void
.end method

.method static synthetic access$300(Lcom/payu/custombrowser/PayUCBLifecycle;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/PayUCBLifecycle;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/payu/custombrowser/PayUCBLifecycle;->checkConfirmMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkConfirmMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "msgAddress"    # Ljava/lang/String;
    .param p2, "msgBody"    # Ljava/lang/String;

    .prologue
    .line 743
    const/4 v0, 0x0

    .line 744
    .local v0, "count":I
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 745
    const/4 v1, 0x0

    .line 747
    .local v1, "returnValue":Z
    iget-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->bankName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 748
    add-int/lit8 v0, v0, 0x1

    .line 750
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "amount"

    invoke-virtual {p0, v3}, Lcom/payu/custombrowser/PayUCBLifecycle;->getValueFromPostData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 751
    add-int/lit8 v0, v0, 0x1

    .line 754
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 755
    const/4 v1, 0x1

    .line 758
    :cond_2
    if-nez v0, :cond_3

    .line 759
    const/4 v1, 0x0

    .line 775
    :cond_3
    if-nez v0, :cond_5

    .line 776
    const/4 v1, 0x0

    .line 795
    :cond_4
    :goto_0
    return v1

    .line 777
    :cond_5
    const-string v2, "made"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "purchase"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 779
    const/4 v1, 0x1

    goto :goto_0

    .line 780
    :cond_6
    const-string v2, "account"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "debited"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 781
    const/4 v1, 0x1

    goto :goto_0

    .line 782
    :cond_7
    const-string v2, "ac"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "debited"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 783
    const/4 v1, 0x1

    goto :goto_0

    .line 784
    :cond_8
    const-string v2, "tranx"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "made"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 785
    const/4 v1, 0x1

    goto :goto_0

    .line 786
    :cond_9
    const-string v2, "transaction"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "made"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 787
    const/4 v1, 0x1

    goto :goto_0

    .line 788
    :cond_a
    const-string v2, "spent"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 789
    const/4 v1, 0x1

    goto :goto_0

    .line 790
    :cond_b
    const-string v2, "Thank you using card for"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 791
    const/4 v1, 0x1

    goto :goto_0

    .line 792
    :cond_c
    const-string v2, "charge"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "initiated"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 793
    const-string v2, "charge"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "initiated"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v1, 0x1

    :goto_1
    goto/16 :goto_0

    :cond_d
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private dismissSlowUserWarningTimerOnTouch()V
    .locals 1

    .prologue
    .line 1092
    iget-boolean v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->forwardJourneyForChromeLoaderIsComplete:Z

    if-eqz v0, :cond_0

    .line 1093
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->firstTouch:Z

    .line 1094
    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->dismissSlowUserWarningTimer()V

    .line 1096
    :cond_0
    return-void
.end method

.method private getInitializeJS()V
    .locals 3

    .prologue
    .line 887
    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->prepareSmsListener()V

    .line 888
    const-string v1, "payment_initiated"

    iput-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->eventRecorded:Ljava/lang/String;

    .line 890
    const-string v1, "user_input"

    iget-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->eventRecorded:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/payu/custombrowser/PayUCBLifecycle;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    new-instance v0, Lcom/payu/custombrowser/PayUCBLifecycle$9;

    invoke-direct {v0, p0}, Lcom/payu/custombrowser/PayUCBLifecycle$9;-><init>(Lcom/payu/custombrowser/PayUCBLifecycle;)V

    .line 952
    .local v0, "initilializeRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->serialExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 953
    return-void
.end method

.method private initCBSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 399
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 400
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    const-string v1, "PayU"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 402
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/payu/custombrowser/PayUCBLifecycle$5;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/PayUCBLifecycle$5;-><init>(Lcom/payu/custombrowser/PayUCBLifecycle;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 420
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 421
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 422
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 423
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 426
    return-void
.end method

.method private updateSnoozeDialogWithSnoozeServiceStatus()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 249
    iget-object v3, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    iget-object v3, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->cancel()V

    .line 251
    iget-object v3, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 254
    :cond_0
    iget-object v3, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 255
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/payu/custombrowser/R$layout;->cb_layout_snooze:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 257
    .local v2, "snoozeLayout":Landroid/view/View;
    sget v3, Lcom/payu/custombrowser/R$id;->snooze_header_txt:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/payu/custombrowser/R$string;->cb_snooze_network_error:I

    invoke-virtual {p0, v4}, Lcom/payu/custombrowser/PayUCBLifecycle;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    sget v3, Lcom/payu/custombrowser/R$id;->text_view_cancel_snooze_window:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 260
    sget v3, Lcom/payu/custombrowser/R$id;->text_view_snooze_message:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/payu/custombrowser/R$string;->cb_snooze_network_down_message:I

    invoke-virtual {p0, v4}, Lcom/payu/custombrowser/PayUCBLifecycle;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    sget v3, Lcom/payu/custombrowser/R$id;->snooze_loader_view:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 262
    sget v3, Lcom/payu/custombrowser/R$id;->button_snooze_transaction:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 263
    sget v3, Lcom/payu/custombrowser/R$id;->text_view_retry_message_detail:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 264
    sget v3, Lcom/payu/custombrowser/R$id;->button_retry_transaction:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 265
    sget v3, Lcom/payu/custombrowser/R$id;->button_cancel_transaction:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 266
    sget v3, Lcom/payu/custombrowser/R$id;->t_confirm:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 267
    sget v3, Lcom/payu/custombrowser/R$id;->t_nconfirm:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 268
    sget v3, Lcom/payu/custombrowser/R$id;->button_go_back_snooze:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 269
    .local v0, "goBackButton":Landroid/widget/Button;
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 270
    new-instance v3, Lcom/payu/custombrowser/PayUCBLifecycle$3;

    invoke-direct {v3, p0}, Lcom/payu/custombrowser/PayUCBLifecycle$3;-><init>(Lcom/payu/custombrowser/PayUCBLifecycle;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    .line 278
    iget-object v3, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3, v2}, Landroid/support/v7/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 280
    iget-object v3, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 281
    iget-object v3, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    new-instance v4, Lcom/payu/custombrowser/PayUCBLifecycle$4;

    invoke-direct {v4, p0}, Lcom/payu/custombrowser/PayUCBLifecycle$4;-><init>(Lcom/payu/custombrowser/PayUCBLifecycle;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 288
    iget-object v3, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 289
    return-void
.end method


# virtual methods
.method public cbOldFlowOnCreateView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 429
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "webView"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    .line 431
    sget-object v0, Lcom/payu/custombrowser/Bank;->paymentMode:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/payu/custombrowser/Bank;->paymentMode:Ljava/lang/String;

    const-string v1, "nb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 432
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 437
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 438
    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "backButton"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/payu/custombrowser/PayUCBLifecycle$6;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/PayUCBLifecycle$6;-><init>(Lcom/payu/custombrowser/PayUCBLifecycle;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 484
    :cond_1
    sget-object v0, Lcom/payu/custombrowser/Bank;->paymentMode:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/payu/custombrowser/Bank;->paymentMode:Ljava/lang/String;

    const-string v1, "nb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 485
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 489
    :cond_2
    :goto_1
    return-void

    .line 433
    :cond_3
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getViewPortWideEnable()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 435
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    goto :goto_0

    .line 486
    :cond_4
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->bundle:Landroid/os/Bundle;

    const-string v1, "viewPortWide"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 487
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    goto :goto_1
.end method

.method public cbOldOnCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 295
    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->bundle:Landroid/os/Bundle;

    .line 296
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->bundle:Landroid/os/Bundle;

    const-string v1, "auto_approve"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->autoApprove:Z

    .line 297
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->bundle:Landroid/os/Bundle;

    const-string v1, "auto_select_otp"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->autoSelectOtp:Z

    .line 298
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->bundle:Landroid/os/Bundle;

    const-string v1, "store_one_click_hash"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->storeOneClickHash:I

    .line 299
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->bundle:Landroid/os/Bundle;

    const-string v1, "smsPermission"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->merchantSMSPermission:Z

    .line 301
    sget-object v0, Lcom/payu/custombrowser/Bank;->sdkVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/payu/custombrowser/Bank;->sdkVersion:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sdkname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/payu/custombrowser/Bank;->sdkVersion:Ljava/lang/String;

    .line 304
    :cond_1
    sget-object v0, Lcom/payu/custombrowser/Bank;->transactionID:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/payu/custombrowser/Bank;->transactionID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 305
    :cond_2
    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "txnid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/payu/custombrowser/Bank;->transactionID:Ljava/lang/String;

    .line 307
    :cond_3
    sget-object v0, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 308
    :cond_4
    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "merchantid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    .line 311
    :cond_5
    return-void
.end method

.method public cbOnCreate()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 314
    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "cb_config"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 315
    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "cb_config"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    iput-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 317
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getMerchantSMSPermission()I

    move-result v1

    if-ne v1, v2, :cond_7

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->merchantSMSPermission:Z

    .line 318
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getAutoApprove()I

    move-result v1

    if-ne v1, v2, :cond_8

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->autoApprove:Z

    .line 319
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getAutoSelectOTP()I

    move-result v1

    if-ne v1, v2, :cond_9

    :goto_2
    iput-boolean v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->autoSelectOtp:Z

    .line 320
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-nez v1, :cond_a

    :goto_3
    iput v3, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->storeOneClickHash:I

    .line 321
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-nez v1, :cond_b

    const-string v0, ""

    .line 324
    .local v0, "url":Ljava/lang/String;
    :goto_4
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-eqz v1, :cond_6

    .line 325
    sget-object v1, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    .line 332
    :cond_2
    :goto_5
    sget-object v1, Lcom/payu/custombrowser/Bank;->transactionID:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/payu/custombrowser/Bank;->transactionID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 333
    :cond_3
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 334
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/payu/custombrowser/Bank;->transactionID:Ljava/lang/String;

    .line 339
    :cond_4
    :goto_6
    sget-object v1, Lcom/payu/custombrowser/Bank;->sdkVersion:Ljava/lang/String;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/payu/custombrowser/Bank;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 340
    :cond_5
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSdkVersionName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSdkVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 341
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSdkVersionName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/payu/custombrowser/Bank;->sdkVersion:Ljava/lang/String;

    .line 348
    .end local v0    # "url":Ljava/lang/String;
    :cond_6
    :goto_7
    return-void

    :cond_7
    move v1, v3

    .line 317
    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 318
    goto/16 :goto_1

    :cond_9
    move v2, v3

    .line 319
    goto/16 :goto_2

    .line 320
    :cond_a
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getStoreOneClickHash()I

    move-result v3

    goto/16 :goto_3

    .line 321
    :cond_b
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 329
    .restart local v0    # "url":Ljava/lang/String;
    :cond_c
    const-string v1, ""

    sput-object v1, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    goto/16 :goto_5

    .line 336
    :cond_d
    const-string v1, "123"

    sput-object v1, Lcom/payu/custombrowser/Bank;->transactionID:Ljava/lang/String;

    goto :goto_6

    .line 343
    :cond_e
    const-string v1, ""

    sput-object v1, Lcom/payu/custombrowser/Bank;->sdkVersion:Ljava/lang/String;

    goto :goto_7
.end method

.method public cbOnCreateView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 493
    sget-object v0, Lcom/payu/custombrowser/Bank;->paymentMode:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/payu/custombrowser/Bank;->paymentMode:Ljava/lang/String;

    const-string v1, "nb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 494
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 499
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/payu/custombrowser/PayUWebChromeClient;

    move-object v0, p0

    check-cast v0, Lcom/payu/custombrowser/Bank;

    invoke-direct {v2, v0}, Lcom/payu/custombrowser/PayUWebChromeClient;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 500
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getEnableSnooze()I

    move-result v0

    if-lez v0, :cond_6

    .line 502
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;

    move-object v0, p0

    check-cast v0, Lcom/payu/custombrowser/Bank;

    sget-object v3, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/payu/custombrowser/PayUSnoozeWebViewClient;-><init>(Lcom/payu/custombrowser/Bank;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 507
    :goto_1
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 511
    :cond_1
    sget-object v0, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserData;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 512
    sget-object v0, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserData;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    move-object v0, p0

    check-cast v0, Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1, v2, v0}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->setCBProperties(Landroid/webkit/WebView;Lcom/payu/custombrowser/Bank;)V

    .line 516
    :cond_2
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getMagicretry()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 517
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getEnableSnooze()I

    move-result v0

    if-nez v0, :cond_3

    .line 518
    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->initMagicRetry()V

    .line 520
    :cond_3
    sget-object v0, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserData;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 522
    sget-object v0, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserData;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v1

    move-object v0, p0

    check-cast v0, Lcom/payu/custombrowser/Bank;

    iget-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->magicRetryFragment:Lcom/payu/magicretry/MagicRetryFragment;

    invoke-virtual {v1, v0, v2, v3}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->initializeMagicRetry(Lcom/payu/custombrowser/Bank;Landroid/webkit/WebView;Lcom/payu/magicretry/MagicRetryFragment;)V

    .line 525
    :cond_4
    return-void

    .line 495
    :cond_5
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getViewPortWideEnable()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 496
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    goto/16 :goto_0

    .line 504
    :cond_6
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/payu/custombrowser/PayUWebViewClient;

    move-object v0, p0

    check-cast v0, Lcom/payu/custombrowser/Bank;

    sget-object v3, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/payu/custombrowser/PayUWebViewClient;-><init>(Lcom/payu/custombrowser/Bank;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto/16 :goto_1
.end method

.method protected dismissSlowUserWarning()V
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->slowUserWarningDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->slowUserWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1084
    :cond_0
    return-void
.end method

.method abstract dismissSlowUserWarningTimer()V
.end method

.method abstract enter_otp(Ljava/lang/String;)V
.end method

.method public fillOTP(Landroid/content/BroadcastReceiver;)V
    .locals 9
    .param p1, "mReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/16 v7, 0x8

    const/4 v3, 0x0

    .line 800
    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v5, Lcom/payu/custombrowser/R$id;->otp_sms:I

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 801
    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v5, Lcom/payu/custombrowser/R$id;->otp_sms:I

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 802
    .local v1, "otpSMS":Landroid/widget/TextView;
    iget-boolean v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->showCB:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->mPassword:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 803
    iget-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->waitingOTPTimer:Ljava/util/Timer;

    invoke-virtual {v2, v5}, Lcom/payu/custombrowser/util/CBUtil;->cancelTimer(Ljava/util/Timer;)V

    .line 804
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->eventRecorded:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 818
    const-string v2, "otp_web"

    iput-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->eventRecorded:Ljava/lang/String;

    .line 821
    :goto_1
    const-string v2, "otp_received"

    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->eventRecorded:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Lcom/payu/custombrowser/PayUCBLifecycle;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 824
    iput-object v8, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->mPassword:Ljava/lang/String;

    .line 825
    iget-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customProgressBar:Lcom/payu/custombrowser/custombar/CustomProgressBar;

    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    sget v6, Lcom/payu/custombrowser/R$id;->progress:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/payu/custombrowser/custombar/CustomProgressBar;->removeDialog(Landroid/view/View;)V

    .line 827
    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v5, Lcom/payu/custombrowser/R$id;->approve:I

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 828
    .local v0, "approveButton":Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 829
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Lcom/payu/custombrowser/util/CBUtil;->setAlpha(FLandroid/view/View;)V

    .line 830
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 832
    iget-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    sget v4, Lcom/payu/custombrowser/R$id;->timer:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 833
    iget-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    sget v4, Lcom/payu/custombrowser/R$id;->retry_text:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 834
    iget-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    sget v4, Lcom/payu/custombrowser/R$id;->regenerate_layout:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 835
    iget-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    sget v4, Lcom/payu/custombrowser/R$id;->waiting:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 836
    iget-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    sget v4, Lcom/payu/custombrowser/R$id;->otp_recieved:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 837
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 838
    iget-boolean v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->autoApprove:Z

    if-eqz v2, :cond_1

    .line 839
    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 840
    const-string v2, "auto_approve"

    iput-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->eventRecorded:Ljava/lang/String;

    .line 841
    const-string v2, "user_input"

    iget-object v3, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->eventRecorded:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/payu/custombrowser/PayUCBLifecycle;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    :cond_1
    new-instance v2, Lcom/payu/custombrowser/PayUCBLifecycle$8;

    invoke-direct {v2, p0, v1}, Lcom/payu/custombrowser/PayUCBLifecycle$8;-><init>(Lcom/payu/custombrowser/PayUCBLifecycle;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 873
    iget-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_2

    .line 874
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    .line 875
    iget-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/payu/custombrowser/PayUCBLifecycle;->unregisterBroadcast(Landroid/content/BroadcastReceiver;)V

    .line 876
    iput-object v8, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 880
    .end local v0    # "approveButton":Landroid/widget/Button;
    .end local v1    # "otpSMS":Landroid/widget/TextView;
    :cond_2
    return-void

    .line 804
    .restart local v1    # "otpSMS":Landroid/widget/TextView;
    :sswitch_0
    const-string v6, "payment_initiated"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    goto/16 :goto_0

    :sswitch_1
    const-string v6, "otp_click"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v4

    goto/16 :goto_0

    :sswitch_2
    const-string v6, "regenerate_click"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x2

    goto/16 :goto_0

    .line 806
    :pswitch_0
    const-string v2, "received_otp_direct"

    iput-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->eventRecorded:Ljava/lang/String;

    goto/16 :goto_1

    .line 810
    :pswitch_1
    const-string v2, "received_otp_selected"

    iput-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->eventRecorded:Ljava/lang/String;

    goto/16 :goto_1

    .line 814
    :pswitch_2
    const-string v2, "received_otp_regenerate"

    iput-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->eventRecorded:Ljava/lang/String;

    goto/16 :goto_1

    .line 804
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2134620e -> :sswitch_0
        0x28308b74 -> :sswitch_1
        0x7c454b31 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method getValueFromPostData(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 727
    iget-object v4, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v4}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v4

    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 729
    .local v3, "list":[Ljava/lang/String;
    array-length v6, v3

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v3, v4

    .line 730
    .local v1, "item":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 731
    .local v2, "items":[Ljava/lang/String;
    array-length v7, v2

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    .line 732
    aget-object v0, v2, v5

    .line 733
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 734
    const/4 v4, 0x1

    aget-object v4, v2, v4

    .line 738
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "items":[Ljava/lang/String;
    :goto_1
    return-object v4

    .line 729
    .restart local v1    # "item":Ljava/lang/String;
    .restart local v2    # "items":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 738
    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "items":[Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public logOnTerminate()V
    .locals 5

    .prologue
    .line 531
    :try_start_0
    const-string v1, "last_url"

    iget-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v3, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "last_url"

    invoke-virtual {v2, v3, v4}, Lcom/payu/custombrowser/util/CBUtil;->getStringSharedPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/payu/custombrowser/util/CBUtil;->updateLastUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/payu/custombrowser/PayUCBLifecycle;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "last_url"

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/util/CBUtil;->deleteSharedPrefKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 538
    :goto_0
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->eventArray:Ljava/util/ArrayList;

    const-string v2, "CUSTOM_BROWSER"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 539
    const-string v1, "NON_CUSTOM_BROWSER"

    iput-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->eventRecorded:Ljava/lang/String;

    .line 540
    const-string v1, "cb_status"

    iget-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->eventRecorded:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/payu/custombrowser/PayUCBLifecycle;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_0
    const-string v1, "terminate_transaction"

    iput-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->eventRecorded:Ljava/lang/String;

    .line 544
    const-string v1, "user_input"

    iget-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->eventRecorded:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/payu/custombrowser/PayUCBLifecycle;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 547
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 549
    :cond_1
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 550
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/payu/custombrowser/PayUCBLifecycle;->unregisterBroadcast(Landroid/content/BroadcastReceiver;)V

    .line 551
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 554
    :cond_2
    return-void

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "last_url"

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/util/CBUtil;->deleteSharedPrefKey(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v3, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "last_url"

    invoke-virtual {v2, v3, v4}, Lcom/payu/custombrowser/util/CBUtil;->deleteSharedPrefKey(Landroid/content/Context;Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 145
    invoke-super {p0, p1}, Lcom/payu/custombrowser/CustomBrowserMain;->onCreate(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    .line 157
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    const-string v2, "snoozeEnabled"

    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/util/CBUtil;->getBooleanSharedPreferenceDefaultTrue(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->isSnoozeEnabled:Z

    .line 158
    sput-boolean v5, Lcom/payu/custombrowser/PayUCBLifecycle;->isFromSnoozeService:Z

    .line 160
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    const-string v3, "com.payu.custombrowser.snoozepref"

    invoke-static {v2, v3}, Lcom/payu/custombrowser/util/SharedPreferenceUtil;->getSharedPrefMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/util/CBUtil;->convertToSnoozeConfigMap(Ljava/util/Map;)Lcom/payu/custombrowser/util/SnoozeConfigMap;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeConfigMap:Lcom/payu/custombrowser/util/SnoozeConfigMap;

    .line 163
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeConfigMap:Lcom/payu/custombrowser/util/SnoozeConfigMap;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/util/SnoozeConfigMap;->getPercentageAndTimeout(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeLoadPercentageAndTimeOut:[I

    .line 164
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeLoadPercentageAndTimeOut:[I

    aget v1, v1, v5

    iput v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeUrlLoadingPercentage:I

    .line 165
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeLoadPercentageAndTimeOut:[I

    aget v1, v1, v6

    iput v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeUrlLoadingTimeout:I

    .line 168
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    const-string v2, "RETRY_SETTINGS"

    const-string v3, "RETRY_WHITELISTED_URLS"

    const-string v4, ""

    invoke-static {v1, v2, v3, v4}, Lcom/payu/custombrowser/util/SharedPreferenceUtil;->getStringFromSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/custombrowser/util/CBUtil;->processAndAddWhiteListedUrls(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/payu/custombrowser/PayUCBLifecycle;->whiteListedUrls:Ljava/util/List;

    .line 171
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.payu.custombrowser.payucustombrowser"

    const-string v3, "sp_image_download_time_out"

    invoke-static {v1, v2, v3, v5}, Lcom/payu/custombrowser/util/SharedPreferenceUtil;->getIntFromSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeImageDownloadTimeout:I

    .line 176
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v1}, Lcom/payu/custombrowser/services/SnoozeService;->killSnoozeService()V

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "sender"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "sender"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "snoozeService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    sput-boolean v6, Lcom/payu/custombrowser/PayUCBLifecycle;->isFromSnoozeService:Z

    .line 191
    :cond_1
    new-instance v1, Lcom/payu/custombrowser/PayUCBLifecycle$2;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/PayUCBLifecycle$2;-><init>(Lcom/payu/custombrowser/PayUCBLifecycle;)V

    iput-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 222
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CBActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 223
    iput-boolean v6, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbOldFlow:Z

    .line 224
    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->cbOldOnCreate()V

    .line 229
    :goto_0
    sget-object v1, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/payu/custombrowser/PayUCBLifecycle;->initAnalytics(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 231
    iput-boolean v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->pin_selected_flag:Z

    .line 232
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 234
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5

    .line 235
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeSessionCookies(Landroid/webkit/ValueCallback;)V

    .line 242
    .end local v0    # "cookieManager":Landroid/webkit/CookieManager;
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-eqz v1, :cond_3

    .line 243
    const-string v1, "snooze_enable_count"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v3}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getEnableSnooze()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/payu/custombrowser/PayUCBLifecycle;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v2, "snooze_mode_set_merchant"

    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSnoozeMode()I

    move-result v1

    if-ne v1, v6, :cond_6

    const-string v1, "WARN"

    :goto_2
    invoke-virtual {p0, v2, v1}, Lcom/payu/custombrowser/PayUCBLifecycle;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_3
    return-void

    .line 226
    :cond_4
    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->cbOnCreate()V

    goto :goto_0

    .line 237
    .restart local v0    # "cookieManager":Landroid/webkit/CookieManager;
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 238
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    goto :goto_1

    .line 244
    .end local v0    # "cookieManager":Landroid/webkit/CookieManager;
    :cond_6
    const-string v1, "FAIL"

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 352
    invoke-super {p0, p1, p2, p3}, Lcom/payu/custombrowser/CustomBrowserMain;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 364
    iget-boolean v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbOldFlow:Z

    if-eqz v2, :cond_0

    .line 365
    sget v2, Lcom/payu/custombrowser/R$layout;->bankold:I

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 366
    .local v0, "cbInflatedView":Landroid/view/View;
    move-object v1, v0

    .line 367
    .local v1, "cbMainView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 368
    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->cbOldFlowOnCreateView()V

    .line 379
    :goto_0
    const-string v2, "com.payu.magicretry.MagicRetryFragment"

    const-string v3, "6.1.1"

    const-string v4, "cbVersion"

    invoke-static {v2, v3, v4}, Lcom/payu/custombrowser/util/CBUtil;->setVariableReflection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    sget v2, Lcom/payu/custombrowser/R$id;->help_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbBaseView:Landroid/widget/FrameLayout;

    .line 384
    sget v2, Lcom/payu/custombrowser/R$id;->view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbSlideBarView:Landroid/view/View;

    .line 385
    sget v2, Lcom/payu/custombrowser/R$id;->cb_progressbar:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebPageProgressBar:Landroid/widget/ProgressBar;

    .line 386
    invoke-direct {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->initCBSettings()V

    .line 390
    invoke-direct {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->getInitializeJS()V

    .line 394
    new-instance v2, Lcom/payu/custombrowser/PayUCBLifecycle$PayUCBLifeCycleTouchListener;

    invoke-direct {v2, p0}, Lcom/payu/custombrowser/PayUCBLifecycle$PayUCBLifeCycleTouchListener;-><init>(Lcom/payu/custombrowser/PayUCBLifecycle;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 395
    return-object v0

    .line 370
    .end local v0    # "cbInflatedView":Landroid/view/View;
    .end local v1    # "cbMainView":Landroid/view/View;
    :cond_0
    sget v2, Lcom/payu/custombrowser/R$layout;->bank:I

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 371
    .restart local v0    # "cbInflatedView":Landroid/view/View;
    sget v2, Lcom/payu/custombrowser/R$id;->trans_overlay:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbTransparentView:Landroid/view/View;

    .line 372
    sget v2, Lcom/payu/custombrowser/R$id;->webview:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    .line 373
    sget v2, Lcom/payu/custombrowser/R$id;->cb_blank_overlay:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbBlankOverlay:Landroid/view/View;

    .line 375
    sget v2, Lcom/payu/custombrowser/R$id;->parent:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 376
    .restart local v1    # "cbMainView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->cbOnCreateView()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 570
    invoke-super {p0}, Lcom/payu/custombrowser/CustomBrowserMain;->onDestroy()V

    .line 571
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->timerProgress:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/util/CBUtil;->cancelTimer(Ljava/util/Timer;)V

    .line 572
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->waitingOTPTimer:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/util/CBUtil;->cancelTimer(Ljava/util/Timer;)V

    .line 578
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->slowUserCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->slowUserCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 586
    :cond_0
    const-string v0, "snooze_count"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeVisibleCountBackwdJourney:I

    iget v3, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeVisibleCountFwdJourney:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/PayUCBLifecycle;->addEventAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    sget-object v0, Lcom/payu/custombrowser/bean/CustomBrowserData;->SINGLETON:Lcom/payu/custombrowser/bean/CustomBrowserData;

    invoke-virtual {v0, v4}, Lcom/payu/custombrowser/bean/CustomBrowserData;->setPayuCustomBrowserCallback(Lcom/payu/custombrowser/PayUCustomBrowserCallback;)V

    .line 596
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeBroadCastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->isSnoozeBroadCastReceiverRegistered:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/payu/custombrowser/PayUCBLifecycle;->isFromSnoozeService:Z

    if-nez v0, :cond_2

    .line 602
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 605
    :cond_2
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->isSnoozeServiceBounded:Z

    if-eqz v0, :cond_3

    .line 606
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 609
    :cond_3
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/payu/custombrowser/PayUCBLifecycle;->isFromSnoozeService:Z

    if-eqz v0, :cond_4

    .line 610
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v0}, Lcom/payu/custombrowser/services/SnoozeService;->killSnoozeService()V

    .line 614
    :cond_4
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->loadingLayout:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 615
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customProgressBar:Lcom/payu/custombrowser/custombar/CustomProgressBar;

    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->loadingLayout:Landroid/view/View;

    sget v2, Lcom/payu/custombrowser/R$id;->progress:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/custombar/CustomProgressBar;->removeProgressDialog(Landroid/view/View;)V

    .line 616
    :cond_5
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->enterOTPView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 617
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->customProgressBar:Lcom/payu/custombrowser/custombar/CustomProgressBar;

    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->enterOTPView:Landroid/view/View;

    sget v2, Lcom/payu/custombrowser/R$id;->progress:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/custombar/CustomProgressBar;->removeProgressDialog(Landroid/view/View;)V

    .line 619
    :cond_6
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->payuDeviceAnalytics:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    if-eqz v0, :cond_7

    .line 620
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->payuDeviceAnalytics:Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    invoke-virtual {v1}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->getmTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/util/CBUtil;->cancelTimer(Ljava/util/Timer;)V

    .line 623
    :cond_7
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->mAnalytics:Lcom/payu/custombrowser/analytics/CBAnalytics;

    if-eqz v0, :cond_8

    .line 624
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->mAnalytics:Lcom/payu/custombrowser/analytics/CBAnalytics;

    invoke-virtual {v1}, Lcom/payu/custombrowser/analytics/CBAnalytics;->getmTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/util/CBUtil;->cancelTimer(Ljava/util/Timer;)V

    .line 626
    :cond_8
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->waitingOTPTimer:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/util/CBUtil;->cancelTimer(Ljava/util/Timer;)V

    .line 628
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_9

    .line 629
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 632
    :cond_9
    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->logOnTerminate()V

    .line 633
    sput-object v4, Lcom/payu/custombrowser/Bank;->sdkVersion:Ljava/lang/String;

    .line 634
    sput-object v4, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    .line 635
    sput-object v4, Lcom/payu/custombrowser/Bank;->transactionID:Ljava/lang/String;

    .line 636
    sput-object v4, Lcom/payu/custombrowser/Bank;->paymentMode:Ljava/lang/String;

    .line 637
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 558
    invoke-super {p0}, Lcom/payu/custombrowser/CustomBrowserMain;->onDestroyView()V

    .line 559
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->timerProgress:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/util/CBUtil;->cancelTimer(Ljava/util/Timer;)V

    .line 560
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->snoozeDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 567
    :cond_1
    return-void
.end method

.method abstract onPageStarted()V
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 984
    packed-switch p1, :pswitch_data_0

    .line 1005
    :goto_0
    return-void

    .line 986
    :pswitch_0
    iput-boolean v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->checkPermissionVisibility:Z

    .line 987
    iget-boolean v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->SMSOTPClicked:Z

    if-eqz v1, :cond_0

    .line 989
    :try_start_0
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->mJS:Lorg/json/JSONObject;

    sget v4, Lcom/payu/custombrowser/R$string;->cb_otp:I

    invoke-virtual {p0, v4}, Lcom/payu/custombrowser/PayUCBLifecycle;->getString(I)Ljava/lang/String;

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

    .line 994
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 995
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->permissionGranted:Z

    .line 996
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->mPassword:Ljava/lang/String;

    .line 997
    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->prepareSmsListener()V

    .line 998
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->enterOtpParams:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/payu/custombrowser/PayUCBLifecycle;->enter_otp(Ljava/lang/String;)V

    goto :goto_0

    .line 990
    :catch_0
    move-exception v0

    .line 991
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 1000
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    iput-boolean v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->permissionGranted:Z

    .line 1001
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->enterOtpParams:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/payu/custombrowser/PayUCBLifecycle;->enter_otp(Ljava/lang/String;)V

    goto :goto_0

    .line 984
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 641
    invoke-super {p0}, Lcom/payu/custombrowser/CustomBrowserMain;->onResume()V

    .line 642
    return-void
.end method

.method prepareSmsListener()V
    .locals 2

    .prologue
    .line 651
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 652
    new-instance v1, Lcom/payu/custombrowser/PayUCBLifecycle$7;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/PayUCBLifecycle$7;-><init>(Lcom/payu/custombrowser/PayUCBLifecycle;)V

    iput-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 707
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 708
    .local v0, "filter":Landroid/content/IntentFilter;
    const v1, 0x98967f

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 709
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 710
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/payu/custombrowser/PayUCBLifecycle;->registerBroadcast(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 712
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public registerSMSBroadcast()V
    .locals 2

    .prologue
    .line 716
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 717
    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->prepareSmsListener()V

    .line 724
    :goto_0
    return-void

    .line 719
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 720
    .local v0, "filter":Landroid/content/IntentFilter;
    const v1, 0x98967f

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 721
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 722
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/payu/custombrowser/PayUCBLifecycle;->registerBroadcast(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method protected setCbBlankOverlay(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbBlankOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbBlankOverlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1149
    :cond_0
    return-void
.end method

.method protected showSlowUserWarning()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1012
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->isSnoozeWindowVisible:Z

    if-nez v5, :cond_1

    .line 1019
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1021
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    sget v5, Lcom/payu/custombrowser/R$layout;->cb_layout_snooze_slow_user:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1023
    .local v4, "slowUserWarningLayout":Landroid/view/View;
    sget v5, Lcom/payu/custombrowser/R$id;->snooze_header_txt:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1025
    .local v3, "slowUserWarningDialogHeaderText":Landroid/widget/TextView;
    sget v5, Lcom/payu/custombrowser/R$string;->cb_snooze_slow_user_warning_header:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1027
    sget v5, Lcom/payu/custombrowser/R$id;->text_view_cancel_snooze_window:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1029
    .local v1, "slowUserWarningDialogCloseBtn":Landroid/widget/TextView;
    sget v5, Lcom/payu/custombrowser/R$id;->snooze_status_icon:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1030
    .local v2, "slowUserWarningDialogGraphics":Landroid/widget/ImageView;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1031
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/payu/custombrowser/R$drawable;->hourglass:I

    invoke-virtual {p0, v5, v6}, Lcom/payu/custombrowser/PayUCBLifecycle;->cbGetDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1034
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->slowUserWarningDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_0

    .line 1035
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->slowUserWarningDialog:Landroid/app/AlertDialog;

    .line 1036
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->slowUserWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 1037
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->slowUserWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1038
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->slowUserWarningDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/payu/custombrowser/PayUCBLifecycle$10;

    invoke-direct {v6, p0}, Lcom/payu/custombrowser/PayUCBLifecycle$10;-><init>(Lcom/payu/custombrowser/PayUCBLifecycle;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1044
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->slowUserWarningDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/payu/custombrowser/PayUCBLifecycle$11;

    invoke-direct {v6, p0}, Lcom/payu/custombrowser/PayUCBLifecycle$11;-><init>(Lcom/payu/custombrowser/PayUCBLifecycle;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1061
    new-instance v5, Lcom/payu/custombrowser/PayUCBLifecycle$12;

    invoke-direct {v5, p0}, Lcom/payu/custombrowser/PayUCBLifecycle$12;-><init>(Lcom/payu/custombrowser/PayUCBLifecycle;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1069
    :cond_0
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->slowUserWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 1071
    iget-object v5, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    check-cast v5, Lcom/payu/custombrowser/CBActivity;

    sget v5, Lcom/payu/custombrowser/CBActivity;->STATE:I

    if-ne v5, v7, :cond_1

    .line 1073
    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->showSlowUserWarningNotification()V

    .line 1076
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v1    # "slowUserWarningDialogCloseBtn":Landroid/widget/TextView;
    .end local v2    # "slowUserWarningDialogGraphics":Landroid/widget/ImageView;
    .end local v3    # "slowUserWarningDialogHeaderText":Landroid/widget/TextView;
    .end local v4    # "slowUserWarningLayout":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected showSlowUserWarningNotification()V
    .locals 1

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1104
    :cond_0
    return-void
.end method

.method abstract startSlowUserWarningTimer()V
.end method

.method public updateHeight(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 963
    iget v0, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->maxWebview:I

    if-nez v0, :cond_0

    .line 964
    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->calculateMaximumWebViewHeight()V

    .line 965
    invoke-virtual {p0}, Lcom/payu/custombrowser/PayUCBLifecycle;->maximiseWebviewHeight()V

    .line 967
    :cond_0
    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/PayUCBLifecycle;->calculateCBHeight(Landroid/view/View;)V

    .line 968
    return-void
.end method

.method public updateLoaderHeight()V
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 974
    iget v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->chooseActionHeight:I

    if-nez v1, :cond_0

    .line 975
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v2}, Landroid/webkit/WebView;->measure(II)V

    .line 976
    iget-object v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->cbWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    .line 977
    .local v0, "maxWebview":I
    int-to-double v2, v0

    const-wide v4, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/payu/custombrowser/PayUCBLifecycle;->chooseActionHeight:I

    .line 979
    .end local v0    # "maxWebview":I
    :cond_0
    return-void
.end method
