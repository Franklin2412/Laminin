.class public final Lcom/squareup/haha/guava/collect/Multisets;
.super Ljava/lang/Object;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;,
        Lcom/squareup/haha/guava/collect/Multisets$EntrySet;,
        Lcom/squareup/haha/guava/collect/Multisets$ElementSet;,
        Lcom/squareup/haha/guava/collect/Multisets$AbstractEntry;,
        Lcom/squareup/haha/guava/collect/Multisets$ImmutableEntry;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1063
    new-instance v0, Lcom/squareup/haha/guava/collect/Multisets$5;

    invoke-direct {v0}, Lcom/squareup/haha/guava/collect/Multisets$5;-><init>()V

    return-void
.end method

.method static addAllImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/haha/guava/collect/Multiset",
            "<TE;>;",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 833
    .local p0, "self":Lcom/squareup/haha/guava/collect/Multiset;, "Lcom/squareup/haha/guava/collect/Multiset<TE;>;"
    .local p1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 834
    const/4 v3, 0x0

    .line 844
    :goto_0
    return v3

    .line 836
    :cond_0
    instance-of v3, p1, Lcom/squareup/haha/guava/collect/Multiset;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 2060
    check-cast v2, Lcom/squareup/haha/guava/collect/Multiset;

    .line 838
    .local v2, "that":Lcom/squareup/haha/guava/collect/Multiset;, "Lcom/squareup/haha/guava/collect/Multiset<+TE;>;"
    invoke-interface {v2}, Lcom/squareup/haha/guava/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    .line 839
    .local v0, "entry":Lcom/squareup/haha/guava/collect/Multiset$Entry;, "Lcom/squareup/haha/guava/collect/Multiset$Entry<+TE;>;"
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v4

    invoke-interface {p0, v3, v4}, Lcom/squareup/haha/guava/collect/Multiset;->add(Ljava/lang/Object;I)I

    goto :goto_1

    .line 842
    .end local v0    # "entry":Lcom/squareup/haha/guava/collect/Multiset$Entry;, "Lcom/squareup/haha/guava/collect/Multiset$Entry<+TE;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "that":Lcom/squareup/haha/guava/collect/Multiset;, "Lcom/squareup/haha/guava/collect/Multiset<+TE;>;"
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/squareup/haha/guava/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 844
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static equalsImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/Multiset",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "multiset":Lcom/squareup/haha/guava/collect/Multiset;, "Lcom/squareup/haha/guava/collect/Multiset<*>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 803
    if-ne p1, p0, :cond_1

    .line 825
    :cond_0
    :goto_0
    return v3

    .line 806
    :cond_1
    instance-of v5, p1, Lcom/squareup/haha/guava/collect/Multiset;

    if-eqz v5, :cond_5

    move-object v2, p1

    .line 807
    check-cast v2, Lcom/squareup/haha/guava/collect/Multiset;

    .line 814
    .local v2, "that":Lcom/squareup/haha/guava/collect/Multiset;, "Lcom/squareup/haha/guava/collect/Multiset<*>;"
    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/Multiset;->size()I

    move-result v5

    invoke-interface {v2}, Lcom/squareup/haha/guava/collect/Multiset;->size()I

    move-result v6

    if-ne v5, v6, :cond_2

    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-interface {v2}, Lcom/squareup/haha/guava/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-eq v5, v6, :cond_3

    :cond_2
    move v3, v4

    .line 816
    goto :goto_0

    .line 818
    :cond_3
    invoke-interface {v2}, Lcom/squareup/haha/guava/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    .line 819
    .local v0, "entry":Lcom/squareup/haha/guava/collect/Multiset$Entry;, "Lcom/squareup/haha/guava/collect/Multiset$Entry<*>;"
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v5}, Lcom/squareup/haha/guava/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v6

    if-eq v5, v6, :cond_4

    move v3, v4

    .line 820
    goto :goto_0

    .end local v0    # "entry":Lcom/squareup/haha/guava/collect/Multiset$Entry;, "Lcom/squareup/haha/guava/collect/Multiset$Entry<*>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "that":Lcom/squareup/haha/guava/collect/Multiset;, "Lcom/squareup/haha/guava/collect/Multiset<*>;"
    :cond_5
    move v3, v4

    .line 825
    goto :goto_0
.end method

