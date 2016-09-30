.class final Lcom/squareup/haha/guava/collect/Multisets$5;
.super Lcom/squareup/haha/guava/collect/Ordering;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/guava/collect/Ordering",
        "<",
        "Lcom/squareup/haha/guava/collect/Multiset$Entry",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1063
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/Ordering;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1063
    check-cast p1, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    .line 2066
    .end local p2    # "x1":Ljava/lang/Object;
    invoke-interface {p2}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v0

    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/squareup/haha/guava/primitives/Ints;->compare(II)I

    move-result v0

    .line 1063
    return v0
.end method
