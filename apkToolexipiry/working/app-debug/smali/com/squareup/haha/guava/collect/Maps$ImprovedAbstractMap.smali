.class abstract Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;
.super Ljava/util/AbstractMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ImprovedAbstractMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3303
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;, "Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method abstract createEntrySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method createKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3326
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;, "Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap<TK;TV;>;"
    new-instance v0, Lcom/squareup/haha/guava/collect/Maps$KeySet;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3337
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;, "Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap<TK;TV;>;"
    new-instance v0, Lcom/squareup/haha/guava/collect/Maps$Values;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/Maps$Values;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3314
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;, "Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;->entrySet:Ljava/util/Set;

    .line 3315
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;->createEntrySet()Ljava/util/Set;

    move-result-object v0

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    iput-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3321
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;, "Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;->keySet:Ljava/util/Set;

    .line 3322
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;->createKeySet()Ljava/util/Set;

    move-result-object v0

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    iput-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;->keySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3332
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;, "Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;->values:Ljava/util/Collection;

    .line 3333
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;->createValues()Ljava/util/Collection;

    move-result-object v0

    .end local v0    # "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    iput-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;->values:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
