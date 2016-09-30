.class abstract Lcom/squareup/haha/guava/collect/AbstractMultimap;
.super Ljava/lang/Object;
.source "AbstractMultimap.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/Multimap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/haha/guava/collect/AbstractMultimap$Values;,
        Lcom/squareup/haha/guava/collect/AbstractMultimap$EntrySet;,
        Lcom/squareup/haha/guava/collect/AbstractMultimap$Entries;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/haha/guava/collect/Multimap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private transient asMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private transient entries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultimap;, "Lcom/squareup/haha/guava/collect/AbstractMultimap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
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
    .line 207
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultimap;, "Lcom/squareup/haha/guava/collect/AbstractMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap;->asMap:Ljava/util/Map;

    .line 208
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->createAsMap()Ljava/util/Map;

    move-result-object v0

    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    iput-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap;->asMap:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 57
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultimap;, "Lcom/squareup/haha/guava/collect/AbstractMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 58
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 46
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultimap;, "Lcom/squareup/haha/guava/collect/AbstractMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->asMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 47
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    const/4 v2, 0x1

    .line 52
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method abstract createAsMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end method

.method createEntries()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultimap;, "Lcom/squareup/haha/guava/collect/AbstractMultimap<TK;TV;>;"
    const/4 v1, 0x0

    .line 112
    instance-of v0, p0, Lcom/squareup/haha/guava/collect/SetMultimap;

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Lcom/squareup/haha/guava/collect/AbstractMultimap$EntrySet;

    invoke-direct {v0, p0, v1}, Lcom/squareup/haha/guava/collect/AbstractMultimap$EntrySet;-><init>(Lcom/squareup/haha/guava/collect/AbstractMultimap;B)V

    .line 115
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/squareup/haha/guava/collect/AbstractMultimap$Entries;

    invoke-direct {v0, p0, v1}, Lcom/squareup/haha/guava/collect/AbstractMultimap$Entries;-><init>(Lcom/squareup/haha/guava/collect/AbstractMultimap;B)V

    goto :goto_0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultimap;, "Lcom/squareup/haha/guava/collect/AbstractMultimap<TK;TV;>;"
    new-instance v0, Lcom/squareup/haha/guava/collect/Maps$KeySet;

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/haha/guava/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultimap;, "Lcom/squareup/haha/guava/collect/AbstractMultimap<TK;TV;>;"
    new-instance v0, Lcom/squareup/haha/guava/collect/AbstractMultimap$Values;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap$Values;-><init>(Lcom/squareup/haha/guava/collect/AbstractMultimap;)V

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultimap;, "Lcom/squareup/haha/guava/collect/AbstractMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap;->entries:Ljava/util/Collection;

    .line 108
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->createEntries()Ljava/util/Collection;

    move-result-object v0

    .end local v0    # "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    iput-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap;->entries:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method

.method abstract entryIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 216
    .line 3048
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultimap;, "Lcom/squareup/haha/guava/collect/AbstractMultimap<TK;TV;>;"
    if-ne p1, p0, :cond_0

    .line 3049
    const/4 v0, 0x1

    .line 3053
    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return v0

    .line 3051
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/squareup/haha/guava/collect/Multimap;

    if-eqz v0, :cond_1

    .line 3052
    check-cast p1, Lcom/squareup/haha/guava/collect/Multimap;

    .line 3053
    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 3055
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    .line 216
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 228
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultimap;, "Lcom/squareup/haha/guava/collect/AbstractMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultimap;, "Lcom/squareup/haha/guava/collect/AbstractMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap;->keySet:Ljava/util/Set;

    .line 150
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->createKeySet()Ljava/util/Set;

    move-result-object v0

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    iput-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap;->keySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultimap;, "Lcom/squareup/haha/guava/collect/AbstractMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 63
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultimap;, "Lcom/squareup/haha/guava/collect/AbstractMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 64
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultimap;, "Lcom/squareup/haha/guava/collect/AbstractMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method valueIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultimap;, "Lcom/squareup/haha/guava/collect/AbstractMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/haha/guava/collect/Maps;->valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultimap;, "Lcom/squareup/haha/guava/collect/AbstractMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap;->values:Ljava/util/Collection;

    .line 174
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->createValues()Ljava/util/Collection;

    move-result-object v0

    .end local v0    # "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    iput-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap;->values:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
