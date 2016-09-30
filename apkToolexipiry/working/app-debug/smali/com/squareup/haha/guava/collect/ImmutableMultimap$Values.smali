.class final Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values;
.super Lcom/squareup/haha/guava/collect/ImmutableCollection;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/ImmutableCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final transient multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/ImmutableMultimap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/ImmutableMultimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/ImmutableMultimap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 644
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values<TK;TV;>;"
    .local p1, "multimap":Lcom/squareup/haha/guava/collect/ImmutableMultimap;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap<TK;TV;>;"
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableCollection;-><init>()V

    .line 645
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values;->multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;

    .line 646
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
    .line 650
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values;->multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/collect/ImmutableMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final copyIntoArray([Ljava/lang/Object;I)I
    .locals 3
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .prologue
    .line 660
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values<TK;TV;>;"
    iget-object v2, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values;->multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;

    iget-object v2, v2, Lcom/squareup/haha/guava/collect/ImmutableMultimap;->map:Lcom/squareup/haha/guava/collect/ImmutableMap;

    invoke-virtual {v2}, Lcom/squareup/haha/guava/collect/ImmutableMap;->values()Lcom/squareup/haha/guava/collect/ImmutableCollection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/haha/guava/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/haha/guava/collect/ImmutableCollection;

    .line 661
    .local v1, "valueCollection":Lcom/squareup/haha/guava/collect/ImmutableCollection;, "Lcom/squareup/haha/guava/collect/ImmutableCollection<TV;>;"
    invoke-virtual {v1, p1, p2}, Lcom/squareup/haha/guava/collect/ImmutableCollection;->copyIntoArray([Ljava/lang/Object;I)I

    move-result p2

    .line 662
    goto :goto_0

    .line 663
    .end local v1    # "valueCollection":Lcom/squareup/haha/guava/collect/ImmutableCollection;, "Lcom/squareup/haha/guava/collect/ImmutableCollection<TV;>;"
    :cond_0
    return p2
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 672
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/UnmodifiableIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 654
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values;->multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMultimap;->valueIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 641
    .line 1654
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values;->multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMultimap;->valueIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    .line 641
    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 668
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values;->multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMultimap;->size()I

    move-result v0

    return v0
.end method
