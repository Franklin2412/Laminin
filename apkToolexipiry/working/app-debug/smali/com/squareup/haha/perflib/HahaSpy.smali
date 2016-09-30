.class public final Lcom/squareup/haha/perflib/HahaSpy;
.super Ljava/lang/Object;
.source "HahaSpy.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static allocatingThread(Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/haha/perflib/Instance;
    .locals 6
    .param p0, "instance"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 21
    iget-object v3, p0, Lcom/squareup/haha/perflib/Instance;->mHeap:Lcom/squareup/haha/perflib/Heap;

    iget-object v0, v3, Lcom/squareup/haha/perflib/Heap;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    .line 23
    .local v0, "snapshot":Lcom/squareup/haha/perflib/Snapshot;
    instance-of v3, p0, Lcom/squareup/haha/perflib/RootObj;

    if-eqz v3, :cond_0

    .line 24
    check-cast p0, Lcom/squareup/haha/perflib/RootObj;

    .end local p0    # "instance":Lcom/squareup/haha/perflib/Instance;
    iget v2, p0, Lcom/squareup/haha/perflib/RootObj;->mThread:I

    .line 28
    .local v2, "threadSerialNumber":I
    :goto_0
    invoke-virtual {v0, v2}, Lcom/squareup/haha/perflib/Snapshot;->getThread(I)Lcom/squareup/haha/perflib/ThreadObj;

    move-result-object v1

    .line 29
    .local v1, "thread":Lcom/squareup/haha/perflib/ThreadObj;
    iget-wide v4, v1, Lcom/squareup/haha/perflib/ThreadObj;->mId:J

    invoke-virtual {v0, v4, v5}, Lcom/squareup/haha/perflib/Snapshot;->findInstance(J)Lcom/squareup/haha/perflib/Instance;

    move-result-object v3

    return-object v3

    .line 26
    .end local v1    # "thread":Lcom/squareup/haha/perflib/ThreadObj;
    .end local v2    # "threadSerialNumber":I
    .restart local p0    # "instance":Lcom/squareup/haha/perflib/Instance;
    :cond_0
    iget-object v3, p0, Lcom/squareup/haha/perflib/Instance;->mStack:Lcom/squareup/haha/perflib/StackTrace;

    iget v2, v3, Lcom/squareup/haha/perflib/StackTrace;->mThreadSerialNumber:I

    .restart local v2    # "threadSerialNumber":I
    goto :goto_0
.end method
