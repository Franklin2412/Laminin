.class public abstract Lcom/squareup/haha/trove/TObjectHash;
.super Lcom/squareup/haha/trove/THash;
.source "TObjectHash.java"

# interfaces
.implements Lcom/squareup/haha/trove/TObjectHashingStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/haha/trove/TObjectHash$NULL;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/trove/THash;",
        "Lcom/squareup/haha/trove/TObjectHashingStrategy",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final NULL:Lcom/squareup/haha/trove/TObjectHash$NULL;

.field public static final REMOVED:Ljava/lang/Object;


# instance fields
.field protected final _hashingStrategy:Lcom/squareup/haha/trove/TObjectHashingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/trove/TObjectHashingStrategy",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected transient _set:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/squareup/haha/trove/TObjectHash;->REMOVED:Ljava/lang/Object;

    .line 39
    new-instance v0, Lcom/squareup/haha/trove/TObjectHash$NULL;

    invoke-direct {v0}, Lcom/squareup/haha/trove/TObjectHash$NULL;-><init>()V

    sput-object v0, Lcom/squareup/haha/trove/TObjectHash;->NULL:Lcom/squareup/haha/trove/TObjectHash$NULL;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    .local p0, "this":Lcom/squareup/haha/trove/TObjectHash;, "Lcom/squareup/haha/trove/TObjectHash<TT;>;"
    invoke-direct {p0}, Lcom/squareup/haha/trove/THash;-><init>()V

    .line 46
    iput-object p0, p0, Lcom/squareup/haha/trove/TObjectHash;->_hashingStrategy:Lcom/squareup/haha/trove/TObjectHashingStrategy;

    .line 47
    return-void
.end method


