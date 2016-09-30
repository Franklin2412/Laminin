.class final Lcom/squareup/haha/guava/collect/ReverseOrdering;
.super Lcom/squareup/haha/guava/collect/Ordering;
.source "ReverseOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/Ordering",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private forwardOrder:Lcom/squareup/haha/guava/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/Ordering",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/Ordering;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/Ordering",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/squareup/haha/guava/collect/ReverseOrdering;, "Lcom/squareup/haha/guava/collect/ReverseOrdering<TT;>;"
    .local p1, "forwardOrder":Lcom/squareup/haha/guava/collect/Ordering;, "Lcom/squareup/haha/guava/collect/Ordering<-TT;>;"
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/Ordering;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Ordering;

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/ReverseOrdering;->forwardOrder:Lcom/squareup/haha/guava/collect/Ordering;

    .line 35
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/squareup/haha/guava/collect/ReverseOrdering;, "Lcom/squareup/haha/guava/collect/ReverseOrdering<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TT;"
    .local p2, "b":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ReverseOrdering;->forwardOrder:Lcom/squareup/haha/guava/collect/Ordering;

    invoke-virtual {v0, p2, p1}, Lcom/squareup/haha/guava/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 85
    .local p0, "this":Lcom/squareup/haha/guava/collect/ReverseOrdering;, "Lcom/squareup/haha/guava/collect/ReverseOrdering<TT;>;"
    if-ne p1, p0, :cond_0

    .line 86
    const/4 v1, 0x1

    .line 92
    :goto_0
    return v1

    .line 88
    :cond_0
    instance-of v1, p1, Lcom/squareup/haha/guava/collect/ReverseOrdering;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 89
    check-cast v0, Lcom/squareup/haha/guava/collect/ReverseOrdering;

    .line 90
    .local v0, "that":Lcom/squareup/haha/guava/collect/ReverseOrdering;, "Lcom/squareup/haha/guava/collect/ReverseOrdering<*>;"
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/ReverseOrdering;->forwardOrder:Lcom/squareup/haha/guava/collect/Ordering;

    iget-object v2, v0, Lcom/squareup/haha/guava/collect/ReverseOrdering;->forwardOrder:Lcom/squareup/haha/guava/collect/Ordering;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 92
    .end local v0    # "that":Lcom/squareup/haha/guava/collect/ReverseOrdering;, "Lcom/squareup/haha/guava/collect/ReverseOrdering<*>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lcom/squareup/haha/guava/collect/ReverseOrdering;, "Lcom/squareup/haha/guava/collect/ReverseOrdering<TT;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ReverseOrdering;->forwardOrder:Lcom/squareup/haha/guava/collect/Ordering;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public final reverse()Lcom/squareup/haha/guava/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/squareup/haha/guava/collect/Ordering",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/squareup/haha/guava/collect/ReverseOrdering;, "Lcom/squareup/haha/guava/collect/ReverseOrdering<TT;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ReverseOrdering;->forwardOrder:Lcom/squareup/haha/guava/collect/Ordering;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    .local p0, "this":Lcom/squareup/haha/guava/collect/ReverseOrdering;, "Lcom/squareup/haha/guava/collect/ReverseOrdering<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/squareup/haha/guava/collect/ReverseOrdering;->forwardOrder:Lcom/squareup/haha/guava/collect/Ordering;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".reverse()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
