.class final Lcom/squareup/haha/guava/collect/AbstractMultiset$EntrySet;
.super Lcom/squareup/haha/guava/collect/Multisets$EntrySet;
.source "AbstractMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/AbstractMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/guava/collect/Multisets$EntrySet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/squareup/haha/guava/collect/AbstractMultiset;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/AbstractMultiset;)V
    .locals 0

    .prologue
    .line 171
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultiset$EntrySet;, "Lcom/squareup/haha/guava/collect/AbstractMultiset<TE;>.EntrySet;"
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/AbstractMultiset$EntrySet;->this$0:Lcom/squareup/haha/guava/collect/AbstractMultiset;

    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/Multisets$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/squareup/haha/guava/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultiset$EntrySet;, "Lcom/squareup/haha/guava/collect/AbstractMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultiset$EntrySet;->this$0:Lcom/squareup/haha/guava/collect/AbstractMultiset;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/AbstractMultiset;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method final multiset()Lcom/squareup/haha/guava/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultiset$EntrySet;, "Lcom/squareup/haha/guava/collect/AbstractMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultiset$EntrySet;->this$0:Lcom/squareup/haha/guava/collect/AbstractMultiset;

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 181
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultiset$EntrySet;, "Lcom/squareup/haha/guava/collect/AbstractMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultiset$EntrySet;->this$0:Lcom/squareup/haha/guava/collect/AbstractMultiset;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/AbstractMultiset;->distinctElements()I

    move-result v0

    return v0
.end method
