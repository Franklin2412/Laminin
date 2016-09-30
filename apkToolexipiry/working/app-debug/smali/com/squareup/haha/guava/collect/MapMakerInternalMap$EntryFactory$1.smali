.class final enum Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory$1;
.super Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 352
    invoke-direct {p0, p1, v0, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final newEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .param p3, "hash"    # I
    .param p4    # Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment",
            "<TK;TV;>;TK;I",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, "segment":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;

    invoke-direct {v0, p2, p3, p4}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;-><init>(Ljava/lang/Object;ILcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V

    return-object v0
.end method
