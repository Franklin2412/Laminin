.class final Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;
.super Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
.source "EmptyImmutableSortedSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/ImmutableSortedSet",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final asList()Lcom/squareup/haha/guava/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet<TE;>;"
    invoke-static {}, Lcom/squareup/haha/guava/collect/ImmutableList;->of()Lcom/squareup/haha/guava/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet<TE;>;"
    .local p1, "targets":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method final copyIntoArray([Ljava/lang/Object;I)I
    .locals 0
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .prologue
    .line 77
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet<TE;>;"
    return p2
.end method

.method final createDescendingSet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet<TE;>;"
    new-instance v0, Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;

    iget-object v1, p0, Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v1}, Lcom/squareup/haha/guava/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/squareup/haha/guava/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/haha/guava/collect/Ordering;->reverse()Lcom/squareup/haha/guava/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final descendingIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet<TE;>;"
    invoke-static {}, Lcom/squareup/haha/guava/collect/Iterators;->emptyIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 34
    .line 1064
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet<TE;>;"
    invoke-static {}, Lcom/squareup/haha/guava/collect/Iterators;->emptyIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    .line 34
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 81
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet<TE;>;"
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 82
    check-cast v0, Ljava/util/Set;

    .line 83
    .local v0, "that":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    .line 85
    .end local v0    # "that":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet<TE;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 89
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method final headSetImpl(Ljava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
    .locals 0
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/squareup/haha/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    return-object p0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 68
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet<TE;>;"
    invoke-static {}, Lcom/squareup/haha/guava/collect/Iterators;->emptyIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 34
    .line 2059
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet<TE;>;"
    invoke-static {}, Lcom/squareup/haha/guava/collect/Iterators;->emptyIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    .line 34
    return-object v0
.end method

.method public final last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet<TE;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method final subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
    .locals 0
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lcom/squareup/haha/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    return-object p0
.end method

.method final tailSetImpl(Ljava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
    .locals 0
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/squareup/haha/guava/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    .local p0, "this":Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet;, "Lcom/squareup/haha/guava/collect/EmptyImmutableSortedSet<TE;>;"
    const-string v0, "[]"

    return-object v0
.end method
