.class public Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;
.super Ljava/lang/Object;
.source "PayuUploadDeviceAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$UploadData;
    }
.end annotation


# static fields
.field private static final PRODUCTION_URL:Ljava/lang/String; = "https://info.payu.in/merchant/mobileWebService.php"

.field private static final TEST_URL:Ljava/lang/String; = "https://mobiletest.payu.in/merchant/mobileWebService.php"

.field private static TIMER_DELAY:J

.field private static isProduction:Z


# instance fields
.field private ANALYTICS_URL:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private final mActivity:Landroid/app/Activity;

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
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->TIMER_DELAY:J

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->isProduction:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v2, "sdk_local_cache_device"

    iput-object v2, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->fileName:Ljava/lang/String;

    .line 37
    sget-boolean v2, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->isProduction:Z

    if-eqz v2, :cond_0

    const-string v2, "https://info.payu.in/merchant/mobileWebService.php"

    :goto_0
    iput-object v2, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->ANALYTICS_URL:Ljava/lang/String;

    .line 38
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mIsLocked:Z

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;

    .line 49
    iput-object p1, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mActivity:Landroid/app/Activity;

    .line 50
    iput-object p2, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->fileName:Ljava/lang/String;

    .line 51
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 52
    .local v1, "defaultUEH":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$1;

    invoke-direct {v0, p0, v1}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$1;-><init>(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 71
    .local v0, "_unCaughtExceptionHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 72
    return-void

    .line 37
    .end local v0    # "_unCaughtExceptionHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .end local v1    # "defaultUEH":Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_0
    const-string v2, "https://mobiletest.payu.in/merchant/mobileWebService.php"

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Z
    .locals 1
    .param p0, "x0"    # Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mIsLocked:Z

    return v0
.end method

.method static synthetic access$100(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 30
    sput-wide p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->TIMER_DELAY:J

    return-wide p0
.end method

.method static synthetic access$500(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)V
    .locals 0
    .param p0, "x0"    # Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->resetTimer()V

    return-void
.end method

.method static synthetic access$600(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->ANALYTICS_URL:Ljava/lang/String;

    return-object v0
.end method

.method public static removeJsonObjectAtJsonArrayIndex(Lorg/json/JSONArray;I)Lorg/json/JSONArray;
    .locals 4
    .param p0, "source"    # Lorg/json/JSONArray;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 196
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_1

    .line 197
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 200
    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 201
    .local v0, "copy":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 202
    if-eq v2, p1, :cond_2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 201
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 204
    :cond_3
    return-object v0
.end method

.method private resetTimer()V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 129
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mTimer:Ljava/util/Timer;

    .line 130
    iget-object v0, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;

    invoke-direct {v1, p0}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics$2;-><init>(Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;)V

    sget-wide v2, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->TIMER_DELAY:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 174
    return-void
.end method


# virtual methods
.method public getbooleanSharedPreference(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 185
    iget-object v1, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mActivity:Landroid/app/Activity;

    const-string v2, "com.payu"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 186
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public log(Ljava/lang/String;)V
    .locals 11
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-boolean v8, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mIsLocked:Z

    if-eqz v8, :cond_0

    .line 81
    iget-object v8, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :goto_0
    invoke-direct {p0}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->resetTimer()V

    .line 118
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->setLock()V

    .line 88
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    .local v6, "newobject":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 91
    .local v5, "jsonArray":Lorg/json/JSONArray;
    const-string v7, ""

    .line 92
    .local v7, "temp":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v8, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v8

    iget-object v9, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->fileName:Ljava/lang/String;

    invoke-direct {v2, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 94
    iget-object v8, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mActivity:Landroid/app/Activity;

    iget-object v9, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->fileName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    .line 96
    :cond_1
    iget-object v8, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mActivity:Landroid/app/Activity;

    iget-object v9, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->fileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

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

    .line 99
    new-instance v5, Lorg/json/JSONArray;

    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    invoke-direct {v5, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    goto :goto_1

    .line 102
    :cond_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 103
    iget-object v8, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mActivity:Landroid/app/Activity;

    iget-object v9, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->fileName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 104
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    invoke-virtual {v5, v8, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 105
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 106
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    .end local v0    # "c":I
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "newobject":Lorg/json/JSONObject;
    .end local v7    # "temp":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->releaseLock()V

    goto/16 :goto_0

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 109
    iget-object v8, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 110
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 111
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method declared-synchronized releaseLock()V
    .locals 1

    .prologue
    .line 181
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mIsLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBooleanSharedPreference(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 190
    iget-object v1, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mActivity:Landroid/app/Activity;

    const-string v2, "com.payu"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 191
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 193
    return-void
.end method

.method declared-synchronized setLock()V
    .locals 1

    .prologue
    .line 177
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/payu/india/Tasks/PayuUploadDeviceAnalytics;->mIsLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
