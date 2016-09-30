.class final Lcom/squareup/haha/guava/collect/ImmutableMapKeySet;
.super Lcom/squareup/haha/guava/collect/ImmutableSet;
.source "ImmutableMapKeySet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/ImmutableSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field private final map:Lcom/squareup/haha/guava/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/ImmutableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMapKeySet;, "Lcom/squareup/haha/guava/collect/ImmutableMapKeySet<TK;TV;>;"
    .local p1, "map":Lcom/squareup/haha/guava/collect/ImmutableMap;, "Lcom/squareup/haha/guava/collect/ImmutableMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableSet;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/ImmutableMapKeySet;->map:Lcom/squareup/haha/guava/collect/ImmutableMap;

    .line 39
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMapKeySet;, "Lcom/squareup/haha/guava/collect/ImmutableMapKeySet<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMapKeySet;->map:Lcom/squareup/haha/guava/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final createAsList()Lcom/squareup/haha/guava/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/ImmutableList",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMapKeySet;, "Lcom/squareup/haha/guava/collect/ImmutableMapKeySet<TK;TV;>;"
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/ImmutableMapKeySet;->map:Lcom/squareup/haha/guava/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/squareup/haha/guava/collect/ImmutableMap;->entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/haha/guava/collect/ImmutableSet;->asList()Lcom/squareup/haha/guava/collect/ImmutableList;

    move-result-object v0

    .line 59
    .local v0, "entryList":Lcom/squareup/haha/guava/collect/ImmutableList;, "Lcom/squareup/haha/guava/collect/ImmutableList<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lcom/squareup/haha/guava/collect/ImmutableMapKeySet$1;

    invoke-direct {v1, p0, v0}, Lcom/squareup/haha/guava/collect/ImmutableMapKeySet$1;-><init>(Lcom/squareup/haha/guava/collect/ImmutableMapKeySet;Lcom/squareup/haha/guava/collect/ImmutableList;)V

    return-object v1
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMapKeySet;, "Lcom/squareup/haha/guava/collect/ImmutableMapKeySet<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/UnmodifiableIterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMapKeySet;, "Lcom/squareup/haha/guava/collect/ImmutableMapKeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMapKeySet;->asList()Lcom/squareup/haha/guava/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableList;->iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 33
    .line 1048
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMapKeySet;, "Lcom/squareup/haha/guava/collect/ImmutableMapKeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMapKeySet;->asList()Lcom/squareup/haha/guava/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableList;->iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    .line 33
    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMapKeySet;, "Lcom/squareup/haha/guava/collect/ImmutableMapKeySet<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMapKeySet;->map:Lcom/squareup/haha/guava/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->size()I

    move-result v0

    return v0
.end method
