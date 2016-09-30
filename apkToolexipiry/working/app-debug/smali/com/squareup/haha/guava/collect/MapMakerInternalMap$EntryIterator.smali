.class final Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryIterator;
.super Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/guava/collect/MapMakerInternalMap",
        "<TK;TV;>.com/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/MapMakerInternalMap;)V
    .locals 0

    .prologue
    .line 3765
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryIterator;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>.EntryIterator;"
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;-><init>(Lcom/squareup/haha/guava/collect/MapMakerInternalMap;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3765
    .line 4769
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryIterator;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryIterator;->nextEntry()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WriteThroughEntry;

    move-result-object v0

    .line 3765
    return-object v0
.end method
