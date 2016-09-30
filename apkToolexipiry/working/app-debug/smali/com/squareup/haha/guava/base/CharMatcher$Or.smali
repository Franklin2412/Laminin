.class final Lcom/squareup/haha/guava/base/CharMatcher$Or;
.super Lcom/squareup/haha/guava/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Or"
.end annotation


# instance fields
.field private first:Lcom/squareup/haha/guava/base/CharMatcher;

.field private second:Lcom/squareup/haha/guava/base/CharMatcher;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/base/CharMatcher;Lcom/squareup/haha/guava/base/CharMatcher;)V
    .locals 2
    .param p1, "a"    # Lcom/squareup/haha/guava/base/CharMatcher;
    .param p2, "b"    # Lcom/squareup/haha/guava/base/CharMatcher;

    .prologue
    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CharMatcher.or("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/squareup/haha/guava/base/CharMatcher$Or;-><init>(Lcom/squareup/haha/guava/base/CharMatcher;Lcom/squareup/haha/guava/base/CharMatcher;Ljava/lang/String;)V

    .line 735
    return-void
.end method

.method private constructor <init>(Lcom/squareup/haha/guava/base/CharMatcher;Lcom/squareup/haha/guava/base/CharMatcher;Ljava/lang/String;)V
    .locals 1
    .param p1, "a"    # Lcom/squareup/haha/guava/base/CharMatcher;
    .param p2, "b"    # Lcom/squareup/haha/guava/base/CharMatcher;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 728
    invoke-direct {p0, p3}, Lcom/squareup/haha/guava/base/CharMatcher;-><init>(Ljava/lang/String;)V

    .line 729
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/base/CharMatcher;

    iput-object v0, p0, Lcom/squareup/haha/guava/base/CharMatcher$Or;->first:Lcom/squareup/haha/guava/base/CharMatcher;

    .line 730
    invoke-static {p2}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/base/CharMatcher;

    iput-object v0, p0, Lcom/squareup/haha/guava/base/CharMatcher$Or;->second:Lcom/squareup/haha/guava/base/CharMatcher;

    .line 731
    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 723
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-super {p0, p1}, Lcom/squareup/haha/guava/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public final matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 746
    iget-object v0, p0, Lcom/squareup/haha/guava/base/CharMatcher$Or;->first:Lcom/squareup/haha/guava/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/base/CharMatcher;->matches(C)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/haha/guava/base/CharMatcher$Or;->second:Lcom/squareup/haha/guava/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final withToString(Ljava/lang/String;)Lcom/squareup/haha/guava/base/CharMatcher;
    .locals 3
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 751
    new-instance v0, Lcom/squareup/haha/guava/base/CharMatcher$Or;

    iget-object v1, p0, Lcom/squareup/haha/guava/base/CharMatcher$Or;->first:Lcom/squareup/haha/guava/base/CharMatcher;

    iget-object v2, p0, Lcom/squareup/haha/guava/base/CharMatcher$Or;->second:Lcom/squareup/haha/guava/base/CharMatcher;

    invoke-direct {v0, v1, v2, p1}, Lcom/squareup/haha/guava/base/CharMatcher$Or;-><init>(Lcom/squareup/haha/guava/base/CharMatcher;Lcom/squareup/haha/guava/base/CharMatcher;Ljava/lang/String;)V

    return-object v0
.end method
