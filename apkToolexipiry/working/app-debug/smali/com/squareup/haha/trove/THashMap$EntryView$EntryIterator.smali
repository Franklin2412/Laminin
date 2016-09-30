.class final Lcom/squareup/haha/trove/THashMap$EntryView$EntryIterator;
.super Lcom/squareup/haha/trove/THashIterator;
.source "THashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/trove/THashMap$EntryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/trove/THashIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private synthetic this$1:Lcom/squareup/haha/trove/THashMap$EntryView;


# direct methods
.method constructor <init>(Lcom/squareup/haha/trove/THashMap$EntryView;Lcom/squareup/haha/trove/THashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/trove/THashMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 550
    .local p0, "this":Lcom/squareup/haha/trove/THashMap$EntryView$EntryIterator;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.EntryView.EntryIterator;"
    .local p2, "map":Lcom/squareup/haha/trove/THashMap;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>;"
    iput-object p1, p0, Lcom/squareup/haha/trove/THashMap$EntryView$EntryIterator;->this$1:Lcom/squareup/haha/trove/THashMap$EntryView;

    .line 551
    invoke-direct {p0, p2}, Lcom/squareup/haha/trove/THashIterator;-><init>(Lcom/squareup/haha/trove/TObjectHash;)V

    .line 552
    return-void
.end method


# virtual methods
.method public final bridge synthetic objectAtIndex(I)Ljava/lang/Object;
    .locals 4
    .param p1, "x0"    # I

    .prologue
    .line 549
    .line 1556
    .local p0, "this":Lcom/squareup/haha/trove/THashMap$EntryView$EntryIterator;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.EntryView.EntryIterator;"
    new-instance v0, Lcom/squareup/haha/trove/THashMap$Entry;

    iget-object v1, p0, Lcom/squareup/haha/trove/THashMap$EntryView$EntryIterator;->this$1:Lcom/squareup/haha/trove/THashMap$EntryView;

    iget-object v1, v1, Lcom/squareup/haha/trove/THashMap$EntryView;->this$0:Lcom/squareup/haha/trove/THashMap;

    iget-object v2, p0, Lcom/squareup/haha/trove/THashMap$EntryView$EntryIterator;->this$1:Lcom/squareup/haha/trove/THashMap$EntryView;

    iget-object v2, v2, Lcom/squareup/haha/trove/THashMap$EntryView;->this$0:Lcom/squareup/haha/trove/THashMap;

    iget-object v2, v2, Lcom/squareup/haha/trove/THashMap;->_set:[Ljava/lang/Object;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/squareup/haha/trove/THashMap$EntryView$EntryIterator;->this$1:Lcom/squareup/haha/trove/THashMap$EntryView;

    iget-object v3, v3, Lcom/squareup/haha/trove/THashMap$EntryView;->this$0:Lcom/squareup/haha/trove/THashMap;

    iget-object v3, v3, Lcom/squareup/haha/trove/THashMap;->_values:[Ljava/lang/Object;

    aget-object v3, v3, p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/squareup/haha/trove/THashMap$Entry;-><init>(Lcom/squareup/haha/trove/THashMap;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 549
    return-object v0
.end method
