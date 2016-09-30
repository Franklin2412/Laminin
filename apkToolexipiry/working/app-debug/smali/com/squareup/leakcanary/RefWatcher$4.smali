.class final Lcom/squareup/leakcanary/RefWatcher$4;
.super Ljava/lang/Object;
.source "RefWatcher.java"

# interfaces
.implements Lcom/squareup/leakcanary/HeapDump$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/leakcanary/RefWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public analyze(Lcom/squareup/leakcanary/HeapDump;)V
    .locals 0
    .param p1, "heapDump"    # Lcom/squareup/leakcanary/HeapDump;

    .prologue
    .line 50
    return-void
.end method
