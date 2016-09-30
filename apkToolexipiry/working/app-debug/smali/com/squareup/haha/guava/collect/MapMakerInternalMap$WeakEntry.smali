.class Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;
.super Ljava/lang/ref/WeakReference;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WeakEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TK;>;",
        "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private hash:I

.field private next:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile valueReference:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1
    .param p3, "hash"    # I
    .param p4    # Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;TK;I",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1430
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1498
    invoke-static {}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->unset()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;->valueReference:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    .line 1431
    iput p3, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;->hash:I

    .line 1432
    iput-object p4, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;->next:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1433
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 1

    .prologue
    .line 1444
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getHash()I
    .locals 1

    .prologue
    .line 1514
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry<TK;TV;>;"
    iget v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;->hash:I

    return v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1437
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1519
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;->next:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public getNextEvictable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1476
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNextExpirable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1454
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousEvictable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1486
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousExpirable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1464
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1502
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;->valueReference:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1449
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextEvictable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1481
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry<TK;TV;>;"
    .local p1, "next":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextExpirable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1459
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry<TK;TV;>;"
    .local p1, "next":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousEvictable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1491
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry<TK;TV;>;"
    .local p1, "previous":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousExpirable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1469
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry<TK;TV;>;"
    .local p1, "previous":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setValueReference(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1507
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry<TK;TV;>;"
    .local p1, "valueReference":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;->valueReference:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    .line 1508
    .local v0, "previous":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;->valueReference:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    .line 1509
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->clear$5ca9f1d3()V

    .line 1510
    return-void
.end method
