.class public abstract Lcom/squareup/haha/guava/collect/ImmutableMultimap;
.super Lcom/squareup/haha/guava/collect/AbstractMultimap;
.source "ImmutableMultimap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values;,
        Lcom/squareup/haha/guava/collect/ImmutableMultimap$Itr;,
        Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/AbstractMultimap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final transient map:Lcom/squareup/haha/guava/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/ImmutableMap",
            "<TK;+",
            "Lcom/squareup/haha/guava/collect/ImmutableCollection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private transient size:I


# virtual methods
.method public final bridge synthetic asMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 64
    .line 1477
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap;->map:Lcom/squareup/haha/guava/collect/ImmutableMap;

    .line 64
    return-object v0
.end method

.method public final clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 362
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 64
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 450
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap<TK;TV;>;"
    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final createAsMap()Ljava/util/Map;
    .locals 2
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
    .line 482
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method final bridge synthetic createEntries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 64
    .line 3497
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap<TK;TV;>;"
    new-instance v0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection;-><init>(Lcom/squareup/haha/guava/collect/ImmutableMultimap;)V

    .line 64
    return-object v0
.end method

.method final bridge synthetic createValues()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 64
    .line 1628
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap<TK;TV;>;"
    new-instance v0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values;-><init>(Lcom/squareup/haha/guava/collect/ImmutableMultimap;)V

    .line 64
    return-object v0
.end method

.method public final bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 64
    .line 4492
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/ImmutableCollection;

    .line 64
    return-object v0
.end method

.method final entryIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 557
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap<TK;TV;>;"
    new-instance v0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$1;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/ImmutableMultimap$1;-><init>(Lcom/squareup/haha/guava/collect/ImmutableMultimap;)V

    return-object v0
.end method

.method final bridge synthetic entryIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMultimap;->entryIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 64
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 64
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMultimap;->get$2b2cadec()Lcom/squareup/haha/guava/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public abstract get$2b2cadec()Lcom/squareup/haha/guava/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 64
    .line 3467
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap;->map:Lcom/squareup/haha/guava/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->keySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    .line 64
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 392
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 428
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 455
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap<TK;TV;>;"
    iget v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap;->size:I

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final valueIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/UnmodifiableIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 633
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap<TK;TV;>;"
    new-instance v0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$2;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/ImmutableMultimap$2;-><init>(Lcom/squareup/haha/guava/collect/ImmutableMultimap;)V

    return-object v0
.end method

.method final bridge synthetic valueIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMultimap;->valueIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 64
    .line 2623
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/ImmutableCollection;

    .line 64
    return-object v0
.end method
