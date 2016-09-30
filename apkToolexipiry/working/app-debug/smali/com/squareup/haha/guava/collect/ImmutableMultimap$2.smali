.class final Lcom/squareup/haha/guava/collect/ImmutableMultimap$2;
.super Lcom/squareup/haha/guava/collect/ImmutableMultimap$Itr;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/haha/guava/collect/ImmutableMultimap;->valueIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/guava/collect/ImmutableMultimap",
        "<TK;TV;>.com/squareup/haha/guava/collect/ImmutableMultimap$Itr<TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/ImmutableMultimap;)V
    .locals 1

    .prologue
    .line 633
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap$2;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap.2;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Itr;-><init>(Lcom/squareup/haha/guava/collect/ImmutableMultimap;B)V

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
    .line 636
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultimap$2;, "Lcom/squareup/haha/guava/collect/ImmutableMultimap.2;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    return-object p2
.end method
