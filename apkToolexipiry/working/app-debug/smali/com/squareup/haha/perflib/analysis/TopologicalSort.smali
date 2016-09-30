.class public Lcom/squareup/haha/perflib/analysis/TopologicalSort;
.super Ljava/lang/Object;
.source "TopologicalSort.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/haha/perflib/analysis/TopologicalSort$1;,
        Lcom/squareup/haha/perflib/analysis/TopologicalSort$TopologicalSortVisitor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static compute(Ljava/lang/Iterable;)Lcom/squareup/haha/guava/collect/ImmutableList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/squareup/haha/perflib/RootObj;",
            ">;)",
            "Lcom/squareup/haha/guava/collect/ImmutableList",
            "<",
            "Lcom/squareup/haha/perflib/Instance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "roots":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/squareup/haha/perflib/RootObj;>;"
    new-instance v4, Lcom/squareup/haha/perflib/analysis/TopologicalSort$TopologicalSortVisitor;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/squareup/haha/perflib/analysis/TopologicalSort$TopologicalSortVisitor;-><init>(Lcom/squareup/haha/perflib/analysis/TopologicalSort$1;)V

    .line 36
    .local v4, "visitor":Lcom/squareup/haha/perflib/analysis/TopologicalSort$TopologicalSortVisitor;
    invoke-virtual {v4, p0}, Lcom/squareup/haha/perflib/analysis/TopologicalSort$TopologicalSortVisitor;->doVisit(Ljava/lang/Iterable;)V

    .line 37
    invoke-virtual {v4}, Lcom/squareup/haha/perflib/analysis/TopologicalSort$TopologicalSortVisitor;->getOrderedInstances()Lcom/squareup/haha/guava/collect/ImmutableList;

    move-result-object v2

    .line 41
    .local v2, "instances":Lcom/squareup/haha/guava/collect/ImmutableList;, "Lcom/squareup/haha/guava/collect/ImmutableList<Lcom/squareup/haha/perflib/Instance;>;"
    sget-object v5, Lcom/squareup/haha/perflib/Snapshot;->SENTINEL_ROOT:Lcom/squareup/haha/perflib/Instance;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/squareup/haha/perflib/Instance;->setTopologicalOrder(I)V

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "currentIndex":I
    invoke-virtual {v2}, Lcom/squareup/haha/guava/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/haha/perflib/Instance;

    .line 47
    .local v3, "node":Lcom/squareup/haha/perflib/Instance;
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Lcom/squareup/haha/perflib/Instance;->setTopologicalOrder(I)V

    goto :goto_0

    .line 50
    .end local v3    # "node":Lcom/squareup/haha/perflib/Instance;
    :cond_0
    return-object v2
.end method
