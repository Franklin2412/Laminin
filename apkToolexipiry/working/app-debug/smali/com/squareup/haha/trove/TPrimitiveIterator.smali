.class abstract Lcom/squareup/haha/trove/TPrimitiveIterator;
.super Lcom/squareup/haha/trove/TIterator;
.source "TPrimitiveIterator.java"


# instance fields
.field private _hash:Lcom/squareup/haha/trove/TPrimitiveHash;


# virtual methods
.method protected final nextIndex()I
    .locals 5

    .prologue
    .line 66
    iget v3, p0, Lcom/squareup/haha/trove/TPrimitiveIterator;->_expectedSize:I

    iget-object v4, p0, Lcom/squareup/haha/trove/TPrimitiveIterator;->_hash:Lcom/squareup/haha/trove/TPrimitiveHash;

    invoke-virtual {v4}, Lcom/squareup/haha/trove/TPrimitiveHash;->size()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 67
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 70
    :cond_0
    iget-object v3, p0, Lcom/squareup/haha/trove/TPrimitiveIterator;->_hash:Lcom/squareup/haha/trove/TPrimitiveHash;

    iget-object v2, v3, Lcom/squareup/haha/trove/TPrimitiveHash;->_states:[B

    .line 71
    .local v2, "states":[B
    iget v0, p0, Lcom/squareup/haha/trove/TPrimitiveIterator;->_index:I

    .local v0, "i":I
    move v1, v0

    .line 72
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_1

    aget-byte v3, v2, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 73
    :cond_1
    return v0

    :cond_2
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method
