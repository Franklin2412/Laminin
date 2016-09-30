.class public abstract Lcom/squareup/haha/trove/TLongHash;
.super Lcom/squareup/haha/trove/TPrimitiveHash;
.source "TLongHash.java"

# interfaces
.implements Lcom/squareup/haha/trove/TLongHashingStrategy;


# instance fields
.field protected _hashingStrategy:Lcom/squareup/haha/trove/TLongHashingStrategy;

.field protected transient _set:[J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/squareup/haha/trove/TPrimitiveHash;-><init>()V

    .line 43
    iput-object p0, p0, Lcom/squareup/haha/trove/TLongHash;->_hashingStrategy:Lcom/squareup/haha/trove/TLongHashingStrategy;

    .line 44
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Lcom/squareup/haha/trove/TPrimitiveHash;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/trove/TLongHash;

    .line 113
    .local v0, "h":Lcom/squareup/haha/trove/TLongHash;
    iget-object v1, p0, Lcom/squareup/haha/trove/TLongHash;->_set:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Lcom/squareup/haha/trove/TLongHash;->_set:[J

    .line 114
    return-object v0
.end method

.method public final computeHashCode(J)I
    .locals 3
    .param p1, "val"    # J

    .prologue
    .line 259
    .line 2078
    const/16 v0, 0x20

    shr-long v0, p1, v0

    xor-long/2addr v0, p1

    long-to-int v0, v0

    .line 259
    return v0
.end method

.method public final contains(J)Z
    .locals 9
    .param p1, "val"    # J

    .prologue
    const/4 v8, 0x2

    .line 138
    .line 1177
    iget-object v1, p0, Lcom/squareup/haha/trove/TLongHash;->_states:[B

    .line 1178
    iget-object v2, p0, Lcom/squareup/haha/trove/TLongHash;->_set:[J

    .line 1179
    array-length v3, v1

    .line 1180
    iget-object v0, p0, Lcom/squareup/haha/trove/TLongHash;->_hashingStrategy:Lcom/squareup/haha/trove/TLongHashingStrategy;

    invoke-interface {v0, p1, p2}, Lcom/squareup/haha/trove/TLongHashingStrategy;->computeHashCode(J)I

    move-result v0

    const v4, 0x7fffffff

    and-int/2addr v4, v0

    .line 1181
    rem-int v0, v4, v3

    .line 1183
    aget-byte v5, v1, v0

    if-eqz v5, :cond_3

    aget-byte v5, v1, v0

    if-eq v5, v8, :cond_0

    aget-wide v6, v2, v0

    cmp-long v5, v6, p1

    if-eqz v5, :cond_3

    .line 1186
    :cond_0
    add-int/lit8 v5, v3, -0x2

    rem-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    .line 1189
    :cond_1
    sub-int/2addr v0, v4

    .line 1190
    if-gez v0, :cond_2

    .line 1191
    add-int/2addr v0, v3

    .line 1193
    :cond_2
    aget-byte v5, v1, v0

    if-eqz v5, :cond_3

    aget-byte v5, v1, v0

    if-eq v5, v8, :cond_1

    aget-wide v6, v2, v0

    cmp-long v5, v6, p1

    if-nez v5, :cond_1

    .line 1197
    :cond_3
    aget-byte v1, v1, v0

    if-nez v1, :cond_4

    const/4 v0, -0x1

    .line 138
    :cond_4
    if-ltz v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final forEach(Lcom/squareup/haha/trove/TLongProcedure;)Z
    .locals 8
    .param p1, "procedure"    # Lcom/squareup/haha/trove/TLongProcedure;

    .prologue
    const/4 v4, 0x1

    .line 149
    iget-object v3, p0, Lcom/squareup/haha/trove/TLongHash;->_states:[B

    .line 150
    .local v3, "states":[B
    iget-object v2, p0, Lcom/squareup/haha/trove/TLongHash;->_set:[J

    .line 151
    .local v2, "set":[J
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

    .line 152
    aget-byte v5, v3, v0

    if-ne v5, v4, :cond_1

    aget-wide v6, v2, v0

    invoke-interface {p1, v6, v7}, Lcom/squareup/haha/trove/TLongProcedure;->execute(J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 153
    const/4 v4, 0x0

    .line 156
    :cond_0
    return v4

    :cond_1
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method protected final insertionIndex(J)I
    .locals 13
    .param p1, "val"    # J

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 209
    iget-object v6, p0, Lcom/squareup/haha/trove/TLongHash;->_states:[B

    .line 210
    .local v6, "states":[B
    iget-object v5, p0, Lcom/squareup/haha/trove/TLongHash;->_set:[J

    .line 211
    .local v5, "set":[J
    array-length v3, v6

    .line 212
    .local v3, "length":I
    iget-object v7, p0, Lcom/squareup/haha/trove/TLongHash;->_hashingStrategy:Lcom/squareup/haha/trove/TLongHashingStrategy;

    invoke-interface {v7, p1, p2}, Lcom/squareup/haha/trove/TLongHashingStrategy;->computeHashCode(J)I

    move-result v7

    const v8, 0x7fffffff

    and-int v1, v7, v8

    .line 213
    .local v1, "hash":I
    rem-int v2, v1, v3

    .line 215
    .local v2, "index":I
    aget-byte v7, v6, v2

    if-nez v7, :cond_1

    move v0, v2

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 217
    :cond_1
    aget-byte v7, v6, v2

    if-ne v7, v10, :cond_2

    aget-wide v8, v5, v2

    cmp-long v7, v8, p1

    if-nez v7, :cond_2

    .line 218
    neg-int v7, v2

    add-int/lit8 v0, v7, -0x1

    goto :goto_0

    .line 221
    :cond_2
    add-int/lit8 v7, v3, -0x2

    rem-int v7, v1, v7

    add-int/lit8 v4, v7, 0x1

    .line 225
    .local v4, "probe":I
    :cond_3
    sub-int/2addr v2, v4

    .line 226
    if-gez v2, :cond_4

    .line 227
    add-int/2addr v2, v3

    .line 229
    :cond_4
    aget-byte v7, v6, v2

    if-ne v7, v10, :cond_5

    aget-wide v8, v5, v2

    cmp-long v7, v8, p1

    if-nez v7, :cond_3

    .line 234
    :cond_5
    aget-byte v7, v6, v2

    if-ne v7, v11, :cond_9

    .line 235
    move v0, v2

    .line 236
    .local v0, "firstRemoved":I
    :cond_6
    :goto_1
    aget-byte v7, v6, v2

    if-eqz v7, :cond_8

    aget-byte v7, v6, v2

    if-eq v7, v11, :cond_7

    aget-wide v8, v5, v2

    cmp-long v7, v8, p1

    if-eqz v7, :cond_8

    .line 238
    :cond_7
    sub-int/2addr v2, v4

    .line 239
    if-gez v2, :cond_6

    .line 240
    add-int/2addr v2, v3

    goto :goto_1

    .line 243
    :cond_8
    aget-byte v7, v6, v2

    if-ne v7, v10, :cond_0

    neg-int v7, v2

    add-int/lit8 v0, v7, -0x1

    goto :goto_0

    .line 246
    .end local v0    # "firstRemoved":I
    :cond_9
    aget-byte v7, v6, v2

    if-ne v7, v10, :cond_a

    neg-int v7, v2

    add-int/lit8 v0, v7, -0x1

    goto :goto_0

    :cond_a
    move v0, v2

    goto :goto_0
.end method

.method protected final removeAt(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/squareup/haha/trove/TLongHash;->_set:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v0, p1

    .line 167
    invoke-super {p0, p1}, Lcom/squareup/haha/trove/TPrimitiveHash;->removeAt(I)V

    .line 168
    return-void
.end method

.method protected final setUp(I)I
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/squareup/haha/trove/TPrimitiveHash;->setUp(I)I

    move-result v0

    .line 127
    .local v0, "capacity":I
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/squareup/haha/trove/TLongHash;->_set:[J

    .line 128
    return v0
.end method
