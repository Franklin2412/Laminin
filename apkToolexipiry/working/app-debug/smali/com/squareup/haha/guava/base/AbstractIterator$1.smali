.class final synthetic Lcom/squareup/haha/guava/base/AbstractIterator$1;
.super Ljava/lang/Object;
.source "AbstractIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/base/AbstractIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$common$base$AbstractIterator$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Lcom/squareup/haha/guava/base/AbstractIterator$State;->values$745902e9()[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    sput-object v0, Lcom/squareup/haha/guava/base/AbstractIterator$1;->$SwitchMap$com$google$common$base$AbstractIterator$State:[I

    :try_start_0
    sget-object v0, Lcom/squareup/haha/guava/base/AbstractIterator$1;->$SwitchMap$com$google$common$base$AbstractIterator$State:[I

    sget v1, Lcom/squareup/haha/guava/base/AbstractIterator$State;->DONE$74e26051:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/squareup/haha/guava/base/AbstractIterator$1;->$SwitchMap$com$google$common$base$AbstractIterator$State:[I

    sget v1, Lcom/squareup/haha/guava/base/AbstractIterator$State;->READY$74e26051:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
