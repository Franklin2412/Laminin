.class final Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MultisetIteratorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private canRemove:Z

.field private currentEntry:Lcom/squareup/haha/guava/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final entryIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/squareup/haha/guava/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private laterCount:I

.field private final multiset:Lcom/squareup/haha/guava/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/Multiset",
            "<TE;>;"
        }
    .end annotation
.end field

.field private totalCount:I


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/Multiset;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/Multiset",
            "<TE;>;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/squareup/haha/guava/collect/Multiset$Entry",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1008
    .local p0, "this":Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;, "Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl<TE;>;"
    .local p1, "multiset":Lcom/squareup/haha/guava/collect/Multiset;, "Lcom/squareup/haha/guava/collect/Multiset<TE;>;"
    .local p2, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/haha/guava/collect/Multiset$Entry<TE;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1009
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;->multiset:Lcom/squareup/haha/guava/collect/Multiset;

    .line 1010
    iput-object p2, p0, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;->entryIterator:Ljava/util/Iterator;

    .line 1011
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 1015
    .local p0, "this":Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;, "Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl<TE;>;"
    iget v0, p0, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;->laterCount:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1020
    .local p0, "this":Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;, "Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1021
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1023
    :cond_0
    iget v0, p0, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;->laterCount:I

    if-nez v0, :cond_1

    .line 1024
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;->currentEntry:Lcom/squareup/haha/guava/collect/Multiset$Entry;

    .line 1025
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;->currentEntry:Lcom/squareup/haha/guava/collect/Multiset$Entry;

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v0

    iput v0, p0, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;->laterCount:I

    iput v0, p0, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;->totalCount:I

    .line 1027
    :cond_1
    iget v0, p0, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;->laterCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;->laterCount:I

    .line 1028
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;->canRemove:Z

    .line 1029
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;->currentEntry:Lcom/squareup/haha/guava/collect/Multiset$Entry;

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 1034
    .local p0, "this":Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;, "Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl<TE;>;"
    iget-boolean v0, p0, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;->canRemove:Z

    invoke-static {v0}, Lcom/squareup/haha/guava/base/Ascii;->checkRemove(Z)V

    .line 1035
    iget v0, p0, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;->totalCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1040
    :goto_0
    iget v0, p0, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;->totalCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;->totalCount:I

    .line 1041
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;->canRemove:Z

    .line 1042
    return-void

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;->multiset:Lcom/squareup/haha/guava/collect/Multiset;

    iget-object v1, p0, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;->currentEntry:Lcom/squareup/haha/guava/collect/Multiset$Entry;

    invoke-interface {v1}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/squareup/haha/guava/collect/Multiset;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
