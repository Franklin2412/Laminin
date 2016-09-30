.class abstract Lcom/squareup/haha/guava/collect/AbstractMultiset;
.super Ljava/util/AbstractCollection;
.source "AbstractMultiset.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/Multiset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/haha/guava/collect/AbstractMultiset$EntrySet;,
        Lcom/squareup/haha/guava/collect/AbstractMultiset$ElementSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Lcom/squareup/haha/guava/collect/Multiset",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private transient elementSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/squareup/haha/guava/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation
.end field


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "occurrences"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    .line 80
    invoke-virtual {p0, p1, v0}, Lcom/squareup/haha/guava/collect/AbstractMultiset;->add(Ljava/lang/Object;I)I

    .line 81
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMultiset<TE;>;"
    .local p1, "elementsToAdd":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-static {p0, p1}, Lcom/squareup/haha/guava/collect/Multisets;->addAllImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 129
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultiset;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/haha/guava/collect/Iterators;->clear(Ljava/util/Iterator;)V

    .line 130
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 60
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMultiset<TE;>;"
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 3
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 69
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    .line 70
    .local v0, "entry":Lcom/squareup/haha/guava/collect/Multiset$Entry;, "Lcom/squareup/haha/guava/collect/Multiset$Entry<TE;>;"
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/squareup/haha/guava/base/Ascii;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v2

    .line 74
    .end local v0    # "entry":Lcom/squareup/haha/guava/collect/Multiset$Entry;, "Lcom/squareup/haha/guava/collect/Multiset$Entry<TE;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method abstract distinctElements()I
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
    .line 138
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMultiset<TE;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultiset;->elementSet:Ljava/util/Set;

    .line 139
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    if-nez v0, :cond_0

    .line 1150
    new-instance v0, Lcom/squareup/haha/guava/collect/AbstractMultiset$ElementSet;

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/AbstractMultiset$ElementSet;-><init>(Lcom/squareup/haha/guava/collect/AbstractMultiset;)V

    .line 140
    .restart local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    iput-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultiset;->elementSet:Ljava/util/Set;

    .line 142
    :cond_0
    return-object v0
.end method

.method abstract entryIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/squareup/haha/guava/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation
.end method

.method public entrySet()Ljava/util/Set;
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
    .line 167
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMultiset<TE;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultiset;->entrySet:Ljava/util/Set;

    .line 168
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/haha/guava/collect/Multiset$Entry<TE;>;>;"
    if-nez v0, :cond_0

    .line 1186
    new-instance v0, Lcom/squareup/haha/guava/collect/AbstractMultiset$EntrySet;

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/haha/guava/collect/Multiset$Entry<TE;>;>;"
    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/AbstractMultiset$EntrySet;-><init>(Lcom/squareup/haha/guava/collect/AbstractMultiset;)V

    .line 168
    iput-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultiset;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 199
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMultiset<TE;>;"
    invoke-static {p0, p1}, Lcom/squareup/haha/guava/collect/Multisets;->equalsImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 209
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMultiset<TE;>;"
    invoke-static {p0}, Lcom/squareup/haha/guava/collect/Multisets;->iteratorImpl(Lcom/squareup/haha/guava/collect/Multiset;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "occurrences"    # I

    .prologue
    .line 95
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMultiset<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMultiset<TE;>;"
    const/4 v0, 0x1

    .line 90
    invoke-virtual {p0, p1, v0}, Lcom/squareup/haha/guava/collect/AbstractMultiset;->remove(Ljava/lang/Object;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMultiset<TE;>;"
    .local p1, "elementsToRemove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lcom/squareup/haha/guava/collect/Multisets;->removeAllImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMultiset<TE;>;"
    .local p1, "elementsToRetain":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lcom/squareup/haha/guava/collect/Multisets;->retainAllImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-static {p0, p1, p2}, Lcom/squareup/haha/guava/collect/Multisets;->setCountImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final setCount(Ljava/lang/Object;II)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "oldCount"    # I
    .param p3, "newCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-static {p0, p1, p2, p3}, Lcom/squareup/haha/guava/collect/Multisets;->setCountImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMultiset<TE;>;"
    invoke-static {p0}, Lcom/squareup/haha/guava/collect/Multisets;->sizeImpl(Lcom/squareup/haha/guava/collect/Multiset;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
