.class abstract enum Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;
.super Ljava/lang/Enum;
.source "Predicates.java"

# interfaces
.implements Lcom/squareup/haha/guava/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/base/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "ObjectPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;",
        ">;",
        "Lcom/squareup/haha/guava/base/Predicate",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static enum ALWAYS_FALSE:Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;

.field private static enum ALWAYS_TRUE:Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;

.field public static final enum IS_NULL:Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;

.field private static enum NOT_NULL:Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 277
    new-instance v0, Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate$1;

    const-string v1, "ALWAYS_TRUE"

    invoke-direct {v0, v1, v2}, Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;->ALWAYS_TRUE:Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;

    .line 286
    new-instance v0, Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate$2;

    const-string v1, "ALWAYS_FALSE"

    invoke-direct {v0, v1, v3}, Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;->ALWAYS_FALSE:Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;

    .line 295
    new-instance v0, Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate$3;

    const-string v1, "IS_NULL"

    invoke-direct {v0, v1, v4}, Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;->IS_NULL:Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;

    .line 304
    new-instance v0, Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate$4;

    const-string v1, "NOT_NULL"

    invoke-direct {v0, v1, v5}, Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;->NOT_NULL:Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;

    .line 275
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;

    sget-object v1, Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;->ALWAYS_TRUE:Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;->ALWAYS_FALSE:Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;->IS_NULL:Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;

    aput-object v1, v0, v4

    sget-object v1, Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;->NOT_NULL:Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;

    aput-object v1, v0, v5

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 275
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I

    .prologue
    .line 275
    invoke-direct {p0, p1, p2}, Lcom/squareup/haha/guava/base/Predicates$ObjectPredicate;-><init>(Ljava/lang/String;I)V

    return-void
.end method
