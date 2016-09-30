.class final Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$1;
.super Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$Itr;
.source "AbstractMapBasedMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->valueIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap",
        "<TK;TV;>.com/squareup/haha/guava/collect/AbstractMapBasedMultimap$Itr<TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;)V
    .locals 0

    .prologue
    .line 1175
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$1;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap.1;"
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$Itr;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;)V

    return-void
.end method


# virtual methods
.method final output(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1178
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$1;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap.1;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    return-object p2
.end method
