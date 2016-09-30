.class final Lcom/squareup/haha/guava/collect/Maps$1;
.super Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/haha/guava/collect/Maps;->valueIterator(Lcom/squareup/haha/guava/collect/UnmodifiableIterator;)Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/guava/collect/UnmodifiableIterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private synthetic val$entryIterator:Lcom/squareup/haha/guava/collect/UnmodifiableIterator;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/UnmodifiableIterator;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/Maps$1;->val$entryIterator:Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$1;->val$entryIterator:Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/UnmodifiableIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$1;->val$entryIterator:Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
