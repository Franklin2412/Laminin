.class public abstract Lcom/squareup/haha/guava/collect/ForwardingCollection;
.super Lcom/squareup/haha/guava/collect/ForwardingObject;
.source "ForwardingCollection.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/ForwardingObject;",
        "Ljava/util/Collection",
        "<TE;>;"
    }
.end annotation


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingCollection;, "Lcom/squareup/haha/guava/collect/ForwardingCollection<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

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
    .line 99
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingCollection;, "Lcom/squareup/haha/guava/collect/ForwardingCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingCollection;, "Lcom/squareup/haha/guava/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 110
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 79
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingCollection;, "Lcom/squareup/haha/guava/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingCollection;, "Lcom/squareup/haha/guava/collect/ForwardingCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingCollection;, "Lcom/squareup/haha/guava/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingCollection;, "Lcom/squareup/haha/guava/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

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
    .line 59
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingCollection;, "Lcom/squareup/haha/guava/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 89
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingCollection;, "Lcom/squareup/haha/guava/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
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
    .line 69
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingCollection;, "Lcom/squareup/haha/guava/collect/ForwardingCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

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
    .line 104
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingCollection;, "Lcom/squareup/haha/guava/collect/ForwardingCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingCollection;, "Lcom/squareup/haha/guava/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 114
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingCollection;, "Lcom/squareup/haha/guava/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingCollection;, "Lcom/squareup/haha/guava/collect/ForwardingCollection<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
