.class public Lcom/payu/custombrowser/util/L;
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
    .line 32
    const/4 v0, 0x7

    sput v0, Lcom/payu/custombrowser/util/L;->sLogLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 69
    const-class v1, Lcom/payu/custombrowser/util/L;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/payu/custombrowser/util/L;->sLogLevel:I

    const/4 v2, 0x4

    if-gt v0, v2, :cond_0

    .line 70
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    monitor-exit v1

    return-void

    .line 69
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
    .line 87
    const-class v1, Lcom/payu/custombrowser/util/L;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/payu/custombrowser/util/L;->sLogLevel:I

    const/4 v2, 0x6

    if-gt v0, v2, :cond_0

    .line 88
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit v1

    return-void

    .line 87
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
    .line 81
    const-class v1, Lcom/payu/custombrowser/util/L;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/payu/custombrowser/util/L;->sLogLevel:I

    const/4 v2, 0x3

    if-gt v0, v2, :cond_0

    .line 82
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_0
    monitor-exit v1

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized t(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v1, Lcom/payu/custombrowser/util/L;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/payu/custombrowser/util/L;->sLogLevel:I

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    .line 38
    const-string v0, "PAYU-TIMESTAMP"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_0
    monitor-exit v1

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized v(I)V
    .locals 4
    .param p0, "message"    # I

    .prologue
    .line 57
    const-class v1, Lcom/payu/custombrowser/util/L;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/payu/custombrowser/util/L;->sLogLevel:I

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    .line 58
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

    invoke-static {v0, v2}, Lcom/payu/custombrowser/util/L;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_0
    monitor-exit v1

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized v(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 50
    const-class v1, Lcom/payu/custombrowser/util/L;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/payu/custombrowser/util/L;->sLogLevel:I

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    .line 51
    const-string v0, "### PAYU ####"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    monitor-exit v1

    return-void

    .line 50
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
    .line 63
    const-class v1, Lcom/payu/custombrowser/util/L;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/payu/custombrowser/util/L;->sLogLevel:I

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/payu/custombrowser/util/L;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit v1

    return-void

    .line 63
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
    .line 44
    const-class v1, Lcom/payu/custombrowser/util/L;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/payu/custombrowser/util/L;->sLogLevel:I

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    .line 45
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    monitor-exit v1

    return-void

    .line 44
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
    .line 75
    const-class v1, Lcom/payu/custombrowser/util/L;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/payu/custombrowser/util/L;->sLogLevel:I

    const/4 v2, 0x5

    if-gt v0, v2, :cond_0

    .line 76
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_0
    monitor-exit v1

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
