.class public abstract Lcom/squareup/haha/guava/collect/ForwardingMap$StandardEntrySet;
.super Lcom/squareup/haha/guava/collect/Maps$EntrySet;
.source "ForwardingMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/ForwardingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "StandardEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/guava/collect/Maps$EntrySet",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/squareup/haha/guava/collect/ForwardingMap;


# virtual methods
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
    .line 262
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingMap$StandardEntrySet;, "Lcom/squareup/haha/guava/collect/ForwardingMap<TK;TV;>.StandardEntrySet;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ForwardingMap$StandardEntrySet;->this$0:Lcom/squareup/haha/guava/collect/ForwardingMap;

    return-object v0
.end method
