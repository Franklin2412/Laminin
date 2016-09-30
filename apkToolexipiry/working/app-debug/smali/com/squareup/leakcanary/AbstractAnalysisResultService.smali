.class public abstract Lcom/squareup/leakcanary/AbstractAnalysisResultService;
.super Landroid/app/IntentService;
.source "AbstractAnalysisResultService.java"


# static fields
.field private static final HEAP_DUMP_EXTRA:Ljava/lang/String; = "heap_dump_extra"

.field private static final RESULT_EXTRA:Ljava/lang/String; = "result_extra"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/squareup/leakcanary/AbstractAnalysisResultService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static sendResultToListener(Landroid/content/Context;Ljava/lang/String;Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listenerServiceClassName"    # Ljava/lang/String;
    .param p2, "heapDump"    # Lcom/squareup/leakcanary/HeapDump;
    .param p3, "result"    # Lcom/squareup/leakcanary/AnalysisResult;

    .prologue
    .line 31
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 35
    .local v2, "listenerServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "heap_dump_extra"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 37
    const-string v3, "result_extra"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 39
    return-void

    .line 32
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "listenerServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method protected final onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    const-string v2, "heap_dump_extra"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/HeapDump;

    .line 47
    .local v0, "heapDump":Lcom/squareup/leakcanary/HeapDump;
    const-string v2, "result_extra"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/squareup/leakcanary/AnalysisResult;

    .line 49
    .local v1, "result":Lcom/squareup/leakcanary/AnalysisResult;
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/squareup/leakcanary/AbstractAnalysisResultService;->onHeapAnalyzed(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iget-object v2, v0, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 54
    return-void

    .line 52
    :catchall_0
    move-exception v2

    iget-object v3, v0, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    throw v2
.end method

.method protected abstract onHeapAnalyzed(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;)V
.end method
