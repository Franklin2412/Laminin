.class public abstract Lcom/squareup/haha/guava/collect/FluentIterable;
.super Ljava/lang/Object;
.source "FluentIterable.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final iterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 77
    .local p0, "this":Lcom/squareup/haha/guava/collect/FluentIterable;, "Lcom/squareup/haha/guava/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p0, p0, Lcom/squareup/haha/guava/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    .line 79
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    .local p0, "this":Lcom/squareup/haha/guava/collect/FluentIterable;, "Lcom/squareup/haha/guava/collect/FluentIterable<TE;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    .line 1278
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/haha/guava/collect/Iterators;->toString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    .line 118
    return-object v0
.end method
