.class public final Lcom/squareup/haha/trove/TLongHashSet;
.super Lcom/squareup/haha/trove/TLongHash;
.source "TLongHashSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/haha/trove/TLongHashSet$HashProcedure;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/squareup/haha/trove/TLongHash;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public final add(J)Z
    .locals 5
    .param p1, "val"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/squareup/haha/trove/TLongHashSet;->insertionIndex(J)I

    move-result v0

    .line 139
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 148
    :goto_0
    return v2

    .line 143
    :cond_0
    iget-object v4, p0, Lcom/squareup/haha/trove/TLongHashSet;->_states:[B

    aget-byte v1, v4, v0

    .line 144
    .local v1, "previousState":B
    iget-object v4, p0, Lcom/squareup/haha/trove/TLongHashSet;->_set:[J

    aput-wide p1, v4, v0

    .line 145
    iget-object v4, p0, Lcom/squareup/haha/trove/TLongHashSet;->_states:[B

    aput-byte v3, v4, v0

    .line 146
    if-nez v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p0, v2}, Lcom/squareup/haha/trove/TLongHashSet;->postInsertHook(Z)V

    move v2, v3

    .line 148
    goto :goto_0
.end method

.method public final clear()V
    .locals 6

    .prologue
    .line 198
    invoke-super {p0}, Lcom/squareup/haha/trove/TLongHash;->clear()V

    .line 199
    iget-object v2, p0, Lcom/squareup/haha/trove/TLongHashSet;->_set:[J

    .line 200
    .local v2, "set":[J
    iget-object v3, p0, Lcom/squareup/haha/trove/TLongHashSet;->_states:[B

    .line 202
    .local v3, "states":[B
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

    .line 203
    const-wide/16 v4, 0x0

    aput-wide v4, v2, v0

    .line 204
    const/4 v4, 0x0

    aput-byte v4, v3, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 206
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 216
    instance-of v2, p1, Lcom/squareup/haha/trove/TLongHashSet;

    if-nez v2, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 219
    check-cast v0, Lcom/squareup/haha/trove/TLongHashSet;

    .line 220
    .local v0, "that":Lcom/squareup/haha/trove/TLongHashSet;
    invoke-virtual {v0}, Lcom/squareup/haha/trove/TLongHashSet;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/squareup/haha/trove/TLongHashSet;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 223
    new-instance v1, Lcom/squareup/haha/trove/TLongHashSet$1;

    invoke-direct {v1, p0, v0}, Lcom/squareup/haha/trove/TLongHashSet$1;-><init>(Lcom/squareup/haha/trove/TLongHashSet;Lcom/squareup/haha/trove/TLongHashSet;)V

    invoke-virtual {p0, v1}, Lcom/squareup/haha/trove/TLongHashSet;->forEach(Lcom/squareup/haha/trove/TLongProcedure;)Z

    move-result v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 232
    new-instance v0, Lcom/squareup/haha/trove/TLongHashSet$HashProcedure;

    invoke-direct {v0, p0}, Lcom/squareup/haha/trove/TLongHashSet$HashProcedure;-><init>(Lcom/squareup/haha/trove/TLongHashSet;)V

    .line 233
    .local v0, "p":Lcom/squareup/haha/trove/TLongHashSet$HashProcedure;
    invoke-virtual {p0, v0}, Lcom/squareup/haha/trove/TLongHashSet;->forEach(Lcom/squareup/haha/trove/TLongProcedure;)Z

    .line 1244
    iget v1, v0, Lcom/squareup/haha/trove/TLongHashSet$HashProcedure;->h:I

    .line 234
    return v1
.end method

.method protected final rehash(I)V
    .locals 10
    .param p1, "newCapacity"    # I

    .prologue
    const/4 v9, 0x1

    .line 158
    iget-object v8, p0, Lcom/squareup/haha/trove/TLongHashSet;->_set:[J

    array-length v3, v8

    .line 159
    .local v3, "oldCapacity":I
    iget-object v6, p0, Lcom/squareup/haha/trove/TLongHashSet;->_set:[J

    .line 160
    .local v6, "oldSet":[J
    iget-object v7, p0, Lcom/squareup/haha/trove/TLongHashSet;->_states:[B

    .line 162
    .local v7, "oldStates":[B
    new-array v8, p1, [J

    iput-object v8, p0, Lcom/squareup/haha/trove/TLongHashSet;->_set:[J

    .line 163
    new-array v8, p1, [B

    iput-object v8, p0, Lcom/squareup/haha/trove/TLongHashSet;->_states:[B

    .line 165
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

    .line 166
    aget-byte v8, v7, v0

    if-ne v8, v9, :cond_1

    .line 167
    aget-wide v4, v6, v0

    .line 168
    .local v4, "o":J
    invoke-virtual {p0, v4, v5}, Lcom/squareup/haha/trove/TLongHashSet;->insertionIndex(J)I

    move-result v2

    .line 169
    .local v2, "index":I
    iget-object v8, p0, Lcom/squareup/haha/trove/TLongHashSet;->_set:[J

    aput-wide v4, v8, v2

    .line 170
    iget-object v8, p0, Lcom/squareup/haha/trove/TLongHashSet;->_states:[B

    aput-byte v9, v8, v2

    move v1, v0

    .line 171
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 173
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
