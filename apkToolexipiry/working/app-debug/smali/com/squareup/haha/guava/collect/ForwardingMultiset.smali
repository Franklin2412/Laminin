.class public abstract Lcom/squareup/haha/guava/collect/ForwardingMultiset;
.super Lcom/squareup/haha/guava/collect/ForwardingCollection;
.source "ForwardingMultiset.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/Multiset;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/ForwardingCollection",
        "<TE;>;",
        "Lcom/squareup/haha/guava/collect/Multiset",
        "<TE;>;"
    }
.end annotation


# virtual methods
.method public final add(Ljava/lang/Object;I)I
    .locals 1
    .param p2, "occurrences"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMultiset;, "Lcom/squareup/haha/guava/collect/ForwardingMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultiset;->delegate()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/squareup/haha/guava/collect/Multiset;->add(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final count(Ljava/lang/Object;)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 62
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMultiset;, "Lcom/squareup/haha/guava/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultiset;->delegate()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/squareup/haha/guava/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected abstract delegate()Lcom/squareup/haha/guava/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/Multiset",
            "<TE;>;"
        }
    .end annotation
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMultiset;, "Lcom/squareup/haha/guava/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultiset;->delegate()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMultiset;, "Lcom/squareup/haha/guava/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultiset;->delegate()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public final elementSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMultiset;, "Lcom/squareup/haha/guava/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultiset;->delegate()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/squareup/haha/guava/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMultiset;, "Lcom/squareup/haha/guava/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultiset;->delegate()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 86
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMultiset;, "Lcom/squareup/haha/guava/collect/ForwardingMultiset<TE;>;"
    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultiset;->delegate()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/squareup/haha/guava/collect/Multiset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMultiset;, "Lcom/squareup/haha/guava/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultiset;->delegate()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset;->hashCode()I

    move-result v0

    return v0
.end method

.method public final remove(Ljava/lang/Object;I)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "occurrences"    # I

    .prologue
    .line 72
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMultiset;, "Lcom/squareup/haha/guava/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultiset;->delegate()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/squareup/haha/guava/collect/Multiset;->remove(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final setCount(Ljava/lang/Object;I)I
    .locals 1
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMultiset;, "Lcom/squareup/haha/guava/collect/ForwardingMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultiset;->delegate()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/squareup/haha/guava/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final setCount(Ljava/lang/Object;II)Z
    .locals 1
    .param p2, "oldCount"    # I
    .param p3, "newCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMultiset;, "Lcom/squareup/haha/guava/collect/ForwardingMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultiset;->delegate()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/squareup/haha/guava/collect/Multiset;->setCount(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method
