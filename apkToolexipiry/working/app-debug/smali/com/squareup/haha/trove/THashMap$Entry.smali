.class final Lcom/squareup/haha/trove/THashMap$Entry;
.super Ljava/lang/Object;
.source "THashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/trove/THashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final index:I

.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private synthetic this$0:Lcom/squareup/haha/trove/THashMap;

.field private val:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/squareup/haha/trove/THashMap;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I)V"
        }
    .end annotation

    .prologue
    .line 746
    .local p0, "this":Lcom/squareup/haha/trove/THashMap$Entry;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.Entry;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/squareup/haha/trove/THashMap$Entry;->this$0:Lcom/squareup/haha/trove/THashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 747
    iput-object p2, p0, Lcom/squareup/haha/trove/THashMap$Entry;->key:Ljava/lang/Object;

    .line 748
    iput-object p3, p0, Lcom/squareup/haha/trove/THashMap$Entry;->val:Ljava/lang/Object;

    .line 749
    iput p4, p0, Lcom/squareup/haha/trove/THashMap$Entry;->index:I

    .line 750
    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 754
    .local p0, "this":Lcom/squareup/haha/trove/THashMap$Entry;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.Entry;"
    iget-object v0, p0, Lcom/squareup/haha/trove/THashMap$Entry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 759
    .local p0, "this":Lcom/squareup/haha/trove/THashMap$Entry;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.Entry;"
    iget-object v0, p0, Lcom/squareup/haha/trove/THashMap$Entry;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 764
    .local p0, "this":Lcom/squareup/haha/trove/THashMap$Entry;, "Lcom/squareup/haha/trove/THashMap<TK;TV;>.Entry;"
    .local p1, "o":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/squareup/haha/trove/THashMap$Entry;->this$0:Lcom/squareup/haha/trove/THashMap;

    iget-object v1, v1, Lcom/squareup/haha/trove/THashMap;->_values:[Ljava/lang/Object;

    iget v2, p0, Lcom/squareup/haha/trove/THashMap$Entry;->index:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/squareup/haha/trove/THashMap$Entry;->val:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 765
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 767
    :cond_0
    iget-object v1, p0, Lcom/squareup/haha/trove/THashMap$Entry;->this$0:Lcom/squareup/haha/trove/THashMap;

    iget-object v1, v1, Lcom/squareup/haha/trove/THashMap;->_values:[Ljava/lang/Object;

    iget v2, p0, Lcom/squareup/haha/trove/THashMap$Entry;->index:I

    aput-object p1, v1, v2

    .line 768
    iget-object v0, p0, Lcom/squareup/haha/trove/THashMap$Entry;->val:Ljava/lang/Object;

    .line 769
    .local v0, "prev":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/squareup/haha/trove/THashMap$Entry;->val:Ljava/lang/Object;

    .line 771
    return-object v0
.end method
