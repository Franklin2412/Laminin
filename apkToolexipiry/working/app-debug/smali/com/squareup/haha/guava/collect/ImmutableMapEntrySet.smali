.class abstract Lcom/squareup/haha/guava/collect/ImmutableMapEntrySet;
.super Lcom/squareup/haha/guava/collect/ImmutableSet;
.source "ImmutableMapEntrySet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/ImmutableSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMapEntrySet;, "Lcom/squareup/haha/guava/collect/ImmutableMapEntrySet<TK;TV;>;"
    const/4 v2, 0x0

    .line 46
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 47
    check-cast v0, Ljava/util/Map$Entry;

    .line 48
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMapEntrySet;->map()Lcom/squareup/haha/guava/collect/ImmutableMap;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/haha/guava/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 49
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 51
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    return v2
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMapEntrySet;, "Lcom/squareup/haha/guava/collect/ImmutableMapEntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMapEntrySet;->map()Lcom/squareup/haha/guava/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->isPartialView()Z

    move-result v0

    return v0
.end method

.method abstract map()Lcom/squareup/haha/guava/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public size()I
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMapEntrySet;, "Lcom/squareup/haha/guava/collect/ImmutableMapEntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMapEntrySet;->map()Lcom/squareup/haha/guava/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->size()I

    move-result v0

    return v0
.end method