# virtual methods
.method protected final capacity()I
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Lcom/squareup/haha/trove/TObjectHash;, "Lcom/squareup/haha/trove/TObjectHash<TT;>;"
    iget-object v0, p0, Lcom/squareup/haha/trove/TObjectHash;->_set:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public clone()Lcom/squareup/haha/trove/TObjectHash;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/trove/TObjectHash",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/squareup/haha/trove/TObjectHash;, "Lcom/squareup/haha/trove/TObjectHash<TT;>;"
    invoke-super {p0}, Lcom/squareup/haha/trove/THash;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/trove/TObjectHash;

    .line 119
    .local v0, "h":Lcom/squareup/haha/trove/TObjectHash;, "Lcom/squareup/haha/trove/TObjectHash<TT;>;"
    iget-object v1, p0, Lcom/squareup/haha/trove/TObjectHash;->_set:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/squareup/haha/trove/TObjectHash;->_set:[Ljava/lang/Object;

    .line 120
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lcom/squareup/haha/trove/TObjectHash;, "Lcom/squareup/haha/trove/TObjectHash<TT;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/trove/TObjectHash;->clone()Lcom/squareup/haha/trove/TObjectHash;

    move-result-object v0

    return-object v0
.end method

.method public final computeHashCode(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Lcom/squareup/haha/trove/TObjectHash;, "Lcom/squareup/haha/trove/TObjectHash<TT;>;"
    .local p1, "o":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 173
    .local p0, "this":Lcom/squareup/haha/trove/TObjectHash;, "Lcom/squareup/haha/trove/TObjectHash<TT;>;"
    invoke-virtual {p0, p1}, Lcom/squareup/haha/trove/TObjectHash;->index(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lcom/squareup/haha/trove/TObjectHash;, "Lcom/squareup/haha/trove/TObjectHash<TT;>;"
    .local p1, "o1":Ljava/lang/Object;, "TT;"
    .local p2, "o2":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final forEach(Lcom/squareup/haha/trove/TObjectProcedure;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/trove/TObjectProcedure",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lcom/squareup/haha/trove/TObjectHash;, "Lcom/squareup/haha/trove/TObjectHash<TT;>;"
    .local p1, "procedure":Lcom/squareup/haha/trove/TObjectProcedure;, "Lcom/squareup/haha/trove/TObjectProcedure<TT;>;"
    iget-object v2, p0, Lcom/squareup/haha/trove/TObjectHash;->_set:[Ljava/lang/Object;

    .line 156
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

    .line 157
    aget-object v3, v2, v0

    if-eqz v3, :cond_1

    aget-object v3, v2, v0

    sget-object v4, Lcom/squareup/haha/trove/TObjectHash;->REMOVED:Ljava/lang/Object;

    if-eq v3, v4, :cond_1

    aget-object v3, v2, v0

    invoke-interface {p1, v3}, Lcom/squareup/haha/trove/TObjectProcedure;->execute(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 160
    const/4 v3, 0x0

    .line 163
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

.method protected final index(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lcom/squareup/haha/trove/TObjectHash;, "Lcom/squareup/haha/trove/TObjectHash<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Lcom/squareup/haha/trove/TObjectHash;->_set:[Ljava/lang/Object;

    .line 185
    .local v5, "set":[Ljava/lang/Object;
    array-length v3, v5

    .line 186
    .local v3, "length":I
    iget-object v6, p0, Lcom/squareup/haha/trove/TObjectHash;->_hashingStrategy:Lcom/squareup/haha/trove/TObjectHashingStrategy;

    invoke-interface {v6, p1}, Lcom/squareup/haha/trove/TObjectHashingStrategy;->computeHashCode(Ljava/lang/Object;)I

    move-result v6

    const v7, 0x7fffffff

    and-int v1, v6, v7

    .line 187
    .local v1, "hash":I
    rem-int v2, v1, v3

    .line 188
    .local v2, "index":I
    aget-object v0, v5, v2

    .line 190
    .local v0, "cur":Ljava/lang/Object;
    if-eqz v0, :cond_3

    sget-object v6, Lcom/squareup/haha/trove/TObjectHash;->REMOVED:Ljava/lang/Object;

    if-eq v0, v6, :cond_0

    iget-object v6, p0, Lcom/squareup/haha/trove/TObjectHash;->_hashingStrategy:Lcom/squareup/haha/trove/TObjectHashingStrategy;

    invoke-interface {v6, v0, p1}, Lcom/squareup/haha/trove/TObjectHashingStrategy;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 193
    :cond_0
    add-int/lit8 v6, v3, -0x2

    rem-int v6, v1, v6

    add-int/lit8 v4, v6, 0x1

    .line 196
    .local v4, "probe":I
    :cond_1
    sub-int/2addr v2, v4

    .line 197
    if-gez v2, :cond_2

    .line 198
    add-int/2addr v2, v3

    .line 200
    :cond_2
    aget-object v0, v5, v2

    .line 201
    if-eqz v0, :cond_3

    sget-object v6, Lcom/squareup/haha/trove/TObjectHash;->REMOVED:Ljava/lang/Object;

    if-eq v0, v6, :cond_1

    iget-object v6, p0, Lcom/squareup/haha/trove/TObjectHash;->_hashingStrategy:Lcom/squareup/haha/trove/TObjectHashingStrategy;

    invoke-interface {v6, v0, p1}, Lcom/squareup/haha/trove/TObjectHashingStrategy;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 205
    .end local v4    # "probe":I
    :cond_3
    if-nez v0, :cond_4

    const/4 v2, -0x1

    .end local v2    # "index":I
    :cond_4
    return v2
.end method

.method protected final insertionIndex(Ljava/lang/Object;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/squareup/haha/trove/TObjectHash;, "Lcom/squareup/haha/trove/TObjectHash<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const/4 v7, -0x1

    .line 219
    iget-object v6, p0, Lcom/squareup/haha/trove/TObjectHash;->_set:[Ljava/lang/Object;

    .line 220
    .local v6, "set":[Ljava/lang/Object;
    array-length v4, v6

    .line 221
    .local v4, "length":I
    iget-object v8, p0, Lcom/squareup/haha/trove/TObjectHash;->_hashingStrategy:Lcom/squareup/haha/trove/TObjectHashingStrategy;

    invoke-interface {v8, p1}, Lcom/squareup/haha/trove/TObjectHashingStrategy;->computeHashCode(Ljava/lang/Object;)I

    move-result v8

    const v9, 0x7fffffff

    and-int v2, v8, v9

    .line 222
    .local v2, "hash":I
    rem-int v3, v2, v4

    .line 223
    .local v3, "index":I
    aget-object v0, v6, v3

    .line 225
    .local v0, "cur":Ljava/lang/Object;
    if-nez v0, :cond_1

    move v1, v3

    .line 274
    :cond_0
    :goto_0
    return v1

    .line 228
    :cond_1
    sget-object v8, Lcom/squareup/haha/trove/TObjectHash;->REMOVED:Ljava/lang/Object;

    if-eq v0, v8, :cond_2

    iget-object v8, p0, Lcom/squareup/haha/trove/TObjectHash;->_hashingStrategy:Lcom/squareup/haha/trove/TObjectHashingStrategy;

    invoke-interface {v8, v0, p1}, Lcom/squareup/haha/trove/TObjectHashingStrategy;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 229
    neg-int v7, v3

    add-int/lit8 v1, v7, -0x1

    goto :goto_0

    .line 234
    :cond_2
    add-int/lit8 v8, v4, -0x2

    rem-int v8, v2, v8

    add-int/lit8 v5, v8, 0x1

    .line 237
    .local v5, "probe":I
    sget-object v8, Lcom/squareup/haha/trove/TObjectHash;->REMOVED:Ljava/lang/Object;

    if-ne v0, v8, :cond_9

    move v1, v3

    .line 242
    .local v1, "firstRemoved":I
    :cond_3
    :goto_1
    sub-int/2addr v3, v5

    .line 243
    if-gez v3, :cond_4

    .line 244
    add-int/2addr v3, v4

    .line 246
    :cond_4
    aget-object v0, v6, v3

    .line 247
    if-ne v1, v7, :cond_5

    sget-object v8, Lcom/squareup/haha/trove/TObjectHash;->REMOVED:Ljava/lang/Object;

    if-ne v0, v8, :cond_5

    .line 248
    move v1, v3

    .line 251
    :cond_5
    if-eqz v0, :cond_6

    sget-object v8, Lcom/squareup/haha/trove/TObjectHash;->REMOVED:Ljava/lang/Object;

    if-eq v0, v8, :cond_6

    iget-object v8, p0, Lcom/squareup/haha/trove/TObjectHash;->_hashingStrategy:Lcom/squareup/haha/trove/TObjectHashingStrategy;

    invoke-interface {v8, v0, p1}, Lcom/squareup/haha/trove/TObjectHashingStrategy;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 258
    :cond_6
    sget-object v8, Lcom/squareup/haha/trove/TObjectHash;->REMOVED:Ljava/lang/Object;

    if-ne v0, v8, :cond_a

    .line 259
    :goto_2
    if-eqz v0, :cond_a

    sget-object v8, Lcom/squareup/haha/trove/TObjectHash;->REMOVED:Ljava/lang/Object;

    if-eq v0, v8, :cond_7

    iget-object v8, p0, Lcom/squareup/haha/trove/TObjectHash;->_hashingStrategy:Lcom/squareup/haha/trove/TObjectHashingStrategy;

    invoke-interface {v8, v0, p1}, Lcom/squareup/haha/trove/TObjectHashingStrategy;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 261
    :cond_7
    sub-int/2addr v3, v5

    .line 262
    if-gez v3, :cond_8

    .line 263
    add-int/2addr v3, v4

    .line 265
    :cond_8
    aget-object v0, v6, v3

    goto :goto_2

    .end local v1    # "firstRemoved":I
    :cond_9
    move v1, v7

    .line 237
    goto :goto_1

    .line 270
    .restart local v1    # "firstRemoved":I
    :cond_a
    if-eqz v0, :cond_b

    sget-object v8, Lcom/squareup/haha/trove/TObjectHash;->REMOVED:Ljava/lang/Object;

    if-eq v0, v8, :cond_b

    .line 271
    neg-int v7, v3

    add-int/lit8 v1, v7, -0x1

    goto :goto_0

    .line 274
    :cond_b
    if-ne v1, v7, :cond_0

    move v1, v3

    goto :goto_0
.end method

.method protected removeAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 130
    .local p0, "this":Lcom/squareup/haha/trove/TObjectHash;, "Lcom/squareup/haha/trove/TObjectHash<TT;>;"
    iget-object v0, p0, Lcom/squareup/haha/trove/TObjectHash;->_set:[Ljava/lang/Object;

    sget-object v1, Lcom/squareup/haha/trove/TObjectHash;->REMOVED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 131
    invoke-super {p0, p1}, Lcom/squareup/haha/trove/THash;->removeAt(I)V

    .line 132
    return-void
.end method

.method protected setUp(I)I
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    .line 142
    .local p0, "this":Lcom/squareup/haha/trove/TObjectHash;, "Lcom/squareup/haha/trove/TObjectHash<TT;>;"
    invoke-super {p0, p1}, Lcom/squareup/haha/trove/THash;->setUp(I)I

    move-result v0

    .line 143
    .local v0, "capacity":I
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/squareup/haha/trove/TObjectHash;->_set:[Ljava/lang/Object;

    .line 144
    return v0
.end method

.method protected final throwObjectContractViolation(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "this":Lcom/squareup/haha/trove/TObjectHash;, "Lcom/squareup/haha/trove/TObjectHash<TT;>;"
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Equal objects must have equal hashcodes. During rehashing, Trove discovered that the following two objects claim to be equal (as in java.lang.Object.equals() or TObjectHashingStrategy.equals()) but their hashCodes (or those calculated by your TObjectHashingStrategy) are not equal.This violates the general contract of java.lang.Object.hashCode().  See bullet point two in that method\'s documentation. object #1 ="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", hashCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/squareup/haha/trove/TObjectHash;->_hashingStrategy:Lcom/squareup/haha/trove/TObjectHashingStrategy;

    invoke-interface {v2, p1}, Lcom/squareup/haha/trove/TObjectHashingStrategy;->computeHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; object #2 ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", hashCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/squareup/haha/trove/TObjectHash;->_hashingStrategy:Lcom/squareup/haha/trove/TObjectHashingStrategy;

    invoke-interface {v2, p2}, Lcom/squareup/haha/trove/TObjectHashingStrategy;->computeHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
