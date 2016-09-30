.class public final Lcom/squareup/leakcanary/internal/HeapAnalyzerService;
.super Landroid/app/IntentService;
.source "HeapAnalyzerService.java"


# static fields
.field private static final HEAPDUMP_EXTRA:Ljava/lang/String; = "heapdump_extra"

.field private static final LISTENER_CLASS_EXTRA:Ljava/lang/String; = "listener_class_extra"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/squareup/leakcanary/internal/HeapAnalyzerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static runAnalysis(Landroid/content/Context;Lcom/squareup/leakcanary/HeapDump;Ljava/lang/Class;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "heapDump"    # Lcom/squareup/leakcanary/HeapDump;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/squareup/leakcanary/HeapDump;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/leakcanary/AbstractAnalysisResultService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "listenerServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/squareup/leakcanary/AbstractAnalysisResultService;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/squareup/leakcanary/internal/HeapAnalyzerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "listener_class_extra"

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v1, "heapdump_extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 42
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 50
    const-string v4, "HeapAnalyzerService received a null intent, ignoring."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :goto_0
    return-void

    .line 53
    :cond_0
    const-string v4, "listener_class_extra"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "listenerClassName":Ljava/lang/String;
    const-string v4, "heapdump_extra"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/squareup/leakcanary/HeapDump;

    .line 56
    .local v1, "heapDump":Lcom/squareup/leakcanary/HeapDump;
    new-instance v0, Lcom/squareup/leakcanary/HeapAnalyzer;

    iget-object v4, v1, Lcom/squareup/leakcanary/HeapDump;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    invoke-direct {v0, v4}, Lcom/squareup/leakcanary/HeapAnalyzer;-><init>(Lcom/squareup/leakcanary/ExcludedRefs;)V

    .line 58
    .local v0, "heapAnalyzer":Lcom/squareup/leakcanary/HeapAnalyzer;
    iget-object v4, v1, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    iget-object v5, v1, Lcom/squareup/leakcanary/HeapDump;->referenceKey:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/squareup/leakcanary/HeapAnalyzer;->checkForLeak(Ljava/io/File;Ljava/lang/String;)Lcom/squareup/leakcanary/AnalysisResult;

    move-result-object v3

    .line 59
    .local v3, "result":Lcom/squareup/leakcanary/AnalysisResult;
    invoke-static {p0, v2, v1, v3}, Lcom/squareup/leakcanary/AbstractAnalysisResultService;->sendResultToListener(Landroid/content/Context;Ljava/lang/String;Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;)V

    goto :goto_0
.end method
