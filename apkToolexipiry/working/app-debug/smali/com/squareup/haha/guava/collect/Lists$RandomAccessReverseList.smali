.class public final Lcom/squareup/haha/guava/collect/Lists$RandomAccessReverseList;
.super Lcom/squareup/haha/guava/collect/Lists$ReverseList;
.source "Lists.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/Lists$ReverseList",
        "<TT;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 886
    .local p0, "this":Lcom/squareup/haha/guava/collect/Lists$RandomAccessReverseList;, "Lcom/squareup/haha/guava/collect/Lists$RandomAccessReverseList<TT;>;"
    .local p1, "forwardList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/Lists$ReverseList;-><init>(Ljava/util/List;)V

    .line 887
    return-void
.end method
