.class final Lcom/squareup/haha/guava/collect/SingletonImmutableList;
.super Lcom/squareup/haha/guava/collect/ImmutableList;
.source "SingletonImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/ImmutableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private transient element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/squareup/haha/guava/collect/SingletonImmutableList;, "Lcom/squareup/haha/guava/collect/SingletonImmutableList<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableList;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    .line 41
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 76
    .local p0, "this":Lcom/squareup/haha/guava/collect/SingletonImmutableList;, "Lcom/squareup/haha/guava/collect/SingletonImmutableList<TE;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final copyIntoArray([Ljava/lang/Object;I)I
    .locals 1
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .prologue
    .line 115
    .local p0, "this":Lcom/squareup/haha/guava/collect/SingletonImmutableList;, "Lcom/squareup/haha/guava/collect/SingletonImmutableList<TE;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    aput-object v0, p1, p2

    .line 116
    add-int/lit8 v0, p2, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/SingletonImmutableList;, "Lcom/squareup/haha/guava/collect/SingletonImmutableList<TE;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    if-ne p1, p0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v1

    .line 83
    :cond_1
    instance-of v3, p1, Ljava/util/List;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 84
    check-cast v0, Ljava/util/List;

    .line 85
    .local v0, "that":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lcom/squareup/haha/guava/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "that":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_3
    move v1, v2

    .line 87
    goto :goto_0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/squareup/haha/guava/collect/SingletonImmutableList;, "Lcom/squareup/haha/guava/collect/SingletonImmutableList<TE;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/squareup/haha/guava/base/Ascii;->checkElementIndex(II)I

    .line 46
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 93
    .local p0, "this":Lcom/squareup/haha/guava/collect/SingletonImmutableList;, "Lcom/squareup/haha/guava/collect/SingletonImmutableList<TE;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    .local p0, "this":Lcom/squareup/haha/guava/collect/SingletonImmutableList;, "Lcom/squareup/haha/guava/collect/SingletonImmutableList<TE;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 106
    .local p0, "this":Lcom/squareup/haha/guava/collect/SingletonImmutableList;, "Lcom/squareup/haha/guava/collect/SingletonImmutableList<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 110
    .local p0, "this":Lcom/squareup/haha/guava/collect/SingletonImmutableList;, "Lcom/squareup/haha/guava/collect/SingletonImmutableList<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/squareup/haha/guava/collect/SingletonImmutableList;, "Lcom/squareup/haha/guava/collect/SingletonImmutableList<TE;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    invoke-static {v0}, Lcom/squareup/haha/guava/collect/Iterators;->singletonIterator(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 33
    .line 2054
    .local p0, "this":Lcom/squareup/haha/guava/collect/SingletonImmutableList;, "Lcom/squareup/haha/guava/collect/SingletonImmutableList<TE;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    invoke-static {v0}, Lcom/squareup/haha/guava/collect/Iterators;->singletonIterator(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    .line 33
    return-object v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    .local p0, "this":Lcom/squareup/haha/guava/collect/SingletonImmutableList;, "Lcom/squareup/haha/guava/collect/SingletonImmutableList<TE;>;"
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/SingletonImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final reverse()Lcom/squareup/haha/guava/collect/ImmutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/squareup/haha/guava/collect/SingletonImmutableList;, "Lcom/squareup/haha/guava/collect/SingletonImmutableList<TE;>;"
    return-object p0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lcom/squareup/haha/guava/collect/SingletonImmutableList;, "Lcom/squareup/haha/guava/collect/SingletonImmutableList<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final subList(II)Lcom/squareup/haha/guava/collect/ImmutableList;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/squareup/haha/guava/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/squareup/haha/guava/collect/SingletonImmutableList;, "Lcom/squareup/haha/guava/collect/SingletonImmutableList<TE;>;"
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/squareup/haha/guava/base/Ascii;->checkPositionIndexes(III)V

    .line 68
    if-ne p1, p2, :cond_0

    .line 1077
    sget-object p0, Lcom/squareup/haha/guava/collect/ImmutableList;->EMPTY:Lcom/squareup/haha/guava/collect/ImmutableList;

    .line 68
    .end local p0    # "this":Lcom/squareup/haha/guava/collect/SingletonImmutableList;, "Lcom/squareup/haha/guava/collect/SingletonImmutableList<TE;>;"
    :cond_0
    return-object p0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 33
    .local p0, "this":Lcom/squareup/haha/guava/collect/SingletonImmutableList;, "Lcom/squareup/haha/guava/collect/SingletonImmutableList<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/squareup/haha/guava/collect/SingletonImmutableList;->subList(II)Lcom/squareup/haha/guava/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    .local p0, "this":Lcom/squareup/haha/guava/collect/SingletonImmutableList;, "Lcom/squareup/haha/guava/collect/SingletonImmutableList<TE;>;"
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "elementToString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
