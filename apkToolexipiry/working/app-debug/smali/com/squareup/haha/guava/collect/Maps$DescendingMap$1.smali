.class final Lcom/squareup/haha/guava/collect/Maps$DescendingMap$1;
.super Lcom/squareup/haha/guava/collect/Maps$EntrySet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/Maps$DescendingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/guava/collect/Maps$EntrySet",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/squareup/haha/guava/collect/Maps$DescendingMap;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/Maps$DescendingMap;)V
    .locals 0

    .prologue
    .line 3906
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$DescendingMap$1;, "Lcom/squareup/haha/guava/collect/Maps$DescendingMap.1;"
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/Maps$DescendingMap$1;->this$0:Lcom/squareup/haha/guava/collect/Maps$DescendingMap;

    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3914
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$DescendingMap$1;, "Lcom/squareup/haha/guava/collect/Maps$DescendingMap.1;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$DescendingMap$1;->this$0:Lcom/squareup/haha/guava/collect/Maps$DescendingMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method final map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3909
    .local p0, "this":Lcom/squareup/haha/guava/collect/Maps$DescendingMap$1;, "Lcom/squareup/haha/guava/collect/Maps$DescendingMap.1;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$DescendingMap$1;->this$0:Lcom/squareup/haha/guava/collect/Maps$DescendingMap;

    return-object v0
.end method
