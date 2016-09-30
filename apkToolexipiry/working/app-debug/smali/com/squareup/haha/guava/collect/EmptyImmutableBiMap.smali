.class final Lcom/squareup/haha/guava/collect/EmptyImmutableBiMap;
.super Lcom/squareup/haha/guava/collect/ImmutableBiMap;
.source "EmptyImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/guava/collect/ImmutableBiMap",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/squareup/haha/guava/collect/EmptyImmutableBiMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/squareup/haha/guava/collect/EmptyImmutableBiMap;

    invoke-direct {v0}, Lcom/squareup/haha/guava/collect/EmptyImmutableBiMap;-><init>()V

    sput-object v0, Lcom/squareup/haha/guava/collect/EmptyImmutableBiMap;->INSTANCE:Lcom/squareup/haha/guava/collect/EmptyImmutableBiMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableBiMap;-><init>()V

    return-void
.end method


# virtual methods
.method final createEntrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Lcom/squareup/haha/guava/collect/ImmutableSet;->of()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 28
    .line 1056
    invoke-static {}, Lcom/squareup/haha/guava/collect/ImmutableSet;->of()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    .line 28
    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public final inverse()Lcom/squareup/haha/guava/collect/ImmutableBiMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/ImmutableBiMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    return-object p0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public final keySet()Lcom/squareup/haha/guava/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/ImmutableSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {}, Lcom/squareup/haha/guava/collect/ImmutableSet;->of()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 28
    .line 1071
    invoke-static {}, Lcom/squareup/haha/guava/collect/ImmutableSet;->of()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    .line 28
    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method
