.class public final Lcom/squareup/leakcanary/AndroidHeapDumper;
.super Ljava/lang/Object;
.source "AndroidHeapDumper.java"

# interfaces
.implements Lcom/squareup/leakcanary/HeapDumper;


# static fields
.field private static final HEAPDUMP_FILE:Ljava/lang/String; = "suspected_leak_heapdump.hprof"


# instance fields
.field final context:Landroid/content/Context;

.field final leakDirectoryProvider:Lcom/squareup/leakcanary/LeakDirectoryProvider;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/squareup/leakcanary/LeakDirectoryProvider;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "leakDirectoryProvider"    # Lcom/squareup/leakcanary/LeakDirectoryProvider;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/squareup/leakcanary/AndroidHeapDumper;->leakDirectoryProvider:Lcom/squareup/leakcanary/LeakDirectoryProvider;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/leakcanary/AndroidHeapDumper;->context:Landroid/content/Context;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/squareup/leakcanary/AndroidHeapDumper;->mainHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method private cancelToast(Landroid/widget/Toast;)V
    .locals 2
    .param p1, "toast"    # Landroid/widget/Toast;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/squareup/leakcanary/AndroidHeapDumper;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/squareup/leakcanary/AndroidHeapDumper$3;

    invoke-direct {v1, p0, p1}, Lcom/squareup/leakcanary/AndroidHeapDumper$3;-><init>(Lcom/squareup/leakcanary/AndroidHeapDumper;Landroid/widget/Toast;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void
.end method

.method private showToast(Lcom/squareup/leakcanary/internal/FutureResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/leakcanary/internal/FutureResult",
            "<",
            "Landroid/widget/Toast;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "waitingForToast":Lcom/squareup/leakcanary/internal/FutureResult;, "Lcom/squareup/leakcanary/internal/FutureResult<Landroid/widget/Toast;>;"
    iget-object v0, p0, Lcom/squareup/leakcanary/AndroidHeapDumper;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/squareup/leakcanary/AndroidHeapDumper$2;

    invoke-direct {v1, p0, p1}, Lcom/squareup/leakcanary/AndroidHeapDumper$2;-><init>(Lcom/squareup/leakcanary/AndroidHeapDumper;Lcom/squareup/leakcanary/internal/FutureResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/squareup/leakcanary/AndroidHeapDumper$1;

    invoke-direct {v0, p0}, Lcom/squareup/leakcanary/AndroidHeapDumper$1;-><init>(Lcom/squareup/leakcanary/AndroidHeapDumper;)V

    invoke-static {v0}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->executeOnFileIoThread(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public dumpHeap()Ljava/io/File;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 48
    iget-object v5, p0, Lcom/squareup/leakcanary/AndroidHeapDumper;->leakDirectoryProvider:Lcom/squareup/leakcanary/LeakDirectoryProvider;

    invoke-interface {v5}, Lcom/squareup/leakcanary/LeakDirectoryProvider;->isLeakStorageWritable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 49
    const-string v5, "Could not write to leak storage to dump heap."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iget-object v5, p0, Lcom/squareup/leakcanary/AndroidHeapDumper;->leakDirectoryProvider:Lcom/squareup/leakcanary/LeakDirectoryProvider;

    invoke-interface {v5}, Lcom/squareup/leakcanary/LeakDirectoryProvider;->requestWritePermission()V

    .line 51
    sget-object v2, Lcom/squareup/leakcanary/AndroidHeapDumper;->NO_DUMP:Ljava/io/File;

    .line 88
    :goto_0
    return-object v2

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/leakcanary/AndroidHeapDumper;->getHeapDumpFile()Ljava/io/File;

    move-result-object v2

    .line 58
    .local v2, "heapDumpFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 65
    .local v1, "fileCreated":Z
    if-nez v1, :cond_1

    .line 66
    const-string v5, "Could not dump heap, previous analysis still is in progress."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    sget-object v2, Lcom/squareup/leakcanary/AndroidHeapDumper;->NO_DUMP:Ljava/io/File;

    goto :goto_0

    .line 59
    .end local v1    # "fileCreated":Z
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/squareup/leakcanary/AndroidHeapDumper;->cleanup()V

    .line 61
    const-string v5, "Could not check if heap dump file exists"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    sget-object v2, Lcom/squareup/leakcanary/AndroidHeapDumper;->NO_DUMP:Ljava/io/File;

    goto :goto_0

    .line 71
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "fileCreated":Z
    :cond_1
    new-instance v4, Lcom/squareup/leakcanary/internal/FutureResult;

    invoke-direct {v4}, Lcom/squareup/leakcanary/internal/FutureResult;-><init>()V

    .line 72
    .local v4, "waitingForToast":Lcom/squareup/leakcanary/internal/FutureResult;, "Lcom/squareup/leakcanary/internal/FutureResult<Landroid/widget/Toast;>;"
    invoke-direct {p0, v4}, Lcom/squareup/leakcanary/AndroidHeapDumper;->showToast(Lcom/squareup/leakcanary/internal/FutureResult;)V

    .line 74
    const-wide/16 v6, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Lcom/squareup/leakcanary/internal/FutureResult;->wait(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 75
    const-string v5, "Did not dump heap, too much time waiting for Toast."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    sget-object v2, Lcom/squareup/leakcanary/AndroidHeapDumper;->NO_DUMP:Ljava/io/File;

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {v4}, Lcom/squareup/leakcanary/internal/FutureResult;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Toast;

    .line 81
    .local v3, "toast":Landroid/widget/Toast;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, v3}, Lcom/squareup/leakcanary/AndroidHeapDumper;->cancelToast(Landroid/widget/Toast;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/squareup/leakcanary/AndroidHeapDumper;->cleanup()V

    .line 86
    const-string v5, "Could not perform heap dump"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    sget-object v2, Lcom/squareup/leakcanary/AndroidHeapDumper;->NO_DUMP:Ljava/io/File;

    goto :goto_0
.end method

.method getHeapDumpFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 116
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/squareup/leakcanary/AndroidHeapDumper;->leakDirectoryProvider:Lcom/squareup/leakcanary/LeakDirectoryProvider;

    invoke-interface {v1}, Lcom/squareup/leakcanary/LeakDirectoryProvider;->leakDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "suspected_leak_heapdump.hprof"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
