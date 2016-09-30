.class final Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;
.super Lcom/squareup/haha/guava/collect/ImmutableSortedMap;
.source "EmptyImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/ImmutableSortedMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient keySet:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/ImmutableSortedSet",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;->keySet:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    .line 38
    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;Lcom/squareup/haha/guava/collect/ImmutableSortedMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;",
            "Lcom/squareup/haha/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p2, "descendingMap":Lcom/squareup/haha/guava/collect/ImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-direct {p0, p2}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;-><init>(Lcom/squareup/haha/guava/collect/ImmutableSortedMap;)V

    .line 43
    invoke-static {p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;->keySet:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    .line 44
    return-void
.end method


# virtual methods
.method final createDescendingMap()Lcom/squareup/haha/guava/collect/ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap<TK;TV;>;"
    new-instance v0, Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/haha/guava/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/squareup/haha/guava/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/haha/guava/collect/Ordering;->reverse()Lcom/squareup/haha/guava/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;-><init>(Ljava/util/Comparator;Lcom/squareup/haha/guava/collect/ImmutableSortedMap;)V

    return-object v0
.end method

.method final createEntrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;
    .locals 2
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
    .line 88
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;
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
    .line 83
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap<TK;TV;>;"
    invoke-static {}, Lcom/squareup/haha/guava/collect/ImmutableSet;->of()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    .line 3083
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap<TK;TV;>;"
    invoke-static {}, Lcom/squareup/haha/guava/collect/ImmutableSet;->of()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    .line 31
    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 31
    .line 2098
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap<TK;TV;>;"
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-object p0
.end method

.method public final headMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/squareup/haha/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-object p0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic keySet()Lcom/squareup/haha/guava/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 31
    .line 6053
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;->keySet:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    .line 31
    return-object v0
.end method

.method public final keySet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/ImmutableSortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;->keySet:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    return-object v0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    .line 5053
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;->keySet:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    .line 31
    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 31
    .line 1104
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap<TK;TV;>;"
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-object p0
.end method

.method public final tailMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/squareup/haha/guava/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap<TK;TV;>;"
    const-string v0, "{}"

    return-object v0
.end method

.method public final values()Lcom/squareup/haha/guava/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap<TK;TV;>;"
    invoke-static {}, Lcom/squareup/haha/guava/collect/ImmutableList;->of()Lcom/squareup/haha/guava/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 31
    .line 4068
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap<TK;TV;>;"
    invoke-static {}, Lcom/squareup/haha/guava/collect/ImmutableList;->of()Lcom/squareup/haha/guava/collect/ImmutableList;

    move-result-object v0

    .line 31
    return-object v0
.end method
