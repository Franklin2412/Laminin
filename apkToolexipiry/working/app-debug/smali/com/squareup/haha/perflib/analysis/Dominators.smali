.class public Lcom/squareup/haha/perflib/analysis/Dominators;
.super Ljava/lang/Object;
.source "Dominators.java"


# instance fields
.field private final mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

.field private final mTopSort:Lcom/squareup/haha/guava/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/ImmutableList",
            "<",
            "Lcom/squareup/haha/perflib/Instance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/squareup/haha/perflib/Snapshot;Lcom/squareup/haha/guava/collect/ImmutableList;)V
    .locals 4
    .param p1, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/perflib/Snapshot;",
            "Lcom/squareup/haha/guava/collect/ImmutableList",
            "<",
            "Lcom/squareup/haha/perflib/Instance;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "topSort":Lcom/squareup/haha/guava/collect/ImmutableList;, "Lcom/squareup/haha/guava/collect/ImmutableList<Lcom/squareup/haha/perflib/Instance;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/squareup/haha/perflib/analysis/Dominators;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    .line 47
    iput-object p2, p0, Lcom/squareup/haha/perflib/analysis/Dominators;->mTopSort:Lcom/squareup/haha/guava/collect/ImmutableList;

    .line 52
    invoke-virtual {p1}, Lcom/squareup/haha/perflib/Snapshot;->getGCRoots()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/haha/perflib/RootObj;

    .line 53
    .local v2, "root":Lcom/squareup/haha/perflib/RootObj;
    invoke-virtual {v2}, Lcom/squareup/haha/perflib/RootObj;->getReferredInstance()Lcom/squareup/haha/perflib/Instance;

    move-result-object v1

    .line 54
    .local v1, "ref":Lcom/squareup/haha/perflib/Instance;
    if-eqz v1, :cond_0

    .line 55
    sget-object v3, Lcom/squareup/haha/perflib/Snapshot;->SENTINEL_ROOT:Lcom/squareup/haha/perflib/Instance;

    invoke-virtual {v1, v3}, Lcom/squareup/haha/perflib/Instance;->setImmediateDominator(Lcom/squareup/haha/perflib/Instance;)V

    goto :goto_0

    .line 58
    .end local v1    # "ref":Lcom/squareup/haha/perflib/Instance;
    .end local v2    # "root":Lcom/squareup/haha/perflib/RootObj;
    :cond_1
    return-void
.end method

.method private computeDominators()V
    .locals 10

    .prologue
    .line 63
    const/4 v0, 0x1

    .line 64
    .local v0, "changed":Z
    :cond_0
    if-eqz v0, :cond_7

    .line 65
    const/4 v0, 0x0

    .line 67
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v8, p0, Lcom/squareup/haha/perflib/analysis/Dominators;->mTopSort:Lcom/squareup/haha/guava/collect/ImmutableList;

    invoke-virtual {v8}, Lcom/squareup/haha/guava/collect/ImmutableList;->size()I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 68
    iget-object v8, p0, Lcom/squareup/haha/perflib/analysis/Dominators;->mTopSort:Lcom/squareup/haha/guava/collect/ImmutableList;

    invoke-virtual {v8, v4}, Lcom/squareup/haha/guava/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/haha/perflib/Instance;

    .line 70
    .local v6, "node":Lcom/squareup/haha/perflib/Instance;
    invoke-virtual {v6}, Lcom/squareup/haha/perflib/Instance;->getImmediateDominator()Lcom/squareup/haha/perflib/Instance;

    move-result-object v8

    sget-object v9, Lcom/squareup/haha/perflib/Snapshot;->SENTINEL_ROOT:Lcom/squareup/haha/perflib/Instance;

    if-eq v8, v9, :cond_6

    .line 71
    const/4 v1, 0x0

    .line 73
    .local v1, "dominator":Lcom/squareup/haha/perflib/Instance;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {v6}, Lcom/squareup/haha/perflib/Instance;->getHardReferences()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_5

    .line 74
    invoke-virtual {v6}, Lcom/squareup/haha/perflib/Instance;->getHardReferences()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/squareup/haha/perflib/Instance;

    .line 75
    .local v7, "predecessor":Lcom/squareup/haha/perflib/Instance;
    invoke-virtual {v7}, Lcom/squareup/haha/perflib/Instance;->getImmediateDominator()Lcom/squareup/haha/perflib/Instance;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 79
    if-nez v1, :cond_2

    .line 80
    move-object v1, v7

    .line 73
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 82
    :cond_2
    move-object v2, v1

    .line 83
    .local v2, "fingerA":Lcom/squareup/haha/perflib/Instance;
    move-object v3, v7

    .line 84
    .local v3, "fingerB":Lcom/squareup/haha/perflib/Instance;
    :goto_3
    if-eq v2, v3, :cond_4

    .line 85
    invoke-virtual {v2}, Lcom/squareup/haha/perflib/Instance;->getTopologicalOrder()I

    move-result v8

    invoke-virtual {v3}, Lcom/squareup/haha/perflib/Instance;->getTopologicalOrder()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 86
    invoke-virtual {v3}, Lcom/squareup/haha/perflib/Instance;->getImmediateDominator()Lcom/squareup/haha/perflib/Instance;

    move-result-object v3

    goto :goto_3

    .line 88
    :cond_3
    invoke-virtual {v2}, Lcom/squareup/haha/perflib/Instance;->getImmediateDominator()Lcom/squareup/haha/perflib/Instance;

    move-result-object v2

    goto :goto_3

    .line 91
    :cond_4
    move-object v1, v2

    goto :goto_2

    .line 95
    .end local v2    # "fingerA":Lcom/squareup/haha/perflib/Instance;
    .end local v3    # "fingerB":Lcom/squareup/haha/perflib/Instance;
    .end local v7    # "predecessor":Lcom/squareup/haha/perflib/Instance;
    :cond_5
    invoke-virtual {v6}, Lcom/squareup/haha/perflib/Instance;->getImmediateDominator()Lcom/squareup/haha/perflib/Instance;

    move-result-object v8

    if-eq v8, v1, :cond_6

    .line 96
    invoke-virtual {v6, v1}, Lcom/squareup/haha/perflib/Instance;->setImmediateDominator(Lcom/squareup/haha/perflib/Instance;)V

    .line 97
    const/4 v0, 0x1

    .line 67
    .end local v1    # "dominator":Lcom/squareup/haha/perflib/Instance;
    .end local v5    # "j":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 102
    .end local v4    # "i":I
    .end local v6    # "node":Lcom/squareup/haha/perflib/Instance;
    :cond_7
    return-void
