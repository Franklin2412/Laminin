.class public abstract Lcom/squareup/haha/guava/collect/ImmutableMultiset;
.super Lcom/squareup/haha/guava/collect/ImmutableCollection;
.source "ImmutableMultiset.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/Multiset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/ImmutableCollection",
        "<TE;>;",
        "Lcom/squareup/haha/guava/collect/Multiset",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private transient entrySet:Lcom/squareup/haha/guava/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/ImmutableSet",
            "<",
            "Lcom/squareup/haha/guava/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lcom/squareup/haha/guava/collect/RegularImmutableMultiset;

    invoke-static {}, Lcom/squareup/haha/guava/collect/ImmutableMap;->of()Lcom/squareup/haha/guava/collect/ImmutableMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/squareup/haha/guava/collect/RegularImmutableMultiset;-><init>(Lcom/squareup/haha/guava/collect/ImmutableMap;I)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 236
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultiset;, "Lcom/squareup/haha/guava/collect/ImmutableMultiset<TE;>;"
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method private entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/ImmutableSet",
            "<",
            "Lcom/squareup/haha/guava/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultiset;, "Lcom/squareup/haha/guava/collect/ImmutableMultiset<TE;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultiset;->entrySet:Lcom/squareup/haha/guava/collect/ImmutableSet;

    .line 347
    .local v0, "es":Lcom/squareup/haha/guava/collect/ImmutableSet;, "Lcom/squareup/haha/guava/collect/ImmutableSet<Lcom/squareup/haha/guava/collect/Multiset$Entry<TE;>;>;"
    if-nez v0, :cond_1

    .line 1351
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMultiset;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/squareup/haha/guava/collect/ImmutableSet;->of()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v1

    .line 347
    :goto_0
    iput-object v1, p0, Lcom/squareup/haha/guava/collect/ImmutableMultiset;->entrySet:Lcom/squareup/haha/guava/collect/ImmutableSet;

    :goto_1
    return-object v1

    .line 1351
    :cond_0
    new-instance v1, Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet;-><init>(Lcom/squareup/haha/guava/collect/ImmutableMultiset;B)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 347
    goto :goto_1
.end method


# virtual methods
.method public final add(Ljava/lang/Object;I)I
    .locals 1
    .param p2, "occurrences"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 281
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultiset;, "Lcom/squareup/haha/guava/collect/ImmutableMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 264
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultiset;, "Lcom/squareup/haha/guava/collect/ImmutableMultiset<TE;>;"
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultiset;, "Lcom/squareup/haha/guava/collect/ImmutableMultiset<TE;>;"
    .local p1, "targets":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method final copyIntoArray([Ljava/lang/Object;I)I
    .locals 4
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .prologue
    .line 323
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultiset;, "Lcom/squareup/haha/guava/collect/ImmutableMultiset<TE;>;"
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableMultiset;->entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/haha/guava/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    .line 324
    .local v0, "entry":Lcom/squareup/haha/guava/collect/Multiset$Entry;, "Lcom/squareup/haha/guava/collect/Multiset$Entry<TE;>;"
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v2

    add-int/2addr v2, p2

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, p2, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 325
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v2

    add-int/2addr p2, v2

    .line 326
    goto :goto_0

    .line 327
    .end local v0    # "entry":Lcom/squareup/haha/guava/collect/Multiset$Entry;, "Lcom/squareup/haha/guava/collect/Multiset$Entry<TE;>;"
    :cond_0
    return p2
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultiset;, "Lcom/squareup/haha/guava/collect/ImmutableMultiset<TE;>;"
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableMultiset;->entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 331
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultiset;, "Lcom/squareup/haha/guava/collect/ImmutableMultiset<TE;>;"
    invoke-static {p0, p1}, Lcom/squareup/haha/guava/collect/Multisets;->equalsImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract getEntry(I)Lcom/squareup/haha/guava/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/squareup/haha/guava/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 335
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultiset;, "Lcom/squareup/haha/guava/collect/ImmutableMultiset<TE;>;"
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableMultiset;->entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/haha/guava/base/Ascii;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public final iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultiset;, "Lcom/squareup/haha/guava/collect/ImmutableMultiset<TE;>;"
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableMultiset;->entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/haha/guava/collect/ImmutableSet;->iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    .line 240
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/haha/guava/collect/Multiset$Entry<TE;>;>;"
    new-instance v1, Lcom/squareup/haha/guava/collect/ImmutableMultiset$1;

    invoke-direct {v1, p0, v0}, Lcom/squareup/haha/guava/collect/ImmutableMultiset$1;-><init>(Lcom/squareup/haha/guava/collect/ImmutableMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultiset;, "Lcom/squareup/haha/guava/collect/ImmutableMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMultiset;->iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;I)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "occurrences"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 293
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultiset;, "Lcom/squareup/haha/guava/collect/ImmutableMultiset<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setCount(Ljava/lang/Object;I)I
    .locals 1
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 305
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultiset;, "Lcom/squareup/haha/guava/collect/ImmutableMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setCount(Ljava/lang/Object;II)Z
    .locals 1
    .param p2, "oldCount"    # I
    .param p3, "newCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 317
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultiset;, "Lcom/squareup/haha/guava/collect/ImmutableMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultiset;, "Lcom/squareup/haha/guava/collect/ImmutableMultiset<TE;>;"
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableMultiset;->entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
