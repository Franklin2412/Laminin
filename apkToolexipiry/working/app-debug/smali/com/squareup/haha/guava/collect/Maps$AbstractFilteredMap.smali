.class abstract Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap;
.super Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractFilteredMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private predicate:Lcom/squareup/haha/guava/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private unfiltered:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)Z"
        }
    .end annotation

    .prologue
    .line 2574
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap;, "Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    move-object v0, p1

    .line 2575
    .local v0, "k":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap;->predicate:Lcom/squareup/haha/guava/base/Predicate;

    invoke-static {v0, p2}, Lcom/squareup/haha/guava/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/squareup/haha/guava/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2591
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap;, "Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final createValues()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2609
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap;, "Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap<TK;TV;>;"
    new-instance v0, Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues;

    iget-object v1, p0, Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    iget-object v2, p0, Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap;->predicate:Lcom/squareup/haha/guava/base/Predicate;

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/haha/guava/collect/Maps$FilteredMapValues;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/squareup/haha/guava/base/Predicate;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 2595
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap;, "Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap<TK;TV;>;"
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2596
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 2600
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap;, "Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2579
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap;, "Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p2}, Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/squareup/haha/guava/base/Ascii;->checkArgument(Z)V

    .line 2580
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2584
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap;, "Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2585
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/squareup/haha/guava/base/Ascii;->checkArgument(Z)V

    goto :goto_0

    .line 2587
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    iget-object v2, p0, Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2588
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 2604
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap;, "Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
