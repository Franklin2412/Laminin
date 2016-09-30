.class final Lcom/squareup/haha/guava/collect/AbstractIterator$State;
.super Ljava/lang/Enum;
.source "AbstractIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/AbstractIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/squareup/haha/guava/collect/AbstractIterator$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$2415113d:[I

.field public static final enum DONE$7fb44498:I

.field public static final enum FAILED$7fb44498:I

.field public static final enum NOT_READY$7fb44498:I

.field public static final enum READY$7fb44498:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 72
    const/4 v0, 0x1

    sput v0, Lcom/squareup/haha/guava/collect/AbstractIterator$State;->READY$7fb44498:I

    .line 75
    const/4 v0, 0x2

    sput v0, Lcom/squareup/haha/guava/collect/AbstractIterator$State;->NOT_READY$7fb44498:I

    .line 78
    const/4 v0, 0x3

    sput v0, Lcom/squareup/haha/guava/collect/AbstractIterator$State;->DONE$7fb44498:I

    .line 81
    sput v1, Lcom/squareup/haha/guava/collect/AbstractIterator$State;->FAILED$7fb44498:I

    .line 70
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/squareup/haha/guava/collect/AbstractIterator$State;->$VALUES$2415113d:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public static values$a4ba0e2()[I
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/squareup/haha/guava/collect/AbstractIterator$State;->$VALUES$2415113d:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
