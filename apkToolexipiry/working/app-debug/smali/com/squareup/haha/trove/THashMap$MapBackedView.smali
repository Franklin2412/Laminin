.class abstract Lcom/squareup/haha/trove/THashMap$MapBackedView;
.super Ljava/lang/Object;
.source "THashMap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/trove/THashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "MapBackedView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/squareup/haha/trove/THashMap;


# direct methods
.method constructor <init>(Lcom/squareup/haha/trove/THashMap;)V
    .locals 0

    .prologue
    .line 608
    .local p0, "this":Lcom/squareup/haha/trove/THashMap$MapBackedView;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.MapBackedView<TE;>;"
    iput-object p1, p0, Lcom/squareup/haha/trove/THashMap$MapBackedView;->this$0:Lcom/squareup/haha/trove/THashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 656
    .local p0, "this":Lcom/squareup/haha/trove/THashMap$MapBackedView;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.MapBackedView<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 701
    .local p0, "this":Lcom/squareup/haha/trove/THashMap$MapBackedView;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.MapBackedView<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 651
    .local p0, "this":Lcom/squareup/haha/trove/THashMap$MapBackedView;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.MapBackedView<TE;>;"
    iget-object v0, p0, Lcom/squareup/haha/trove/THashMap$MapBackedView;->this$0:Lcom/squareup/haha/trove/THashMap;

    invoke-virtual {v0}, Lcom/squareup/haha/trove/THashMap;->clear()V

    .line 652
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 620
    .local p0, "this":Lcom/squareup/haha/trove/THashMap$MapBackedView;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.MapBackedView<TE;>;"
    invoke-virtual {p0, p1}, Lcom/squareup/haha/trove/THashMap$MapBackedView;->containsElement(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 630
    .local p0, "this":Lcom/squareup/haha/trove/THashMap$MapBackedView;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.MapBackedView<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 631
    .local v0, "element":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/squareup/haha/trove/THashMap$MapBackedView;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 632
    const/4 v2, 0x0

    .line 635
    .end local v0    # "element":Ljava/lang/Object;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public abstract containsElement(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 696
    .local p0, "this":Lcom/squareup/haha/trove/THashMap$MapBackedView;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.MapBackedView<TE;>;"
    iget-object v0, p0, Lcom/squareup/haha/trove/THashMap$MapBackedView;->this$0:Lcom/squareup/haha/trove/THashMap;

    invoke-virtual {v0}, Lcom/squareup/haha/trove/THashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 625
    .local p0, "this":Lcom/squareup/haha/trove/THashMap$MapBackedView;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.MapBackedView<TE;>;"
    invoke-virtual {p0, p1}, Lcom/squareup/haha/trove/THashMap$MapBackedView;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 640
    .local p0, "this":Lcom/squareup/haha/trove/THashMap$MapBackedView;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.MapBackedView<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 641
    .local v0, "changed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 642
    .local v1, "element":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/squareup/haha/trove/THashMap$MapBackedView;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 643
    const/4 v0, 0x1

    goto :goto_0

    .line 646
    .end local v1    # "element":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public abstract removeElement(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 706
    .local p0, "this":Lcom/squareup/haha/trove/THashMap$MapBackedView;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.MapBackedView<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 707
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/squareup/haha/trove/THashMap$MapBackedView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 708
    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 709
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 710
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 711
    const/4 v0, 0x1

    goto :goto_0

    .line 714
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 661
    .local p0, "this":Lcom/squareup/haha/trove/THashMap$MapBackedView;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.MapBackedView<TE;>;"
    iget-object v0, p0, Lcom/squareup/haha/trove/THashMap$MapBackedView;->this$0:Lcom/squareup/haha/trove/THashMap;

    invoke-virtual {v0}, Lcom/squareup/haha/trove/THashMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 666
    .local p0, "this":Lcom/squareup/haha/trove/THashMap$MapBackedView;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.MapBackedView<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/trove/THashMap$MapBackedView;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/Object;

    .line 667
    .local v2, "result":[Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/squareup/haha/trove/THashMap$MapBackedView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 668
    .local v0, "e":Ljava/util/Iterator;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 669
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 668
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 671
    :cond_0
    return-object v2
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 676
    .local p0, "this":Lcom/squareup/haha/trove/THashMap$MapBackedView;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.MapBackedView<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/squareup/haha/trove/THashMap$MapBackedView;->size()I

    move-result v3

    .line 677
    .local v3, "size":I
    array-length v4, p1

    if-ge v4, v3, :cond_0

    .line 678
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "a":[Ljava/lang/Object;, "[TT;"
    check-cast p1, [Ljava/lang/Object;

    .line 681
    .restart local p1    # "a":[Ljava/lang/Object;, "[TT;"
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/haha/trove/THashMap$MapBackedView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 682
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    move-object v2, p1

    .line 683
    .local v2, "result":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 684
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v0

    .line 683
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 687
    :cond_1
    array-length v4, p1

    if-le v4, v3, :cond_2

    .line 688
    const/4 v4, 0x0

    aput-object v4, p1, v3

    .line 691
    :cond_2
    return-object p1
.end method
