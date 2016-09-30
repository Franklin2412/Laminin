.class Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;
.super Ljava/lang/Object;
.source "DisplayLeakActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/leakcanary/internal/DisplayLeakActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadLeaks"
.end annotation


# static fields
.field static final backgroundExecutor:Ljava/util/concurrent/Executor;

.field static final inFlight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field activityOrNull:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

.field private final leakDirectory:Ljava/io/File;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->inFlight:Ljava/util/List;

    .line 423
    const-string v0, "LoadLeaks"

    invoke-static {v0}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->backgroundExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->activityOrNull:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    .line 444
    invoke-static {p1}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getLeakDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->leakDirectory:Ljava/io/File;

    .line 445
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->mainHandler:Landroid/os/Handler;

    .line 446
    return-void
.end method

.method static forgetActivity()V
    .locals 3

    .prologue
    .line 432
    sget-object v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->inFlight:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;

    .line 433
    .local v1, "loadLeaks":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->activityOrNull:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    goto :goto_0

    .line 435
    .end local v1    # "loadLeaks":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;
    :cond_0
    sget-object v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->inFlight:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 436
    return-void
.end method

.method static load(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .locals 2
    .param p0, "activity"    # Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    .prologue
    .line 426
    new-instance v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;

    invoke-direct {v0, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    .line 427
    .local v0, "loadLeaks":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;
    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->inFlight:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 429
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 449
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v9, "leaks":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->leakDirectory:Ljava/io/File;

    new-instance v15, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$1;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;)V

    invoke-virtual {v14, v15}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .line 456
    .local v4, "files":[Ljava/io/File;
    if-eqz v4, :cond_4

    .line 457
    move-object v1, v4

    .local v1, "arr$":[Ljava/io/File;
    array-length v10, v1

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v10, :cond_3

    aget-object v13, v1, v8

    .line 458
    .local v13, "resultFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 460
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v11, Ljava/io/ObjectInputStream;

    invoke-direct {v11, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 462
    .local v11, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/squareup/leakcanary/HeapDump;

    .line 463
    .local v7, "heapDump":Lcom/squareup/leakcanary/HeapDump;
    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/squareup/leakcanary/AnalysisResult;

    .line 464
    .local v12, "result":Lcom/squareup/leakcanary/AnalysisResult;
    new-instance v14, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    invoke-direct {v14, v7, v12, v13}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;-><init>(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Ljava/io/File;)V

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 476
    if-eqz v6, :cond_5

    .line 478
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .line 457
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    .end local v11    # "ois":Ljava/io/ObjectInputStream;
    .end local v12    # "result":Lcom/squareup/leakcanary/AnalysisResult;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 479
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    .restart local v11    # "ois":Ljava/io/ObjectInputStream;
    .restart local v12    # "result":Lcom/squareup/leakcanary/AnalysisResult;
    :catch_0
    move-exception v14

    move-object v5, v6

    .line 480
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 465
    .end local v7    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    .end local v11    # "ois":Ljava/io/ObjectInputStream;
    .end local v12    # "result":Lcom/squareup/leakcanary/AnalysisResult;
    :catch_1
    move-exception v14

    :goto_2
    move-object v3, v14

    .line 468
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v2

    .line 469
    .local v2, "deleted":Z
    if-eqz v2, :cond_1

    .line 470
    const-string v14, "Could not read result file %s, deleted it."

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v13, v15, v16

    invoke-static {v3, v14, v15}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 476
    :goto_4
    if-eqz v5, :cond_0

    .line 478
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 479
    :catch_2
    move-exception v14

    goto :goto_1

    .line 472
    :cond_1
    :try_start_5
    const-string v14, "Could not read result file %s, could not delete it either."

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v13, v15, v16

    invoke-static {v3, v14, v15}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 476
    .end local v2    # "deleted":Z
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    :goto_5
    if-eqz v5, :cond_2

    .line 478
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 480
    :cond_2
    :goto_6
    throw v14

    .line 484
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "resultFile":Ljava/io/File;
    :cond_3
    new-instance v14, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$2;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;)V

    invoke-static {v9, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 491
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v8    # "i$":I
    .end local v10    # "len$":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->mainHandler:Landroid/os/Handler;

    new-instance v15, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v9}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$3;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;Ljava/util/List;)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 500
    return-void

    .line 465
    .restart local v1    # "arr$":[Ljava/io/File;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "i$":I
    .restart local v10    # "len$":I
    .restart local v13    # "resultFile":Ljava/io/File;
    :catch_3
    move-exception v14

    :goto_7
    move-object v3, v14

    goto :goto_3

    .line 479
    :catch_4
    move-exception v15

    goto :goto_6

    .line 476
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v14

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 465
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v14

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v14

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    .restart local v11    # "ois":Ljava/io/ObjectInputStream;
    .restart local v12    # "result":Lcom/squareup/leakcanary/AnalysisResult;
    :cond_5
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method
