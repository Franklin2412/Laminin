.class final Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;
.super Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakExpirableEvictableEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry",
        "<TK;TV;>;",
        "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private nextEvictable:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field private nextExpirable:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field private previousEvictable:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field private previousExpirable:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field private volatile time:J


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 2
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
    .line 1611
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1616
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->time:J

    .line 1628
    invoke-static {}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->nullEntry()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->nextExpirable:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1641
    invoke-static {}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->nullEntry()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->previousExpirable:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1656
    invoke-static {}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->nullEntry()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->nextEvictable:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1669
    invoke-static {}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->nullEntry()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->previousEvictable:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1612
    return-void
.end method


# virtual methods
.method public final getExpirationTime()J
    .locals 2

    .prologue
    .line 1620
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry<TK;TV;>;"
    iget-wide v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->time:J

    return-wide v0
.end method

.method public final getNextEvictable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1661
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->nextEvictable:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public final getNextExpirable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1633
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->nextExpirable:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public final getPreviousEvictable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1674
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->previousEvictable:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public final getPreviousExpirable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1646
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->previousExpirable:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public final setExpirationTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1625
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry<TK;TV;>;"
    iput-wide p1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->time:J

    .line 1626
    return-void
.end method

.method public final setNextEvictable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1666
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry<TK;TV;>;"
    .local p1, "next":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->nextEvictable:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1667
    return-void
.end method

.method public final setNextExpirable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1638
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry<TK;TV;>;"
    .local p1, "next":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->nextExpirable:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1639
    return-void
.end method

.method public final setPreviousEvictable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1679
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry<TK;TV;>;"
    .local p1, "previous":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->previousEvictable:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1680
    return-void
.end method

.method public final setPreviousExpirable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1651
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry<TK;TV;>;"
    .local p1, "previous":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->previousExpirable:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1652
    return-void
.end method
