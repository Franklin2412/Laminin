.class public abstract Lcom/squareup/haha/guava/collect/Ordering;
.super Ljava/lang/Object;
.source "Ordering.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 319
    .local p0, "this":Lcom/squareup/haha/guava/collect/Ordering;, "Lcom/squareup/haha/guava/collect/Ordering<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Ljava/util/Comparator;)Lcom/squareup/haha/guava/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Lcom/squareup/haha/guava/collect/Ordering",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    instance-of v0, p0, Lcom/squareup/haha/guava/collect/Ordering;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/squareup/haha/guava/collect/Ordering;

    .end local p0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    :cond_0
    new-instance v0, Lcom/squareup/haha/guava/collect/ComparatorOrdering;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/ComparatorOrdering;-><init>(Ljava/util/Comparator;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static natural()Lcom/squareup/haha/guava/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/squareup/haha/guava/collect/Ordering",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 106
    sget-object v0, Lcom/squareup/haha/guava/collect/NaturalOrdering;->INSTANCE:Lcom/squareup/haha/guava/collect/NaturalOrdering;

    return-object v0
.end method


# virtual methods
.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
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
            "(TT;TT;)I"
        }
    .end annotation
.end method

.method public reverse()Lcom/squareup/haha/guava/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/squareup/haha/guava/collect/Ordering",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Lcom/squareup/haha/guava/collect/Ordering;, "Lcom/squareup/haha/guava/collect/Ordering<TT;>;"
    new-instance v0, Lcom/squareup/haha/guava/collect/ReverseOrdering;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/ReverseOrdering;-><init>(Lcom/squareup/haha/guava/collect/Ordering;)V

    return-object v0
.end method
