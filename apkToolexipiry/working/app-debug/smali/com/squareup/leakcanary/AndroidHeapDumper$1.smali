.class Lcom/squareup/leakcanary/AndroidHeapDumper$1;
.super Ljava/lang/Object;
.source "AndroidHeapDumper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/leakcanary/AndroidHeapDumper;->cleanup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/leakcanary/AndroidHeapDumper;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/AndroidHeapDumper;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/squareup/leakcanary/AndroidHeapDumper$1;->this$0:Lcom/squareup/leakcanary/AndroidHeapDumper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 99
    iget-object v2, p0, Lcom/squareup/leakcanary/AndroidHeapDumper$1;->this$0:Lcom/squareup/leakcanary/AndroidHeapDumper;

    iget-object v2, v2, Lcom/squareup/leakcanary/AndroidHeapDumper;->leakDirectoryProvider:Lcom/squareup/leakcanary/LeakDirectoryProvider;

    invoke-interface {v2}, Lcom/squareup/leakcanary/LeakDirectoryProvider;->isLeakStorageWritable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 100
    const-string v2, "Could not attempt cleanup, leak storage not writable."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/squareup/leakcanary/AndroidHeapDumper$1;->this$0:Lcom/squareup/leakcanary/AndroidHeapDumper;

    invoke-virtual {v2}, Lcom/squareup/leakcanary/AndroidHeapDumper;->getHeapDumpFile()Ljava/io/File;

    move-result-object v0

    .line 104
    .local v0, "heapDumpFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    const-string v2, "Previous analysis did not complete correctly, cleaning: %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 107
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 108
    const-string v2, "Could not delete file %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
