.class final Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapBasedMultisetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private canRemove:Z

.field private currentEntry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TE;",
            "Lcom/squareup/haha/guava/collect/Count;",
            ">;"
        }
    .end annotation
.end field

.field private entryIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TE;",
            "Lcom/squareup/haha/guava/collect/Count;",
            ">;>;"
        }
    .end annotation
.end field

.field private occurrencesLeft:I

.field private synthetic this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;)V
    .locals 1

    .prologue
    .line 165
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset<TE;>.MapBasedMultisetIterator;"
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-static {p1}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->access$000(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->entryIterator:Ljava/util/Iterator;

    .line 167
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 171
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset<TE;>.MapBasedMultisetIterator;"
    iget v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->occurrencesLeft:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->entryIterator:Ljava/util/Iterator;

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
    .line 176
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset<TE;>.MapBasedMultisetIterator;"
    iget v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->occurrencesLeft:I

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->currentEntry:Ljava/util/Map$Entry;

    .line 178
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->currentEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Count;

    .line 1037
    iget v0, v0, Lcom/squareup/haha/guava/collect/Count;->value:I

    .line 178
    iput v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->occurrencesLeft:I

    .line 180
    :cond_0
    iget v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->occurrencesLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->occurrencesLeft:I

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->canRemove:Z

    .line 182
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->currentEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 3

    .prologue
    .line 187
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset<TE;>.MapBasedMultisetIterator;"
    iget-boolean v1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->canRemove:Z

    invoke-static {v1}, Lcom/squareup/haha/guava/base/Ascii;->checkRemove(Z)V

    .line 188
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->currentEntry:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/haha/guava/collect/Count;

    .line 2037
    iget v0, v1, Lcom/squareup/haha/guava/collect/Count;->value:I

    .line 189
    .local v0, "frequency":I
    if-gtz v0, :cond_0

    .line 190
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->currentEntry:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/haha/guava/collect/Count;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/squareup/haha/guava/collect/Count;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;

    # operator-- for: Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->size:J
    invoke-static {v1}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->access$110(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;)J

    .line 196
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->canRemove:Z

    .line 197
    return-void
.end method
