.class final Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;
.super Lcom/squareup/haha/guava/collect/Maps$SortedKeySet;
.source "Maps.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NavigableKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/Maps$SortedKeySet",
        "<TK;TV;>;",
        "Ljava/util/NavigableSet",
        "<TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/NavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3570
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;, "Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "map":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/Maps$SortedKeySet;-><init>(Ljava/util/SortedMap;)V

    .line 3571
    return-void
.end method


# virtual methods
.method public final ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 3590
    .line 6575
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;, "Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "e":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/NavigableMap;

    .line 3590
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3615
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;, "Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final descendingSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3610
    .line 10575
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;, "Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/NavigableMap;

    .line 3610
    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public final floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 3585
    .line 5575
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;, "Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "e":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/NavigableMap;

    .line 3585
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3629
    .line 12575
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;, "Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/NavigableMap;

    .line 3629
    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3644
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;, "Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public final higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 3595
    .line 7575
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;, "Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "e":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/NavigableMap;

    .line 3595
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 3580
    .line 4575
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;, "Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "e":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/NavigableMap;

    .line 3580
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final bridge synthetic map()Ljava/util/Map;
    .locals 1

    .prologue
    .line 3567
    .line 15575
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;, "Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/NavigableMap;

    .line 3567
    return-object v0
.end method

.method final bridge synthetic map()Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 3567
    .line 14575
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;, "Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/NavigableMap;

    .line 3567
    return-object v0
.end method

.method public final pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3600
    .line 8575
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;, "Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/NavigableMap;

    .line 3600
    invoke-interface {v0}, Ljava/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/haha/guava/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3605
    .line 9575
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;, "Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/NavigableMap;

    .line 3605
    invoke-interface {v0}, Ljava/util/NavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/haha/guava/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3624
    .line 11575
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;, "Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    .local p3, "toElement":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/NavigableMap;

    .line 3624
    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3639
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;, "Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    .local p2, "toElement":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public final tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3634
    .line 13575
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;, "Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/NavigableMap;

    .line 3634
    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3649
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;, "Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet<TK;TV;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method
