.class public Lcom/payu/magicretry/Helpers/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field public static final DEBUG:I = 0x4

.field private static final DEFAULT_LOG_TAG:Ljava/lang/String; = "### PAYU ####"

.field private static final DEFAULT_TIMESTAMP_TAG:Ljava/lang/String; = "PAYU-TIMESTAMP"

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x3

.field public static final NONE:I = 0x7

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static sLogLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x7

    sput v0, Lcom/payu/magicretry/Helpers/L;->sLogLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 66
    const-class v1, Lcom/payu/magicretry/Helpers/L;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/payu/magicretry/Helpers/L;->sLogLevel:I

    const/4 v2, 0x4

    if-gt v0, v2, :cond_0

    .line 67
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    monitor-exit v1

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 84
    const-class v1, Lcom/payu/magicretry/Helpers/L;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/payu/magicretry/Helpers/L;->sLogLevel:I

    const/4 v2, 0x6

    if-gt v0, v2, :cond_0

    .line 85
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    monitor-exit v1

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 78
    const-class v1, Lcom/payu/magicretry/Helpers/L;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/payu/magicretry/Helpers/L;->sLogLevel:I

    const/4 v2, 0x3

    if-gt v0, v2, :cond_0

    .line 79
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    monitor-exit v1

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized t(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v1, Lcom/payu/magicretry/Helpers/L;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/payu/magicretry/Helpers/L;->sLogLevel:I

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    .line 36
    const-string v0, "PAYU-TIMESTAMP"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_0
    monitor-exit v1

    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized v(I)V
    .locals 4
    .param p0, "message"    # I

    .prologue
    .line 54
    const-class v1, Lcom/payu/magicretry/Helpers/L;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/payu/magicretry/Helpers/L;->sLogLevel:I

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    .line 55
    const-string v0, "### PAYU ####"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/payu/magicretry/Helpers/L;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    monitor-exit v1

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized v(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v1, Lcom/payu/magicretry/Helpers/L;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/payu/magicretry/Helpers/L;->sLogLevel:I

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    .line 48
    const-string v0, "### PAYU ####"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_0
    monitor-exit v1

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized v(Ljava/lang/String;I)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # I

    .prologue
    .line 60
    const-class v1, Lcom/payu/magicretry/Helpers/L;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/payu/magicretry/Helpers/L;->sLogLevel:I

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/payu/magicretry/Helpers/L;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    monitor-exit v1

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v1, Lcom/payu/magicretry/Helpers/L;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/payu/magicretry/Helpers/L;->sLogLevel:I

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    .line 42
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_0
    monitor-exit v1

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v1, Lcom/payu/magicretry/Helpers/L;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/payu/magicretry/Helpers/L;->sLogLevel:I

    const/4 v2, 0x5

    if-gt v0, v2, :cond_0

    .line 73
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_0
    monitor-exit v1

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
