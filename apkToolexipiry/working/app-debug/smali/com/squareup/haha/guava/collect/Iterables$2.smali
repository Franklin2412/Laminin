.class public final Lcom/squareup/haha/guava/collect/Iterables$2;
.super Lcom/squareup/haha/guava/collect/FluentIterable;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/guava/collect/FluentIterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private synthetic val$inputs:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/Iterables$2;->val$inputs:Ljava/lang/Iterable;

    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 498
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Iterables$2;->val$inputs:Ljava/lang/Iterable;

    .line 1508
    new-instance v1, Lcom/squareup/haha/guava/collect/Iterables$3;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/squareup/haha/guava/collect/Iterables$3;-><init>(Ljava/util/Iterator;)V

    .line 498
    invoke-static {v1}, Lcom/squareup/haha/guava/collect/Iterators;->concat(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
