.class abstract Lcom/squareup/haha/trove/THashIterator;
.super Lcom/squareup/haha/trove/TIterator;
.source "THashIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/trove/TIterator;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private _hash:Lcom/squareup/haha/trove/TObjectHash;


# direct methods
.method public constructor <init>(Lcom/squareup/haha/trove/TObjectHash;)V
    .locals 0
    .param p1, "hash"    # Lcom/squareup/haha/trove/TObjectHash;

    .prologue
    .line 53
    .local p0, "this":Lcom/squareup/haha/trove/THashIterator;, "Lcom/squareup/haha/trove/THashIterator<TV;>;"
    invoke-direct {p0, p1}, Lcom/squareup/haha/trove/TIterator;-><init>(Lcom/squareup/haha/trove/THash;)V

    .line 54
    iput-object p1, p0, Lcom/squareup/haha/trove/THashIterator;->_hash:Lcom/squareup/haha/trove/TObjectHash;

    .line 55
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/squareup/haha/trove/THashIterator;, "Lcom/squareup/haha/trove/THashIterator<TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/trove/THashIterator;->moveToNextIndex()V

    .line 69
    iget v0, p0, Lcom/squareup/haha/trove/THashIterator;->_index:I

    invoke-virtual {p0, v0}, Lcom/squareup/haha/trove/THashIterator;->objectAtIndex(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final nextIndex()I
    .locals 5

    .prologue
    .line 83
    .local p0, "this":Lcom/squareup/haha/trove/THashIterator;, "Lcom/squareup/haha/trove/THashIterator<TV;>;"
    iget v3, p0, Lcom/squareup/haha/trove/THashIterator;->_expectedSize:I

    iget-object v4, p0, Lcom/squareup/haha/trove/THashIterator;->_hash:Lcom/squareup/haha/trove/TObjectHash;

    invoke-virtual {v4}, Lcom/squareup/haha/trove/TObjectHash;->size()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 84
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 87
    :cond_0
    iget-object v3, p0, Lcom/squareup/haha/trove/THashIterator;->_hash:Lcom/squareup/haha/trove/TObjectHash;

    iget-object v2, v3, Lcom/squareup/haha/trove/TObjectHash;->_set:[Ljava/lang/Object;

    .line 88
    .local v2, "set":[Ljava/lang/Object;
    iget v0, p0, Lcom/squareup/haha/trove/THashIterator;->_index:I

    .local v0, "i":I
    move v1, v0

    .line 89
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_1

    aget-object v3, v2, v0

    if-eqz v3, :cond_2

    aget-object v3, v2, v0

    sget-object v4, Lcom/squareup/haha/trove/TObjectHash;->REMOVED:Ljava/lang/Object;

    if-eq v3, v4, :cond_2

    .line 90
    :cond_1
    return v0

    :cond_2
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method protected abstract objectAtIndex(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation
.end method
