.class final Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field volatile count:I

.field final evictionQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field final expirationQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field final keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field

.field final map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private maxSegmentSize:I

.field modCount:I

.field final readCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private recencyQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private threshold:I

.field final valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private copyEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, "original":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .local p2, "newNext":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    const/4 v0, 0x0

    .line 2138
    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2152
    :cond_0
    :goto_0
    return-object v0

    .line 2143
    :cond_1
    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v2

    .line 2144
    .local v2, "valueReference":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    invoke-interface {v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2145
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_0

    .line 2150
    iget-object v3, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v3, v3, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->entryFactory:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    invoke-virtual {v3, p0, p1, p2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->copyEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2151
    .local v0, "newEntry":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget-object v3, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v2, v3, v1, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->setValueReference(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;)V

    goto :goto_0
.end method

.method private drainRecencyQueue()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2303
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .local v0, "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    if-eqz v0, :cond_2

    .line 2308
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2309
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2311
    :cond_1
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->expiresAfterAccess()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2312
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2315
    :cond_2
    return-void
.end method

.method private drainReferenceQueues()V
    .locals 6
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    const/16 v5, 0x10

    const/4 v2, 0x0

    .line 2186
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    .line 4198
    :goto_0
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4200
    check-cast v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 4201
    iget-object v3, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    .line 4862
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v4

    .line 4863
    invoke-virtual {v3, v4}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->segmentFor(I)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;

    move-result-object v3

    invoke-virtual {v3, v0, v4}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->reclaimKey(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;I)Z

    .line 4202
    add-int/lit8 v0, v1, 0x1

    if-eq v0, v5, :cond_0

    move v1, v0

    .line 4205
    goto :goto_0

    .line 2189
    :cond_0
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5212
    :cond_1
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5214
    check-cast v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    .line 5215
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    .line 5856
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->getEntry()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v3

    .line 5857
    invoke-interface {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v4

    .line 5858
    invoke-virtual {v1, v4}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->segmentFor(I)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-interface {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3, v4, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->reclaimValue(Ljava/lang/Object;ILcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;)Z

    .line 5216
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v5, :cond_1

    .line 2192
    :cond_2
    return-void
.end method

.method private enqueueNotification$49a52d44(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "cause"    # Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2363
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v1, v1, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    sget-object v2, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->DISCARDING_QUEUE:Ljava/util/Queue;

    if-eq v1, v2, :cond_0

    .line 2364
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMaker$RemovalNotification;

    invoke-direct {v0, p1, p2, p3}, Lcom/squareup/haha/guava/collect/MapMaker$RemovalNotification;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2365
    .local v0, "notification":Lcom/squareup/haha/guava/collect/MapMaker$RemovalNotification;, "Lcom/squareup/haha/guava/collect/MapMaker$RemovalNotification<TK;TV;>;"
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v1, v1, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2367
    .end local v0    # "notification":Lcom/squareup/haha/guava/collect/MapMaker$RemovalNotification;, "Lcom/squareup/haha/guava/collect/MapMaker$RemovalNotification<TK;TV;>;"
    :cond_0
    return-void
.end method

.method private evictEntries()Z
    .locals 5
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2377
    iget-object v3, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    .line 6266
    iget v3, v3, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->maximumSize:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move v3, v1

    .line 2377
    :goto_0
    if-eqz v3, :cond_1

    iget v3, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    iget v4, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->maxSegmentSize:I

    if-lt v3, v4, :cond_1

    .line 2378
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->drainRecencyQueue()V

    .line 2380
    iget-object v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2381
    .local v0, "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v2

    sget-object v3, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->SIZE:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    invoke-direct {p0, v0, v2, v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->removeEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;ILcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2382
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .end local v0    # "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :cond_0
    move v3, v2

    .line 6266
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2386
    :cond_2
    return v1
.end method

.method private expireEntries()V
    .locals 5
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2340
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->drainRecencyQueue()V

    .line 2342
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2354
    :cond_0
    return-void

    .line 2347
    :cond_1
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v1, v1, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->ticker:Lcom/squareup/haha/guava/base/Ticker;

    invoke-virtual {v1}, Lcom/squareup/haha/guava/base/Ticker;->read()J

    move-result-wide v2

    .line 2349
    .local v2, "now":J
    :cond_2
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .local v0, "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    invoke-static {v0, v2, v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->isExpired(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2350
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v1

    sget-object v4, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->EXPIRED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    invoke-direct {p0, v0, v1, v4}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->removeEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;ILcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2351
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private getEntry(Ljava/lang/Object;I)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2401
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    iget v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v2, :cond_2

    .line 6394
    iget-object v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 6395
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, p2

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2402
    .local v0, "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 2403
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 2407
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2408
    .local v1, "entryKey":Ljava/lang/Object;, "TK;"
    if-nez v1, :cond_1

    .line 2409
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    .line 2402
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_0
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 2413
    .restart local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_1
    iget-object v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->keyEquivalence:Lcom/squareup/haha/guava/base/Equivalence;

    invoke-virtual {v2, p1, v1}, Lcom/squareup/haha/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2419
    .end local v0    # "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getLiveEntry(Ljava/lang/Object;I)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    const/4 v1, 0x0

    .line 2423
    invoke-direct {p0, p1, p2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->getEntry(Ljava/lang/Object;I)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2424
    .local v0, "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    if-nez v0, :cond_1

    move-object v0, v1

    .line 2430
    .end local v0    # "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :cond_0
    :goto_0
    return-object v0

    .line 2426
    .restart local v0    # "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :cond_1
    iget-object v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->expires()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v2, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->isExpired(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2427
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->tryExpireEntries()V

    move-object v0, v1

    .line 2428
    goto :goto_0
.end method

.method private static isCollected(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3018
    .local p0, "valueReference":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recordExpirationTime(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;J)V
    .locals 2
    .param p2, "expirationNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 2321
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, "entry":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->ticker:Lcom/squareup/haha/guava/base/Ticker;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/base/Ticker;->read()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->setExpirationTime(J)V

    .line 2322
    return-void
.end method

.method private recordLockedRead(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2267
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, "entry":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2268
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->expiresAfterAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2269
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-wide v0, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    invoke-direct {p0, p1, v0, v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->recordExpirationTime(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;J)V

    .line 2270
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2272
    :cond_0
    return-void
.end method

.method private removeCollectedEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2883
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, "entry":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    sget-object v0, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->enqueueNotification(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2884
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2885
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2886
    return-void
.end method

.method private removeEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;ILcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)Z
    .locals 8
    .param p2, "hash"    # I
    .param p3, "cause"    # Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;I",
            "Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;",
            ")Z"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2990
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, "entry":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget v6, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 2991
    iget-object v5, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2992
    .local v5, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    and-int v2, p2, v6

    .line 2993
    .local v2, "index":I
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2995
    .local v1, "first":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    move-object v0, v1

    .local v0, "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 2996
    if-ne v0, p1, :cond_0

    .line 2997
    iget v6, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2998
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v7

    invoke-interface {v7}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v6, v7, p3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->enqueueNotification$49a52d44(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2999
    invoke-direct {p0, v1, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v4

    .line 3000
    .local v4, "newFirst":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget v6, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v3, v6, -0x1

    .line 3001
    .local v3, "newCount":I
    invoke-virtual {v5, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3002
    iput v3, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 3003
    const/4 v6, 0x1

    .line 3007
    .end local v3    # "newCount":I
    .end local v4    # "newFirst":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_1
    return v6

    .line 2995
    :cond_0
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 3007
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private removeFromChain(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2864
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, "first":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .local p2, "entry":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget-object v4, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v4, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2865
    iget-object v4, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v4, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2867
    iget v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 2868
    .local v1, "newCount":I
    invoke-interface {p2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v2

    .line 2869
    .local v2, "newFirst":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    move-object v0, p1

    .local v0, "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eq v0, p2, :cond_1

    .line 2870
    invoke-direct {p0, v0, v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->copyEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v3

    .line 2871
    .local v3, "next":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    if-eqz v3, :cond_0

    .line 2872
    move-object v2, v3

    .line 2869
    :goto_1
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 2874
    :cond_0
    invoke-direct {p0, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->removeCollectedEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 2875
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2878
    .end local v3    # "next":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :cond_1
    iput v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 2879
    return-object v2
.end method

.method private runLockedCleanup()V
    .locals 2

    .prologue
    .line 3078
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3080
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->drainReferenceQueues()V

    .line 3081
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->expireEntries()V

    .line 3082
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3084
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 3087
    :cond_0
    return-void

    .line 3084
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v0
.end method

.method private setValue(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2160
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, "entry":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v1, v1, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->valueStrength:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v1, p0, p1, p2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;->referenceValue(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v0

    .line 2161
    .local v0, "valueReference":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    invoke-interface {p1, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->setValueReference(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;)V

    .line 3281
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->drainRecencyQueue()V

    .line 3282
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3283
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->expires()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3286
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->expiresAfterAccess()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-wide v2, v1, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    .line 3289
    :goto_0
    invoke-direct {p0, p1, v2, v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->recordExpirationTime(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;J)V

    .line 3290
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2163
    :cond_0
    return-void

    .line 3286
    :cond_1
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-wide v2, v1, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->expireAfterWriteNanos:J

    goto :goto_0
.end method


# virtual methods
.method final containsKey(Ljava/lang/Object;I)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    const/4 v1, 0x0

    .line 2454
    :try_start_0
    iget v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v2, :cond_2

    .line 2455
    invoke-direct {p0, p1, p2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->getLiveEntry(Ljava/lang/Object;I)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2456
    .local v0, "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 2464
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .end local v0    # "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    return v1

    .line 2459
    .restart local v0    # "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v2

    invoke-interface {v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 2464
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    goto :goto_0

    .end local v0    # "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    throw v1
.end method

.method final enqueueNotification(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V
    .locals 2
    .param p2, "cause"    # Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2359
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, "entry":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->enqueueNotification$49a52d44(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2360
    return-void
.end method

.method final get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .line 2435
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->getLiveEntry(Ljava/lang/Object;I)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2436
    .local v0, "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 2448
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 2440
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v2

    invoke-interface {v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2441
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_2

    .line 7252
    iget-object v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->expiresAfterAccess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7253
    iget-object v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-wide v2, v2, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    invoke-direct {p0, v0, v2, v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->recordExpirationTime(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;J)V

    .line 7255
    :cond_1
    iget-object v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2448
    :goto_1
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    goto :goto_0

    .line 2444
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2448
    .end local v0    # "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    throw v2
.end method

.method final postReadCleanup()V
    .locals 1

    .prologue
    .line 3049
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 38073
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    .line 38074
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 3052
    :cond_0
    return-void
.end method

.method final put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 23
    .param p2, "hash"    # I
    .param p4, "onlyIfAbsent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 2498
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->lock()V

    .line 8062
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    .line 2502
    move-object/from16 v0, p0

    iget v12, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v8, v12, 0x1

    .line 2503
    .local v8, "newCount":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->threshold:I

    if-le v8, v12, :cond_5

    .line 8570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object/from16 v19, v0

    .line 8571
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v20

    .line 8572
    const/high16 v12, 0x40000000    # 2.0f

    move/from16 v0, v20

    if-ge v0, v12, :cond_4

    .line 8586
    move-object/from16 v0, p0

    iget v13, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 8587
    shl-int/lit8 v12, v20, 0x1

    .line 9115
    new-instance v21, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 8588
    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v12

    mul-int/lit8 v12, v12, 0x3

    div-int/lit8 v12, v12, 0x4

    move-object/from16 v0, p0

    iput v12, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 8589
    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v12

    add-int/lit8 v22, v12, -0x1

    .line 8590
    const/4 v12, 0x0

    move/from16 v18, v12

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 8593
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 8595
    if-eqz v12, :cond_b

    .line 8596
    invoke-interface {v12}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v16

    .line 8597
    invoke-interface {v12}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v14

    and-int v15, v14, v22

    .line 8600
    if-nez v16, :cond_0

    .line 8601
    move-object/from16 v0, v21

    invoke-virtual {v0, v15, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v12, v13

    .line 8590
    :goto_1
    add-int/lit8 v13, v18, 0x1

    move/from16 v18, v13

    move v13, v12

    goto :goto_0

    :cond_0
    move-object/from16 v17, v12

    .line 8608
    :goto_2
    if-eqz v16, :cond_1

    .line 8609
    invoke-interface/range {v16 .. v16}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v14

    and-int v14, v14, v22

    .line 8610
    if-eq v14, v15, :cond_c

    move-object/from16 v15, v16

    .line 8608
    :goto_3
    invoke-interface/range {v16 .. v16}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v16

    move-object/from16 v17, v15

    move v15, v14

    goto :goto_2

    .line 8616
    :cond_1
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v14, v12

    .line 8619
    :goto_4
    move-object/from16 v0, v17

    if-eq v14, v0, :cond_b

    .line 8620
    invoke-interface {v14}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v12

    and-int v15, v12, v22

    .line 8621
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 8622
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->copyEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v12

    .line 8623
    if-eqz v12, :cond_2

    .line 8624
    move-object/from16 v0, v21

    invoke-virtual {v0, v15, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 8619
    :goto_5
    invoke-interface {v14}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v12

    move-object v14, v12

    goto :goto_4

    .line 8626
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->removeCollectedEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 8627
    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    .line 8633
    :cond_3
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 8634
    move-object/from16 v0, p0

    iput v13, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 2505
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v8, v12, 0x1

    .line 2508
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2509
    .local v10, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    and-int v7, p2, v12

    .line 2510
    .local v7, "index":I
    invoke-virtual {v10, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2513
    .local v6, "first":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    move-object v3, v6

    .local v3, "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_6
    if-eqz v3, :cond_9

    .line 2514
    invoke-interface {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 2515
    .local v4, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v12

    move/from16 v0, p2

    if-ne v12, v0, :cond_8

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v12, v12, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->keyEquivalence:Lcom/squareup/haha/guava/base/Equivalence;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v4}, Lcom/squareup/haha/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 2519
    invoke-interface {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v11

    .line 2520
    .local v11, "valueReference":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    invoke-interface {v11}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v5

    .line 2522
    .local v5, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v5, :cond_6

    .line 2523
    move-object/from16 v0, p0

    iget v12, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2524
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->setValue(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V

    .line 2526
    sget-object v12, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v12}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->enqueueNotification$49a52d44(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2527
    move-object/from16 v0, p0

    iget v8, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 2531
    move-object/from16 v0, p0

    iput v8, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2560
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 10069
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2561
    const/4 v5, 0x0

    .end local v4    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v5    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v11    # "valueReference":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :goto_7
    return-object v5

    .line 2533
    .restart local v4    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v5    # "entryValue":Ljava/lang/Object;, "TV;"
    .restart local v11    # "valueReference":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_6
    if-eqz p4, :cond_7

    .line 2537
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->recordLockedRead(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2560
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 11069
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    goto :goto_7

    .line 2541
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2542
    sget-object v12, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->REPLACED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v12}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->enqueueNotification$49a52d44(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2543
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->setValue(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2560
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 12069
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    goto :goto_7

    .line 2513
    .end local v5    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v11    # "valueReference":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_8
    :try_start_3
    invoke-interface {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v3

    goto/16 :goto_6

    .line 2550
    .end local v4    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_9
    move-object/from16 v0, p0

    iget v12, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 12129
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v12, v12, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->entryFactory:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v12, v0, v1, v2, v6}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->newEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v9

    .line 2552
    .local v9, "newEntry":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v9, v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->setValue(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V

    .line 2553
    invoke-virtual {v10, v7, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2554
    invoke-direct/range {p0 .. p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->evictEntries()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 2555
    move-object/from16 v0, p0

    iget v12, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v8, v12, 0x1

    .line 2557
    :cond_a
    move-object/from16 v0, p0

    iput v8, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2560
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 13069
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2561
    const/4 v5, 0x0

    goto :goto_7

    .line 2560
    .end local v3    # "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v6    # "first":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v7    # "index":I
    .end local v8    # "newCount":I
    .end local v9    # "newEntry":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v10    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v12

    invoke-virtual/range {p0 .. p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 14069
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2561
    throw v12

    .restart local v8    # "newCount":I
    :cond_b
    move v12, v13

    goto/16 :goto_1

    :cond_c
    move v14, v15

    move-object/from16 v15, v17

    goto/16 :goto_3
.end method

.method final reclaimKey(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;I)Z
    .locals 9
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    .prologue
    .line 2892
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, "entry":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2894
    :try_start_0
    iget v6, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 2895
    iget-object v5, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2896
    .local v5, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    and-int v2, p2, v6

    .line 2897
    .local v2, "index":I
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2899
    .local v1, "first":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    move-object v0, v1

    .local v0, "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 2900
    if-ne v0, p1, :cond_0

    .line 2901
    iget v6, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2902
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v7

    invoke-interface {v7}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    invoke-direct {p0, v6, v7, v8}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->enqueueNotification$49a52d44(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2904
    invoke-direct {p0, v1, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v4

    .line 2905
    .local v4, "newFirst":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget v6, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v3, v6, -0x1

    .line 2906
    .local v3, "newCount":I
    invoke-virtual {v5, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2907
    iput v3, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2914
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 32069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2915
    const/4 v6, 0x1

    .end local v3    # "newCount":I
    .end local v4    # "newFirst":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_1
    return v6

    .line 2899
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2914
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 33069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2915
    const/4 v6, 0x0

    goto :goto_1

    .line 2914
    .end local v0    # "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v1    # "first":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v2    # "index":I
    .end local v5    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 34069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2915
    throw v6
.end method

.method final reclaimValue(Ljava/lang/Object;ILcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;)Z
    .locals 10
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "valueReference":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    const/4 v8, 0x0

    .line 2923
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2925
    :try_start_0
    iget v9, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 2926
    iget-object v6, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2927
    .local v6, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    and-int v3, p2, v9

    .line 2928
    .local v3, "index":I
    invoke-virtual {v6, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2930
    .local v2, "first":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    move-object v0, v2

    .local v0, "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_4

    .line 2931
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2932
    .local v1, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v9

    if-ne v9, p2, :cond_3

    if-eqz v1, :cond_3

    iget-object v9, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v9, v9, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->keyEquivalence:Lcom/squareup/haha/guava/base/Equivalence;

    invoke-virtual {v9, p1, v1}, Lcom/squareup/haha/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2934
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v7

    .line 2935
    .local v7, "v":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    if-ne v7, p3, :cond_2

    .line 2936
    iget v8, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2937
    invoke-interface {p3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    invoke-direct {p0, p1, v8, v9}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->enqueueNotification$49a52d44(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2938
    invoke-direct {p0, v2, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v5

    .line 2939
    .local v5, "newFirst":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget v8, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v4, v8, -0x1

    .line 2940
    .local v4, "newCount":I
    invoke-virtual {v6, v3, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2941
    iput v4, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2950
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2951
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v8

    if-nez v8, :cond_0

    .line 35069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2952
    :cond_0
    const/4 v8, 0x1

    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v4    # "newCount":I
    .end local v5    # "newFirst":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v7    # "v":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_1
    :goto_1
    return v8

    .line 2950
    .restart local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v7    # "v":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2951
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v9

    if-nez v9, :cond_1

    .line 36069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    goto :goto_1

    .line 2930
    .end local v7    # "v":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_3
    :try_start_1
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2950
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_4
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2951
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v9

    if-nez v9, :cond_1

    .line 37069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    goto :goto_1

    .line 2950
    .end local v0    # "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v2    # "first":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v3    # "index":I
    .end local v6    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2951
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v9

    if-nez v9, :cond_5

    .line 38069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2952
    :cond_5
    throw v8
.end method

.method final remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 12
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    const/4 v10, 0x0

    .line 2733
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->lock()V

    .line 24062
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    .line 2737
    iget v11, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 2738
    iget-object v8, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2739
    .local v8, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    and-int v5, p2, v11

    .line 2740
    .local v5, "index":I
    invoke-virtual {v8, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2742
    .local v4, "first":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    move-object v1, v4

    .local v1, "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v1, :cond_3

    .line 2743
    invoke-interface {v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 2744
    .local v2, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v11

    if-ne v11, p2, :cond_2

    if-eqz v2, :cond_2

    iget-object v11, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v11, v11, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->keyEquivalence:Lcom/squareup/haha/guava/base/Equivalence;

    invoke-virtual {v11, p1, v2}, Lcom/squareup/haha/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2746
    invoke-interface {v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v9

    .line 2747
    .local v9, "valueReference":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    invoke-interface {v9}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 2750
    .local v3, "entryValue":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_0

    .line 2751
    sget-object v0, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->EXPLICIT:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    .line 2758
    .local v0, "cause":Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;
    :goto_1
    iget v10, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2759
    invoke-direct {p0, v2, v3, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->enqueueNotification$49a52d44(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2760
    invoke-direct {p0, v4, v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v7

    .line 2761
    .local v7, "newFirst":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget v10, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v6, v10, -0x1

    .line 2762
    .local v6, "newCount":I
    invoke-virtual {v8, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2763
    iput v6, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2770
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 25069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2771
    .end local v0    # "cause":Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;
    .end local v2    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v3    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v6    # "newCount":I
    .end local v7    # "newFirst":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v9    # "valueReference":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :goto_2
    return-object v3

    .line 2752
    .restart local v2    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v3    # "entryValue":Ljava/lang/Object;, "TV;"
    .restart local v9    # "valueReference":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_0
    :try_start_1
    invoke-static {v9}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2753
    sget-object v0, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "cause":Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;
    goto :goto_1

    .line 2770
    .end local v0    # "cause":Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 24069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    move-object v3, v10

    .line 2771
    goto :goto_2

    .line 2742
    .end local v3    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v9    # "valueReference":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_2
    :try_start_2
    invoke-interface {v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 2770
    .end local v2    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_3
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 26069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    move-object v3, v10

    .line 2771
    goto :goto_2

    .line 2770
    .end local v1    # "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v4    # "first":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v5    # "index":I
    .end local v8    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v10

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 27069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2771
    throw v10
.end method

.method final remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 12
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    const/4 v10, 0x0

    .line 2776
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->lock()V

    .line 28062
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    .line 2780
    iget v11, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 2781
    iget-object v8, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2782
    .local v8, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    and-int v5, p2, v11

    .line 2783
    .local v5, "index":I
    invoke-virtual {v8, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2785
    .local v4, "first":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    move-object v1, v4

    .local v1, "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v1, :cond_4

    .line 2786
    invoke-interface {v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 2787
    .local v2, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v11

    if-ne v11, p2, :cond_3

    if-eqz v2, :cond_3

    iget-object v11, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v11, v11, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->keyEquivalence:Lcom/squareup/haha/guava/base/Equivalence;

    invoke-virtual {v11, p1, v2}, Lcom/squareup/haha/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2789
    invoke-interface {v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v9

    .line 2790
    .local v9, "valueReference":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    invoke-interface {v9}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 2793
    .local v3, "entryValue":Ljava/lang/Object;, "TV;"
    iget-object v11, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v11, v11, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->valueEquivalence:Lcom/squareup/haha/guava/base/Equivalence;

    invoke-virtual {v11, p3, v3}, Lcom/squareup/haha/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2794
    sget-object v0, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->EXPLICIT:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    .line 2801
    .local v0, "cause":Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;
    :goto_1
    iget v11, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2802
    invoke-direct {p0, v2, v3, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->enqueueNotification$49a52d44(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2803
    invoke-direct {p0, v4, v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v7

    .line 2804
    .local v7, "newFirst":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget v11, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v6, v11, -0x1

    .line 2805
    .local v6, "newCount":I
    invoke-virtual {v8, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2806
    iput v6, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 2807
    sget-object v11, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->EXPLICIT:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v11, :cond_0

    const/4 v10, 0x1

    .line 2813
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 29069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2814
    .end local v0    # "cause":Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;
    .end local v2    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v3    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v6    # "newCount":I
    .end local v7    # "newFirst":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v9    # "valueReference":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :goto_2
    return v10

    .line 2795
    .restart local v2    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v3    # "entryValue":Ljava/lang/Object;, "TV;"
    .restart local v9    # "valueReference":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_1
    :try_start_1
    invoke-static {v9}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2796
    sget-object v0, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "cause":Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;
    goto :goto_1

    .line 2813
    .end local v0    # "cause":Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;
    :cond_2
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 28069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    goto :goto_2

    .line 2785
    .end local v3    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v9    # "valueReference":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_3
    :try_start_2
    invoke-interface {v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 2813
    .end local v2    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_4
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 30069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    goto :goto_2

    .line 2813
    .end local v1    # "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v4    # "first":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v5    # "index":I
    .end local v8    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v10

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 31069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2814
    throw v10
.end method

.method final replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    const/4 v9, 0x0

    .line 2689
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->lock()V

    .line 20062
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    .line 2693
    iget-object v7, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2694
    .local v7, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    and-int v4, p2, v10

    .line 2695
    .local v4, "index":I
    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2697
    .local v3, "first":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    move-object v0, v3

    .local v0, "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_3

    .line 2698
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2699
    .local v1, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v10

    if-ne v10, p2, :cond_2

    if-eqz v1, :cond_2

    iget-object v10, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v10, v10, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->keyEquivalence:Lcom/squareup/haha/guava/base/Equivalence;

    invoke-virtual {v10, p1, v1}, Lcom/squareup/haha/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2703
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v8

    .line 2704
    .local v8, "valueReference":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    invoke-interface {v8}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2705
    .local v2, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_1

    .line 2706
    invoke-static {v8}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2707
    iget v10, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 2708
    iget v10, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2709
    sget-object v10, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    invoke-direct {p0, v1, v2, v10}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->enqueueNotification$49a52d44(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2710
    invoke-direct {p0, v3, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v6

    .line 2711
    .local v6, "newFirst":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget v10, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v5, v10, -0x1

    .line 2712
    .local v5, "newCount":I
    invoke-virtual {v7, v4, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2713
    iput v5, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2727
    .end local v5    # "newCount":I
    .end local v6    # "newFirst":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 20069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    move-object v2, v9

    .line 2728
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v8    # "valueReference":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :goto_1
    return-object v2

    .line 2718
    .restart local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    .restart local v8    # "valueReference":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_1
    :try_start_1
    iget v9, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2719
    sget-object v9, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->REPLACED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    invoke-direct {p0, p1, v2, v9}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->enqueueNotification$49a52d44(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2720
    invoke-direct {p0, v0, p3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->setValue(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2727
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 21069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    goto :goto_1

    .line 2697
    .end local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v8    # "valueReference":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_2
    :try_start_2
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2727
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_3
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 22069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    move-object v2, v9

    .line 2728
    goto :goto_1

    .line 2727
    .end local v0    # "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v3    # "first":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v4    # "index":I
    .end local v7    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v9

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 23069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2728
    throw v9
.end method

.method final replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 11
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    const/4 v9, 0x0

    .line 2638
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->lock()V

    .line 15062
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    .line 2642
    iget-object v7, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2643
    .local v7, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    and-int v4, p2, v10

    .line 2644
    .local v4, "index":I
    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2646
    .local v3, "first":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    move-object v0, v3

    .local v0, "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_4

    .line 2647
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2648
    .local v1, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v10

    if-ne v10, p2, :cond_3

    if-eqz v1, :cond_3

    iget-object v10, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v10, v10, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->keyEquivalence:Lcom/squareup/haha/guava/base/Equivalence;

    invoke-virtual {v10, p1, v1}, Lcom/squareup/haha/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2652
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v8

    .line 2653
    .local v8, "valueReference":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    invoke-interface {v8}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2654
    .local v2, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_1

    .line 2655
    invoke-static {v8}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2656
    iget v10, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 2657
    iget v10, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2658
    sget-object v10, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    invoke-direct {p0, v1, v2, v10}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->enqueueNotification$49a52d44(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2659
    invoke-direct {p0, v3, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v6

    .line 2660
    .local v6, "newFirst":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget v10, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v5, v10, -0x1

    .line 2661
    .local v5, "newCount":I
    invoke-virtual {v7, v4, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2662
    iput v5, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2683
    .end local v5    # "newCount":I
    .end local v6    # "newFirst":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 15069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2684
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v8    # "valueReference":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :goto_1
    return v9

    .line 2667
    .restart local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    .restart local v8    # "valueReference":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v10, v10, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->valueEquivalence:Lcom/squareup/haha/guava/base/Equivalence;

    invoke-virtual {v10, p3, v2}, Lcom/squareup/haha/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2668
    iget v9, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2669
    sget-object v9, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->REPLACED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    invoke-direct {p0, p1, v2, v9}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->enqueueNotification$49a52d44(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2670
    invoke-direct {p0, v0, p4}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->setValue(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2683
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 16069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2684
    const/4 v9, 0x1

    goto :goto_1

    .line 2675
    :cond_2
    :try_start_2
    invoke-direct {p0, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->recordLockedRead(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2683
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 17069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    goto :goto_1

    .line 2646
    .end local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v8    # "valueReference":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_3
    :try_start_3
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2683
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_4
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 18069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    goto :goto_1

    .line 2683
    .end local v0    # "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v3    # "first":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v4    # "index":I
    .end local v7    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v9

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 19069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2684
    throw v9
.end method

.method final runUnlockedCleanup()V
    .locals 2

    .prologue
    .line 3091
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3092
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    .line 38949
    :cond_0
    iget-object v0, v1, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/MapMaker$RemovalNotification;

    if-nez v0, :cond_0

    .line 3094
    :cond_1
    return-void
.end method

.method final tryDrainReferenceQueues()V
    .locals 1

    .prologue
    .line 2171
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2173
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->drainReferenceQueues()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2175
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2178
    :cond_0
    return-void

    .line 2175
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v0
.end method

.method final tryExpireEntries()V
    .locals 1

    .prologue
    .line 2328
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2330
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->expireEntries()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2332
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2336
    :cond_0
    return-void

    .line 2332
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v0
.end method
