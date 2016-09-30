.class abstract Lcom/squareup/haha/guava/collect/AbstractSortedSetMultimap;
.super Lcom/squareup/haha/guava/collect/AbstractSetMultimap;
.source "AbstractSortedSetMultimap.java"

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
        "Lcom/squareup/haha/guava/collect/AbstractSetMultimap",
        "<TK;TV;>;",
        "Lcom/squareup/haha/guava/collect/SetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method private get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractSortedSetMultimap;, "Lcom/squareup/haha/guava/collect/AbstractSortedSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-super {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method


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
    .line 123
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractSortedSetMultimap;, "Lcom/squareup/haha/guava/collect/AbstractSortedSetMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/squareup/haha/guava/collect/AbstractSetMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method final bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractSortedSetMultimap;, "Lcom/squareup/haha/guava/collect/AbstractSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractSortedSetMultimap;->createCollection()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method final bridge synthetic createCollection()Ljava/util/Set;
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractSortedSetMultimap;, "Lcom/squareup/haha/guava/collect/AbstractSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractSortedSetMultimap;->createCollection()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method abstract createCollection()Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 37
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractSortedSetMultimap;, "Lcom/squareup/haha/guava/collect/AbstractSortedSetMultimap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 37
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractSortedSetMultimap;, "Lcom/squareup/haha/guava/collect/AbstractSortedSetMultimap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
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
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractSortedSetMultimap;, "Lcom/squareup/haha/guava/collect/AbstractSortedSetMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/squareup/haha/guava/collect/AbstractSetMultimap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
