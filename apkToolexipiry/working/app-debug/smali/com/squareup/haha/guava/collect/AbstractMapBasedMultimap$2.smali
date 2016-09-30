.class final Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$2;
.super Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$Itr;
.source "AbstractMapBasedMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap",
        "<TK;TV;>.com/squareup/haha/guava/collect/AbstractMapBasedMultimap$Itr<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;)V
    .locals 0

    .prologue
    .line 1214
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$2;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap.2;"
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$Itr;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic output(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1214
    .line 2217
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$2;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap.2;"
    invoke-static {p1, p2}, Lcom/squareup/haha/guava/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 1214
    return-object v0
.end method
