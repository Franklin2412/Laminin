.class public Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;
.super Ljava/lang/Object;
.source "PayuDeviceAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$UploadData;
    }
.end annotation


# static fields
.field private static final PRODUCTION_URL_DEVICE_ANALYTICS:Ljava/lang/String; = "https://secure.payu.in/MobileAnalytics"

.field private static final TEST_URL_DEVICE_ANALYTICS:Ljava/lang/String; = "http://10.50.23.170:6543/MobileAnalytics"


# instance fields
.field private TIMER_DELAY:J

.field private cbUtil:Lcom/payu/custombrowser/util/CBUtil;

.field private final context:Landroid/content/Context;

.field private file_name:Ljava/lang/String;

.field private isTimerCancelled:Z

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->TIMER_DELAY:J

    .line 33
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mIsLocked:Z

    .line 36
    const-string v2, "cb_local_cache_device"

    iput-object v2, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->file_name:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->file_name:Ljava/lang/String;

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;

    .line 49
    new-instance v2, Lcom/payu/custombrowser/util/CBUtil;

    invoke-direct {v2}, Lcom/payu/custombrowser/util/CBUtil;-><init>()V

    iput-object v2, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    .line 50
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 51
    .local v1, "defaultUEH":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$1;

    invoke-direct {v0, p0, p2, v1}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$1;-><init>(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;Ljava/lang/String;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 70
    .local v0, "_unCaughtExceptionHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Z
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mIsLocked:Z

    return v0
.end method

.method static synthetic access$100(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)V
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->setLock()V

    return-void
.end method

.method static synthetic access$1000(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Lcom/payu/custombrowser/util/CBUtil;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->cbUtil:Lcom/payu/custombrowser/util/CBUtil;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;Lorg/json/JSONArray;I)Lorg/json/JSONArray;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;
    .param p1, "x1"    # Lorg/json/JSONArray;
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->removeJsonObjectAtJsonArrayIndex(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->updateFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)V
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->releaseLock()V

    return-void
.end method

.method static synthetic access$502(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;J)J
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;
    .param p1, "x1"    # J

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->TIMER_DELAY:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->file_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)V
    .locals 0
    .param p0, "x0"    # Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->resetTimer()V

    return-void
.end method

.method static synthetic access$900(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)Z
    .locals 1
    .param p0, "x0"    # Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->isTimerCancelled:Z

    return v0
.end method

.method private declared-synchronized releaseLock()V
    .locals 1

    .prologue
    .line 184
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mIsLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeJsonObjectAtJsonArrayIndex(Lorg/json/JSONArray;I)Lorg/json/JSONArray;
    .locals 4
    .param p1, "source"    # Lorg/json/JSONArray;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 189
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le p2, v3, :cond_1

    .line 190
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 193
    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 194
    .local v0, "copy":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 195
    if-eq v2, p2, :cond_2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 194
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    :cond_3
    return-object v0
.end method

.method private resetTimer()V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 131
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mTimer:Ljava/util/Timer;

    .line 132
    iget-object v0, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics$2;-><init>(Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;)V

    iget-wide v2, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->TIMER_DELAY:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 177
    return-void
.end method

.method private declared-synchronized setLock()V
    .locals 1

    .prologue
    .line 180
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mIsLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateFile(Ljava/lang/String;)V
    .locals 5
    .param p1, "temp"    # Ljava/lang/String;

    .prologue
    .line 275
    :try_start_0
    iget-object v2, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->file_name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 276
    .local v1, "fileOutputStream":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 277
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getmTimer()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->isTimerCancelled:Z

    .line 286
    iget-object v0, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 11
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-boolean v8, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mIsLocked:Z

    if-eqz v8, :cond_0

    .line 81
    iget-object v8, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :goto_0
    invoke-direct {p0}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->resetTimer()V

    .line 120
    return-void

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->setLock()V

    .line 88
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    .local v6, "newobject":Lorg/json/JSONObject;
    const-string v7, ""

    .line 92
    .local v7, "temp":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v8, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    iget-object v9, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->file_name:Ljava/lang/String;

    invoke-direct {v2, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 94
    iget-object v8, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->context:Landroid/content/Context;

    iget-object v9, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->file_name:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    .line 96
    :cond_1
    iget-object v8, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->context:Landroid/content/Context;

    iget-object v9, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->file_name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 97
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    :goto_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v8, -0x1

    if-eq v0, v8, :cond_2

    .line 98
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    int-to-char v9, v0

    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 100
    :cond_2
    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 101
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 104
    .local v5, "jsonArray":Lorg/json/JSONArray;
    :goto_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 105
    iget-object v8, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->context:Landroid/content/Context;

    iget-object v9, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->file_name:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 106
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    invoke-virtual {v5, v8, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 107
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 108
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    .end local v0    # "c":I
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "newobject":Lorg/json/JSONObject;
    .end local v7    # "temp":Ljava/lang/String;
    :goto_3
    invoke-direct {p0}, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->releaseLock()V

    goto :goto_0

    .line 103
    .restart local v0    # "c":I
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "newobject":Lorg/json/JSONObject;
    .restart local v7    # "temp":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    goto :goto_2

    .line 109
    .end local v0    # "c":I
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "newobject":Lorg/json/JSONObject;
    .end local v7    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 111
    iget-object v8, p0, Lcom/payu/custombrowser/analytics/PayuDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 112
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 113
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method
