.class public abstract Lcom/squareup/haha/guava/collect/ImmutableSortedMap;
.super Lcom/squareup/haha/guava/collect/ImmutableSortedMapFauxverideShim;
.source "ImmutableSortedMap.java"

# interfaces
.implements Ljava/util/NavigableMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/ImmutableSortedMapFauxverideShim",
        "<TK;TV;>;",
        "Ljava/util/NavigableMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient descendingMap:Lcom/squareup/haha/guava/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/squareup/haha/guava/collect/Ordering;->natural()Lcom/squareup/haha/guava/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 67
    new-instance v0, Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;

    sget-object v1, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 412
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMapFauxverideShim;-><init>()V

    .line 413
    return-void
.end method

.method constructor <init>(Lcom/squareup/haha/guava/collect/ImmutableSortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "descendingMap":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMapFauxverideShim;-><init>()V

    .line 416
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->descendingMap:Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    .line 417
    return-void
.end method

.method private subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;
    .locals 5
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lcom/squareup/haha/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 538
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    invoke-static {p3}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "expected fromKey <= toKey but %s > %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p3, v4, v1

    invoke-static {v0, v3, v4}, Lcom/squareup/haha/guava/base/Ascii;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 542
    invoke-virtual {p0, p3}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->headMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->tailMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 540
    goto :goto_0
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 598
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->tailMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 603
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/haha/guava/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

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
    .line 459
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->keySet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 425
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->values()Lcom/squareup/haha/guava/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract createDescendingMap()Lcom/squareup/haha/guava/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic descendingKeySet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 58
    .line 2670
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->keySet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->descendingSet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    .line 58
    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 58
    .line 4654
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->descendingMap:Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    .line 4655
    if-nez v0, :cond_0

    .line 4656
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->createDescendingMap()Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->descendingMap:Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    .line 58
    :cond_0
    return-object v0
.end method

.method public entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 437
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-super {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMapFauxverideShim;->entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 618
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSet;->asList()Lcom/squareup/haha/guava/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/squareup/haha/guava/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 464
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->keySet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 588
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->headMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 593
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/haha/guava/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 58
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->headMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 58
    .line 2484
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->headMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    move-result-object v0

    .line 58
    return-object v0
.end method

.method public abstract headMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/squareup/haha/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 608
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->tailMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 613
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/haha/guava/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 429
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->keySet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->isPartialView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->values()Lcom/squareup/haha/guava/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableCollection;->isPartialView()Z

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

.method public bridge synthetic keySet()Lcom/squareup/haha/guava/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->keySet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract keySet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/ImmutableSortedSet",
            "<TK;>;"
        }
    .end annotation
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->keySet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 623
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSet;->asList()Lcom/squareup/haha/guava/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/squareup/haha/guava/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 469
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->keySet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 578
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->headMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 583
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/haha/guava/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic navigableKeySet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 58
    .line 3665
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->keySet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    .line 58
    return-object v0
.end method

.method public final pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 635
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 647
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 421
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->values()Lcom/squareup/haha/guava/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableCollection;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Z

    .prologue
    .line 58
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 58
    .line 2517
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    move-result-object v0

    .line 58
    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 58
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->tailMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 58
    .line 1557
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->tailMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    move-result-object v0

    .line 58
    return-object v0
.end method

.method public abstract tailMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/squareup/haha/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract values()Lcom/squareup/haha/guava/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->values()Lcom/squareup/haha/guava/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
