.class final Lcom/squareup/haha/trove/TIntObjectHashMap$EqProcedure;
.super Ljava/lang/Object;
.source "TIntObjectHashMap.java"

# interfaces
.implements Lcom/squareup/haha/trove/TIntObjectProcedure;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/trove/TIntObjectHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EqProcedure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/haha/trove/TIntObjectProcedure",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final _otherMap:Lcom/squareup/haha/trove/TIntObjectHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/trove/TIntObjectHashMap",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/squareup/haha/trove/TIntObjectHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/trove/TIntObjectHashMap",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 438
    .local p0, "this":Lcom/squareup/haha/trove/TIntObjectHashMap$EqProcedure;, "Lcom/squareup/haha/trove/TIntObjectHashMap$EqProcedure<TV;>;"
    .local p1, "otherMap":Lcom/squareup/haha/trove/TIntObjectHashMap;, "Lcom/squareup/haha/trove/TIntObjectHashMap<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    iput-object p1, p0, Lcom/squareup/haha/trove/TIntObjectHashMap$EqProcedure;->_otherMap:Lcom/squareup/haha/trove/TIntObjectHashMap;

    .line 440
    return-void
.end method


# virtual methods
.method public final execute(ILjava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/squareup/haha/trove/TIntObjectHashMap$EqProcedure;, "Lcom/squareup/haha/trove/TIntObjectHashMap$EqProcedure<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 444
    iget-object v3, p0, Lcom/squareup/haha/trove/TIntObjectHashMap$EqProcedure;->_otherMap:Lcom/squareup/haha/trove/TIntObjectHashMap;

    invoke-virtual {v3, p1}, Lcom/squareup/haha/trove/TIntObjectHashMap;->index(I)I

    move-result v0

    .line 445
    .local v0, "index":I
    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/squareup/haha/trove/TIntObjectHashMap$EqProcedure;->_otherMap:Lcom/squareup/haha/trove/TIntObjectHashMap;

    invoke-virtual {v3, p1}, Lcom/squareup/haha/trove/TIntObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1452
    if-eq p2, v3, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v1

    .line 445
    :goto_0
    if-eqz v3, :cond_2

    :goto_1
    return v1

    :cond_1
    move v3, v2

    .line 1452
    goto :goto_0

    :cond_2
    move v1, v2

    .line 445
    goto :goto_1
.end method
