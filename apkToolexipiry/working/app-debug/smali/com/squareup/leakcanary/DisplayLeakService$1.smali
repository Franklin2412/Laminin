.class Lcom/squareup/leakcanary/DisplayLeakService$1;
.super Ljava/lang/Object;
.source "DisplayLeakService.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/leakcanary/DisplayLeakService;->renameHeapdump(Lcom/squareup/leakcanary/HeapDump;)Lcom/squareup/leakcanary/HeapDump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/leakcanary/DisplayLeakService;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/DisplayLeakService;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/squareup/leakcanary/DisplayLeakService$1;->this$0:Lcom/squareup/leakcanary/DisplayLeakService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 131
    const-string v0, ".hprof"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
