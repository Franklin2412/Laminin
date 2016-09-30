.class abstract Lcom/squareup/haha/guava/collect/AbstractSetMultimap;
.super Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;
.source "AbstractSetMultimap.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/SetMultimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap",
        "<TK;TV;>;",
        "Lcom/squareup/haha/guava/collect/SetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# virtual methods
.method public asMap()Ljava/util/Map;
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
    .line 109
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractSetMultimap;, "Lcom/squareup/haha/guava/collect/AbstractSetMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractSetMultimap;, "Lcom/squareup/haha/guava/collect/AbstractSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractSetMultimap;->createCollection()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method abstract createCollection()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation
.end method

.method public final bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 34
    .line 1074
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractSetMultimap;, "Lcom/squareup/haha/guava/collect/AbstractSetMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 34
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 132
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractSetMultimap;, "Lcom/squareup/haha/guava/collect/AbstractSetMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractSetMultimap;, "Lcom/squareup/haha/guava/collect/AbstractSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractSetMultimap;, "Lcom/squareup/haha/guava/collect/AbstractSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-super {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractSetMultimap;, "Lcom/squareup/haha/guava/collect/AbstractSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1, p2}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
