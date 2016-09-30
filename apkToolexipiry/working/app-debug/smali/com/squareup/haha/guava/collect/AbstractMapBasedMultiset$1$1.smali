.class final Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1$1;
.super Lcom/squareup/haha/guava/collect/Multisets$AbstractEntry;
.source "AbstractMapBasedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/guava/collect/Multisets$AbstractEntry",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private synthetic this$1:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1;

.field private synthetic val$mapEntry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1;Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 101
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1$1;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1.1;"
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1$1;->this$1:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1;

    iput-object p2, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1$1;->val$mapEntry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/Multisets$AbstractEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 4

    .prologue
    .line 108
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1$1;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1.1;"
    iget-object v2, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1$1;->val$mapEntry:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Count;

    .line 109
    .local v0, "count":Lcom/squareup/haha/guava/collect/Count;
    if-eqz v0, :cond_0

    .line 1037
    iget v2, v0, Lcom/squareup/haha/guava/collect/Count;->value:I

    .line 109
    if-nez v2, :cond_1

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1$1;->this$1:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1;

    iget-object v2, v2, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1;->this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;

    invoke-static {v2}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->access$000(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1$1;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/haha/guava/collect/Count;

    .line 111
    .local v1, "frequency":Lcom/squareup/haha/guava/collect/Count;
    if-eqz v1, :cond_1

    .line 2037
    iget v2, v1, Lcom/squareup/haha/guava/collect/Count;->value:I

    .line 115
    .end local v1    # "frequency":Lcom/squareup/haha/guava/collect/Count;
    :goto_0
    return v2

    :cond_1
    if-nez v0, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    .line 3037
    :cond_2
    iget v2, v0, Lcom/squareup/haha/guava/collect/Count;->value:I

    goto :goto_0
.end method

.method public final getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1$1;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1.1;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1$1;->val$mapEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
