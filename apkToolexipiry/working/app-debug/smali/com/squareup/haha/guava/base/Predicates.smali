.class public final Lcom/squareup/haha/guava/base/Predicates;
.super Ljava/lang/Object;
.source "Predicates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate;,
        Lcom/squareup/haha/guava/base/Predicates$InPredicate;,
        Lcom/squareup/haha/guava/base/Predicates$IsEqualToPredicate;,
        Lcom/squareup/haha/guava/base/Predicates$AndPredicate;,
        Lcom/squareup/haha/guava/base/Predicates$NotPredicate;,
        Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;
    }
.end annotation


# static fields
.field private static final COMMA_JOINER$5f22bbb7:Lcom/squareup/haha/guava/base/Ascii;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3078
    new-instance v0, Lcom/squareup/haha/guava/base/Ascii;

    const-string v1, ","

    invoke-direct {v0, v1}, Lcom/squareup/haha/guava/base/Ascii;-><init>(Ljava/lang/String;)V

    .line 346
    sput-object v0, Lcom/squareup/haha/guava/base/Predicates;->COMMA_JOINER$5f22bbb7:Lcom/squareup/haha/guava/base/Ascii;

    return-void
.end method

.method static synthetic access$800$5d847356()Lcom/squareup/haha/guava/base/Ascii;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/squareup/haha/guava/base/Predicates;->COMMA_JOINER$5f22bbb7:Lcom/squareup/haha/guava/base/Ascii;

    return-object v0
.end method

.method public static and(Lcom/squareup/haha/guava/base/Predicate;Lcom/squareup/haha/guava/base/Predicate;)Lcom/squareup/haha/guava/base/Predicate;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/haha/guava/base/Predicate",
            "<-TT;>;",
            "Lcom/squareup/haha/guava/base/Predicate",
            "<-TT;>;)",
            "Lcom/squareup/haha/guava/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "first":Lcom/squareup/haha/guava/base/Predicate;, "Lcom/squareup/haha/guava/base/Predicate<-TT;>;"
    .local p1, "second":Lcom/squareup/haha/guava/base/Predicate;, "Lcom/squareup/haha/guava/base/Predicate<-TT;>;"
    const/4 v4, 0x0

    .line 131
    new-instance v2, Lcom/squareup/haha/guava/base/Predicates$AndPredicate;

    invoke-static {p0}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/base/Predicate;

    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/haha/guava/base/Predicate;

    .line 1638
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/squareup/haha/guava/base/Predicate;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-direct {v2, v0, v4}, Lcom/squareup/haha/guava/base/Predicates$AndPredicate;-><init>(Ljava/util/List;B)V

    return-object v2
.end method

.method public static compose(Lcom/squareup/haha/guava/base/Predicate;Lcom/squareup/haha/guava/base/Function;)Lcom/squareup/haha/guava/base/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/haha/guava/base/Predicate",
            "<TB;>;",
            "Lcom/squareup/haha/guava/base/Function",
            "<TA;+TB;>;)",
            "Lcom/squareup/haha/guava/base/Predicate",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "predicate":Lcom/squareup/haha/guava/base/Predicate;, "Lcom/squareup/haha/guava/base/Predicate<TB;>;"
    .local p1, "function":Lcom/squareup/haha/guava/base/Function;, "Lcom/squareup/haha/guava/base/Function<TA;+TB;>;"
    new-instance v0, Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/squareup/haha/guava/base/Predicates$CompositionPredicate;-><init>(Lcom/squareup/haha/guava/base/Predicate;Lcom/squareup/haha/guava/base/Function;B)V

    return-object v0
.end method

.method public static equalTo(Ljava/lang/Object;)Lcom/squareup/haha/guava/base/Predicate;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/squareup/haha/guava/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "target":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 2076
    sget-object v0, Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;->IS_NULL:Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;

    .line 179
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/squareup/haha/guava/base/Predicates$IsEqualToPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/haha/guava/base/Predicates$IsEqualToPredicate;-><init>(Ljava/lang/Object;B)V

    goto :goto_0
.end method

.method public static in(Ljava/util/Collection;)Lcom/squareup/haha/guava/base/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;)",
            "Lcom/squareup/haha/guava/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "target":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    new-instance v0, Lcom/squareup/haha/guava/base/Predicates$InPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/haha/guava/base/Predicates$InPredicate;-><init>(Ljava/util/Collection;B)V

    return-object v0
.end method

.method public static not(Lcom/squareup/haha/guava/base/Predicate;)Lcom/squareup/haha/guava/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/haha/guava/base/Predicate",
            "<TT;>;)",
            "Lcom/squareup/haha/guava/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "predicate":Lcom/squareup/haha/guava/base/Predicate;, "Lcom/squareup/haha/guava/base/Predicate<TT;>;"
    new-instance v0, Lcom/squareup/haha/guava/base/Predicates$NotPredicate;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/base/Predicates$NotPredicate;-><init>(Lcom/squareup/haha/guava/base/Predicate;)V

    return-object v0
.end method
