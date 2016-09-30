.class final Lcom/squareup/haha/guava/collect/Count;
.super Ljava/lang/Object;
.source "Count.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field value:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/squareup/haha/guava/collect/Count;->value:I

    .line 34
    return-void
.end method


# virtual methods
.method public final addAndGet(I)I
    .locals 1
    .param p1, "delta"    # I

    .prologue
    .line 47
    iget v0, p0, Lcom/squareup/haha/guava/collect/Count;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/squareup/haha/guava/collect/Count;->value:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 67
    instance-of v0, p1, Lcom/squareup/haha/guava/collect/Count;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/squareup/haha/guava/collect/Count;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v0, p1, Lcom/squareup/haha/guava/collect/Count;->value:I

    iget v1, p0, Lcom/squareup/haha/guava/collect/Count;->value:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAndSet(I)I
    .locals 1
    .param p1, "newValue"    # I

    .prologue
    .line 55
    iget v0, p0, Lcom/squareup/haha/guava/collect/Count;->value:I

    .line 56
    .local v0, "result":I
    iput p1, p0, Lcom/squareup/haha/guava/collect/Count;->value:I

    .line 57
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/squareup/haha/guava/collect/Count;->value:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/squareup/haha/guava/collect/Count;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
