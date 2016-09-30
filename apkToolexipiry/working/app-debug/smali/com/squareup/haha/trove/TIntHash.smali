.class public abstract Lcom/squareup/haha/trove/TIntHash;
.super Lcom/squareup/haha/trove/TPrimitiveHash;
.source "TIntHash.java"

# interfaces
.implements Lcom/squareup/haha/trove/TIntHashingStrategy;


# instance fields
.field private transient _set:[I


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

    check-cast v0, Lcom/squareup/haha/trove/TIntHash;

    .line 113
    .local v0, "h":Lcom/squareup/haha/trove/TIntHash;
    iget-object v1, p0, Lcom/squareup/haha/trove/TIntHash;->_set:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/squareup/haha/trove/TIntHash;->_set:[I

    .line 114
    return-object v0
.end method

.method public final computeHashCode(I)I
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 259
    return p1
.end method

.method protected final removeAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/squareup/haha/trove/TIntHash;->_set:[I

    const/4 v1, 0x0

    aput v1, v0, p1

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
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/squareup/haha/trove/TIntHash;->_set:[I

    .line 128
    return v0
.end method
