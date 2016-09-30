.class final Lcom/squareup/haha/guava/collect/Multisets$ElementSet$1;
.super Lcom/squareup/haha/guava/collect/TransformedIterator;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/haha/guava/collect/Multisets$ElementSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/guava/collect/TransformedIterator",
        "<",
        "Lcom/squareup/haha/guava/collect/Multiset$Entry",
        "<TE;>;TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/Multisets$ElementSet;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 924
    .local p0, "this":Lcom/squareup/haha/guava/collect/Multisets$ElementSet$1;, "Lcom/squareup/haha/guava/collect/Multisets$ElementSet.1;"
    .local p2, "x0":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lcom/squareup/haha/guava/collect/Multiset$Entry<TE;>;>;"
    invoke-direct {p0, p2}, Lcom/squareup/haha/guava/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 924
    .local p0, "this":Lcom/squareup/haha/guava/collect/Multisets$ElementSet$1;, "Lcom/squareup/haha/guava/collect/Multisets$ElementSet.1;"
    check-cast p1, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    .line 1927
    .end local p1    # "x0":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    .line 924
    return-object v0
.end method
