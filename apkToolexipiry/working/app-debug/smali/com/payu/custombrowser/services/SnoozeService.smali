.class public Lcom/payu/custombrowser/services/SnoozeService;
.super Landroid/app/Service;
.source "SnoozeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payu/custombrowser/services/SnoozeService$SnoozeBinder;,
        Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;
    }
.end annotation


# static fields
.field private static IMAGE_DOWNLOAD_TIME_OUT:I


# instance fields
.field private final CURRENT_URL:Ljava/lang/String;

.field private EXPONENTIAL_BACKOFF_TIME_THRESHOLD:I

.field MERCHANT_CHECKOUT_ACTIVITY:Ljava/lang/String;

.field private final SNOOZE_BROAD_CAST_MESSAGE:Ljava/lang/String;

.field private final SNOOZE_GET_WEBVIEW_STATUS_INTENT_ACTION:Ljava/lang/String;

.field private final SNOOZE_SERVICE_TTL:I

.field private final TRACK_WEB_VIEW_TIME_INTERVAL:I

.field private broadCastingMessage:Ljava/lang/String;

.field private cbUtil:Lcom/payu/custombrowser/util/CBUtil;

.field private currentUrl:Ljava/lang/String;

.field private customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

.field private endTime:J

.field private exponentialBackOffTime:I

.field private handler:Landroid/os/Handler;

.field private imageDownloadTime:J

.field private isImageDownloadTimedOut:Z

.field private isNotificationIntentPrepared:Z

.field private isServiceAlive:Z

.field private isWebViewAlive:Z

.field private isWebViewIntentPrepared:Z

.field private killSnoozeServiceCounter:Landroid/os/CountDownTimer;

.field private mServiceHandler:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field private merchantCheckoutActivity:Ljava/lang/String;

.field private payuResponse:Ljava/lang/String;

.field private postData:Ljava/lang/String;

.field private postParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private postURL:Ljava/lang/String;

.field private receivedMessage:Ljava/lang/String;

.field private runnable:Ljava/lang/Runnable;

.field private final snoozeBinder:Landroid/os/IBinder;

.field private snoozeHandlerThread:Landroid/os/HandlerThread;

.field private startTime:J

.field private timeToNotify:J

.field private trackWebViewStatusHandler:Landroid/os/Handler;

.field private verifyParam:Ljava/lang/String;

.field private final verifyPayment:Ljava/lang/Thread;

.field private verifyPaymentCheck:Z

