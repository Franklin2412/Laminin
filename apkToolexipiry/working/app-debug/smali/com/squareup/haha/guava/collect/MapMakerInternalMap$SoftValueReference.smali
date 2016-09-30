.class final Lcom/squareup/haha/guava/collect/MapMakerInternalMap$SoftValueReference;
.super Ljava/lang/ref/SoftReference;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SoftValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference",
        "<TV;>;",
        "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private entry:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1730
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$SoftValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$SoftValueReference<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    .local p2, "referent":Ljava/lang/Object;, "TV;"
    .local p3, "entry":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1731
    iput-object p3, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$SoftValueReference;->entry:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1732
    return-void
.end method


# virtual methods
.method public final clear$5ca9f1d3()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1741
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$SoftValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$SoftValueReference<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$SoftValueReference;->clear()V

    .line 1742
    return-void
.end method

.method public final copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1747
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$SoftValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$SoftValueReference<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "entry":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$SoftValueReference;

    invoke-direct {v0, p1, p2, p3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$SoftValueReference;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V

    return-object v0
.end method

.method public final getEntry()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1736
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$SoftValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$SoftValueReference<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$SoftValueReference;->entry:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method
