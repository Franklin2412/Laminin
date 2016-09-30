.class public abstract Lcom/squareup/haha/guava/collect/ForwardingMultimap;
.super Lcom/squareup/haha/guava/collect/ForwardingObject;
.source "ForwardingMultimap.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/Multimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/ForwardingObject;",
        "Lcom/squareup/haha/guava/collect/Multimap",
        "<TK;TV;>;"
    }
.end annotation


# virtual methods
.method public final asMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMultimap;, "Lcom/squareup/haha/guava/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultimap;->delegate()Lcom/squareup/haha/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMultimap;, "Lcom/squareup/haha/guava/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultimap;->delegate()Lcom/squareup/haha/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multimap;->clear()V

    .line 54
    return-void
.end method

.method public final containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMultimap;, "Lcom/squareup/haha/guava/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultimap;->delegate()Lcom/squareup/haha/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/squareup/haha/guava/collect/Multimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected abstract delegate()Lcom/squareup/haha/guava/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMultimap;, "Lcom/squareup/haha/guava/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultimap;->delegate()Lcom/squareup/haha/guava/collect/Multimap;

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
    .line 137
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMultimap;, "Lcom/squareup/haha/guava/collect/ForwardingMultimap<TK;TV;>;"
    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultimap;->delegate()Lcom/squareup/haha/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/squareup/haha/guava/collect/Multimap;->equals(Ljava/lang/Object;)Z

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

.method public final get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMultimap;, "Lcom/squareup/haha/guava/collect/ForwardingMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultimap;->delegate()Lcom/squareup/haha/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/squareup/haha/guava/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 141
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMultimap;, "Lcom/squareup/haha/guava/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultimap;->delegate()Lcom/squareup/haha/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMultimap;, "Lcom/squareup/haha/guava/collect/ForwardingMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultimap;->delegate()Lcom/squareup/haha/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/squareup/haha/guava/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 113
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMultimap;, "Lcom/squareup/haha/guava/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultimap;->delegate()Lcom/squareup/haha/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/squareup/haha/guava/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 128
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMultimap;, "Lcom/squareup/haha/guava/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultimap;->delegate()Lcom/squareup/haha/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multimap;->size()I

    move-result v0

    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMultimap;, "Lcom/squareup/haha/guava/collect/ForwardingMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultimap;->delegate()Lcom/squareup/haha/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
