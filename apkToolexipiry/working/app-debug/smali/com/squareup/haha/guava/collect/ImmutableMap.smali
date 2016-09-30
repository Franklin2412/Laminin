.class public abstract Lcom/squareup/haha/guava/collect/ImmutableMap;
.super Ljava/lang/Object;
.source "ImmutableMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private transient entrySet:Lcom/squareup/haha/guava/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySet:Lcom/squareup/haha/guava/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/ImmutableSet",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient values:Lcom/squareup/haha/guava/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 315
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMap;, "Lcom/squareup/haha/guava/collect/ImmutableMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of()Lcom/squareup/haha/guava/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/squareup/haha/guava/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Lcom/squareup/haha/guava/collect/ImmutableBiMap;->of()Lcom/squareup/haha/guava/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 362
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMap;, "Lcom/squareup/haha/guava/collect/ImmutableMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 372
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMap;, "Lcom/squareup/haha/guava/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 377
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMap;, "Lcom/squareup/haha/guava/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->values()Lcom/squareup/haha/guava/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract createEntrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
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
    .line 392
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMap;, "Lcom/squareup/haha/guava/collect/ImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMap;->entrySet:Lcom/squareup/haha/guava/collect/ImmutableSet;

    .line 393
    .local v0, "result":Lcom/squareup/haha/guava/collect/ImmutableSet;, "Lcom/squareup/haha/guava/collect/ImmutableSet<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->createEntrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    .end local v0    # "result":Lcom/squareup/haha/guava/collect/ImmutableSet;, "Lcom/squareup/haha/guava/collect/ImmutableSet<Ljava/util/Map$Entry<TK;TV;>;>;"
    iput-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMap;->entrySet:Lcom/squareup/haha/guava/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMap;, "Lcom/squareup/haha/guava/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

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
    .line 507
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMap;, "Lcom/squareup/haha/guava/collect/ImmutableMap<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/squareup/haha/guava/collect/Maps;->equalsImpl(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
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
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 515
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMap;, "Lcom/squareup/haha/guava/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSet;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 367
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMap;, "Lcom/squareup/haha/guava/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract isPartialView()Z
.end method

.method public keySet()Lcom/squareup/haha/guava/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/ImmutableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 406
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMap;, "Lcom/squareup/haha/guava/collect/ImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMap;->keySet:Lcom/squareup/haha/guava/collect/ImmutableSet;

    .line 407
    .local v0, "result":Lcom/squareup/haha/guava/collect/ImmutableSet;, "Lcom/squareup/haha/guava/collect/ImmutableSet<TK;>;"
    if-nez v0, :cond_0

    .line 1411
    new-instance v0, Lcom/squareup/haha/guava/collect/ImmutableMapKeySet;

    .end local v0    # "result":Lcom/squareup/haha/guava/collect/ImmutableSet;, "Lcom/squareup/haha/guava/collect/ImmutableSet<TK;>;"
    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/ImmutableMapKeySet;-><init>(Lcom/squareup/haha/guava/collect/ImmutableMap;)V

    .line 407
    iput-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMap;->keySet:Lcom/squareup/haha/guava/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMap;, "Lcom/squareup/haha/guava/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->keySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMap;, "Lcom/squareup/haha/guava/collect/ImmutableMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 350
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMap;, "Lcom/squareup/haha/guava/collect/ImmutableMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 338
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMap;, "Lcom/squareup/haha/guava/collect/ImmutableMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMap;, "Lcom/squareup/haha/guava/collect/ImmutableMap<TK;TV;>;"
    invoke-static {p0}, Lcom/squareup/haha/guava/collect/Maps;->toStringImpl(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Lcom/squareup/haha/guava/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 422
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMap;, "Lcom/squareup/haha/guava/collect/ImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMap;->values:Lcom/squareup/haha/guava/collect/ImmutableCollection;

    .line 423
    .local v0, "result":Lcom/squareup/haha/guava/collect/ImmutableCollection;, "Lcom/squareup/haha/guava/collect/ImmutableCollection<TV;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/squareup/haha/guava/collect/ImmutableMapValues;

    .end local v0    # "result":Lcom/squareup/haha/guava/collect/ImmutableCollection;, "Lcom/squareup/haha/guava/collect/ImmutableCollection<TV;>;"
    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/ImmutableMapValues;-><init>(Lcom/squareup/haha/guava/collect/ImmutableMap;)V

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMap;->values:Lcom/squareup/haha/guava/collect/ImmutableCollection;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMap;, "Lcom/squareup/haha/guava/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->values()Lcom/squareup/haha/guava/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
