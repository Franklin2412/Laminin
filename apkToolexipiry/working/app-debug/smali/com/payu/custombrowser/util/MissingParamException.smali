.class public Lcom/payu/custombrowser/util/MissingParamException;
.super Ljava/lang/RuntimeException;
.source "MissingParamException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method
