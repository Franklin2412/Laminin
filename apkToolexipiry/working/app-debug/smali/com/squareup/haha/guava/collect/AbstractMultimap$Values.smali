.class final Lcom/squareup/haha/guava/collect/AbstractMultimap$Values;
.super Ljava/util/AbstractCollection;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/squareup/haha/guava/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/AbstractMultimap;)V
    .locals 0

    .prologue
    .line 181
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultimap$Values;, "Lcom/squareup/haha/guava/collect/AbstractMultimap<TK;TV;>.Values;"
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap$Values;->this$0:Lcom/squareup/haha/guava/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 195
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultimap$Values;, "Lcom/squareup/haha/guava/collect/AbstractMultimap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap$Values;->this$0:Lcom/squareup/haha/guava/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->clear()V

    .line 196
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 191
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultimap$Values;, "Lcom/squareup/haha/guava/collect/AbstractMultimap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap$Values;->this$0:Lcom/squareup/haha/guava/collect/AbstractMultimap;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultimap$Values;, "Lcom/squareup/haha/guava/collect/AbstractMultimap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap$Values;->this$0:Lcom/squareup/haha/guava/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->valueIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 187
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultimap$Values;, "Lcom/squareup/haha/guava/collect/AbstractMultimap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap$Values;->this$0:Lcom/squareup/haha/guava/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->size()I

    move-result v0

    return v0
.end method
