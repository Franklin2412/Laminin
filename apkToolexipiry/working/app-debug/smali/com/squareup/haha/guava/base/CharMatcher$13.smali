.class final Lcom/squareup/haha/guava/base/CharMatcher$13;
.super Lcom/squareup/haha/guava/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/haha/guava/base/CharMatcher;->inRange(CCLjava/lang/String;)Lcom/squareup/haha/guava/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic val$endInclusive:C

.field private synthetic val$startInclusive:C


# direct methods
.method constructor <init>(Ljava/lang/String;CC)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 559
    iput-char p2, p0, Lcom/squareup/haha/guava/base/CharMatcher$13;->val$startInclusive:C

    iput-char p3, p0, Lcom/squareup/haha/guava/base/CharMatcher$13;->val$endInclusive:C

    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 561
    iget-char v0, p0, Lcom/squareup/haha/guava/base/CharMatcher$13;->val$startInclusive:C

    if-gt v0, p1, :cond_0

    iget-char v0, p0, Lcom/squareup/haha/guava/base/CharMatcher$13;->val$endInclusive:C

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
