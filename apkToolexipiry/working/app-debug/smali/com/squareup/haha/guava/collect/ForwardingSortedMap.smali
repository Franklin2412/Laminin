.class public abstract Lcom/squareup/haha/guava/collect/ForwardingSortedMap;
.super Lcom/squareup/haha/guava/collect/ForwardingMap;
.source "ForwardingSortedMap.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/ForwardingMap",
        "<TK;TV;>;",
        "Ljava/util/SortedMap",
        "<TK;TV;>;"
    }
.end annotation


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingSortedMap;, "Lcom/squareup/haha/guava/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingSortedMap;, "Lcom/squareup/haha/guava/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/Map;
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingSortedMap;, "Lcom/squareup/haha/guava/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingSortedMap;, "Lcom/squareup/haha/guava/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingSortedMap;, "Lcom/squareup/haha/guava/collect/ForwardingSortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingSortedMap;, "Lcom/squareup/haha/guava/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingSortedMap;, "Lcom/squareup/haha/guava/collect/ForwardingSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingSortedMap;, "Lcom/squareup/haha/guava/collect/ForwardingSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
