.class final Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection;
.super Lcom/squareup/haha/guava/collect/ImmutableCollection;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntryCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/ImmutableCollection",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/ImmutableMultimap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/ImmutableMultimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/ImmutableMultimap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection<TK;TV;>;"
    .local p1, "multimap":Lcom/squareup/haha/guava/collect/ImmutableMultimap;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap<TK;TV;>;"
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableCollection;-><init>()V

    .line 505
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection;->multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;

    .line 506
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 522
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection<TK;TV;>;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 523
    check-cast v0, Ljava/util/Map$Entry;

    .line 524
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection;->multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/squareup/haha/guava/collect/ImmutableMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 526
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 513
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection;->multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;

    .line 1438
    iget-object v0, v0, Lcom/squareup/haha/guava/collect/ImmutableMultimap;->map:Lcom/squareup/haha/guava/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->isPartialView()Z

    move-result v0

    .line 513
    return v0
.end method

.method public final iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 509
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection;->multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMultimap;->entryIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 500
    .line 1509
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection;->multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMultimap;->entryIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    .line 500
    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 518
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection;->multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMultimap;->size()I

    move-result v0

    return v0
.end method
