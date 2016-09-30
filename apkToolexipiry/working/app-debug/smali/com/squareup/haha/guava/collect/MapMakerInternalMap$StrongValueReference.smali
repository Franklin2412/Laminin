.class final Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongValueReference;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private referent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 1767
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongValueReference<TK;TV;>;"
    .local p1, "referent":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1768
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongValueReference;->referent:Ljava/lang/Object;

    .line 1769
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
    .line 1798
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongValueReference<TK;TV;>;"
    return-void
.end method

.method public final copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;
    .locals 0
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
    .line 1784
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongValueReference<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "entry":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1773
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongValueReference<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongValueReference;->referent:Ljava/lang/Object;

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
    .line 1778
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongValueReference<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method
