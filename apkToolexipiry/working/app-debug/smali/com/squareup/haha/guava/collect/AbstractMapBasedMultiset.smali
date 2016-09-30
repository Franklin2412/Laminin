.class abstract Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;
.super Lcom/squareup/haha/guava/collect/AbstractMultiset;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/AbstractMultiset",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private transient size:J


# direct methods
.method static synthetic access$000(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic access$110(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;)J
    .locals 4
    .param p0, "x0"    # Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->size:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->size:J

    return-wide v0
.end method

.method static synthetic access$122(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;J)J
    .locals 3
    .param p0, "x0"    # Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;
    .param p1, "x1"    # J

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->size:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->size:J

    return-wide v0
.end method

.method private static getAndSet(Lcom/squareup/haha/guava/collect/Count;I)I
    .locals 1
    .param p0, "i"    # Lcom/squareup/haha/guava/collect/Count;
    .param p1, "count"    # I

    .prologue
    .line 285
    if-nez p0, :cond_0

    .line 286
    const/4 v0, 0x0

    .line 289
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/Count;->getAndSet(I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;I)I
    .locals 12
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "occurrences"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 215
    if-nez p2, :cond_0

    .line 216
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result v1

    .line 233
    :goto_0
    return v1

    .line 218
    :cond_0
    if-lez p2, :cond_1

    move v4, v5

    :goto_1
    const-string v7, "occurrences cannot be negative: %s"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v4, v7, v8}, Lcom/squareup/haha/guava/base/Ascii;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 220
    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Count;

    .line 222
    .local v0, "frequency":Lcom/squareup/haha/guava/collect/Count;
    if-nez v0, :cond_2

    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, "oldCount":I
    new-instance v4, Lcom/squareup/haha/guava/collect/Count;

    invoke-direct {v4, p2}, Lcom/squareup/haha/guava/collect/Count;-><init>(I)V

    invoke-interface {v10, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :goto_2
    iget-wide v4, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->size:J

    goto :goto_0

    .end local v0    # "frequency":Lcom/squareup/haha/guava/collect/Count;
    .end local v1    # "oldCount":I
    :cond_1
    move v4, v6

    .line 218
    goto :goto_1

    .line 3037
    .restart local v0    # "frequency":Lcom/squareup/haha/guava/collect/Count;
    :cond_2
    iget v1, v0, Lcom/squareup/haha/guava/collect/Count;->value:I

    .line 227
    .restart local v1    # "oldCount":I
    int-to-long v8, v1

    int-to-long v10, p2

    add-long v2, v8, v10

    .line 228
    .local v2, "newCount":J
    const-wide/32 v8, 0x7fffffff

    cmp-long v4, v2, v8

    if-gtz v4, :cond_3

    move v4, v5

    :goto_3
    const-string v7, "too many occurrences: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v4, v7, v5}, Lcom/squareup/haha/guava/base/Ascii;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3041
    iget v4, v0, Lcom/squareup/haha/guava/collect/Count;->value:I

    .line 3042
    add-int/2addr v4, p2

    iput v4, v0, Lcom/squareup/haha/guava/collect/Count;->value:I

    goto :goto_2

    :cond_3
    move v4, v6

    .line 228
    goto :goto_3
.end method

.method public clear()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset<TE;>;"
    const/4 v3, 0x0

    .line 132
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Count;

    .line 1051
    .local v0, "frequency":Lcom/squareup/haha/guava/collect/Count;
    const/4 v2, 0x0

    iput v2, v0, Lcom/squareup/haha/guava/collect/Count;->value:I

    goto :goto_0

    .line 135
    .end local v0    # "frequency":Lcom/squareup/haha/guava/collect/Count;
    :cond_0
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 136
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->size:J

    .line 137
    return-void
.end method

.method public final count(Ljava/lang/Object;)I
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 201
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset<TE;>;"
    const/4 v1, 0x0

    invoke-static {v1, p1}, Lcom/squareup/haha/guava/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Count;

    .line 202
    .local v0, "frequency":Lcom/squareup/haha/guava/collect/Count;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    .line 2037
    :cond_0
    iget v1, v0, Lcom/squareup/haha/guava/collect/Count;->value:I

    goto :goto_0
.end method

.method final distinctElements()I
    .locals 1

    .prologue
    .line 141
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset<TE;>;"
    const/4 v0, 0x0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method final entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/squareup/haha/guava/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset<TE;>;"
    const/4 v1, 0x0

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 89
    .local v0, "backingEntries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TE;Lcom/squareup/haha/guava/collect/Count;>;>;"
    new-instance v1, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1;

    invoke-direct {v1, p0, v0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/squareup/haha/guava/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset<TE;>;"
    invoke-super {p0}, Lcom/squareup/haha/guava/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset<TE;>;"
    new-instance v0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;I)I
    .locals 9
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "occurrences"    # I

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset<TE;>;"
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 237
    if-nez p2, :cond_1

    .line 238
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result v5

    .line 259
    :cond_0
    :goto_0
    return v5

    .line 240
    :cond_1
    if-lez p2, :cond_2

    move v3, v4

    :goto_1
    const-string v6, "occurrences cannot be negative: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v6, v4}, Lcom/squareup/haha/guava/base/Ascii;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 242
    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Count;

    .line 243
    .local v0, "frequency":Lcom/squareup/haha/guava/collect/Count;
    if-eqz v0, :cond_0

    .line 4037
    iget v2, v0, Lcom/squareup/haha/guava/collect/Count;->value:I

    .line 250
    .local v2, "oldCount":I
    if-le v2, p2, :cond_3

    .line 251
    move v1, p2

    .line 257
    .local v1, "numberRemoved":I
    :goto_2
    neg-int v3, v1

    invoke-virtual {v0, v3}, Lcom/squareup/haha/guava/collect/Count;->addAndGet(I)I

    .line 258
    iget-wide v4, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->size:J

    move v5, v2

    .line 259
    goto :goto_0

    .end local v0    # "frequency":Lcom/squareup/haha/guava/collect/Count;
    .end local v1    # "numberRemoved":I
    .end local v2    # "oldCount":I
    :cond_2
    move v3, v5

    .line 240
    goto :goto_1

    .line 253
    .restart local v0    # "frequency":Lcom/squareup/haha/guava/collect/Count;
    .restart local v2    # "oldCount":I
    :cond_3
    move v1, v2

    .line 254
    .restart local v1    # "numberRemoved":I
    invoke-interface {v8, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public final setCount(Ljava/lang/Object;I)I
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x0

    .line 264
    const-string v2, "count"

    invoke-static {p2, v2}, Lcom/squareup/haha/guava/base/Ascii;->checkNonnegative(ILjava/lang/String;)I

    .line 268
    if-nez p2, :cond_1

    .line 269
    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Count;

    .line 270
    .local v0, "existingCounter":Lcom/squareup/haha/guava/collect/Count;
    invoke-static {v0, p2}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->getAndSet(Lcom/squareup/haha/guava/collect/Count;I)I

    move-result v1

    .line 280
    .local v1, "oldCount":I
    :cond_0
    :goto_0
    iget-wide v2, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->size:J

    sub-int v4, p2, v1

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->size:J

    .line 281
    return v1

    .line 272
    .end local v0    # "existingCounter":Lcom/squareup/haha/guava/collect/Count;
    .end local v1    # "oldCount":I
    :cond_1
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Count;

    .line 273
    .restart local v0    # "existingCounter":Lcom/squareup/haha/guava/collect/Count;
    invoke-static {v0, p2}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->getAndSet(Lcom/squareup/haha/guava/collect/Count;I)I

    move-result v1

    .line 275
    .restart local v1    # "oldCount":I
    if-nez v0, :cond_0

    .line 276
    new-instance v2, Lcom/squareup/haha/guava/collect/Count;

    invoke-direct {v2, p2}, Lcom/squareup/haha/guava/collect/Count;-><init>(I)V

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 147
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset<TE;>;"
    iget-wide v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->size:J

    invoke-static {v0, v1}, Lcom/squareup/haha/guava/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method