.field private verifyURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 56
    const v0, 0x1b7740

    iput v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->SNOOZE_SERVICE_TTL:I

    .line 58
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->TRACK_WEB_VIEW_TIME_INTERVAL:I

    .line 61
    const-string v0, "webview_status_action"

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->SNOOZE_GET_WEBVIEW_STATUS_INTENT_ACTION:Ljava/lang/String;

    .line 62
    const-string v0, "snooze_broad_cast_message"

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->SNOOZE_BROAD_CAST_MESSAGE:Ljava/lang/String;

    .line 64
    const-string v0, "currentUrl"

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->CURRENT_URL:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/payu/custombrowser/services/SnoozeService$SnoozeBinder;

    invoke-direct {v0, p0}, Lcom/payu/custombrowser/services/SnoozeService$SnoozeBinder;-><init>(Lcom/payu/custombrowser/services/SnoozeService;)V

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->snoozeBinder:Landroid/os/IBinder;

    .line 67
    const-string v0, "merchantCheckoutActivity"

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->MERCHANT_CHECKOUT_ACTIVITY:Ljava/lang/String;

    .line 87
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->exponentialBackOffTime:I

    .line 89
    const v0, 0xea60

    iput v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->EXPONENTIAL_BACKOFF_TIME_THRESHOLD:I

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->broadCastingMessage:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->receivedMessage:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->postData:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->postURL:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->currentUrl:Ljava/lang/String;

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->isServiceAlive:Z

    .line 116
    const-string v0, "https://mobiletest.payu.in/merchant/postservice?form=2"

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->verifyURL:Ljava/lang/String;

    .line 126
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/payu/custombrowser/services/SnoozeService$1;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/services/SnoozeService$1;-><init>(Lcom/payu/custombrowser/services/SnoozeService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->verifyPayment:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$000(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->verifyURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->postData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/payu/custombrowser/services/SnoozeService;)J
    .locals 2
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->imageDownloadTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/payu/custombrowser/services/SnoozeService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;
    .param p1, "x1"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->imageDownloadTime:J

    return-wide p1
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/payu/custombrowser/services/SnoozeService;->IMAGE_DOWNLOAD_TIME_OUT:I

    return v0
.end method

.method static synthetic access$1200(Lcom/payu/custombrowser/services/SnoozeService;)J
    .locals 2
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->endTime:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/payu/custombrowser/services/SnoozeService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;
    .param p1, "x1"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->endTime:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/payu/custombrowser/services/SnoozeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 50
    iget v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->exponentialBackOffTime:I

    return v0
.end method

.method static synthetic access$1302(Lcom/payu/custombrowser/services/SnoozeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->exponentialBackOffTime:I

    return p1
.end method

.method static synthetic access$1400(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/payu/custombrowser/services/SnoozeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 50
    iget v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->EXPONENTIAL_BACKOFF_TIME_THRESHOLD:I

    return v0
.end method

.method static synthetic access$1600(Lcom/payu/custombrowser/services/SnoozeService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/payu/custombrowser/services/SnoozeService;->broadcastAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/payu/custombrowser/services/SnoozeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->verifyPaymentCheck:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->verifyPayment:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/payu/custombrowser/services/SnoozeService;)Lcom/payu/custombrowser/util/CBUtil;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/payu/custombrowser/services/SnoozeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->isWebViewAlive:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/payu/custombrowser/services/SnoozeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->isWebViewAlive:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/payu/custombrowser/services/SnoozeService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/payu/custombrowser/services/SnoozeService;->launchNotification(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/payu/custombrowser/services/SnoozeService;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->killSnoozeServiceCounter:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/payu/custombrowser/services/SnoozeService;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->killSnoozeServiceCounter:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/payu/custombrowser/services/SnoozeService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;
    .param p1, "x1"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->timeToNotify:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/payu/custombrowser/services/SnoozeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->isNotificationIntentPrepared:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/payu/custombrowser/services/SnoozeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/payu/custombrowser/services/SnoozeService;->launchNoInternetNotification()V

    return-void
.end method

.method static synthetic access$2600(Lcom/payu/custombrowser/services/SnoozeService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->trackWebViewStatusHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/payu/custombrowser/services/SnoozeService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->trackWebViewStatusHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->receivedMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->broadCastingMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->broadCastingMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/payu/custombrowser/services/SnoozeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->isWebViewIntentPrepared:Z

    return v0
.end method

.method static synthetic access$300(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->verifyParam:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/payu/custombrowser/services/SnoozeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/payu/custombrowser/services/SnoozeService;->calculateInternetSpeed()V

    return-void
.end method

.method static synthetic access$400(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->payuResponse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->payuResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/payu/custombrowser/services/SnoozeService;->launchNotificationTransactionUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/payu/custombrowser/services/SnoozeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->isServiceAlive:Z

    return v0
.end method

.method static synthetic access$602(Lcom/payu/custombrowser/services/SnoozeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->isServiceAlive:Z

    return p1
.end method

.method static synthetic access$700(Lcom/payu/custombrowser/services/SnoozeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/payu/custombrowser/services/SnoozeService;->downloadImage()V

    return-void
.end method

.method static synthetic access$800(Lcom/payu/custombrowser/services/SnoozeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->isImageDownloadTimedOut:Z

    return v0
.end method

.method static synthetic access$802(Lcom/payu/custombrowser/services/SnoozeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->isImageDownloadTimedOut:Z

    return p1
.end method

.method static synthetic access$900(Lcom/payu/custombrowser/services/SnoozeService;)J
    .locals 2
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->startTime:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/payu/custombrowser/services/SnoozeService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/services/SnoozeService;
    .param p1, "x1"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->startTime:J

    return-wide p1
.end method

.method private broadcastAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 468
    new-instance v0, Landroid/content/Intent;

    const-string v1, "webview_status_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .local v0, "broadCastIntent":Landroid/content/Intent;
    const-string v1, "BROAD_CAST_FROM_SNOOZE_SERVICE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 470
    const-string v1, "event_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    const-string v1, "event_value"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 473
    return-void
.end method

.method private calculateInternetSpeed()V
    .locals 4

    .prologue
    .line 256
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->handler:Landroid/os/Handler;

    .line 257
    new-instance v0, Lcom/payu/custombrowser/services/SnoozeService$2;

    invoke-direct {v0, p0}, Lcom/payu/custombrowser/services/SnoozeService$2;-><init>(Lcom/payu/custombrowser/services/SnoozeService;)V

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->runnable:Ljava/lang/Runnable;

    .line 265
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->runnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/payu/custombrowser/services/SnoozeService;->exponentialBackOffTime:I

    iget v3, p0, Lcom/payu/custombrowser/services/SnoozeService;->EXPONENTIAL_BACKOFF_TIME_THRESHOLD:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 266
    return-void
.end method

.method private downloadImage()V
    .locals 8

    .prologue
    .line 272
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->isImageDownloadTimedOut:Z

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://mobiletest.payu.in/images/speed_test/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/payu/custombrowser/util/CBConstant;->SNOOZE_IMAGE_COLLECTIONS:[Ljava/lang/String;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 274
    .local v7, "imageURL":Ljava/lang/String;
    new-instance v0, Lcom/payu/custombrowser/services/SnoozeService$3;

    sget v1, Lcom/payu/custombrowser/services/SnoozeService;->IMAGE_DOWNLOAD_TIME_OUT:I

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/payu/custombrowser/services/SnoozeService$3;-><init>(Lcom/payu/custombrowser/services/SnoozeService;JJ)V

    .line 286
    .local v0, "imageDownloadTimer":Landroid/os/CountDownTimer;
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 289
    new-instance v6, Ljava/lang/Thread;

    new-instance v1, Lcom/payu/custombrowser/services/SnoozeService$4;

    invoke-direct {v1, p0, v7, v0}, Lcom/payu/custombrowser/services/SnoozeService$4;-><init>(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;Landroid/os/CountDownTimer;)V

    invoke-direct {v6, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 365
    .local v6, "downloadImageThread":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 366
    return-void
.end method

.method private launchNoInternetNotification()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 561
    const-string v5, "snooze_notification_time"

    invoke-static {}, Lcom/payu/custombrowser/Bank;->getSystemCurrentTime()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/payu/custombrowser/services/SnoozeService;->broadcastAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v5, "snooze_notification_type"

    const-string v6, "no_internet_found"

    invoke-direct {p0, v5, v6}, Lcom/payu/custombrowser/services/SnoozeService;->broadcastAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v5, "snooze_notification_expected_action"

    const-string v6, "merchant_checkout_page"

    invoke-direct {p0, v5, v6}, Lcom/payu/custombrowser/services/SnoozeService;->broadcastAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    new-instance v1, Landroid/support/v7/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 566
    .local v1, "mBuilder":Landroid/support/v7/app/NotificationCompat$Builder;
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v5}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getsPNPoorNWTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/support/v7/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/payu/custombrowser/services/SnoozeService;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 567
    invoke-virtual {v6}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getsPNPoorNWHeader()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/payu/custombrowser/services/SnoozeService;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 568
    invoke-virtual {v6}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayNotificationIcon()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 569
    invoke-virtual {v5, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 570
    invoke-virtual {v5, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x2

    .line 571
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    new-instance v6, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v6}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/payu/custombrowser/services/SnoozeService;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 573
    invoke-virtual {v8}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getsPNPoorNWHeader()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/payu/custombrowser/services/SnoozeService;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v8}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getsPNPoorNWBody()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v6

    .line 572
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 576
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_1

    .line 577
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/payu/custombrowser/R$color;->cb_blue_button:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/support/v7/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 584
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 585
    .local v0, "checkValidActivityIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService;->merchantCheckoutActivity:Ljava/lang/String;

    if-nez v5, :cond_2

    const-string v5, ""

    :goto_1
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 587
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 588
    .local v3, "notifyIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/payu/custombrowser/services/SnoozeService;->merchantCheckoutActivity:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    const-string v5, "post_type"

    const-string v6, "sure_pay_payment_data"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    const-string v5, "postData"

    iget-object v6, p0, Lcom/payu/custombrowser/services/SnoozeService;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v6}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    const/high16 v5, 0x8000000

    invoke-static {p0, v9, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 597
    .local v4, "notifyPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1, v4}, Landroid/support/v7/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 603
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/payu/custombrowser/services/SnoozeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 604
    .local v2, "mNotificationManager":Landroid/app/NotificationManager;
    sget v5, Lcom/payu/custombrowser/util/CBConstant;->SNOOZE_NOTIFICATION_ID:I

    invoke-virtual {v1}, Landroid/support/v7/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 606
    .end local v2    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v3    # "notifyIntent":Landroid/content/Intent;
    .end local v4    # "notifyPendingIntent":Landroid/app/PendingIntent;
    :cond_0
    return-void

    .line 579
    .end local v0    # "checkValidActivityIntent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/payu/custombrowser/R$color;->cb_blue_button:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/support/v7/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 585
    .restart local v0    # "checkValidActivityIntent":Landroid/content/Intent;
    :cond_2
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService;->merchantCheckoutActivity:Ljava/lang/String;

    goto :goto_1
.end method

.method private launchNotification(Z)V
    .locals 13
    .param p1, "webViewLiving"    # Z

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 378
    new-instance v3, Landroid/support/v7/app/NotificationCompat$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 379
    .local v3, "mBuilder":Landroid/support/v7/app/NotificationCompat$Builder;
    iget-object v7, p0, Lcom/payu/custombrowser/services/SnoozeService;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v7}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getsPNGoodNWTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/support/v7/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/payu/custombrowser/services/SnoozeService;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 380
    invoke-virtual {v8}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getsPNGoodNWHeader()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/payu/custombrowser/services/SnoozeService;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 381
    invoke-virtual {v8}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayNotificationIcon()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 382
    invoke-virtual {v7, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 383
    invoke-virtual {v7, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    const/4 v8, 0x2

    .line 384
    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    new-instance v8, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v8}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/payu/custombrowser/services/SnoozeService;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 386
    invoke-virtual {v10}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getsPNGoodNWHeader()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/payu/custombrowser/services/SnoozeService;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v10}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getsPNGoodNWBody()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v8

    .line 385
    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 391
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_1

    .line 392
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/payu/custombrowser/R$color;->cb_blue_button:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/support/v7/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 396
    :goto_0
    iput-boolean v11, p0, Lcom/payu/custombrowser/services/SnoozeService;->isNotificationIntentPrepared:Z

    .line 398
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 400
    .local v5, "notifyIntent":Landroid/content/Intent;
    const-string v7, "currentUrl"

    iget-object v8, p0, Lcom/payu/custombrowser/services/SnoozeService;->currentUrl:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const-string v7, "sender"

    const-string v8, "snoozeService"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const/4 v2, 0x1

    .line 407
    .local v2, "isValidMerchantCheckoutActivity":Z
    if-eqz p1, :cond_2

    .line 409
    iput-boolean v11, p0, Lcom/payu/custombrowser/services/SnoozeService;->isWebViewIntentPrepared:Z

    .line 410
    const/high16 v7, 0x20000000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 411
    const-string v7, "currentUrl"

    iget-object v8, p0, Lcom/payu/custombrowser/services/SnoozeService;->currentUrl:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const-string v7, "cb_config"

    iget-object v8, p0, Lcom/payu/custombrowser/services/SnoozeService;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 413
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/payu/custombrowser/CBActivity;

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 438
    :goto_1
    if-nez v2, :cond_0

    .line 439
    :try_start_0
    new-instance v7, Landroid/content/ActivityNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The Activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/payu/custombrowser/services/SnoozeService;->merchantCheckoutActivity:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not found, Please set valid activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :catch_0
    move-exception v1

    .line 442
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 447
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    const/high16 v7, 0x8000000

    invoke-static {p0, v12, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 450
    .local v6, "notifyPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v3, v6}, Landroid/support/v7/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 455
    const-string v7, "snooze_notification_time"

    invoke-static {}, Lcom/payu/custombrowser/Bank;->getSystemCurrentTime()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/payu/custombrowser/services/SnoozeService;->broadcastAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Lcom/payu/custombrowser/services/SnoozeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 457
    .local v4, "mNotificationManager":Landroid/app/NotificationManager;
    sget v7, Lcom/payu/custombrowser/util/CBConstant;->SNOOZE_NOTIFICATION_ID:I

    invoke-virtual {v3}, Landroid/support/v7/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 459
    return-void

    .line 394
    .end local v2    # "isValidMerchantCheckoutActivity":Z
    .end local v4    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v5    # "notifyIntent":Landroid/content/Intent;
    .end local v6    # "notifyPendingIntent":Landroid/app/PendingIntent;
    :cond_1
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/payu/custombrowser/R$color;->cb_blue_button:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/support/v7/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_0

    .line 417
    .restart local v2    # "isValidMerchantCheckoutActivity":Z
    .restart local v5    # "notifyIntent":Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 418
    .local v0, "checkValidActivityIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v7, p0, Lcom/payu/custombrowser/services/SnoozeService;->merchantCheckoutActivity:Ljava/lang/String;

    if-nez v7, :cond_3

    const-string v7, ""

    :goto_2
    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v0, v7, v12}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 420
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/payu/custombrowser/services/SnoozeService;->merchantCheckoutActivity:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    const-string v7, "post_type"

    const-string v8, "sure_pay_payment_data"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const-string v7, "postData"

    iget-object v8, p0, Lcom/payu/custombrowser/services/SnoozeService;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v8}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    :goto_3
    const-string v7, "snooze_notification_expected_action"

    const-string v8, "merchant_checkout_page"

    invoke-direct {p0, v7, v8}, Lcom/payu/custombrowser/services/SnoozeService;->broadcastAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iput-boolean v12, p0, Lcom/payu/custombrowser/services/SnoozeService;->isWebViewIntentPrepared:Z

    .line 432
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->killSnoozeService()V

    goto/16 :goto_1

    .line 418
    :cond_3
    iget-object v7, p0, Lcom/payu/custombrowser/services/SnoozeService;->merchantCheckoutActivity:Ljava/lang/String;

    goto :goto_2

    .line 425
    :cond_4
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private launchNotificationTransactionUpdate(Ljava/lang/String;)V
    .locals 12
    .param p1, "verifyResponse"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 481
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/payu/custombrowser/services/SnoozeService;->payuResponse:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 482
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 483
    .local v7, "verifyApiStatus":I
    sget v8, Lcom/payu/custombrowser/R$string;->cb_snooze_verify_api_status:I

    invoke-virtual {p0, v8}, Lcom/payu/custombrowser/services/SnoozeService;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 484
    sget v8, Lcom/payu/custombrowser/R$string;->cb_snooze_verify_api_status:I

    invoke-virtual {p0, v8}, Lcom/payu/custombrowser/services/SnoozeService;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 485
    const-string v8, "snooze_verify_api_response_received"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/payu/custombrowser/services/SnoozeService;->broadcastAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :goto_0
    sget v8, Lcom/payu/custombrowser/R$string;->cb_snooze_verify_api_status:I

    invoke-virtual {p0, v8}, Lcom/payu/custombrowser/services/SnoozeService;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 491
    sget v8, Lcom/payu/custombrowser/R$string;->cb_snooze_verify_api_status:I

    invoke-virtual {p0, v8}, Lcom/payu/custombrowser/services/SnoozeService;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 493
    if-ne v7, v11, :cond_3

    .line 494
    const-string v8, "snooze_notification_time"

    invoke-static {}, Lcom/payu/custombrowser/Bank;->getSystemCurrentTime()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/payu/custombrowser/services/SnoozeService;->broadcastAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v8, "snooze_notification_type"

    const-string v9, "transaction_verified"

    invoke-direct {p0, v8, v9}, Lcom/payu/custombrowser/services/SnoozeService;->broadcastAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_0
    :goto_1
    new-instance v2, Landroid/support/v7/app/NotificationCompat$Builder;

    invoke-direct {v2, p0}, Landroid/support/v7/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 502
    .local v2, "mBuilder":Landroid/support/v7/app/NotificationCompat$Builder;
    if-ne v7, v11, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/payu/custombrowser/services/SnoozeService;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v9}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getsPNTxnVerifiedHeader()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/payu/custombrowser/services/SnoozeService;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v9}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getsPNTxnVerifiedBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 503
    .local v6, "snoozeNotificationTxnVerifiedBigText":Ljava/lang/String;
    :goto_2
    if-ne v7, v11, :cond_5

    iget-object v8, p0, Lcom/payu/custombrowser/services/SnoozeService;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v8}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getsPNTxnVerifiedTitle()Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v2, v8}, Landroid/support/v7/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    if-ne v7, v11, :cond_6

    iget-object v8, p0, Lcom/payu/custombrowser/services/SnoozeService;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 504
    invoke-virtual {v8}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getsPNTxnVerifiedHeader()Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-virtual {v9, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/payu/custombrowser/services/SnoozeService;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 505
    invoke-virtual {v9}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayNotificationIcon()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    const/4 v9, 0x1

    .line 506
    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    const/4 v9, 0x1

    .line 507
    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    const/4 v9, 0x2

    .line 508
    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    new-instance v9, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v9}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 509
    invoke-virtual {v9, v6}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 511
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 512
    .local v4, "notifyIntent":Landroid/content/Intent;
    const-string v8, "cb_config"

    iget-object v9, p0, Lcom/payu/custombrowser/services/SnoozeService;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 513
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/payu/custombrowser/services/SnoozeService;->isNotificationIntentPrepared:Z

    .line 516
    const-string v8, "payu_response"

    invoke-virtual {v4, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    iget-boolean v8, p0, Lcom/payu/custombrowser/services/SnoozeService;->isWebViewAlive:Z

    if-eqz v8, :cond_7

    .line 519
    const/high16 v8, 0x30000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 521
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/payu/custombrowser/services/SnoozeService;->isWebViewIntentPrepared:Z

    .line 523
    const-string v8, "sender"

    const-string v9, "snoozeService"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    const-string v8, "verificationMsgReceived"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 525
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/payu/custombrowser/CBActivity;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 538
    :goto_5
    const/4 v8, 0x0

    const/high16 v9, 0x8000000

    invoke-static {p0, v8, v4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 541
    .local v5, "notifyPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2, v5}, Landroid/support/v7/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 547
    const-string v8, "notification"

    invoke-virtual {p0, v8}, Lcom/payu/custombrowser/services/SnoozeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 548
    .local v3, "mNotificationManager":Landroid/app/NotificationManager;
    sget v8, Lcom/payu/custombrowser/util/CBConstant;->TRANSACTION_STATUS_NOTIFICATION_ID:I

    invoke-virtual {v2}, Landroid/support/v7/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 557
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "mBuilder":Landroid/support/v7/app/NotificationCompat$Builder;
    .end local v3    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v4    # "notifyIntent":Landroid/content/Intent;
    .end local v5    # "notifyPendingIntent":Landroid/app/PendingIntent;
    .end local v6    # "snoozeNotificationTxnVerifiedBigText":Ljava/lang/String;
    .end local v7    # "verifyApiStatus":I
    :cond_1
    :goto_6
    return-void

    .line 488
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v7    # "verifyApiStatus":I
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 496
    :cond_3
    if-nez v7, :cond_0

    .line 497
    const-string v8, "snooze_notification_time"

    invoke-static {}, Lcom/payu/custombrowser/Bank;->getSystemCurrentTime()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/payu/custombrowser/services/SnoozeService;->broadcastAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v8, "snooze_notification_type"

    const-string v9, "transaction_status_unknown"

    invoke-direct {p0, v8, v9}, Lcom/payu/custombrowser/services/SnoozeService;->broadcastAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 551
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "verifyApiStatus":I
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 502
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "mBuilder":Landroid/support/v7/app/NotificationCompat$Builder;
    .restart local v7    # "verifyApiStatus":I
    :cond_4
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/payu/custombrowser/services/SnoozeService;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v9}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getsPNTxnNotVerifiedHeader()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/payu/custombrowser/services/SnoozeService;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v9}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getsPNTxnNotVerifiedBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 503
    .restart local v6    # "snoozeNotificationTxnVerifiedBigText":Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/payu/custombrowser/services/SnoozeService;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v8}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getsPNTxnNotVerifiedTitle()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 504
    :cond_6
    iget-object v8, p0, Lcom/payu/custombrowser/services/SnoozeService;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v8}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getsPNTxnNotVerifiedHeader()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 528
    .restart local v4    # "notifyIntent":Landroid/content/Intent;
    :cond_7
    const-string v8, "snooze_notification_expected_action"

    const-string v9, "merchant_checkout_page"

    invoke-direct {p0, v8, v9}, Lcom/payu/custombrowser/services/SnoozeService;->broadcastAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v8, "postData"

    invoke-virtual {v4, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/payu/custombrowser/services/SnoozeService;->merchantCheckoutActivity:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    const-string v8, "post_type"

    const-string v9, "verify_response_post_data"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/payu/custombrowser/services/SnoozeService;->isWebViewIntentPrepared:Z

    .line 535
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->killSnoozeService()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5
.end method


# virtual methods
.method public killSnoozeService()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->isServiceAlive:Z

    .line 233
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->killSnoozeServiceCounter:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->killSnoozeServiceCounter:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->snoozeHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 238
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->stopSelf()V

    .line 239
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->isWebViewAlive:Z

    .line 169
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->snoozeBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 217
    const-string v0, "SnoozeServiceHandlerThread"

    .line 218
    .local v0, "SNOOZE_SERVICE_HANDLER_THREAD":Ljava/lang/String;
    new-instance v1, Landroid/os/HandlerThread;

    const/16 v2, 0xa

    invoke-direct {v1, v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->snoozeHandlerThread:Landroid/os/HandlerThread;

    .line 219
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->snoozeHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 222
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->snoozeHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->mServiceLooper:Landroid/os/Looper;

    .line 223
    new-instance v1, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;-><init>(Lcom/payu/custombrowser/services/SnoozeService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->mServiceHandler:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    .line 224
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 176
    new-instance v1, Lcom/payu/custombrowser/util/CBUtil;

    invoke-direct {v1}, Lcom/payu/custombrowser/util/CBUtil;-><init>()V

    iput-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    .line 179
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->MERCHANT_CHECKOUT_ACTIVITY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->merchantCheckoutActivity:Ljava/lang/String;

    .line 180
    const-string v1, "cb_config"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    iput-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 181
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/util/CBUtil;->getDataFromPostData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->postParamsMap:Ljava/util/HashMap;

    .line 182
    sget v1, Lcom/payu/custombrowser/Bank;->snoozeImageDownloadTimeout:I

    if-lez v1, :cond_1

    sget v1, Lcom/payu/custombrowser/Bank;->snoozeImageDownloadTimeout:I

    :goto_0
    sput v1, Lcom/payu/custombrowser/services/SnoozeService;->IMAGE_DOWNLOAD_TIME_OUT:I

    .line 185
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "verificationMsgReceived"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "verificationMsgReceived"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->verifyPaymentCheck:Z

    .line 188
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "verify_add_param"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "verify_add_param"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->verifyParam:Ljava/lang/String;

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->postData:Ljava/lang/String;

    .line 192
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->postURL:Ljava/lang/String;

    .line 203
    :goto_1
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->mServiceHandler:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    invoke-virtual {v1}, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 204
    .local v0, "msg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 205
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->mServiceHandler:Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/payu/custombrowser/services/SnoozeService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 207
    const/4 v1, 0x3

    return v1

    .line 182
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    const/16 v1, 0x2710

    goto :goto_0

    .line 195
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->verifyPaymentCheck:Z

    .line 197
    const-string v1, "currentUrl"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->currentUrl:Ljava/lang/String;

    goto :goto_1
.end method

.method public updateWebviewStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "webviewStatus"    # Ljava/lang/String;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->receivedMessage:Ljava/lang/String;

    .line 249
    return-void
.end method
