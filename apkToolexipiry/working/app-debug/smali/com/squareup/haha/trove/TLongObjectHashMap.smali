.class public final Lcom/squareup/haha/trove/TLongObjectHashMap;
.super Lcom/squareup/haha/trove/THash;
.source "TLongObjectHashMap.java"

# interfaces
.implements Lcom/squareup/haha/trove/TLongHashingStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/haha/trove/TLongObjectHashMap$EqProcedure;,
        Lcom/squareup/haha/trove/TLongObjectHashMap$HashProcedure;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/trove/THash;",
        "Lcom/squareup/haha/trove/TLongHashingStrategy;"
    }
.end annotation


# instance fields
.field protected final _hashingStrategy:Lcom/squareup/haha/trove/TLongHashingStrategy;

.field private transient _set:[J

.field private transient _values:[Ljava/lang/Object;
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
    .line 47
    .local p0, "this":Lcom/squareup/haha/trove/TLongObjectHashMap;, "Lcom/squareup/haha/trove/TLongObjectHashMap<TV;>;"
    invoke-direct {p0}, Lcom/squareup/haha/trove/THash;-><init>()V

    .line 48
    iput-object p0, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_hashingStrategy:Lcom/squareup/haha/trove/TLongHashingStrategy;

    .line 49
    return-void
.end method

.method private forEachEntry(Lcom/squareup/haha/trove/TLongObjectProcedure;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/trove/TLongObjectProcedure",
            "<TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 578
    .local p0, "this":Lcom/squareup/haha/trove/TLongObjectHashMap;, "Lcom/squareup/haha/trove/TLongObjectHashMap<TV;>;"
    .local p1, "procedure":Lcom/squareup/haha/trove/TLongObjectProcedure;, "Lcom/squareup/haha/trove/TLongObjectProcedure<TV;>;"
    iget-object v2, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_set:[J

    .line 579
    .local v2, "keys":[J
    iget-object v3, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_values:[Ljava/lang/Object;

    .line 580
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

    .line 581
    invoke-static {v3, v0}, Lcom/squareup/haha/trove/TLongObjectHashMap;->isFull([Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-wide v4, v2, v0

    aget-object v6, v3, v0

    invoke-static {v6}, Lcom/squareup/haha/trove/TLongObjectHashMap;->unwrapNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v4, v5, v6}, Lcom/squareup/haha/trove/TLongObjectProcedure;->execute(JLjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 582
    const/4 v4, 0x0

    .line 585
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

.method private insertionIndex(J)I
    .locals 11
    .param p1, "val"    # J

    .prologue
    .local p0, "this":Lcom/squareup/haha/trove/TLongObjectHashMap;, "Lcom/squareup/haha/trove/TLongObjectHashMap<TV;>;"
    const/4 v7, -0x1

    .line 328
    iget-object v6, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_values:[Ljava/lang/Object;

    .line 329
    .local v6, "values":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_set:[J

    .line 330
    .local v5, "set":[J
    array-length v3, v5

    .line 331
    .local v3, "length":I
    iget-object v8, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_hashingStrategy:Lcom/squareup/haha/trove/TLongHashingStrategy;

    invoke-interface {v8, p1, p2}, Lcom/squareup/haha/trove/TLongHashingStrategy;->computeHashCode(J)I

    move-result v8

    const v9, 0x7fffffff

    and-int v1, v8, v9

    .line 332
    .local v1, "hash":I
    rem-int v2, v1, v3

    .line 334
    .local v2, "index":I
    invoke-static {v6, v2}, Lcom/squareup/haha/trove/TLongObjectHashMap;->isFree([Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    move v0, v2

    .line 378
    :cond_0
    :goto_0
    return v0

    .line 337
    :cond_1
    invoke-static {v6, v2}, Lcom/squareup/haha/trove/TLongObjectHashMap;->isFull([Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_2

    aget-wide v8, v5, v2

    cmp-long v8, v8, p1

    if-nez v8, :cond_2

    .line 338
    neg-int v7, v2

    add-int/lit8 v0, v7, -0x1

    goto :goto_0

    .line 343
    :cond_2
    add-int/lit8 v8, v3, -0x2

    rem-int v8, v1, v8

    add-int/lit8 v4, v8, 0x1

    .line 348
    .local v4, "probe":I
    invoke-static {v6, v2}, Lcom/squareup/haha/trove/TLongObjectHashMap;->isRemoved([Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_9

    move v0, v2

    .line 351
    .local v0, "firstRemoved":I
    :cond_3
    :goto_1
    sub-int/2addr v2, v4

    .line 352
    if-gez v2, :cond_4

    .line 353
    add-int/2addr v2, v3

    .line 355
    :cond_4
    if-ne v0, v7, :cond_5

    invoke-static {v6, v2}, Lcom/squareup/haha/trove/TLongObjectHashMap;->isRemoved([Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 356
    move v0, v2

    .line 359
    :cond_5
    invoke-static {v6, v2}, Lcom/squareup/haha/trove/TLongObjectHashMap;->isFull([Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_6

    aget-wide v8, v5, v2

    cmp-long v8, v8, p1

    if-nez v8, :cond_3

    .line 364
    :cond_6
    invoke-static {v6, v2}, Lcom/squareup/haha/trove/TLongObjectHashMap;->isRemoved([Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 365
    :cond_7
    :goto_2
    invoke-static {v6, v2}, Lcom/squareup/haha/trove/TLongObjectHashMap;->isFree([Ljava/lang/Object;I)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-static {v6, v2}, Lcom/squareup/haha/trove/TLongObjectHashMap;->isRemoved([Ljava/lang/Object;I)Z

    move-result v8

    if-nez v8, :cond_8

    aget-wide v8, v5, v2

    cmp-long v8, v8, p1

    if-eqz v8, :cond_a

    .line 367
    :cond_8
    sub-int/2addr v2, v4

    .line 368
    if-gez v2, :cond_7

    .line 369
    add-int/2addr v2, v3

    goto :goto_2

    .end local v0    # "firstRemoved":I
    :cond_9
    move v0, v7

    .line 348
    goto :goto_1

    .line 374
    .restart local v0    # "firstRemoved":I
    :cond_a
    invoke-static {v6, v2}, Lcom/squareup/haha/trove/TLongObjectHashMap;->isFull([Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 375
    neg-int v7, v2

    add-int/lit8 v0, v7, -0x1

    goto :goto_0

    .line 378
    :cond_b
    if-ne v0, v7, :cond_0

    move v0, v2

    goto :goto_0
.end method

.method private static isFree([Ljava/lang/Object;I)Z
    .locals 1
    .param p0, "values"    # [Ljava/lang/Object;
    .param p1, "index"    # I

    .prologue
    .line 391
    aget-object v0, p0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFull([Ljava/lang/Object;I)Z
    .locals 2
    .param p0, "values"    # [Ljava/lang/Object;
    .param p1, "index"    # I

    .prologue
    .line 382
    aget-object v0, p0, p1

    .line 383
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/squareup/haha/trove/TObjectHash;->REMOVED:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isRemoved([Ljava/lang/Object;I)Z
    .locals 2
    .param p0, "values"    # [Ljava/lang/Object;
    .param p1, "index"    # I

    .prologue
    .line 387
    aget-object v0, p0, p1

    sget-object v1, Lcom/squareup/haha/trove/TObjectHash;->REMOVED:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static unwrapNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "value":Ljava/lang/Object;, "TV;"
    sget-object v0, Lcom/squareup/haha/trove/TObjectHash;->NULL:Lcom/squareup/haha/trove/TObjectHash$NULL;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    return-object p0
.end method


# virtual methods
.method protected final capacity()I
    .locals 1

    .prologue
    .line 164
    .local p0, "this":Lcom/squareup/haha/trove/TLongObjectHashMap;, "Lcom/squareup/haha/trove/TLongObjectHashMap<TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_values:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public final clear()V
    .locals 6

    .prologue
    .line 263
    .local p0, "this":Lcom/squareup/haha/trove/TLongObjectHashMap;, "Lcom/squareup/haha/trove/TLongObjectHashMap<TV;>;"
    invoke-super {p0}, Lcom/squareup/haha/trove/THash;->clear()V

    .line 264
    iget-object v2, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_set:[J

    .line 265
    .local v2, "keys":[J
    iget-object v3, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_values:[Ljava/lang/Object;

    .line 267
    .local v3, "values":[Ljava/lang/Object;
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

    .line 268
    const-wide/16 v4, 0x0

    aput-wide v4, v2, v0

    .line 269
    const/4 v4, 0x0

    aput-object v4, v3, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 271
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 32
    .line 2117
    .local p0, "this":Lcom/squareup/haha/trove/TLongObjectHashMap;, "Lcom/squareup/haha/trove/TLongObjectHashMap<TV;>;"
    invoke-super {p0}, Lcom/squareup/haha/trove/THash;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/trove/TLongObjectHashMap;

    .line 2118
    iget-object v1, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_values:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_values:[Ljava/lang/Object;

    .line 32
    return-object v0
.end method

.method public final computeHashCode(J)I
    .locals 3
    .param p1, "val"    # J

    .prologue
    .line 665
    .line 2078
    .local p0, "this":Lcom/squareup/haha/trove/TLongObjectHashMap;, "Lcom/squareup/haha/trove/TLongObjectHashMap<TV;>;"
    const/16 v0, 0x20

    shr-long v0, p1, v0

    xor-long/2addr v0, p1

    long-to-int v0, v0

    .line 665
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/squareup/haha/trove/TLongObjectHashMap;, "Lcom/squareup/haha/trove/TLongObjectHashMap<TV;>;"
    const/4 v1, 0x0

    .line 402
    instance-of v2, p1, Lcom/squareup/haha/trove/TLongObjectHashMap;

    if-nez v2, :cond_1

    .line 409
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 405
    check-cast v0, Lcom/squareup/haha/trove/TLongObjectHashMap;

    .line 406
    .local v0, "that":Lcom/squareup/haha/trove/TLongObjectHashMap;
    invoke-virtual {v0}, Lcom/squareup/haha/trove/TLongObjectHashMap;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/squareup/haha/trove/TLongObjectHashMap;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 409
    new-instance v1, Lcom/squareup/haha/trove/TLongObjectHashMap$EqProcedure;

    invoke-direct {v1, v0}, Lcom/squareup/haha/trove/TLongObjectHashMap$EqProcedure;-><init>(Lcom/squareup/haha/trove/TLongObjectHashMap;)V

    invoke-direct {p0, v1}, Lcom/squareup/haha/trove/TLongObjectHashMap;->forEachEntry(Lcom/squareup/haha/trove/TLongObjectProcedure;)Z

    move-result v1

    goto :goto_0
.end method

.method public final forEachValue(Lcom/squareup/haha/trove/TObjectProcedure;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/trove/TObjectProcedure",
            "<TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 560
    .local p0, "this":Lcom/squareup/haha/trove/TLongObjectHashMap;, "Lcom/squareup/haha/trove/TLongObjectHashMap<TV;>;"
    .local p1, "procedure":Lcom/squareup/haha/trove/TObjectProcedure;, "Lcom/squareup/haha/trove/TObjectProcedure<TV;>;"
    iget-object v2, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_values:[Ljava/lang/Object;

    .line 561
    .local v2, "values":[Ljava/lang/Object;, "[TV;"
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

    .line 562
    invoke-static {v2, v0}, Lcom/squareup/haha/trove/TLongObjectHashMap;->isFull([Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/squareup/haha/trove/TLongObjectHashMap;->unwrapNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/squareup/haha/trove/TObjectProcedure;->execute(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 563
    const/4 v3, 0x0

    .line 566
    :goto_1
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public final get(J)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Lcom/squareup/haha/trove/TLongObjectHashMap;, "Lcom/squareup/haha/trove/TLongObjectHashMap<TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/squareup/haha/trove/TLongObjectHashMap;->index(J)I

    move-result v0

    .line 247
    .local v0, "index":I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/squareup/haha/trove/TLongObjectHashMap;->unwrapNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public final getValues()[Ljava/lang/Object;
    .locals 7

    .prologue
    .line 473
    .local p0, "this":Lcom/squareup/haha/trove/TLongObjectHashMap;, "Lcom/squareup/haha/trove/TLongObjectHashMap<TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/trove/TLongObjectHashMap;->size()I

    move-result v6

    new-array v4, v6, [Ljava/lang/Object;

    .line 474
    .local v4, "vals":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_values:[Ljava/lang/Object;

    .line 476
    .local v5, "values":[Ljava/lang/Object;, "[TV;"
    array-length v0, v5

    .local v0, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    move v3, v2

    .end local v2    # "j":I
    .local v3, "j":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 477
    invoke-static {v5, v0}, Lcom/squareup/haha/trove/TLongObjectHashMap;->isFull([Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 478
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    aget-object v6, v5, v0

    invoke-static {v6}, Lcom/squareup/haha/trove/TLongObjectHashMap;->unwrapNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v3

    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 481
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    return-object v4

    :cond_1
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 413
    .local p0, "this":Lcom/squareup/haha/trove/TLongObjectHashMap;, "Lcom/squareup/haha/trove/TLongObjectHashMap<TV;>;"
    new-instance v0, Lcom/squareup/haha/trove/TLongObjectHashMap$HashProcedure;

    invoke-direct {v0, p0}, Lcom/squareup/haha/trove/TLongObjectHashMap$HashProcedure;-><init>(Lcom/squareup/haha/trove/TLongObjectHashMap;)V

    .line 414
    .local v0, "p":Lcom/squareup/haha/trove/TLongObjectHashMap$HashProcedure;, "Lcom/squareup/haha/trove/TLongObjectHashMap<TV;>.HashProcedure;"
    invoke-direct {p0, v0}, Lcom/squareup/haha/trove/TLongObjectHashMap;->forEachEntry(Lcom/squareup/haha/trove/TLongObjectProcedure;)Z

    .line 1425
    iget v1, v0, Lcom/squareup/haha/trove/TLongObjectHashMap$HashProcedure;->h:I

    .line 415
    return v1
.end method

.method protected final index(J)I
    .locals 9
    .param p1, "val"    # J

    .prologue
    .line 296
    .local p0, "this":Lcom/squareup/haha/trove/TLongObjectHashMap;, "Lcom/squareup/haha/trove/TLongObjectHashMap<TV;>;"
    iget-object v4, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_set:[J

    .line 297
    .local v4, "set":[J
    iget-object v5, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_values:[Ljava/lang/Object;

    .line 298
    .local v5, "values":[Ljava/lang/Object;
    array-length v2, v4

    .line 299
    .local v2, "length":I
    iget-object v6, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_hashingStrategy:Lcom/squareup/haha/trove/TLongHashingStrategy;

    invoke-interface {v6, p1, p2}, Lcom/squareup/haha/trove/TLongHashingStrategy;->computeHashCode(J)I

    move-result v6

    const v7, 0x7fffffff

    and-int v0, v6, v7

    .line 300
    .local v0, "hash":I
    rem-int v1, v0, v2

    .line 302
    .local v1, "index":I
    invoke-static {v5, v1}, Lcom/squareup/haha/trove/TLongObjectHashMap;->isFree([Ljava/lang/Object;I)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v5, v1}, Lcom/squareup/haha/trove/TLongObjectHashMap;->isRemoved([Ljava/lang/Object;I)Z

    move-result v6

    if-nez v6, :cond_0

    aget-wide v6, v4, v1

    cmp-long v6, v6, p1

    if-eqz v6, :cond_3

    .line 305
    :cond_0
    add-int/lit8 v6, v2, -0x2

    rem-int v6, v0, v6

    add-int/lit8 v3, v6, 0x1

    .line 308
    .local v3, "probe":I
    :cond_1
    sub-int/2addr v1, v3

    .line 309
    if-gez v1, :cond_2

    .line 310
    add-int/2addr v1, v2

    .line 312
    :cond_2
    invoke-static {v5, v1}, Lcom/squareup/haha/trove/TLongObjectHashMap;->isFree([Ljava/lang/Object;I)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v5, v1}, Lcom/squareup/haha/trove/TLongObjectHashMap;->isRemoved([Ljava/lang/Object;I)Z

    move-result v6

    if-nez v6, :cond_1

    aget-wide v6, v4, v1

    cmp-long v6, v6, p1

    if-nez v6, :cond_1

    .line 316
    .end local v3    # "probe":I
    :cond_3
    invoke-static {v5, v1}, Lcom/squareup/haha/trove/TLongObjectHashMap;->isFree([Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v1, -0x1

    .end local v1    # "index":I
    :cond_4
    return v1
.end method

.method public final put(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lcom/squareup/haha/trove/TLongObjectHashMap;, "Lcom/squareup/haha/trove/TLongObjectHashMap<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    const/4 v3, 0x0

    .line 195
    .local v3, "wasFree":Z
    const/4 v2, 0x0

    .line 196
    .local v2, "previous":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p2}, Lcom/squareup/haha/trove/TLongObjectHashMap;->insertionIndex(J)I

    move-result v0

    .line 197
    .local v0, "index":I
    const/4 v1, 0x1

    .line 198
    .local v1, "isNewMapping":Z
    if-gez v0, :cond_2

    .line 199
    neg-int v4, v0

    add-int/lit8 v0, v4, -0x1

    .line 200
    iget-object v4, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_values:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/squareup/haha/trove/TLongObjectHashMap;->unwrapNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 201
    const/4 v1, 0x0

    .line 206
    .end local v2    # "previous":Ljava/lang/Object;, "TV;"
    :goto_0
    iget-object v4, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_set:[J

    aput-wide p1, v4, v0

    .line 207
    iget-object v4, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_values:[Ljava/lang/Object;

    .line 1254
    if-nez p3, :cond_0

    sget-object p3, Lcom/squareup/haha/trove/TObjectHash;->NULL:Lcom/squareup/haha/trove/TObjectHash$NULL;

    .line 207
    .end local p3    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    aput-object p3, v4, v0

    .line 208
    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {p0, v3}, Lcom/squareup/haha/trove/TLongObjectHashMap;->postInsertHook(Z)V

    .line 212
    :cond_1
    return-object v2

    .line 204
    .restart local v2    # "previous":Ljava/lang/Object;, "TV;"
    .restart local p3    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    iget-object v4, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_values:[Ljava/lang/Object;

    invoke-static {v4, v0}, Lcom/squareup/haha/trove/TLongObjectHashMap;->isFree([Ljava/lang/Object;I)Z

    move-result v3

    goto :goto_0
.end method

.method protected final rehash(I)V
    .locals 10
    .param p1, "newCapacity"    # I

    .prologue
    .line 222
    .local p0, "this":Lcom/squareup/haha/trove/TLongObjectHashMap;, "Lcom/squareup/haha/trove/TLongObjectHashMap<TV;>;"
    iget-object v8, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_set:[J

    array-length v3, v8

    .line 223
    .local v3, "oldCapacity":I
    iget-object v6, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_set:[J

    .line 224
    .local v6, "oldKeys":[J
    iget-object v7, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_values:[Ljava/lang/Object;

    .line 226
    .local v7, "oldVals":[Ljava/lang/Object;, "[TV;"
    new-array v8, p1, [J

    iput-object v8, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_set:[J

    .line 227
    new-array v8, p1, [Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    iput-object v8, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_values:[Ljava/lang/Object;

    .line 229
    move v0, v3

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 230
    invoke-static {v7, v0}, Lcom/squareup/haha/trove/TLongObjectHashMap;->isFull([Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 231
    aget-wide v4, v6, v0

    .line 232
    .local v4, "o":J
    invoke-direct {p0, v4, v5}, Lcom/squareup/haha/trove/TLongObjectHashMap;->insertionIndex(J)I

    move-result v2

    .line 233
    .local v2, "index":I
    iget-object v8, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_set:[J

    aput-wide v4, v8, v2

    .line 234
    iget-object v8, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_values:[Ljava/lang/Object;

    aget-object v9, v7, v0

    aput-object v9, v8, v2

    move v1, v0

    .line 235
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 237
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v4    # "o":J
    .restart local v0    # "i":I
    :cond_0
    return-void

    :cond_1
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method protected final removeAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 463
    .local p0, "this":Lcom/squareup/haha/trove/TLongObjectHashMap;, "Lcom/squareup/haha/trove/TLongObjectHashMap<TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_values:[Ljava/lang/Object;

    sget-object v1, Lcom/squareup/haha/trove/TObjectHash;->REMOVED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 464
    invoke-super {p0, p1}, Lcom/squareup/haha/trove/THash;->removeAt(I)V

    .line 465
    return-void
.end method

.method protected final setUp(I)I
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    .line 138
    .local p0, "this":Lcom/squareup/haha/trove/TLongObjectHashMap;, "Lcom/squareup/haha/trove/TLongObjectHashMap<TV;>;"
    invoke-super {p0, p1}, Lcom/squareup/haha/trove/THash;->setUp(I)I

    move-result v0

    .line 139
    .local v0, "capacity":I
    new-array v1, v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_values:[Ljava/lang/Object;

    .line 140
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/squareup/haha/trove/TLongObjectHashMap;->_set:[J

    .line 142
    return v0
.end method
