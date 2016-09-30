.class public abstract Lcom/squareup/haha/guava/collect/ForwardingMapEntry;
.super Lcom/squareup/haha/guava/collect/ForwardingObject;
.source "ForwardingMapEntry.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/ForwardingObject;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# virtual methods
.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMapEntry;, "Lcom/squareup/haha/guava/collect/ForwardingMapEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMapEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 80
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMapEntry;, "Lcom/squareup/haha/guava/collect/ForwardingMapEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMapEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMapEntry;, "Lcom/squareup/haha/guava/collect/ForwardingMapEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMapEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMapEntry;, "Lcom/squareup/haha/guava/collect/ForwardingMapEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMapEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMapEntry;, "Lcom/squareup/haha/guava/collect/ForwardingMapEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMapEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->hashCode()I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMapEntry;, "Lcom/squareup/haha/guava/collect/ForwardingMapEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMapEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
