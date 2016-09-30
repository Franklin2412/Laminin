.class final Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;
.super Ljava/lang/Object;
.source "Lists.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/haha/guava/collect/Lists$ReverseList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private canRemoveOrSet:Z

.field private synthetic this$0:Lcom/squareup/haha/guava/collect/Lists$ReverseList;

.field private synthetic val$forwardIterator:Ljava/util/ListIterator;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/Lists$ReverseList;Ljava/util/ListIterator;)V
    .locals 0

    .prologue
    .line 827
    .local p0, "this":Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;, "Lcom/squareup/haha/guava/collect/Lists$ReverseList.1;"
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;->this$0:Lcom/squareup/haha/guava/collect/Lists$ReverseList;

    iput-object p2, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 832
    .local p0, "this":Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;, "Lcom/squareup/haha/guava/collect/Lists$ReverseList.1;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 833
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 834
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;->canRemoveOrSet:Z

    .line 835
    return-void
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 838
    .local p0, "this":Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;, "Lcom/squareup/haha/guava/collect/Lists$ReverseList.1;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    .prologue
    .line 842
    .local p0, "this":Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;, "Lcom/squareup/haha/guava/collect/Lists$ReverseList.1;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 846
    .local p0, "this":Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;, "Lcom/squareup/haha/guava/collect/Lists$ReverseList.1;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 847
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 849
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;->canRemoveOrSet:Z

    .line 850
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final nextIndex()I
    .locals 2

    .prologue
    .line 854
    .local p0, "this":Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;, "Lcom/squareup/haha/guava/collect/Lists$ReverseList.1;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;->this$0:Lcom/squareup/haha/guava/collect/Lists$ReverseList;

    iget-object v1, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    # invokes: Lcom/squareup/haha/guava/collect/Lists$ReverseList;->reversePosition(I)I
    invoke-static {v0, v1}, Lcom/squareup/haha/guava/collect/Lists$ReverseList;->access$000(Lcom/squareup/haha/guava/collect/Lists$ReverseList;I)I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 858
    .local p0, "this":Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;, "Lcom/squareup/haha/guava/collect/Lists$ReverseList.1;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    .line 859
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 861
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;->canRemoveOrSet:Z

    .line 862
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    .prologue
    .line 866
    .local p0, "this":Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;, "Lcom/squareup/haha/guava/collect/Lists$ReverseList.1;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;->nextIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 870
    .local p0, "this":Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;, "Lcom/squareup/haha/guava/collect/Lists$ReverseList.1;"
    iget-boolean v0, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;->canRemoveOrSet:Z

    invoke-static {v0}, Lcom/squareup/haha/guava/base/Ascii;->checkRemove(Z)V

    .line 871
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 872
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;->canRemoveOrSet:Z

    .line 873
    return-void
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 876
    .local p0, "this":Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;, "Lcom/squareup/haha/guava/collect/Lists$ReverseList.1;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;->canRemoveOrSet:Z

    invoke-static {v0}, Lcom/squareup/haha/guava/base/Ascii;->checkState(Z)V

    .line 877
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 878
    return-void
.end method
