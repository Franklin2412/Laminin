.class final Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;
.super Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$AsMap;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SortedAsMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap",
        "<TK;TV;>.com/squareup/haha/guava/collect/AbstractMapBasedMultimap$AsMap;",
        "Ljava/util/SortedMap",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field private sortedKeySet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation
.end field

.field private synthetic this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1365
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    .local p2, "submap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;Ljava/util/Collection<TV;>;>;"
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;->this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;

    .line 1366
    invoke-direct {p0, p1, p2}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$AsMap;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V

    .line 1367
    return-void
.end method

.method private createKeySet()Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1414
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    new-instance v1, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;

    iget-object v2, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;->this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;

    .line 8370
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;->submap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    .line 1414
    invoke-direct {v1, v2, v0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v1
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 1375
    .line 2370
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;->submap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    .line 1375
    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method final bridge synthetic createKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1363
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;->createKeySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1380
    .line 3370
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;->submap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    .line 1380
    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1390
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    new-instance v1, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;

    iget-object v2, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;->this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;

    .line 5370
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;->submap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    .line 1390
    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1363
    .line 8408
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;->sortedKeySet:Ljava/util/SortedSet;

    .line 8409
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;->createKeySet()Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;->sortedKeySet:Ljava/util/SortedSet;

    :cond_0
    return-object v0
.end method

.method public final lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1385
    .line 4370
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;->submap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    .line 1385
    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1395
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    new-instance v1, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;

    iget-object v2, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;->this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;

    .line 6370
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;->submap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    .line 1395
    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public final tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1400
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap<TK;TV;>.SortedAsMap;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    new-instance v1, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;

    iget-object v2, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;->this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;

    .line 7370
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;->submap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    .line 1400
    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v1
.end method
