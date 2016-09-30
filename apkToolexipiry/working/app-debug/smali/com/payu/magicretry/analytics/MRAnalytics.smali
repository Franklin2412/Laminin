.class public Lcom/payu/magicretry/analytics/MRAnalytics;
.super Ljava/lang/Object;
.source "MRAnalytics.java"


# static fields
.field private static INSTANCE:Lcom/payu/magicretry/analytics/MRAnalytics; = null

.field private static final PRODUCTION_URL:Ljava/lang/String; = "http://10.50.23.170:6543/MobileAnalytics"

.field private static final TEST_URL:Ljava/lang/String; = "http://10.50.23.170:6543/MobileAnalytics"

.field private static final TIMER_DELAY:J = 0x1388L


# instance fields
.field private ANALYTICS_URL:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private mBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsLocked:Z

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-boolean v2, Lcom/payu/magicretry/MagicRetryFragment;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "http://10.50.23.170:6543/MobileAnalytics"

    :goto_0
    iput-object v2, p0, Lcom/payu/magicretry/analytics/MRAnalytics;->ANALYTICS_URL:Ljava/lang/String;

    .line 40
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/payu/magicretry/analytics/MRAnalytics;->mIsLocked:Z

    .line 49
    iput-object p1, p0, Lcom/payu/magicretry/analytics/MRAnalytics;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/payu/magicretry/analytics/MRAnalytics;->fileName:Ljava/lang/String;

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/payu/magicretry/analytics/MRAnalytics;->mBuffer:Ljava/util/ArrayList;

    .line 53
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 54
    .local v1, "defaultUEH":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v0, Lcom/payu/magicretry/analytics/MRAnalytics$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/payu/magicretry/analytics/MRAnalytics$1;-><init>(Lcom/payu/magicretry/analytics/MRAnalytics;Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 82
    .local v0, "_unCaughtExceptionHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 83
    return-void

    .line 39
    .end local v0    # "_unCaughtExceptionHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .end local v1    # "defaultUEH":Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_0
    const-string v2, "http://10.50.23.170:6543/MobileAnalytics"

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/payu/magicretry/analytics/MRAnalytics;)Z
    .locals 1
    .param p0, "x0"    # Lcom/payu/magicretry/analytics/MRAnalytics;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/payu/magicretry/analytics/MRAnalytics;->mIsLocked:Z

    return v0
.end method

.method static synthetic access$100(Lcom/payu/magicretry/analytics/MRAnalytics;)V
    .locals 0
    .param p0, "x0"    # Lcom/payu/magicretry/analytics/MRAnalytics;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/payu/magicretry/analytics/MRAnalytics;->setLock()V

    return-void
.end method

.method static synthetic access$200(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payu/magicretry/analytics/MRAnalytics;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/payu/magicretry/analytics/MRAnalytics;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/payu/magicretry/analytics/MRAnalytics;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/payu/magicretry/analytics/MRAnalytics;->mBuffer:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/payu/magicretry/analytics/MRAnalytics;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/payu/magicretry/analytics/MRAnalytics;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/payu/magicretry/analytics/MRAnalytics;->mBuffer:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/payu/magicretry/analytics/MRAnalytics;)V
    .locals 0
    .param p0, "x0"    # Lcom/payu/magicretry/analytics/MRAnalytics;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/payu/magicretry/analytics/MRAnalytics;->releaseLock()V

    return-void
.end method

.method static synthetic access$500(Lcom/payu/magicretry/analytics/MRAnalytics;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/payu/magicretry/analytics/MRAnalytics;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/payu/magicretry/analytics/MRAnalytics;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/payu/magicretry/analytics/MRAnalytics;)Z
    .locals 1
    .param p0, "x0"    # Lcom/payu/magicretry/analytics/MRAnalytics;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/payu/magicretry/analytics/MRAnalytics;->isOnline()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/payu/magicretry/analytics/MRAnalytics;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payu/magicretry/analytics/MRAnalytics;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/payu/magicretry/analytics/MRAnalytics;->ANALYTICS_URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/payu/magicretry/analytics/MRAnalytics;)V
    .locals 0
    .param p0, "x0"    # Lcom/payu/magicretry/analytics/MRAnalytics;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/payu/magicretry/analytics/MRAnalytics;->resetTimer()V

    return-void
.end method

.method private isOnline()Z
    .locals 4

    .prologue
    .line 278
    iget-object v2, p0, Lcom/payu/magicretry/analytics/MRAnalytics;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    .line 279
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 280
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 281
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private declared-synchronized releaseLock()V
    .locals 1

    .prologue
    .line 273
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/payu/magicretry/analytics/MRAnalytics;->mIsLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    monitor-exit p0

    return-void

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resetTimer()V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/payu/magicretry/analytics/MRAnalytics;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/payu/magicretry/analytics/MRAnalytics;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 158
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/payu/magicretry/analytics/MRAnalytics;->mTimer:Ljava/util/Timer;

    .line 159
    iget-object v0, p0, Lcom/payu/magicretry/analytics/MRAnalytics;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/payu/magicretry/analytics/MRAnalytics$3;

    invoke-direct {v1, p0}, Lcom/payu/magicretry/analytics/MRAnalytics$3;-><init>(Lcom/payu/magicretry/analytics/MRAnalytics;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 266
    return-void
.end method

.method private declared-synchronized setLock()V
    .locals 1

    .prologue
    .line 269
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/payu/magicretry/analytics/MRAnalytics;->mIsLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 93
    invoke-direct {p0}, Lcom/payu/magicretry/analytics/MRAnalytics;->resetTimer()V

    .line 94
    iget-boolean v1, p0, Lcom/payu/magicretry/analytics/MRAnalytics;->mIsLocked:Z

    if-eqz v1, :cond_0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/payu/magicretry/analytics/MRAnalytics;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lcom/payu/magicretry/analytics/MRAnalytics$2;

    invoke-direct {v1, p0, p1}, Lcom/payu/magicretry/analytics/MRAnalytics$2;-><init>(Lcom/payu/magicretry/analytics/MRAnalytics;Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v4, v2, v3

    .line 145
    invoke-virtual {v1, v2}, Lcom/payu/magicretry/analytics/MRAnalytics$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
