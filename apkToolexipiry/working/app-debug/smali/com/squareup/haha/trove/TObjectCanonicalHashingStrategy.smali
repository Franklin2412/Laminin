.class final Lcom/squareup/haha/trove/TObjectCanonicalHashingStrategy;
.super Ljava/lang/Object;
.source "TObjectCanonicalHashingStrategy.java"

# interfaces
.implements Lcom/squareup/haha/trove/TObjectHashingStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/haha/trove/TObjectHashingStrategy",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    .local p0, "this":Lcom/squareup/haha/trove/TObjectCanonicalHashingStrategy;, "Lcom/squareup/haha/trove/TObjectCanonicalHashingStrategy<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final computeHashCode(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 9
    .local p0, "this":Lcom/squareup/haha/trove/TObjectCanonicalHashingStrategy;, "Lcom/squareup/haha/trove/TObjectCanonicalHashingStrategy<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lcom/squareup/haha/trove/TObjectCanonicalHashingStrategy;, "Lcom/squareup/haha/trove/TObjectCanonicalHashingStrategy<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "value1":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
