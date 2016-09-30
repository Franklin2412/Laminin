.class final Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate;
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
    name = "CompositionPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/haha/guava/base/Predicate",
        "<TA;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private f:Lcom/squareup/haha/guava/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/base/Function",
            "<TA;+TB;>;"
        }
    .end annotation
.end field

.field private p:Lcom/squareup/haha/guava/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/base/Predicate",
            "<TB;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/squareup/haha/guava/base/Predicate;Lcom/squareup/haha/guava/base/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/base/Predicate",
            "<TB;>;",
            "Lcom/squareup/haha/guava/base/Function",
            "<TA;+TB;>;)V"
        }
    .end annotation

    .prologue
    .line 545
    .local p0, "this":Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate;, "Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate<TA;TB;>;"
    .local p1, "p":Lcom/squareup/haha/guava/base/Predicate;, "Lcom/squareup/haha/guava/base/Predicate<TB;>;"
    .local p2, "f":Lcom/squareup/haha/guava/base/Function;, "Lcom/squareup/haha/guava/base/Function<TA;+TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/base/Predicate;

    iput-object v0, p0, Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate;->p:Lcom/squareup/haha/guava/base/Predicate;

    .line 547
    invoke-static {p2}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/base/Function;

    iput-object v0, p0, Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate;->f:Lcom/squareup/haha/guava/base/Function;

    .line 548
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/haha/guava/base/Predicate;Lcom/squareup/haha/guava/base/Function;B)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/haha/guava/base/Predicate;
    .param p2, "x1"    # Lcom/squareup/haha/guava/base/Function;

    .prologue
    .line 540
    .local p0, "this":Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate;, "Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate<TA;TB;>;"
    invoke-direct {p0, p1, p2}, Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate;-><init>(Lcom/squareup/haha/guava/base/Predicate;Lcom/squareup/haha/guava/base/Function;)V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    .line 552
    .local p0, "this":Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate;, "Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate<TA;TB;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    iget-object v0, p0, Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate;->p:Lcom/squareup/haha/guava/base/Predicate;

    iget-object v1, p0, Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate;->f:Lcom/squareup/haha/guava/base/Function;

    invoke-interface {v1, p1}, Lcom/squareup/haha/guava/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/squareup/haha/guava/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate;, "Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate<TA;TB;>;"
    const/4 v1, 0x0

    .line 556
    instance-of v2, p1, Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 557
    check-cast v0, Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate;

    .line 558
    .local v0, "that":Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate;, "Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate<**>;"
    iget-object v2, p0, Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate;->f:Lcom/squareup/haha/guava/base/Function;

    iget-object v3, v0, Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate;->f:Lcom/squareup/haha/guava/base/Function;

    invoke-interface {v2, v3}, Lcom/squareup/haha/guava/base/Function;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate;->p:Lcom/squareup/haha/guava/base/Predicate;

    iget-object v3, v0, Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate;->p:Lcom/squareup/haha/guava/base/Predicate;

    invoke-interface {v2, v3}, Lcom/squareup/haha/guava/base/Predicate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 560
    .end local v0    # "that":Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate;, "Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate<**>;"
    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 564
    .local p0, "this":Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate;, "Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate<TA;TB;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate;->f:Lcom/squareup/haha/guava/base/Function;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate;->p:Lcom/squareup/haha/guava/base/Predicate;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 568
    .local p0, "this":Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate;, "Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate<TA;TB;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate;->p:Lcom/squareup/haha/guava/base/Predicate;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate;->f:Lcom/squareup/haha/guava/base/Function;

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
