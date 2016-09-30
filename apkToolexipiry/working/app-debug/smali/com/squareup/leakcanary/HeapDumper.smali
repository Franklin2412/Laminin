.class public interface abstract Lcom/squareup/leakcanary/HeapDumper;
.super Ljava/lang/Object;
.source "HeapDumper.java"


# static fields
.field public static final NO_DUMP:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/squareup/leakcanary/HeapDumper;->NO_DUMP:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public abstract dumpHeap()Ljava/io/File;
.end method
