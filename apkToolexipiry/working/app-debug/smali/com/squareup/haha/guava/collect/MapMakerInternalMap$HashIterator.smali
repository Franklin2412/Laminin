.class abstract Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "HashIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private currentSegment:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private lastReturned:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap",
            "<TK;TV;>.com/squareup/haha/guava/collect/MapMakerInternalMap$com/squareup/haha/guava/collect/MapMakerInternalMap$WriteThroughEntry;"
        }
    .end annotation
.end field

.field private nextEntry:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private nextExternal:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap",
            "<TK;TV;>.com/squareup/haha/guava/collect/MapMakerInternalMap$com/squareup/haha/guava/collect/MapMakerInternalMap$WriteThroughEntry;"
        }
    .end annotation
.end field

.field private nextSegmentIndex:I

.field private nextTableIndex:I

.field private synthetic this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/MapMakerInternalMap;)V
    .locals 1

    .prologue
    .line 3600
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>.HashIterator<TE;>;"
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3601
    iget-object v0, p1, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->segments:[Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->nextSegmentIndex:I

    .line 3602
    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->nextTableIndex:I

    .line 3603
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->advance()V

    .line 3604
    return-void
.end method

.method private advance()V
    .locals 3

    .prologue
    .line 3610
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>.HashIterator<TE;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->nextExternal:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WriteThroughEntry;

    .line 3612
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->nextInChain()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3630
    :cond_0
    :goto_0
    return-void

    .line 3616
    :cond_1
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->nextInTable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3620
    :cond_2
    iget v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->nextSegmentIndex:I

    if-ltz v0, :cond_0

    .line 3621
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->segments:[Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;

    iget v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->nextSegmentIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->nextSegmentIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->currentSegment:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;

    .line 3622
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->currentSegment:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;

    iget v0, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_2

    .line 3623
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->currentSegment:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;

    iget-object v0, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3624
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->nextTableIndex:I

    .line 3625
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->nextInTable()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method private advanceTo(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>.HashIterator<TE;>;"
    .local p1, "entry":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    const/4 v1, 0x0

    .line 3666
    :try_start_0
    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 3667
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    .line 3896
    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3668
    .local v1, "value":Ljava/lang/Object;, "TV;"
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 3669
    new-instance v2, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WriteThroughEntry;

    iget-object v3, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-direct {v2, v3, v0, v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WriteThroughEntry;-><init>(Lcom/squareup/haha/guava/collect/MapMakerInternalMap;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->nextExternal:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WriteThroughEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3676
    iget-object v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->currentSegment:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 3899
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v2

    invoke-interface {v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 3900
    if-eqz v2, :cond_0

    .line 3904
    invoke-virtual {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->expires()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->isExpired(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move-object v1, v2

    .line 3907
    goto :goto_0

    .line 3676
    .restart local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_3
    iget-object v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->currentSegment:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    const/4 v2, 0x0

    goto :goto_1

    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->currentSegment:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    throw v2
.end method

.method private nextInChain()Z
    .locals 1

    .prologue
    .line 3636
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>.HashIterator<TE;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    if-eqz v0, :cond_1

    .line 3637
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    :goto_0
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    if-eqz v0, :cond_1

    .line 3638
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-direct {p0, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->advanceTo(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3639
    const/4 v0, 0x1

    .line 3643
    :goto_1
    return v0

    .line 3637
    :cond_0
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    goto :goto_0

    .line 3643
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private nextInTable()Z
    .locals 3

    .prologue
    .line 3650
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>.HashIterator<TE;>;"
    :cond_0
    iget v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->nextTableIndex:I

    if-ltz v0, :cond_2

    .line 3651
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->nextTableIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->nextTableIndex:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    if-eqz v0, :cond_0

    .line 3652
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-direct {p0, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->advanceTo(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->nextInChain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3653
    :cond_1
    const/4 v0, 0x1

    .line 3657
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 3682
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>.HashIterator<TE;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->nextExternal:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WriteThroughEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final nextEntry()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WriteThroughEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap",
            "<TK;TV;>.com/squareup/haha/guava/collect/MapMakerInternalMap$WriteThroughEntry;"
        }
    .end annotation

    .prologue
    .line 3686
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>.HashIterator<TE;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->nextExternal:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WriteThroughEntry;

    if-nez v0, :cond_0

    .line 3687
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 3689
    :cond_0
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->nextExternal:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WriteThroughEntry;

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->lastReturned:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WriteThroughEntry;

    .line 3690
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->advance()V

    .line 3691
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->lastReturned:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WriteThroughEntry;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 3696
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>.HashIterator<TE;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->lastReturned:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WriteThroughEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/squareup/haha/guava/base/Ascii;->checkRemove(Z)V

    .line 3697
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->lastReturned:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WriteThroughEntry;

    invoke-virtual {v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3698
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;->lastReturned:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WriteThroughEntry;

    .line 3699
    return-void

    .line 3696
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