.end method


# virtual methods
.method public computeRetainedSizes()V
    .locals 10

    .prologue
    .line 109
    iget-object v7, p0, Lcom/squareup/haha/perflib/analysis/Dominators;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v7}, Lcom/squareup/haha/perflib/Snapshot;->getHeaps()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/haha/perflib/Heap;

    .line 110
    .local v1, "heap":Lcom/squareup/haha/perflib/Heap;
    invoke-virtual {v1}, Lcom/squareup/haha/perflib/Heap;->getClasses()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/Heap;->getInstances()Ljava/util/Collection;

    move-result-object v8

    .line 1435
    invoke-static {v7, v8}, Lcom/squareup/haha/guava/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableList;

    move-result-object v7

    .line 1494
    invoke-static {v7}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    new-instance v8, Lcom/squareup/haha/guava/collect/Iterables$2;

    invoke-direct {v8, v7}, Lcom/squareup/haha/guava/collect/Iterables$2;-><init>(Ljava/lang/Iterable;)V

    .line 110
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/haha/perflib/Instance;

    .line 111
    .local v5, "instance":Lcom/squareup/haha/perflib/Instance;
    invoke-virtual {v5}, Lcom/squareup/haha/perflib/Instance;->resetRetainedSize()V

    goto :goto_0

    .line 114
    .end local v1    # "heap":Lcom/squareup/haha/perflib/Heap;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "instance":Lcom/squareup/haha/perflib/Instance;
    :cond_1
    invoke-direct {p0}, Lcom/squareup/haha/perflib/analysis/Dominators;->computeDominators()V

    .line 116
    iget-object v7, p0, Lcom/squareup/haha/perflib/analysis/Dominators;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v7}, Lcom/squareup/haha/perflib/Snapshot;->getReachableInstances()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/haha/perflib/Instance;

    .line 117
    .local v6, "node":Lcom/squareup/haha/perflib/Instance;
    iget-object v7, p0, Lcom/squareup/haha/perflib/analysis/Dominators;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v6}, Lcom/squareup/haha/perflib/Instance;->getHeap()Lcom/squareup/haha/perflib/Heap;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/squareup/haha/perflib/Snapshot;->getHeapIndex(Lcom/squareup/haha/perflib/Heap;)I

    move-result v2

    .line 120
    .local v2, "heapIndex":I
    invoke-virtual {v6}, Lcom/squareup/haha/perflib/Instance;->getImmediateDominator()Lcom/squareup/haha/perflib/Instance;

    move-result-object v0

    .local v0, "dom":Lcom/squareup/haha/perflib/Instance;
    :goto_1
    sget-object v7, Lcom/squareup/haha/perflib/Snapshot;->SENTINEL_ROOT:Lcom/squareup/haha/perflib/Instance;

    if-eq v0, v7, :cond_2

    .line 122
    invoke-virtual {v6}, Lcom/squareup/haha/perflib/Instance;->getSize()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v0, v2, v8, v9}, Lcom/squareup/haha/perflib/Instance;->addRetainedSize(IJ)V

    .line 121
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/Instance;->getImmediateDominator()Lcom/squareup/haha/perflib/Instance;

    move-result-object v0

    goto :goto_1

    .line 125
    .end local v0    # "dom":Lcom/squareup/haha/perflib/Instance;
    .end local v2    # "heapIndex":I
    .end local v6    # "node":Lcom/squareup/haha/perflib/Instance;
    :cond_3
    return-void
.end method
