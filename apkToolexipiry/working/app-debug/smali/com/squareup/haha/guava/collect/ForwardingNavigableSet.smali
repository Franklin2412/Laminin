.class public abstract Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;
.super Lcom/squareup/haha/guava/collect/ForwardingSortedSet;
.source "ForwardingNavigableSet.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/ForwardingSortedSet",
        "<TE;>;",
        "Ljava/util/NavigableSet",
        "<TE;>;"
    }
.end annotation


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;, "Lcom/squareup/haha/guava/collect/ForwardingNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;, "Lcom/squareup/haha/guava/collect/ForwardingNavigableSet<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;, "Lcom/squareup/haha/guava/collect/ForwardingNavigableSet<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation
.end method

.method protected final bridge synthetic delegate()Ljava/util/Set;
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;, "Lcom/squareup/haha/guava/collect/ForwardingNavigableSet<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;, "Lcom/squareup/haha/guava/collect/ForwardingNavigableSet<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;, "Lcom/squareup/haha/guava/collect/ForwardingNavigableSet<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;, "Lcom/squareup/haha/guava/collect/ForwardingNavigableSet<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;, "Lcom/squareup/haha/guava/collect/ForwardingNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;, "Lcom/squareup/haha/guava/collect/ForwardingNavigableSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;, "Lcom/squareup/haha/guava/collect/ForwardingNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;, "Lcom/squareup/haha/guava/collect/ForwardingNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;, "Lcom/squareup/haha/guava/collect/ForwardingNavigableSet<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;, "Lcom/squareup/haha/guava/collect/ForwardingNavigableSet<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->pollLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;, "Lcom/squareup/haha/guava/collect/ForwardingNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;, "Lcom/squareup/haha/guava/collect/ForwardingNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method
