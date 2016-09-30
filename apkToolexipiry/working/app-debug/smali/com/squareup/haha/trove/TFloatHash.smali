.class public abstract Lcom/squareup/haha/trove/TFloatHash;
.super Lcom/squareup/haha/trove/TPrimitiveHash;
.source "TFloatHash.java"

# interfaces
.implements Lcom/squareup/haha/trove/TDoubleHashingStrategy;


# instance fields
.field private transient _set:[F


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

    check-cast v0, Lcom/squareup/haha/trove/TFloatHash;

    .line 113
    .local v0, "h":Lcom/squareup/haha/trove/TFloatHash;
    iget-object v1, p0, Lcom/squareup/haha/trove/TFloatHash;->_set:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/squareup/haha/trove/TFloatHash;->_set:[F

    .line 114
    return-object v0
.end method

.method protected final removeAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/squareup/haha/trove/TFloatHash;->_set:[F

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
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/squareup/haha/trove/TFloatHash;->_set:[F

    .line 128
    return v0
.end method
