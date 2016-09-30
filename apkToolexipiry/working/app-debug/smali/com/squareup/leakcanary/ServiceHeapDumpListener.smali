.class public final Lcom/squareup/leakcanary/ServiceHeapDumpListener;
.super Ljava/lang/Object;
.source "ServiceHeapDumpListener.java"

# interfaces
.implements Lcom/squareup/leakcanary/HeapDump$Listener;


# instance fields
.field private final context:Landroid/content/Context;

.field private final listenerServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/leakcanary/AbstractAnalysisResultService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/leakcanary/AbstractAnalysisResultService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "listenerServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/squareup/leakcanary/AbstractAnalysisResultService;>;"
    const/4 v1, 0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1, p2, v1}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->setEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 32
    const-class v0, Lcom/squareup/leakcanary/internal/HeapAnalyzerService;

    invoke-static {p1, v0, v1}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->setEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 33
    const-string v0, "listenerServiceClass"

    invoke-static {p2, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/squareup/leakcanary/ServiceHeapDumpListener;->listenerServiceClass:Ljava/lang/Class;

    .line 34
    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/leakcanary/ServiceHeapDumpListener;->context:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public analyze(Lcom/squareup/leakcanary/HeapDump;)V
    .locals 2
    .param p1, "heapDump"    # Lcom/squareup/leakcanary/HeapDump;

    .prologue
    .line 38
    const-string v0, "heapDump"

    invoke-static {p1, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/squareup/leakcanary/ServiceHeapDumpListener;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/squareup/leakcanary/ServiceHeapDumpListener;->listenerServiceClass:Ljava/lang/Class;

    invoke-static {v0, p1, v1}, Lcom/squareup/leakcanary/internal/HeapAnalyzerService;->runAnalysis(Landroid/content/Context;Lcom/squareup/leakcanary/HeapDump;Ljava/lang/Class;)V

    .line 40
    return-void
.end method
