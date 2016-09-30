.class public Lcom/squareup/haha/guava/collect/Lists$ReverseList;
.super Ljava/util/AbstractList;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public final forwardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 766
    .local p0, "this":Lcom/squareup/haha/guava/collect/Lists$ReverseList;, "Lcom/squareup/haha/guava/collect/Lists$ReverseList<TT;>;"
    .local p1, "forwardList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 767
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    .line 768
    return-void
.end method

.method static synthetic access$000(Lcom/squareup/haha/guava/collect/Lists$ReverseList;I)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/haha/guava/collect/Lists$ReverseList;
    .param p1, "x1"    # I

    .prologue
    .line 763
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/Lists$ReverseList;->reversePosition(I)I

    move-result v0

    return v0
.end method

.method private reverseIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 775
    .local p0, "this":Lcom/squareup/haha/guava/collect/Lists$ReverseList;, "Lcom/squareup/haha/guava/collect/Lists$ReverseList<TT;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Lists$ReverseList;->size()I

    move-result v0

    .line 776
    .local v0, "size":I
    invoke-static {p1, v0}, Lcom/squareup/haha/guava/base/Ascii;->checkElementIndex(II)I

    .line 777
    add-int/lit8 v1, v0, -0x1

    sub-int/2addr v1, p1

    return v1
.end method

.method private reversePosition(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 781
    .local p0, "this":Lcom/squareup/haha/guava/collect/Lists$ReverseList;, "Lcom/squareup/haha/guava/collect/Lists$ReverseList<TT;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Lists$ReverseList;->size()I

    move-result v0

    .line 782
    .local v0, "size":I
    invoke-static {p1, v0}, Lcom/squareup/haha/guava/base/Ascii;->checkPositionIndex(II)I

    .line 783
    sub-int v1, v0, p1

    return v1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 787
    .local p0, "this":Lcom/squareup/haha/guava/collect/Lists$ReverseList;, "Lcom/squareup/haha/guava/collect/Lists$ReverseList<TT;>;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/Lists$ReverseList;->reversePosition(I)I

    move-result v1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 788
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 791
    .local p0, "this":Lcom/squareup/haha/guava/collect/Lists$ReverseList;, "Lcom/squareup/haha/guava/collect/Lists$ReverseList<TT;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 792
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 807
    .local p0, "this":Lcom/squareup/haha/guava/collect/Lists$ReverseList;, "Lcom/squareup/haha/guava/collect/Lists$ReverseList<TT;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/Lists$ReverseList;->reverseIndex(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 821
    .local p0, "this":Lcom/squareup/haha/guava/collect/Lists$ReverseList;, "Lcom/squareup/haha/guava/collect/Lists$ReverseList<TT;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Lists$ReverseList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 825
    .local p0, "this":Lcom/squareup/haha/guava/collect/Lists$ReverseList;, "Lcom/squareup/haha/guava/collect/Lists$ReverseList<TT;>;"
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/Lists$ReverseList;->reversePosition(I)I

    move-result v1

    .line 826
    .local v1, "start":I
    iget-object v2, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 827
    .local v0, "forwardIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TT;>;"
    new-instance v2, Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;

    invoke-direct {v2, p0, v0}, Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;-><init>(Lcom/squareup/haha/guava/collect/Lists$ReverseList;Ljava/util/ListIterator;)V

    return-object v2
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 795
    .local p0, "this":Lcom/squareup/haha/guava/collect/Lists$ReverseList;, "Lcom/squareup/haha/guava/collect/Lists$ReverseList<TT;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/Lists$ReverseList;->reverseIndex(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected removeRange(II)V
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 799
    .local p0, "this":Lcom/squareup/haha/guava/collect/Lists$ReverseList;, "Lcom/squareup/haha/guava/collect/Lists$ReverseList<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/squareup/haha/guava/collect/Lists$ReverseList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 800
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 803
    .local p0, "this":Lcom/squareup/haha/guava/collect/Lists$ReverseList;, "Lcom/squareup/haha/guava/collect/Lists$ReverseList<TT;>;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/Lists$ReverseList;->reverseIndex(I)I

    move-result v1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 811
    .local p0, "this":Lcom/squareup/haha/guava/collect/Lists$ReverseList;, "Lcom/squareup/haha/guava/collect/Lists$ReverseList<TT;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 815
    .local p0, "this":Lcom/squareup/haha/guava/collect/Lists$ReverseList;, "Lcom/squareup/haha/guava/collect/Lists$ReverseList<TT;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Lists$ReverseList;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/squareup/haha/guava/base/Ascii;->checkPositionIndexes(III)V

    .line 816
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/squareup/haha/guava/collect/Lists$ReverseList;->reversePosition(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/Lists$ReverseList;->reversePosition(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/haha/guava/base/Ascii;->reverse(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
