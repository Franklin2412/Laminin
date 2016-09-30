.class public abstract Lcom/squareup/haha/guava/collect/ImmutableBiMap;
.super Lcom/squareup/haha/guava/collect/ImmutableMap;
.source "ImmutableBiMap.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/BiMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/ImmutableMap",
        "<TK;TV;>;",
        "Lcom/squareup/haha/guava/collect/BiMap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 216
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableBiMap;, "Lcom/squareup/haha/guava/collect/ImmutableBiMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableMap;-><init>()V

    return-void
.end method

.method public static of()Lcom/squareup/haha/guava/collect/ImmutableBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/squareup/haha/guava/collect/ImmutableBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 50
    sget-object v0, Lcom/squareup/haha/guava/collect/EmptyImmutableBiMap;->INSTANCE:Lcom/squareup/haha/guava/collect/EmptyImmutableBiMap;

    return-object v0
.end method


# virtual methods
.method public abstract inverse()Lcom/squareup/haha/guava/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/ImmutableBiMap",
            "<TV;TK;>;"
        }
    .end annotation
.end method

.method public final bridge synthetic values()Lcom/squareup/haha/guava/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 40
    .line 1232
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableBiMap;, "Lcom/squareup/haha/guava/collect/ImmutableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableBiMap;->inverse()Lcom/squareup/haha/guava/collect/ImmutableBiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableBiMap;->keySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    .line 40
    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 40
    .line 2232
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableBiMap;, "Lcom/squareup/haha/guava/collect/ImmutableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableBiMap;->inverse()Lcom/squareup/haha/guava/collect/ImmutableBiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableBiMap;->keySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    .line 40
    return-object v0
.end method
