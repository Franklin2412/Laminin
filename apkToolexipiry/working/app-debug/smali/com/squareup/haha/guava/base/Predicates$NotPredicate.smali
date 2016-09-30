.class final Lcom/squareup/haha/guava/base/Predicates$NotPredicate;
.super Ljava/lang/Object;
.source "Predicates.java"

# interfaces
.implements Lcom/squareup/haha/guava/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/base/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/haha/guava/base/Predicate",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private predicate:Lcom/squareup/haha/guava/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/base/Predicate",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/base/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/base/Predicate",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "this":Lcom/squareup/haha/guava/base/Predicates$NotPredicate;, "Lcom/squareup/haha/guava/base/Predicates$NotPredicate<TT;>;"
    .local p1, "predicate":Lcom/squareup/haha/guava/base/Predicate;, "Lcom/squareup/haha/guava/base/Predicate<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/base/Predicate;

    iput-object v0, p0, Lcom/squareup/haha/guava/base/Predicates$NotPredicate;->predicate:Lcom/squareup/haha/guava/base/Predicate;

    .line 325
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, "this":Lcom/squareup/haha/guava/base/Predicates$NotPredicate;, "Lcom/squareup/haha/guava/base/Predicates$NotPredicate<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/squareup/haha/guava/base/Predicates$NotPredicate;->predicate:Lcom/squareup/haha/guava/base/Predicate;

    invoke-interface {v0, p1}, Lcom/squareup/haha/guava/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 334
    .local p0, "this":Lcom/squareup/haha/guava/base/Predicates$NotPredicate;, "Lcom/squareup/haha/guava/base/Predicates$NotPredicate<TT;>;"
    instance-of v1, p1, Lcom/squareup/haha/guava/base/Predicates$NotPredicate;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 335
    check-cast v0, Lcom/squareup/haha/guava/base/Predicates$NotPredicate;

    .line 336
    .local v0, "that":Lcom/squareup/haha/guava/base/Predicates$NotPredicate;, "Lcom/squareup/haha/guava/base/Predicates$NotPredicate<*>;"
    iget-object v1, p0, Lcom/squareup/haha/guava/base/Predicates$NotPredicate;->predicate:Lcom/squareup/haha/guava/base/Predicate;

    iget-object v2, v0, Lcom/squareup/haha/guava/base/Predicates$NotPredicate;->predicate:Lcom/squareup/haha/guava/base/Predicate;

    invoke-interface {v1, v2}, Lcom/squareup/haha/guava/base/Predicate;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 338
    .end local v0    # "that":Lcom/squareup/haha/guava/base/Predicates$NotPredicate;, "Lcom/squareup/haha/guava/base/Predicates$NotPredicate<*>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 331
    .local p0, "this":Lcom/squareup/haha/guava/base/Predicates$NotPredicate;, "Lcom/squareup/haha/guava/base/Predicates$NotPredicate<TT;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/base/Predicates$NotPredicate;->predicate:Lcom/squareup/haha/guava/base/Predicate;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 341
    .local p0, "this":Lcom/squareup/haha/guava/base/Predicates$NotPredicate;, "Lcom/squareup/haha/guava/base/Predicates$NotPredicate<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Predicates.not("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/squareup/haha/guava/base/Predicates$NotPredicate;->predicate:Lcom/squareup/haha/guava/base/Predicate;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