.method public static immutableEntry(Ljava/lang/Object;I)Lcom/squareup/haha/guava/collect/Multiset$Entry;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;I)",
            "Lcom/squareup/haha/guava/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/squareup/haha/guava/collect/Multisets$ImmutableEntry;

    invoke-direct {v0, p0, p1}, Lcom/squareup/haha/guava/collect/Multisets$ImmutableEntry;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method static iteratorImpl(Lcom/squareup/haha/guava/collect/Multiset;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/haha/guava/collect/Multiset",
            "<TE;>;)",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 993
    .local p0, "multiset":Lcom/squareup/haha/guava/collect/Multiset;, "Lcom/squareup/haha/guava/collect/Multiset<TE;>;"
    new-instance v0, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;

    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;-><init>(Lcom/squareup/haha/guava/collect/Multiset;Ljava/util/Iterator;)V

    return-object v0
.end method

.method static removeAllImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/Multiset",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 852
    .local p0, "self":Lcom/squareup/haha/guava/collect/Multiset;, "Lcom/squareup/haha/guava/collect/Multiset<*>;"
    .local p1, "elementsToRemove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v1, p1, Lcom/squareup/haha/guava/collect/Multiset;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/squareup/haha/guava/collect/Multiset;

    .end local p1    # "elementsToRemove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    .line 855
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_0
    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    return v1

    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local p1    # "elementsToRemove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_0
    move-object v0, p1

    .line 852
    goto :goto_0
.end method

.method static retainAllImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/Multiset",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 863
    .local p0, "self":Lcom/squareup/haha/guava/collect/Multiset;, "Lcom/squareup/haha/guava/collect/Multiset<*>;"
    .local p1, "elementsToRetain":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    instance-of v1, p1, Lcom/squareup/haha/guava/collect/Multiset;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/squareup/haha/guava/collect/Multiset;

    .end local p1    # "elementsToRetain":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    .line 867
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_0
    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    return v1

    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local p1    # "elementsToRetain":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_0
    move-object v0, p1

    .line 864
    goto :goto_0
.end method

.method static setCountImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/lang/Object;I)I
    .locals 3
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/haha/guava/collect/Multiset",
            "<TE;>;TE;I)I"
        }
    .end annotation

    .prologue
    .line 874
    .local p0, "self":Lcom/squareup/haha/guava/collect/Multiset;, "Lcom/squareup/haha/guava/collect/Multiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const-string v2, "count"

    invoke-static {p2, v2}, Lcom/squareup/haha/guava/base/Ascii;->checkNonnegative(ILjava/lang/String;)I

    .line 876
    invoke-interface {p0, p1}, Lcom/squareup/haha/guava/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    .line 878
    .local v1, "oldCount":I
    sub-int v0, p2, v1

    .line 879
    .local v0, "delta":I
    if-lez v0, :cond_1

    .line 880
    invoke-interface {p0, p1, v0}, Lcom/squareup/haha/guava/collect/Multiset;->add(Ljava/lang/Object;I)I

    .line 885
    :cond_0
    :goto_0
    return v1

    .line 881
    :cond_1
    if-gez v0, :cond_0

    .line 882
    neg-int v2, v0

    invoke-interface {p0, p1, v2}, Lcom/squareup/haha/guava/collect/Multiset;->remove(Ljava/lang/Object;I)I

    goto :goto_0
.end method

.method static setCountImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/lang/Object;II)Z
    .locals 1
    .param p2, "oldCount"    # I
    .param p3, "newCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/haha/guava/collect/Multiset",
            "<TE;>;TE;II)Z"
        }
    .end annotation

    .prologue
    .line 893
    .local p0, "self":Lcom/squareup/haha/guava/collect/Multiset;, "Lcom/squareup/haha/guava/collect/Multiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const-string v0, "oldCount"

    invoke-static {p2, v0}, Lcom/squareup/haha/guava/base/Ascii;->checkNonnegative(ILjava/lang/String;)I

    .line 894
    const-string v0, "newCount"

    invoke-static {p3, v0}, Lcom/squareup/haha/guava/base/Ascii;->checkNonnegative(ILjava/lang/String;)I

    .line 896
    invoke-interface {p0, p1}, Lcom/squareup/haha/guava/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 897
    invoke-interface {p0, p1, p3}, Lcom/squareup/haha/guava/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    .line 898
    const/4 v0, 0x1

    .line 900
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static sizeImpl(Lcom/squareup/haha/guava/collect/Multiset;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/Multiset",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1049
    .local p0, "multiset":Lcom/squareup/haha/guava/collect/Multiset;, "Lcom/squareup/haha/guava/collect/Multiset<*>;"
    const-wide/16 v2, 0x0

    .line 1050
    .local v2, "size":J
    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    .line 1051
    .local v0, "entry":Lcom/squareup/haha/guava/collect/Multiset$Entry;, "Lcom/squareup/haha/guava/collect/Multiset$Entry<*>;"
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 1052
    goto :goto_0

    .line 1053
    .end local v0    # "entry":Lcom/squareup/haha/guava/collect/Multiset$Entry;, "Lcom/squareup/haha/guava/collect/Multiset$Entry<*>;"
    :cond_0
    invoke-static {v2, v3}, Lcom/squareup/haha/guava/primitives/Ints;->saturatedCast(J)I

    move-result v4

    return v4
.end method
