.class final Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/MapMakerInternalMap;)V
    .locals 0

    .prologue
    .line 3834
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntrySet;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntrySet;->this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 3878
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntrySet;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntrySet;->this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->clear()V

    .line 3879
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntrySet;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>.EntrySet;"
    const/4 v3, 0x0

    .line 3843
    instance-of v4, p1, Ljava/util/Map$Entry;

    if-nez v4, :cond_1

    .line 3853
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v0, p1

    .line 3846
    check-cast v0, Ljava/util/Map$Entry;

    .line 3847
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3848
    .local v1, "key":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 3851
    iget-object v4, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntrySet;->this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v4, v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3853
    .local v2, "v":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntrySet;->this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v4, v4, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->valueEquivalence:Lcom/squareup/haha/guava/base/Equivalence;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/squareup/haha/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 3873
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntrySet;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntrySet;->this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3838
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntrySet;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>.EntrySet;"
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryIterator;

    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntrySet;->this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-direct {v0, v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryIterator;-><init>(Lcom/squareup/haha/guava/collect/MapMakerInternalMap;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntrySet;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>.EntrySet;"
    const/4 v2, 0x0

    .line 3858
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_1

    .line 3863
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 3861
    check-cast v0, Ljava/util/Map$Entry;

    .line 3862
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3863
    .local v1, "key":Ljava/lang/Object;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntrySet;->this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 3868
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntrySet;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntrySet;->this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->size()I

    move-result v0

    return v0
.end method
