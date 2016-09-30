.class public final Lcom/squareup/haha/trove/THashMap;
.super Lcom/squareup/haha/trove/TObjectHash;
.source "THashMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/haha/trove/THashMap$Entry;,
        Lcom/squareup/haha/trove/THashMap$KeyView;,
        Lcom/squareup/haha/trove/THashMap$MapBackedView;,
        Lcom/squareup/haha/trove/THashMap$EntryView;,
        Lcom/squareup/haha/trove/THashMap$ValueView;,
        Lcom/squareup/haha/trove/THashMap$EqProcedure;,
        Lcom/squareup/haha/trove/THashMap$HashProcedure;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/trove/TObjectHash",
        "<TK;>;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field protected transient _values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    .local p0, "this":Lcom/squareup/haha/trove/THashMap;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/squareup/haha/trove/TObjectHash;-><init>()V

    .line 46
    return-void
.end method

.method private clone()Lcom/squareup/haha/trove/THashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/trove/THashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lcom/squareup/haha/trove/THashMap;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>;"
    invoke-super {p0}, Lcom/squareup/haha/trove/TObjectHash;->clone()Lcom/squareup/haha/trove/TObjectHash;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/trove/THashMap;

    .line 134
    .local v0, "m":Lcom/squareup/haha/trove/THashMap;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>;"
    iget-object v1, p0, Lcom/squareup/haha/trove/THashMap;->_values:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/squareup/haha/trove/THashMap;->_values:[Ljava/lang/Object;

    .line 135
    return-object v0
.end method

.method private forEachEntry(Lcom/squareup/haha/trove/TObjectObjectProcedure;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/trove/TObjectObjectProcedure",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "this":Lcom/squareup/haha/trove/THashMap;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>;"
    .local p1, "procedure":Lcom/squareup/haha/trove/TObjectObjectProcedure;, "Lcom/squareup/haha/trove/TObjectObjectProcedure<TK;TV;>;"
    iget-object v2, p0, Lcom/squareup/haha/trove/THashMap;->_set:[Ljava/lang/Object;

    .line 277
    .local v2, "keys":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/squareup/haha/trove/THashMap;->_values:[Ljava/lang/Object;

    .line 278
    .local v3, "values":[Ljava/lang/Object;, "[TV;"
    array-length v0, v2

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 279
    aget-object v4, v2, v0

    if-eqz v4, :cond_1

    aget-object v4, v2, v0

    sget-object v5, Lcom/squareup/haha/trove/THashMap;->REMOVED:Ljava/lang/Object;

    if-eq v4, v5, :cond_1

    aget-object v4, v2, v0

    aget-object v5, v3, v0

    invoke-interface {p1, v4, v5}, Lcom/squareup/haha/trove/TObjectObjectProcedure;->execute(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 282
    const/4 v4, 0x0

    .line 285
    :goto_1
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method


# virtual methods
.method public final clear()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/squareup/haha/trove/THashMap;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 377
    invoke-virtual {p0}, Lcom/squareup/haha/trove/THashMap;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 378
    invoke-super {p0}, Lcom/squareup/haha/trove/TObjectHash;->clear()V

    .line 379
    iget-object v2, p0, Lcom/squareup/haha/trove/THashMap;->_set:[Ljava/lang/Object;

    .line 380
    .local v2, "keys":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/squareup/haha/trove/THashMap;->_values:[Ljava/lang/Object;

    .line 382
    .local v3, "values":[Ljava/lang/Object;, "[TV;"
    array-length v0, v2

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 383
    aput-object v5, v2, v0

    .line 384
    aput-object v5, v3, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 387
    .end local v1    # "i":I
    .end local v2    # "keys":[Ljava/lang/Object;
    .end local v3    # "values":[Ljava/lang/Object;, "[TV;"
    :cond_0
    return-void
.end method

.method public final bridge synthetic clone()Lcom/squareup/haha/trove/TObjectHash;
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/squareup/haha/trove/THashMap;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/squareup/haha/trove/THashMap;->clone()Lcom/squareup/haha/trove/THashMap;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/squareup/haha/trove/THashMap;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/squareup/haha/trove/THashMap;->clone()Lcom/squareup/haha/trove/THashMap;

    move-result-object v0

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 486
    .local p0, "this":Lcom/squareup/haha/trove/THashMap;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/squareup/haha/trove/THashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/squareup/haha/trove/THashMap;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>;"
    const/4 v4, 0x1

    .line 455
    iget-object v2, p0, Lcom/squareup/haha/trove/THashMap;->_set:[Ljava/lang/Object;

    .line 456
    .local v2, "set":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/squareup/haha/trove/THashMap;->_values:[Ljava/lang/Object;

    .line 460
    .local v3, "vals":[Ljava/lang/Object;, "[TV;"
    if-nez p1, :cond_1

    .line 461
    array-length v0, v3

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_3

    .line 462
    aget-object v5, v2, v0

    if-eqz v5, :cond_4

    aget-object v5, v2, v0

    sget-object v6, Lcom/squareup/haha/trove/THashMap;->REMOVED:Ljava/lang/Object;

    if-eq v5, v6, :cond_4

    aget-object v5, v3, v0

    if-ne p1, v5, :cond_4

    .line 475
    :cond_0
    :goto_1
    return v4

    .line 468
    .end local v0    # "i":I
    :cond_1
    array-length v0, v3

    .restart local v0    # "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :goto_2
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_3

    .line 469
    aget-object v5, v2, v0

    if-eqz v5, :cond_2

    aget-object v5, v2, v0

    sget-object v6, Lcom/squareup/haha/trove/THashMap;->REMOVED:Ljava/lang/Object;

    if-eq v5, v6, :cond_2

    aget-object v5, v3, v0

    if-eq p1, v5, :cond_0

    aget-object v5, v3, v0

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 475
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 444
    .local p0, "this":Lcom/squareup/haha/trove/THashMap;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>;"
    new-instance v0, Lcom/squareup/haha/trove/THashMap$EntryView;

    invoke-direct {v0, p0}, Lcom/squareup/haha/trove/THashMap$EntryView;-><init>(Lcom/squareup/haha/trove/THashMap;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/squareup/haha/trove/THashMap;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 189
    instance-of v2, p1, Ljava/util/Map;

    if-nez v2, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 192
    check-cast v0, Ljava/util/Map;

    .line 193
    .local v0, "that":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/squareup/haha/trove/THashMap;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 196
    new-instance v1, Lcom/squareup/haha/trove/THashMap$EqProcedure;

    invoke-direct {v1, v0}, Lcom/squareup/haha/trove/THashMap$EqProcedure;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v1}, Lcom/squareup/haha/trove/THashMap;->forEachEntry(Lcom/squareup/haha/trove/TObjectObjectProcedure;)Z

    move-result v1

    goto :goto_0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "this":Lcom/squareup/haha/trove/THashMap;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/squareup/haha/trove/THashMap;->index(Ljava/lang/Object;)I

    move-result v0

    .line 367
    .local v0, "index":I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/squareup/haha/trove/THashMap;->_values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 200
    .local p0, "this":Lcom/squareup/haha/trove/THashMap;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>;"
    new-instance v0, Lcom/squareup/haha/trove/THashMap$HashProcedure;

    invoke-direct {v0, p0}, Lcom/squareup/haha/trove/THashMap$HashProcedure;-><init>(Lcom/squareup/haha/trove/THashMap;)V

    .line 201
    .local v0, "p":Lcom/squareup/haha/trove/THashMap$HashProcedure;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.HashProcedure;"
    invoke-direct {p0, v0}, Lcom/squareup/haha/trove/THashMap;->forEachEntry(Lcom/squareup/haha/trove/TObjectObjectProcedure;)Z

    .line 1212
    iget v1, v0, Lcom/squareup/haha/trove/THashMap$HashProcedure;->h:I

    .line 202
    return v1
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, "this":Lcom/squareup/haha/trove/THashMap;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>;"
    new-instance v0, Lcom/squareup/haha/trove/THashMap$KeyView;

    invoke-direct {v0, p0}, Lcom/squareup/haha/trove/THashMap$KeyView;-><init>(Lcom/squareup/haha/trove/THashMap;)V

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/squareup/haha/trove/THashMap;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 161
    if-nez p1, :cond_0

    .line 162
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "null keys not supported"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 164
    :cond_0
    const/4 v3, 0x0

    .line 165
    .local v3, "previous":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/squareup/haha/trove/THashMap;->insertionIndex(Ljava/lang/Object;)I

    move-result v1

    .line 166
    .local v1, "index":I
    if-gez v1, :cond_3

    move v0, v4

    .line 167
    .local v0, "alreadyStored":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 168
    neg-int v6, v1

    add-int/lit8 v1, v6, -0x1

    .line 169
    iget-object v6, p0, Lcom/squareup/haha/trove/THashMap;->_values:[Ljava/lang/Object;

    aget-object v3, v6, v1

    .line 171
    .end local v3    # "previous":Ljava/lang/Object;, "TV;"
    :cond_1
    iget-object v6, p0, Lcom/squareup/haha/trove/THashMap;->_set:[Ljava/lang/Object;

    aget-object v2, v6, v1

    .line 172
    .local v2, "oldKey":Ljava/lang/Object;
    iget-object v6, p0, Lcom/squareup/haha/trove/THashMap;->_set:[Ljava/lang/Object;

    aput-object p1, v6, v1

    .line 173
    iget-object v6, p0, Lcom/squareup/haha/trove/THashMap;->_values:[Ljava/lang/Object;

    aput-object p2, v6, v1

    .line 174
    if-nez v0, :cond_2

    .line 175
    if-nez v2, :cond_4

    :goto_1
    invoke-virtual {p0, v4}, Lcom/squareup/haha/trove/THashMap;->postInsertHook(Z)V

    .line 178
    :cond_2
    return-object v3

    .end local v0    # "alreadyStored":Z
    .end local v2    # "oldKey":Ljava/lang/Object;
    .restart local v3    # "previous":Ljava/lang/Object;, "TV;"
    :cond_3
    move v0, v5

    .line 166
    goto :goto_0

    .end local v3    # "previous":Ljava/lang/Object;, "TV;"
    .restart local v0    # "alreadyStored":Z
    .restart local v2    # "oldKey":Ljava/lang/Object;
    :cond_4
    move v4, v5

    .line 175
    goto :goto_1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 496
    .local p0, "this":Lcom/squareup/haha/trove/THashMap;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/squareup/haha/trove/THashMap;->ensureCapacity(I)V

    .line 498
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 499
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/squareup/haha/trove/THashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 501
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method protected final rehash(I)V
    .locals 9
    .param p1, "newCapacity"    # I

    .prologue
    .line 338
    .local p0, "this":Lcom/squareup/haha/trove/THashMap;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>;"
    iget-object v7, p0, Lcom/squareup/haha/trove/THashMap;->_set:[Ljava/lang/Object;

    array-length v4, v7

    .line 339
    .local v4, "oldCapacity":I
    iget-object v5, p0, Lcom/squareup/haha/trove/THashMap;->_set:[Ljava/lang/Object;

    .line 340
    .local v5, "oldKeys":[Ljava/lang/Object;
    iget-object v6, p0, Lcom/squareup/haha/trove/THashMap;->_values:[Ljava/lang/Object;

    .line 342
    .local v6, "oldVals":[Ljava/lang/Object;, "[TV;"
    new-array v7, p1, [Ljava/lang/Object;

    iput-object v7, p0, Lcom/squareup/haha/trove/THashMap;->_set:[Ljava/lang/Object;

    .line 343
    new-array v7, p1, [Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    iput-object v7, p0, Lcom/squareup/haha/trove/THashMap;->_values:[Ljava/lang/Object;

    .line 345
    move v0, v4

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_1

    .line 346
    aget-object v7, v5, v0

    if-eqz v7, :cond_2

    aget-object v7, v5, v0

    sget-object v8, Lcom/squareup/haha/trove/THashMap;->REMOVED:Ljava/lang/Object;

    if-eq v7, v8, :cond_2

    .line 347
    aget-object v3, v5, v0

    .line 348
    .local v3, "o":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lcom/squareup/haha/trove/THashMap;->insertionIndex(Ljava/lang/Object;)I

    move-result v2

    .line 349
    .local v2, "index":I
    if-gez v2, :cond_0

    .line 350
    iget-object v7, p0, Lcom/squareup/haha/trove/THashMap;->_set:[Ljava/lang/Object;

    neg-int v8, v2

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    invoke-virtual {p0, v7, v3}, Lcom/squareup/haha/trove/THashMap;->throwObjectContractViolation(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 352
    :cond_0
    iget-object v7, p0, Lcom/squareup/haha/trove/THashMap;->_set:[Ljava/lang/Object;

    aput-object v3, v7, v2

    .line 353
    iget-object v7, p0, Lcom/squareup/haha/trove/THashMap;->_values:[Ljava/lang/Object;

    aget-object v8, v6, v0

    aput-object v8, v7, v2

    move v1, v0

    .line 354
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 356
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "o":Ljava/lang/Object;
    .restart local v0    # "i":I
    :cond_1
    return-void

    :cond_2
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 397
    .local p0, "this":Lcom/squareup/haha/trove/THashMap;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 398
    .local v1, "prev":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/squareup/haha/trove/THashMap;->index(Ljava/lang/Object;)I

    move-result v0

    .line 399
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 400
    iget-object v2, p0, Lcom/squareup/haha/trove/THashMap;->_values:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 401
    invoke-virtual {p0, v0}, Lcom/squareup/haha/trove/THashMap;->removeAt(I)V

    .line 403
    .end local v1    # "prev":Ljava/lang/Object;, "TV;"
    :cond_0
    return-object v1
.end method

.method protected final removeAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 413
    .local p0, "this":Lcom/squareup/haha/trove/THashMap;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/trove/THashMap;->_values:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 414
    invoke-super {p0, p1}, Lcom/squareup/haha/trove/TObjectHash;->removeAt(I)V

    .line 415
    return-void
.end method

.method protected final setUp(I)I
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    .line 146
    .local p0, "this":Lcom/squareup/haha/trove/THashMap;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/squareup/haha/trove/TObjectHash;->setUp(I)I

    move-result v0

    .line 147
    .local v0, "capacity":I
    new-array v1, v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/squareup/haha/trove/THashMap;->_values:[Ljava/lang/Object;

    .line 148
    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, "this":Lcom/squareup/haha/trove/THashMap;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>;"
    new-instance v0, Lcom/squareup/haha/trove/THashMap$ValueView;

    invoke-direct {v0, p0}, Lcom/squareup/haha/trove/THashMap$ValueView;-><init>(Lcom/squareup/haha/trove/THashMap;)V

    return-object v0
.end method
