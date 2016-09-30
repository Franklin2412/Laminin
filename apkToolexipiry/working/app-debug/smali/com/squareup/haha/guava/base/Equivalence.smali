.class public abstract Lcom/squareup/haha/guava/base/Equivalence;
.super Ljava/lang/Object;
.source "Equivalence.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method protected abstract doEquivalent$2838e5b1()Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation
.end method

.method protected abstract doHash$5d527804()I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()I"
        }
    .end annotation
.end method

.method public final equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/squareup/haha/guava/base/Equivalence;, "Lcom/squareup/haha/guava/base/Equivalence<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TT;"
    .local p2, "b":Ljava/lang/Object;, "TT;"
    if-ne p1, p2, :cond_0

    .line 66
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    .line 68
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 69
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/squareup/haha/guava/base/Equivalence;->doEquivalent$2838e5b1()Z

    move-result v0

    goto :goto_0
.end method

.method public final hash(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/squareup/haha/guava/base/Equivalence;, "Lcom/squareup/haha/guava/base/Equivalence<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/squareup/haha/guava/base/Equivalence;->doHash$5d527804()I

    move-result v0

    goto :goto_0
.end method
