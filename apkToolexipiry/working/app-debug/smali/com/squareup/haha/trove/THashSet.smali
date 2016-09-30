.class public final Lcom/squareup/haha/trove/THashSet;
.super Lcom/squareup/haha/trove/TObjectHash;
.source "THashSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/haha/trove/THashSet$HashProcedure;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/trove/TObjectHash",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    .local p0, "this":Lcom/squareup/haha/trove/THashSet;, "Lcom/squareup/haha/trove/THashSet<TE;>;"
    invoke-direct {p0}, Lcom/squareup/haha/trove/TObjectHash;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/squareup/haha/trove/THashSet;, "Lcom/squareup/haha/trove/THashSet<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    invoke-virtual {p0, p1}, Lcom/squareup/haha/trove/THashSet;->insertionIndex(Ljava/lang/Object;)I

    move-result v0

    .line 141
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 149
    :goto_0
    return v2

    .line 145
    :cond_0
    iget-object v4, p0, Lcom/squareup/haha/trove/THashSet;->_set:[Ljava/lang/Object;

    aget-object v1, v4, v0

    .line 146
    .local v1, "old":Ljava/lang/Object;
    iget-object v4, p0, Lcom/squareup/haha/trove/THashSet;->_set:[Ljava/lang/Object;

    aput-object p1, v4, v0

    .line 148
    if-nez v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p0, v2}, Lcom/squareup/haha/trove/THashSet;->postInsertHook(Z)V

    move v2, v3

    .line 149
    goto :goto_0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Lcom/squareup/haha/trove/THashSet;, "Lcom/squareup/haha/trove/THashSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    .line 315
    .local v2, "size":I
    invoke-virtual {p0, v2}, Lcom/squareup/haha/trove/THashSet;->ensureCapacity(I)V

    .line 316
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 317
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    const/4 v0, 0x0

    .local v0, "changed":Z
    move v3, v2

    .line 318
    .end local v2    # "size":I
    .local v3, "size":I
    :goto_0
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "size":I
    .restart local v2    # "size":I
    if-lez v3, :cond_0

    .line 319
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/squareup/haha/trove/THashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 320
    const/4 v0, 0x1

    move v3, v2

    .end local v2    # "size":I
    .restart local v3    # "size":I
    goto :goto_0

    .line 323
    .end local v3    # "size":I
    .restart local v2    # "size":I
    :cond_0
    return v0

    :cond_1
    move v3, v2

    .end local v2    # "size":I
    .restart local v3    # "size":I
    goto :goto_0
.end method

.method public final clear()V
    .locals 4

    .prologue
    .line 253
    .local p0, "this":Lcom/squareup/haha/trove/THashSet;, "Lcom/squareup/haha/trove/THashSet<TE;>;"
    invoke-super {p0}, Lcom/squareup/haha/trove/TObjectHash;->clear()V

    .line 254
    iget-object v2, p0, Lcom/squareup/haha/trove/THashSet;->_set:[Ljava/lang/Object;

    .line 256
    .local v2, "set":[Ljava/lang/Object;
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

    .line 257
    const/4 v3, 0x0

    aput-object v3, v2, v0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 259
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    return-void
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lcom/squareup/haha/trove/THashSet;, "Lcom/squareup/haha/trove/THashSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 298
    .local v0, "element":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/squareup/haha/trove/THashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 299
    const/4 v2, 0x0

    .line 302
    .end local v0    # "element":Ljava/lang/Object;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/squareup/haha/trove/THashSet;, "Lcom/squareup/haha/trove/THashSet<TE;>;"
    const/4 v1, 0x0

    .line 153
    instance-of v2, p1, Ljava/util/Set;

    if-nez v2, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 156
    check-cast v0, Ljava/util/Set;

    .line 157
    .local v0, "that":Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/squareup/haha/trove/THashSet;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 160
    invoke-virtual {p0, v0}, Lcom/squareup/haha/trove/THashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 164
    .local p0, "this":Lcom/squareup/haha/trove/THashSet;, "Lcom/squareup/haha/trove/THashSet<TE;>;"
    new-instance v0, Lcom/squareup/haha/trove/THashSet$HashProcedure;

    invoke-direct {v0, p0}, Lcom/squareup/haha/trove/THashSet$HashProcedure;-><init>(Lcom/squareup/haha/trove/THashSet;)V

    .line 165
    .local v0, "p":Lcom/squareup/haha/trove/THashSet$HashProcedure;, "Lcom/squareup/haha/trove/THashSet<TE;>.HashProcedure;"
    invoke-virtual {p0, v0}, Lcom/squareup/haha/trove/THashSet;->forEach(Lcom/squareup/haha/trove/TObjectProcedure;)Z

    .line 1176
    iget v1, v0, Lcom/squareup/haha/trove/THashSet$HashProcedure;->h:I

    .line 166
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 285
    .local p0, "this":Lcom/squareup/haha/trove/THashSet;, "Lcom/squareup/haha/trove/THashSet<TE;>;"
    new-instance v0, Lcom/squareup/haha/trove/TObjectHashIterator;

    invoke-direct {v0, p0}, Lcom/squareup/haha/trove/TObjectHashIterator;-><init>(Lcom/squareup/haha/trove/TObjectHash;)V

    return-object v0
.end method

.method protected final rehash(I)V
    .locals 8
    .param p1, "newCapacity"    # I

    .prologue
    .line 193
    .local p0, "this":Lcom/squareup/haha/trove/THashSet;, "Lcom/squareup/haha/trove/THashSet<TE;>;"
    iget-object v6, p0, Lcom/squareup/haha/trove/THashSet;->_set:[Ljava/lang/Object;

    array-length v4, v6

    .line 194
    .local v4, "oldCapacity":I
    iget-object v5, p0, Lcom/squareup/haha/trove/THashSet;->_set:[Ljava/lang/Object;

    .line 196
    .local v5, "oldSet":[Ljava/lang/Object;
    new-array v6, p1, [Ljava/lang/Object;

    iput-object v6, p0, Lcom/squareup/haha/trove/THashSet;->_set:[Ljava/lang/Object;

    .line 198
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

    .line 199
    aget-object v6, v5, v0

    if-eqz v6, :cond_2

    aget-object v6, v5, v0

    sget-object v7, Lcom/squareup/haha/trove/THashSet;->REMOVED:Ljava/lang/Object;

    if-eq v6, v7, :cond_2

    .line 200
    aget-object v3, v5, v0

    .line 201
    .local v3, "o":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v3}, Lcom/squareup/haha/trove/THashSet;->insertionIndex(Ljava/lang/Object;)I

    move-result v2

    .line 202
    .local v2, "index":I
    if-gez v2, :cond_0

    .line 203
    iget-object v6, p0, Lcom/squareup/haha/trove/THashSet;->_set:[Ljava/lang/Object;

    neg-int v7, v2

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    invoke-virtual {p0, v6, v3}, Lcom/squareup/haha/trove/THashSet;->throwObjectContractViolation(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    :cond_0
    iget-object v6, p0, Lcom/squareup/haha/trove/THashSet;->_set:[Ljava/lang/Object;

    aput-object v3, v6, v2

    move v1, v0

    .line 206
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 208
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "o":Ljava/lang/Object;, "TE;"
    .restart local v0    # "i":I
    :cond_1
    return-void

    :cond_2
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 269
    .local p0, "this":Lcom/squareup/haha/trove/THashSet;, "Lcom/squareup/haha/trove/THashSet<TE;>;"
    invoke-virtual {p0, p1}, Lcom/squareup/haha/trove/THashSet;->index(Ljava/lang/Object;)I

    move-result v0

    .line 270
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 271
    invoke-virtual {p0, v0}, Lcom/squareup/haha/trove/THashSet;->removeAt(I)V

    .line 272
    const/4 v1, 0x1

    .line 274
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, "this":Lcom/squareup/haha/trove/THashSet;, "Lcom/squareup/haha/trove/THashSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    .line 336
    .local v2, "size":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 337
    .local v1, "it":Ljava/util/Iterator;
    const/4 v0, 0x0

    .local v0, "changed":Z
    move v3, v2

    .line 338
    .end local v2    # "size":I
    .local v3, "size":I
    :goto_0
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "size":I
    .restart local v2    # "size":I
    if-lez v3, :cond_0

    .line 339
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/squareup/haha/trove/THashSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 340
    const/4 v0, 0x1

    move v3, v2

    .end local v2    # "size":I
    .restart local v3    # "size":I
    goto :goto_0

    .line 343
    .end local v3    # "size":I
    .restart local v2    # "size":I
    :cond_0
    return v0

    :cond_1
    move v3, v2

    .end local v2    # "size":I
    .restart local v3    # "size":I
    goto :goto_0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "this":Lcom/squareup/haha/trove/THashSet;, "Lcom/squareup/haha/trove/THashSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/squareup/haha/trove/THashSet;->size()I

    move-result v2

    .line 357
    .local v2, "size":I
    invoke-virtual {p0}, Lcom/squareup/haha/trove/THashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 358
    .local v1, "it":Ljava/util/Iterator;
    const/4 v0, 0x0

    .local v0, "changed":Z
    move v3, v2

    .line 359
    .end local v2    # "size":I
    .local v3, "size":I
    :goto_0
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "size":I
    .restart local v2    # "size":I
    if-lez v3, :cond_0

    .line 360
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 361
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 362
    const/4 v0, 0x1

    move v3, v2

    .end local v2    # "size":I
    .restart local v3    # "size":I
    goto :goto_0

    .line 365
    .end local v3    # "size":I
    .restart local v2    # "size":I
    :cond_0
    return v0

    :cond_1
    move v3, v2

    .end local v2    # "size":I
    .restart local v3    # "size":I
    goto :goto_0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 217
    .local p0, "this":Lcom/squareup/haha/trove/THashSet;, "Lcom/squareup/haha/trove/THashSet<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/trove/THashSet;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 218
    .local v0, "result":[Ljava/lang/Object;
    new-instance v1, Lcom/squareup/haha/trove/ToObjectArrayProcedure;

    invoke-direct {v1, v0}, Lcom/squareup/haha/trove/ToObjectArrayProcedure;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/squareup/haha/trove/THashSet;->forEach(Lcom/squareup/haha/trove/TObjectProcedure;)Z

    .line 219
    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lcom/squareup/haha/trove/THashSet;, "Lcom/squareup/haha/trove/THashSet<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/squareup/haha/trove/THashSet;->size()I

    move-result v3

    .line 231
    .local v3, "size":I
    array-length v4, p1

    if-ge v4, v3, :cond_0

    .line 232
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "a":[Ljava/lang/Object;, "[TT;"
    check-cast p1, [Ljava/lang/Object;

    .line 234
    .restart local p1    # "a":[Ljava/lang/Object;, "[TT;"
    :cond_0
    move-object v2, p1

    .line 236
    .local v2, "result":[Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/squareup/haha/trove/THashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 237
    .local v1, "it":Ljava/util/Iterator;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 238
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v0

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_1
    array-length v4, p1

    if-le v4, v3, :cond_2

    .line 242
    const/4 v4, 0x0

    aput-object v4, p1, v3

    .line 245
    :cond_2
    return-object p1
.end method
