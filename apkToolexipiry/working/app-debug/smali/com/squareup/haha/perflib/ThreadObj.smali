.class public Lcom/squareup/haha/perflib/ThreadObj;
.super Ljava/lang/Object;
.source "ThreadObj.java"


# instance fields
.field mId:J

.field mStackTrace:I


# direct methods
.method public constructor <init>(JI)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "stackTrace"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/squareup/haha/perflib/ThreadObj;->mId:J

    .line 27
    iput p3, p0, Lcom/squareup/haha/perflib/ThreadObj;->mStackTrace:I

    .line 28
    return-void
.end method
