.class final Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongExpirableEntry;
.super Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongExpirableEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry",
        "<TK;TV;>;",
        "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private nextExpirable:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field private previousExpirable:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field private volatile time:J


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 2
    .param p2, "hash"    # I
    .param p3    # Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1014
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongExpirableEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongExpirableEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;-><init>(Ljava/lang/Object;ILcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1019
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongExpirableEntry;->time:J

    .line 1031
    invoke-static {}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->nullEntry()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongExpirableEntry;->nextExpirable:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1044
    invoke-static {}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->nullEntry()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongExpirableEntry;->previousExpirable:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1015
    return-void
.end method


# virtual methods
.method public final getExpirationTime()J
    .locals 2

    .prologue
    .line 1023
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongExpirableEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongExpirableEntry<TK;TV;>;"
    iget-wide v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongExpirableEntry;->time:J

    return-wide v0
.end method

.method public final getNextExpirable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1036
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongExpirableEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongExpirableEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongExpirableEntry;->nextExpirable:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public final getPreviousExpirable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1049
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongExpirableEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongExpirableEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongExpirableEntry;->previousExpirable:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public final setExpirationTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1028
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongExpirableEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongExpirableEntry<TK;TV;>;"
    iput-wide p1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongExpirableEntry;->time:J

    .line 1029
    return-void
.end method

.method public final setNextExpirable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1041
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongExpirableEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongExpirableEntry<TK;TV;>;"
    .local p1, "next":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongExpirableEntry;->nextExpirable:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1042
    return-void
.end method

.method public final setPreviousExpirable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1054
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongExpirableEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongExpirableEntry<TK;TV;>;"
    .local p1, "previous":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongExpirableEntry;->previousExpirable:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1055
    return-void
.end method
