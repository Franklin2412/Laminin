.class public Lcom/payu/custombrowser/analytics/CBAnalytics;
.super Ljava/lang/Object;
.source "CBAnalytics.java"


# static fields
.field private static INSTANCE:Lcom/payu/custombrowser/analytics/CBAnalytics; = null

.field private static final PRODUCTION_URL:Ljava/lang/String; = "http://10.50.23.170:6543/MobileAnalytics"

.field private static final TEST_URL:Ljava/lang/String; = "http://10.50.23.170:6543/MobileAnalytics"

.field private static final TIMER_DELAY:J = 0x1388L


# instance fields
.field private final ANALYTICS_URL:Ljava/lang/String;

.field private cbUtil:Lcom/payu/custombrowser/util/CBUtil;

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

.field private mIsLocked:Z

.field private mTimer:Ljava/util/Timer;

.field private final mcontext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v2, "http://10.50.23.170:6543/MobileAnalytics"

    iput-object v2, p0, Lcom/payu/custombrowser/analytics/CBAnalytics;->ANALYTICS_URL:Ljava/lang/String;

    .line 59
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/payu/custombrowser/analytics/CBAnalytics;->mIsLocked:Z

    .line 70
    iput-object p1, p0, Lcom/payu/custombrowser/analytics/CBAnalytics;->mcontext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/payu/custombrowser/analytics/CBAnalytics;->fileName:Ljava/lang/String;

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/payu/custombrowser/analytics/CBAnalytics;->mBuffer:Ljava/util/ArrayList;

    .line 73
    new-instance v2, Lcom/payu/custombrowser/util/CBUtil;

    invoke-direct {v2}, Lcom/payu/custombrowser/util/CBUtil;-><init>()V

    iput-object v2, p0, Lcom/payu/custombrowser/analytics/CBAnalytics;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    .line 74
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 75
    .local v1, "defaultUEH":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v0, Lcom/payu/custombrowser/analytics/CBAnalytics$1;

    invoke-direct {v0, p0, v1}, Lcom/payu/custombrowser/analytics/CBAnalytics$1;-><init>(Lcom/payu/custombrowser/analytics/CBAnalytics;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 103
    .local v0, "_unCaughtExceptionHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/payu/custombrowser/analytics/CBAnalytics;)Z
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/analytics/CBAnalytics;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/payu/custombrowser/analytics/CBAnalytics;->mIsLocked:Z

    return v0
.end method

.method static synthetic access$100(Lcom/payu/custombrowser/analytics/CBAnalytics;)V
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/analytics/CBAnalytics;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/payu/custombrowser/analytics/CBAnalytics;->setLock()V

    return-void
.end method

.method static synthetic access$200(Lcom/payu/custombrowser/analytics/CBAnalytics;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/analytics/CBAnalytics;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/payu/custombrowser/analytics/CBAnalytics;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/payu/custombrowser/analytics/CBAnalytics;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/analytics/CBAnalytics;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/payu/custombrowser/analytics/CBAnalytics;->mcontext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/payu/custombrowser/analytics/CBAnalytics;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/analytics/CBAnalytics;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/payu/custombrowser/analytics/CBAnalytics;->mBuffer:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/payu/custombrowser/analytics/CBAnalytics;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/analytics/CBAnalytics;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/payu/custombrowser/analytics/CBAnalytics;->mBuffer:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/payu/custombrowser/analytics/CBAnalytics;)V
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/analytics/CBAnalytics;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/payu/custombrowser/analytics/CBAnalytics;->releaseLock()V

    return-void
.end method

.method static synthetic access$600(Lcom/payu/custombrowser/analytics/CBAnalytics;)Lcom/payu/custombrowser/util/CBUtil;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/analytics/CBAnalytics;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/payu/custombrowser/analytics/CBAnalytics;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    return-object v0
.end method

.method static synthetic access$700(Lcom/payu/custombrowser/analytics/CBAnalytics;)Z
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/analytics/CBAnalytics;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/payu/custombrowser/analytics/CBAnalytics;->isOnline()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/payu/custombrowser/analytics/CBAnalytics;)V
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/analytics/CBAnalytics;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/payu/custombrowser/analytics/CBAnalytics;->resetTimer()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/payu/custombrowser/analytics/CBAnalytics;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 112
    sget-object v0, Lcom/payu/custombrowser/analytics/CBAnalytics;->INSTANCE:Lcom/payu/custombrowser/analytics/CBAnalytics;

    if-nez v0, :cond_1

    .line 113
    const-class v1, Lcom/payu/custombrowser/analytics/CBAnalytics;

    monitor-enter v1

    .line 114
    :try_start_0
    sget-object v0, Lcom/payu/custombrowser/analytics/CBAnalytics;->INSTANCE:Lcom/payu/custombrowser/analytics/CBAnalytics;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/payu/custombrowser/analytics/CBAnalytics;

    invoke-direct {v0, p0, p1}, Lcom/payu/custombrowser/analytics/CBAnalytics;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/payu/custombrowser/analytics/CBAnalytics;->INSTANCE:Lcom/payu/custombrowser/analytics/CBAnalytics;

    .line 118
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_1
    sget-object v0, Lcom/payu/custombrowser/analytics/CBAnalytics;->INSTANCE:Lcom/payu/custombrowser/analytics/CBAnalytics;

    return-object v0

    .line 118
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isOnline()Z
    .locals 4

    .prologue
    .line 256
    iget-object v2, p0, Lcom/payu/custombrowser/analytics/CBAnalytics;->mcontext:Landroid/content/Context;

    const-string v3, "connectivity"

    .line 257
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 258
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 259
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
    .line 251
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/payu/custombrowser/analytics/CBAnalytics;->mIsLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    monitor-exit p0

    return-void

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resetTimer()V
    .locals 4

    .prologue
    .line 180
    iget-object v0, p0, Lcom/payu/custombrowser/analytics/CBAnalytics;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/payu/custombrowser/analytics/CBAnalytics;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 183
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/analytics/CBAnalytics;->mTimer:Ljava/util/Timer;

    .line 184
    iget-object v0, p0, Lcom/payu/custombrowser/analytics/CBAnalytics;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/payu/custombrowser/analytics/CBAnalytics$3;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/analytics/CBAnalytics$3;-><init>(Lcom/payu/custombrowser/analytics/CBAnalytics;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 244
    return-void
.end method

.method private declared-synchronized setLock()V
    .locals 1

    .prologue
    .line 247
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/payu/custombrowser/analytics/CBAnalytics;->mIsLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    monitor-exit p0

    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getmTimer()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/payu/custombrowser/analytics/CBAnalytics;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 129
    invoke-direct {p0}, Lcom/payu/custombrowser/analytics/CBAnalytics;->resetTimer()V

    .line 130
    iget-boolean v1, p0, Lcom/payu/custombrowser/analytics/CBAnalytics;->mIsLocked:Z

    if-eqz v1, :cond_0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/payu/custombrowser/analytics/CBAnalytics;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lcom/payu/custombrowser/analytics/CBAnalytics$2;

    invoke-direct {v1, p0, p1}, Lcom/payu/custombrowser/analytics/CBAnalytics$2;-><init>(Lcom/payu/custombrowser/analytics/CBAnalytics;Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v4, v2, v3

    .line 170
    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/analytics/CBAnalytics$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
