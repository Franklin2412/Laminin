.class final Lcom/squareup/haha/guava/collect/AbstractMultiset$ElementSet;
.super Lcom/squareup/haha/guava/collect/Multisets$ElementSet;
.source "AbstractMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/AbstractMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ElementSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/guava/collect/Multisets$ElementSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/squareup/haha/guava/collect/AbstractMultiset;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/AbstractMultiset;)V
    .locals 0

    .prologue
    .line 153
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultiset$ElementSet;, "Lcom/squareup/haha/guava/collect/AbstractMultiset<TE;>.ElementSet;"
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/AbstractMultiset$ElementSet;->this$0:Lcom/squareup/haha/guava/collect/AbstractMultiset;

    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/Multisets$ElementSet;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 156
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultiset$ElementSet;, "Lcom/squareup/haha/guava/collect/AbstractMultiset<TE;>.ElementSet;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultiset$ElementSet;->this$0:Lcom/squareup/haha/guava/collect/AbstractMultiset;

    return-object v0
.end method
