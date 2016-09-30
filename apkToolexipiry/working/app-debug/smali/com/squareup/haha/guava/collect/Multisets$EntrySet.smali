.class abstract Lcom/squareup/haha/guava/collect/Multisets$EntrySet;
.super Lcom/squareup/haha/guava/collect/Sets$ImprovedAbstractSet;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/Sets$ImprovedAbstractSet",
        "<",
        "Lcom/squareup/haha/guava/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 947
    .local p0, "this":Lcom/squareup/haha/guava/collect/Multisets$EntrySet;, "Lcom/squareup/haha/guava/collect/Multisets$EntrySet<TE;>;"
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/Sets$ImprovedAbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 985
    .local p0, "this":Lcom/squareup/haha/guava/collect/Multisets$EntrySet;, "Lcom/squareup/haha/guava/collect/Multisets$EntrySet<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Multisets$EntrySet;->multiset()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset;->clear()V

    .line 986
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/Multisets$EntrySet;, "Lcom/squareup/haha/guava/collect/Multisets$EntrySet<TE;>;"
    const/4 v2, 0x0

    .line 951
    instance-of v3, p1, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 956
    check-cast v1, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    .line 957
    .local v1, "entry":Lcom/squareup/haha/guava/collect/Multiset$Entry;, "Lcom/squareup/haha/guava/collect/Multiset$Entry<*>;"
    invoke-interface {v1}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    .line 964
    .end local v1    # "entry":Lcom/squareup/haha/guava/collect/Multiset$Entry;, "Lcom/squareup/haha/guava/collect/Multiset$Entry<*>;"
    :cond_0
    :goto_0
    return v2

    .line 960
    .restart local v1    # "entry":Lcom/squareup/haha/guava/collect/Multiset$Entry;, "Lcom/squareup/haha/guava/collect/Multiset$Entry<*>;"
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Multisets$EntrySet;->multiset()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v3

    invoke-interface {v1}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/squareup/haha/guava/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 961
    .local v0, "count":I
    invoke-interface {v1}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v3

    if-ne v0, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method abstract multiset()Lcom/squareup/haha/guava/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/Multiset",
            "<TE;>;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/Multisets$EntrySet;, "Lcom/squareup/haha/guava/collect/Multisets$EntrySet<TE;>;"
    const/4 v4, 0x0

    .line 970
    instance-of v5, p1, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    if-eqz v5, :cond_0

    move-object v1, p1

    .line 971
    check-cast v1, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    .line 972
    .local v1, "entry":Lcom/squareup/haha/guava/collect/Multiset$Entry;, "Lcom/squareup/haha/guava/collect/Multiset$Entry<*>;"
    invoke-interface {v1}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    .line 973
    .local v0, "element":Ljava/lang/Object;
    invoke-interface {v1}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v2

    .line 974
    .local v2, "entryCount":I
    if-eqz v2, :cond_0

    .line 977
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Multisets$EntrySet;->multiset()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v3

    .line 978
    .local v3, "multiset":Lcom/squareup/haha/guava/collect/Multiset;, "Lcom/squareup/haha/guava/collect/Multiset<Ljava/lang/Object;>;"
    invoke-interface {v3, v0, v2, v4}, Lcom/squareup/haha/guava/collect/Multiset;->setCount(Ljava/lang/Object;II)Z

    move-result v4

    .line 981
    .end local v0    # "element":Ljava/lang/Object;
    .end local v1    # "entry":Lcom/squareup/haha/guava/collect/Multiset$Entry;, "Lcom/squareup/haha/guava/collect/Multiset$Entry<*>;"
    .end local v2    # "entryCount":I
    .end local v3    # "multiset":Lcom/squareup/haha/guava/collect/Multiset;, "Lcom/squareup/haha/guava/collect/Multiset<Ljava/lang/Object;>;"
    :cond_0
    return v4
.end method
