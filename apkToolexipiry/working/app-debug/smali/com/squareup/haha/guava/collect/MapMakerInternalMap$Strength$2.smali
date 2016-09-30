.class final enum Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength$2;
.super Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 308
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final referenceValue(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment",
            "<TK;TV;>;",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;TV;)",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, "segment":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p2, "entry":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$SoftValueReference;

    iget-object v1, p1, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p3, p2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$SoftValueReference;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V

    return-object v0
.end method
