.class public abstract Lcom/squareup/haha/guava/collect/ForwardingIterator;
.super Lcom/squareup/haha/guava/collect/ForwardingObject;
.source "ForwardingIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/ForwardingObject;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingIterator;, "Lcom/squareup/haha/guava/collect/ForwardingIterator<TT;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingIterator;->delegate()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingIterator;, "Lcom/squareup/haha/guava/collect/ForwardingIterator<TT;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingIterator;->delegate()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingIterator;, "Lcom/squareup/haha/guava/collect/ForwardingIterator<TT;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingIterator;->delegate()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingIterator;, "Lcom/squareup/haha/guava/collect/ForwardingIterator<TT;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingIterator;->delegate()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 54
    return-void
.end method
