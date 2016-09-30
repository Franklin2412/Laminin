.class public final Lcom/squareup/haha/trove/THashMap$KeyView;
.super Lcom/squareup/haha/trove/THashMap$MapBackedView;
.source "THashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/trove/THashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/trove/THashMap",
        "<TK;TV;>.com/squareup/haha/trove/THashMap$MapBackedView<TK;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/squareup/haha/trove/THashMap;


# direct methods
.method constructor <init>(Lcom/squareup/haha/trove/THashMap;)V
    .locals 0

    .prologue
    .line 722
    .local p0, "this":Lcom/squareup/haha/trove/THashMap$KeyView;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.KeyView;"
    iput-object p1, p0, Lcom/squareup/haha/trove/THashMap$KeyView;->this$0:Lcom/squareup/haha/trove/THashMap;

    invoke-direct {p0, p1}, Lcom/squareup/haha/trove/THashMap$MapBackedView;-><init>(Lcom/squareup/haha/trove/THashMap;)V

    .line 723
    return-void
.end method


# virtual methods
.method public final containsElement(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 737
    .local p0, "this":Lcom/squareup/haha/trove/THashMap$KeyView;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.KeyView;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/squareup/haha/trove/THashMap$KeyView;->this$0:Lcom/squareup/haha/trove/THashMap;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/trove/THashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 727
    .local p0, "this":Lcom/squareup/haha/trove/THashMap$KeyView;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.KeyView;"
    new-instance v0, Lcom/squareup/haha/trove/TObjectHashIterator;

    iget-object v1, p0, Lcom/squareup/haha/trove/THashMap$KeyView;->this$0:Lcom/squareup/haha/trove/THashMap;

    invoke-direct {v0, v1}, Lcom/squareup/haha/trove/TObjectHashIterator;-><init>(Lcom/squareup/haha/trove/TObjectHash;)V

    return-object v0
.end method

.method public final removeElement(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 732
    .local p0, "this":Lcom/squareup/haha/trove/THashMap$KeyView;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.KeyView;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/squareup/haha/trove/THashMap$KeyView;->this$0:Lcom/squareup/haha/trove/THashMap;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/trove/THashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
