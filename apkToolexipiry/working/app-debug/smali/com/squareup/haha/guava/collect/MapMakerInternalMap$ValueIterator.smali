.class final Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueIterator;
.super Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/guava/collect/MapMakerInternalMap",
        "<TK;TV;>.com/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator<TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/MapMakerInternalMap;)V
    .locals 0

    .prologue
    .line 3710
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueIterator;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>.ValueIterator;"
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;-><init>(Lcom/squareup/haha/guava/collect/MapMakerInternalMap;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3714
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueIterator;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>.ValueIterator;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueIterator;->nextEntry()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WriteThroughEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WriteThroughEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
