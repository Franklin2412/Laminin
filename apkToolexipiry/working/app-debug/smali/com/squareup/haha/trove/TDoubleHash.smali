.class public abstract Lcom/squareup/haha/trove/TDoubleHash;
.super Lcom/squareup/haha/trove/TPrimitiveHash;
.source "TDoubleHash.java"

# interfaces
.implements Lcom/squareup/haha/trove/TDoubleHashingStrategy;


# instance fields
.field private transient _set:[D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/squareup/haha/trove/TPrimitiveHash;-><init>()V

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

    check-cast v0, Lcom/squareup/haha/trove/TDoubleHash;

    .line 113
    .local v0, "h":Lcom/squareup/haha/trove/TDoubleHash;
    iget-object v1, p0, Lcom/squareup/haha/trove/TDoubleHash;->_set:[D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Lcom/squareup/haha/trove/TDoubleHash;->_set:[D

    .line 114
    return-object v0
.end method

.method protected final removeAt(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/squareup/haha/trove/TDoubleHash;->_set:[D

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
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/squareup/haha/trove/TDoubleHash;->_set:[D

    .line 128
    return v0
.end method
