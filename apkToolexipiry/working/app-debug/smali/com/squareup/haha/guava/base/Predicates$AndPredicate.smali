.class final Lcom/squareup/haha/guava/base/Predicates$AndPredicate;
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
    name = "AndPredicate"
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
.field private final components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/squareup/haha/guava/base/Predicate",
            "<-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/squareup/haha/guava/base/Predicate",
            "<-TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lcom/squareup/haha/guava/base/Predicates$AndPredicate;, "Lcom/squareup/haha/guava/base/Predicates$AndPredicate<TT;>;"
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<+Lcom/squareup/haha/guava/base/Predicate<-TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p1, p0, Lcom/squareup/haha/guava/base/Predicates$AndPredicate;->components:Ljava/util/List;

    .line 354
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;B)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 349
    .local p0, "this":Lcom/squareup/haha/guava/base/Predicates$AndPredicate;, "Lcom/squareup/haha/guava/base/Predicates$AndPredicate<TT;>;"
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/base/Predicates$AndPredicate;-><init>(Ljava/util/List;)V

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
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "this":Lcom/squareup/haha/guava/base/Predicates$AndPredicate;, "Lcom/squareup/haha/guava/base/Predicates$AndPredicate<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/squareup/haha/guava/base/Predicates$AndPredicate;->components:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 359
    iget-object v1, p0, Lcom/squareup/haha/guava/base/Predicates$AndPredicate;->components:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/haha/guava/base/Predicate;

    invoke-interface {v1, p1}, Lcom/squareup/haha/guava/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 360
    const/4 v1, 0x0

    .line 363
    :goto_1
    return v1

    .line 358
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 370
    .local p0, "this":Lcom/squareup/haha/guava/base/Predicates$AndPredicate;, "Lcom/squareup/haha/guava/base/Predicates$AndPredicate<TT;>;"
    instance-of v1, p1, Lcom/squareup/haha/guava/base/Predicates$AndPredicate;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 371
    check-cast v0, Lcom/squareup/haha/guava/base/Predicates$AndPredicate;

    .line 372
    .local v0, "that":Lcom/squareup/haha/guava/base/Predicates$AndPredicate;, "Lcom/squareup/haha/guava/base/Predicates$AndPredicate<*>;"
    iget-object v1, p0, Lcom/squareup/haha/guava/base/Predicates$AndPredicate;->components:Ljava/util/List;

    iget-object v2, v0, Lcom/squareup/haha/guava/base/Predicates$AndPredicate;->components:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 374
    .end local v0    # "that":Lcom/squareup/haha/guava/base/Predicates$AndPredicate;, "Lcom/squareup/haha/guava/base/Predicates$AndPredicate<*>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 367
    .local p0, "this":Lcom/squareup/haha/guava/base/Predicates$AndPredicate;, "Lcom/squareup/haha/guava/base/Predicates$AndPredicate<TT;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/base/Predicates$AndPredicate;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    const v1, 0x12472c2c

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 377
    .local p0, "this":Lcom/squareup/haha/guava/base/Predicates$AndPredicate;, "Lcom/squareup/haha/guava/base/Predicates$AndPredicate<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Predicates.and("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/squareup/haha/guava/base/Predicates;->COMMA_JOINER$5f22bbb7:Lcom/squareup/haha/guava/base/Ascii;
    invoke-static {}, Lcom/squareup/haha/guava/base/Predicates;->access$800$5d847356()Lcom/squareup/haha/guava/base/Ascii;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/haha/guava/base/Predicates$AndPredicate;->components:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/squareup/haha/guava/base/Ascii;->join(Ljava/lang/Iterable;)Ljava/lang/String;

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
