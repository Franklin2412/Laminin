.class public abstract Lcom/squareup/haha/guava/collect/ImmutableSet;
.super Lcom/squareup/haha/guava/collect/ImmutableCollection;
.source "ImmutableSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/ImmutableCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 383
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSet;, "Lcom/squareup/haha/guava/collect/ImmutableSet<TE;>;"
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method public static of()Lcom/squareup/haha/guava/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/squareup/haha/guava/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 84
    sget-object v0, Lcom/squareup/haha/guava/collect/EmptyImmutableSet;->INSTANCE:Lcom/squareup/haha/guava/collect/EmptyImmutableSet;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 391
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSet;, "Lcom/squareup/haha/guava/collect/ImmutableSet<TE;>;"
    if-ne p1, p0, :cond_0

    .line 392
    const/4 v0, 0x1

    .line 399
    :goto_0
    return v0

    .line 393
    :cond_0
    instance-of v0, p1, Lcom/squareup/haha/guava/collect/ImmutableSet;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSet;->isHashCodeFast()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/squareup/haha/guava/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSet;->isHashCodeFast()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSet;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 397
    const/4 v0, 0x0

    goto :goto_0

    .line 399
    :cond_1
    invoke-static {p0, p1}, Lcom/squareup/haha/guava/base/Ascii;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 403
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSet;, "Lcom/squareup/haha/guava/collect/ImmutableSet<TE;>;"
    invoke-static {p0}, Lcom/squareup/haha/guava/base/Ascii;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    .prologue
    .line 387
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSet;, "Lcom/squareup/haha/guava/collect/ImmutableSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 72
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableSet;, "Lcom/squareup/haha/guava/collect/ImmutableSet<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSet;->iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
