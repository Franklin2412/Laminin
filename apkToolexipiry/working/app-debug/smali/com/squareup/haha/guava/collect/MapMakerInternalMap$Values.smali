.class final Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Values;
.super Ljava/util/AbstractCollection;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/MapMakerInternalMap;)V
    .locals 0

    .prologue
    .line 3806
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Values;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>.Values;"
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Values;->this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 3830
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Values;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Values;->this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->clear()V

    .line 3831
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3825
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Values;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Values;->this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 3820
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Values;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Values;->this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

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
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3810
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Values;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>.Values;"
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueIterator;

    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Values;->this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-direct {v0, v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueIterator;-><init>(Lcom/squareup/haha/guava/collect/MapMakerInternalMap;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 3815
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Values;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Values;->this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->size()I

    move-result v0

    return v0
.end method
