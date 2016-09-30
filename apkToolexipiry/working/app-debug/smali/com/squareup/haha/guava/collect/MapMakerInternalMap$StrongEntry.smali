.class Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StrongEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private hash:I

.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private next:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile valueReference:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1
    .param p2, "hash"    # I
    .param p3    # Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 917
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 986
    invoke-static {}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->unset()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;->valueReference:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    .line 918
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;->key:Ljava/lang/Object;

    .line 919
    iput p2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;->hash:I

    .line 920
    iput-object p3, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;->next:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 921
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 1

    .prologue
    .line 932
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getHash()I
    .locals 1

    .prologue
    .line 1002
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry<TK;TV;>;"
    iget v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;->hash:I

    return v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 925
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1007
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;->next:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public getNextEvictable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 964
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNextExpirable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 942
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousEvictable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 974
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousExpirable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 952
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 990
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;->valueReference:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 937
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextEvictable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 969
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry<TK;TV;>;"
    .local p1, "next":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextExpirable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 947
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry<TK;TV;>;"
    .local p1, "next":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousEvictable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 979
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry<TK;TV;>;"
    .local p1, "previous":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousExpirable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 957
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry<TK;TV;>;"
    .local p1, "previous":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setValueReference(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 995
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry<TK;TV;>;"
    .local p1, "valueReference":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;->valueReference:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    .line 996
    .local v0, "previous":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;->valueReference:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    .line 997
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->clear$5ca9f1d3()V

    .line 998
    return-void
.end method
