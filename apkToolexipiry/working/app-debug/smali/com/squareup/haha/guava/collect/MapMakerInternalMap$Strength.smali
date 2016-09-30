.class abstract enum Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;
.super Ljava/lang/Enum;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "Strength"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;",
        ">;"
    }
.end annotation


# static fields
.field private static enum SOFT:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;

.field public static final enum STRONG:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;

.field private static enum WEAK:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 295
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength$1;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;

    .line 308
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength$2;

    const-string v1, "SOFT"

    invoke-direct {v0, v1, v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;->SOFT:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;

    .line 321
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength$3;

    const-string v1, "WEAK"

    invoke-direct {v0, v1, v4}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;->WEAK:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;

    .line 289
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;->SOFT:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;->WEAK:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;

    aput-object v1, v0, v4

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
    .line 289
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I

    .prologue
    .line 289
    invoke-direct {p0, p1, p2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method abstract referenceValue(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment",
            "<TK;TV;>;",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;TV;)",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation
.end method
