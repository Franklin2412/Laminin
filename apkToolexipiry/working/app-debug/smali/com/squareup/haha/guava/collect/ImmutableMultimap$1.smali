.class final Lcom/squareup/haha/guava/collect/ImmutableMultimap$1;
.super Lcom/squareup/haha/guava/collect/ImmutableMultimap$Itr;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/haha/guava/collect/ImmutableMultimap;->entryIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/guava/collect/ImmutableMultimap",
        "<TK;TV;>.com/squareup/haha/guava/collect/ImmutableMultimap$Itr<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/ImmutableMultimap;)V
    .locals 1

    .prologue
    .line 557
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap$1;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap.1;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Itr;-><init>(Lcom/squareup/haha/guava/collect/ImmutableMultimap;B)V

    return-void
.end method


# virtual methods
.method final bridge synthetic output(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 557
    .line 1560
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap$1;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap.1;"
    invoke-static {p1, p2}, Lcom/squareup/haha/guava/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 557
    return-object v0
.end method
