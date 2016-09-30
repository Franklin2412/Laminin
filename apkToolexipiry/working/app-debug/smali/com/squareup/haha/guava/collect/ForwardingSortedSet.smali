.class public abstract Lcom/squareup/haha/guava/collect/ForwardingSortedSet;
.super Lcom/squareup/haha/guava/collect/ForwardingSet;
.source "ForwardingSortedSet.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/ForwardingSet",
        "<TE;>;",
        "Ljava/util/SortedSet",
        "<TE;>;"
    }
.end annotation


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingSortedSet;, "Lcom/squareup/haha/guava/collect/ForwardingSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingSortedSet;, "Lcom/squareup/haha/guava/collect/ForwardingSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingSortedSet;, "Lcom/squareup/haha/guava/collect/ForwardingSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Set;
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingSortedSet;, "Lcom/squareup/haha/guava/collect/ForwardingSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingSortedSet;, "Lcom/squareup/haha/guava/collect/ForwardingSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingSortedSet;, "Lcom/squareup/haha/guava/collect/ForwardingSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingSortedSet;, "Lcom/squareup/haha/guava/collect/ForwardingSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingSortedSet;, "Lcom/squareup/haha/guava/collect/ForwardingSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingSortedSet;, "Lcom/squareup/haha/guava/collect/ForwardingSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method
