.class final Lcom/squareup/haha/guava/collect/MapMakerInternalMap$KeyIterator;
.super Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/guava/collect/MapMakerInternalMap",
        "<TK;TV;>.com/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator<TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/MapMakerInternalMap;)V
    .locals 0

    .prologue
    .line 3702
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$KeyIterator;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>.KeyIterator;"
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;-><init>(Lcom/squareup/haha/guava/collect/MapMakerInternalMap;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3706
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$KeyIterator;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>.KeyIterator;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$KeyIterator;->nextEntry()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WriteThroughEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
