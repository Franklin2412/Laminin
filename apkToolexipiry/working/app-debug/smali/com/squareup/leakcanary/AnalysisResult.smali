.class public final Lcom/squareup/leakcanary/AnalysisResult;
.super Ljava/lang/Object;
.source "AnalysisResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final analysisDurationMs:J

.field public final className:Ljava/lang/String;

.field public final excludedLeak:Z

.field public final failure:Ljava/lang/Throwable;

.field public final leakFound:Z

.field public final leakTrace:Lcom/squareup/leakcanary/LeakTrace;

.field public final retainedHeapSize:J


# direct methods
.method private constructor <init>(ZZLjava/lang/String;Lcom/squareup/leakcanary/LeakTrace;Ljava/lang/Throwable;JJ)V
    .locals 0
    .param p1, "leakFound"    # Z
    .param p2, "excludedLeak"    # Z
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "leakTrace"    # Lcom/squareup/leakcanary/LeakTrace;
    .param p5, "failure"    # Ljava/lang/Throwable;
    .param p6, "retainedHeapSize"    # J
    .param p8, "analysisDurationMs"    # J

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-boolean p1, p0, Lcom/squareup/leakcanary/AnalysisResult;->leakFound:Z

    .line 72
    iput-boolean p2, p0, Lcom/squareup/leakcanary/AnalysisResult;->excludedLeak:Z

    .line 73
    iput-object p3, p0, Lcom/squareup/leakcanary/AnalysisResult;->className:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcom/squareup/leakcanary/AnalysisResult;->leakTrace:Lcom/squareup/leakcanary/LeakTrace;

    .line 75
    iput-object p5, p0, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    .line 76
    iput-wide p6, p0, Lcom/squareup/leakcanary/AnalysisResult;->retainedHeapSize:J

    .line 77
    iput-wide p8, p0, Lcom/squareup/leakcanary/AnalysisResult;->analysisDurationMs:J

    .line 78
    return-void
.end method

.method public static failure(Ljava/lang/Throwable;J)Lcom/squareup/leakcanary/AnalysisResult;
    .locals 11
    .param p0, "failure"    # Ljava/lang/Throwable;
    .param p1, "analysisDurationMs"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 33
    new-instance v0, Lcom/squareup/leakcanary/AnalysisResult;

    const-wide/16 v6, 0x0

    move v2, v1

    move-object v4, v3

    move-object v5, p0

    move-wide v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/squareup/leakcanary/AnalysisResult;-><init>(ZZLjava/lang/String;Lcom/squareup/leakcanary/LeakTrace;Ljava/lang/Throwable;JJ)V

    return-object v0
.end method

.method public static leakDetected(ZLjava/lang/String;Lcom/squareup/leakcanary/LeakTrace;JJ)Lcom/squareup/leakcanary/AnalysisResult;
    .locals 11
    .param p0, "excludedLeak"    # Z
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "leakTrace"    # Lcom/squareup/leakcanary/LeakTrace;
    .param p3, "retainedHeapSize"    # J
    .param p5, "analysisDurationMs"    # J

    .prologue
    .line 28
    new-instance v0, Lcom/squareup/leakcanary/AnalysisResult;

    const/4 v1, 0x1

    const/4 v5, 0x0

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/squareup/leakcanary/AnalysisResult;-><init>(ZZLjava/lang/String;Lcom/squareup/leakcanary/LeakTrace;Ljava/lang/Throwable;JJ)V

    return-object v0
.end method

.method public static noLeak(J)Lcom/squareup/leakcanary/AnalysisResult;
    .locals 10
    .param p0, "analysisDurationMs"    # J

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/squareup/leakcanary/AnalysisResult;

    const-wide/16 v6, 0x0

    move v2, v1

    move-object v4, v3

    move-object v5, v3

    move-wide v8, p0

    invoke-direct/range {v0 .. v9}, Lcom/squareup/leakcanary/AnalysisResult;-><init>(ZZLjava/lang/String;Lcom/squareup/leakcanary/LeakTrace;Ljava/lang/Throwable;JJ)V

    return-object v0
.end method
