.class public final Lcom/squareup/haha/trove/THashMap$ValueView;
.super Lcom/squareup/haha/trove/THashMap$MapBackedView;
.source "THashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/trove/THashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ValueView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/trove/THashMap",
        "<TK;TV;>.com/squareup/haha/trove/THashMap$MapBackedView<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/haha/trove/THashMap;


# direct methods
.method protected constructor <init>(Lcom/squareup/haha/trove/THashMap;)V
    .locals 0

    .prologue
    .line 507
    .local p0, "this":Lcom/squareup/haha/trove/THashMap$ValueView;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.ValueView;"
    iput-object p1, p0, Lcom/squareup/haha/trove/THashMap$ValueView;->this$0:Lcom/squareup/haha/trove/THashMap;

    invoke-direct {p0, p1}, Lcom/squareup/haha/trove/THashMap$MapBackedView;-><init>(Lcom/squareup/haha/trove/THashMap;)V

    return-void
.end method


# virtual methods
.method public final containsElement(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 520
    .local p0, "this":Lcom/squareup/haha/trove/THashMap$ValueView;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.ValueView;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/squareup/haha/trove/THashMap$ValueView;->this$0:Lcom/squareup/haha/trove/THashMap;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/trove/THashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 510
    .local p0, "this":Lcom/squareup/haha/trove/THashMap$ValueView;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.ValueView;"
    new-instance v0, Lcom/squareup/haha/trove/THashMap$ValueView$1;

    iget-object v1, p0, Lcom/squareup/haha/trove/THashMap$ValueView;->this$0:Lcom/squareup/haha/trove/THashMap;

    invoke-direct {v0, p0, v1}, Lcom/squareup/haha/trove/THashMap$ValueView$1;-><init>(Lcom/squareup/haha/trove/THashMap$ValueView;Lcom/squareup/haha/trove/TObjectHash;)V

    return-object v0
.end method

.method public final removeElement(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 525
    .local p0, "this":Lcom/squareup/haha/trove/THashMap$ValueView;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.ValueView;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    .line 526
    .local v0, "changed":Z
    iget-object v5, p0, Lcom/squareup/haha/trove/THashMap$ValueView;->this$0:Lcom/squareup/haha/trove/THashMap;

    iget-object v4, v5, Lcom/squareup/haha/trove/THashMap;->_values:[Ljava/lang/Object;

    .line 527
    .local v4, "values":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/squareup/haha/trove/THashMap$ValueView;->this$0:Lcom/squareup/haha/trove/THashMap;

    iget-object v3, v5, Lcom/squareup/haha/trove/THashMap;->_set:[Ljava/lang/Object;

    .line 529
    .local v3, "set":[Ljava/lang/Object;
    array-length v1, v4

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_2

    .line 530
    aget-object v5, v3, v1

    if-eqz v5, :cond_0

    aget-object v5, v3, v1

    sget-object v6, Lcom/squareup/haha/trove/TObjectHash;->REMOVED:Ljava/lang/Object;

    if-eq v5, v6, :cond_0

    aget-object v5, v4, v1

    if-eq p1, v5, :cond_1

    :cond_0
    aget-object v5, v4, v1

    if-eqz v5, :cond_3

    aget-object v5, v4, v1

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 533
    :cond_1
    iget-object v5, p0, Lcom/squareup/haha/trove/THashMap$ValueView;->this$0:Lcom/squareup/haha/trove/THashMap;

    invoke-virtual {v5, v1}, Lcom/squareup/haha/trove/THashMap;->removeAt(I)V

    .line 534
    const/4 v0, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 537
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_2
    return v0

    :cond_3
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0
.end method
