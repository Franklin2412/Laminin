.class public final Lcom/squareup/haha/guava/collect/Iterables$3;
.super Lcom/squareup/haha/guava/collect/TransformedIterator;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/guava/collect/TransformedIterator",
        "<",
        "Ljava/lang/Iterable",
        "<+TT;>;",
        "Ljava/util/Iterator",
        "<+TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 509
    .local p1, "x0":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Iterable<+TT;>;>;"
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 509
    check-cast p1, Ljava/lang/Iterable;

    .line 1512
    .end local p1    # "x0":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 509
    return-object v0
.end method
