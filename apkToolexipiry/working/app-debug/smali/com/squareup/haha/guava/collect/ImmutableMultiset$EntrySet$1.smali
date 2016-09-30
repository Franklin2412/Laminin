.class final Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet$1;
.super Lcom/squareup/haha/guava/collect/ImmutableAsList;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet;->createAsList()Lcom/squareup/haha/guava/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/guava/collect/ImmutableAsList",
        "<",
        "Lcom/squareup/haha/guava/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private synthetic this$1:Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet;)V
    .locals 0

    .prologue
    .line 369
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet$1;, "Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet.1;"
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet$1;->this$1:Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet;

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
            "<",
            "Lcom/squareup/haha/guava/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 377
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet$1;, "Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet.1;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet$1;->this$1:Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet;

    return-object v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 369
    .line 1372
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet$1;, "Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet.1;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet$1;->this$1:Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet;

    iget-object v0, v0, Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/squareup/haha/guava/collect/ImmutableMultiset;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/collect/ImmutableMultiset;->getEntry(I)Lcom/squareup/haha/guava/collect/Multiset$Entry;

    move-result-object v0

    .line 369
    return-object v0
.end method
