.class final Lcom/squareup/haha/guava/collect/ImmutableMapKeySet$1;
.super Lcom/squareup/haha/guava/collect/ImmutableAsList;
.source "ImmutableMapKeySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/haha/guava/collect/ImmutableMapKeySet;->createAsList()Lcom/squareup/haha/guava/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/guava/collect/ImmutableAsList",
        "<TK;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/squareup/haha/guava/collect/ImmutableMapKeySet;

.field private synthetic val$entryList:Lcom/squareup/haha/guava/collect/ImmutableList;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/ImmutableMapKeySet;Lcom/squareup/haha/guava/collect/ImmutableList;)V
    .locals 0

    .prologue
    .line 59
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMapKeySet$1;, "Lcom/squareup/haha/guava/collect/ImmutableMapKeySet.1;"
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/ImmutableMapKeySet$1;->this$0:Lcom/squareup/haha/guava/collect/ImmutableMapKeySet;

    iput-object p2, p0, Lcom/squareup/haha/guava/collect/ImmutableMapKeySet$1;->val$entryList:Lcom/squareup/haha/guava/collect/ImmutableList;

    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method final delegateCollection()Lcom/squareup/haha/guava/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/ImmutableCollection",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMapKeySet$1;, "Lcom/squareup/haha/guava/collect/ImmutableMapKeySet.1;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMapKeySet$1;->this$0:Lcom/squareup/haha/guava/collect/ImmutableMapKeySet;

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMapKeySet$1;, "Lcom/squareup/haha/guava/collect/ImmutableMapKeySet.1;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMapKeySet$1;->val$entryList:Lcom/squareup/haha/guava/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
