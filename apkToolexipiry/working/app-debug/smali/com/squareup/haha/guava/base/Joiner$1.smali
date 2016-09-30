.class final Lcom/squareup/haha/guava/base/Joiner$1;
.super Lcom/squareup/haha/guava/base/Ascii;
.source "Joiner.java"


# instance fields
.field private synthetic this$0$5f22bbb7:Lcom/squareup/haha/guava/base/Ascii;

.field private synthetic val$nullText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/base/Ascii;Lcom/squareup/haha/guava/base/Ascii;Ljava/lang/String;)V
    .locals 1
    .param p2, "x0"    # Lcom/squareup/haha/guava/base/Ascii;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/squareup/haha/guava/base/Joiner$1;->this$0$5f22bbb7:Lcom/squareup/haha/guava/base/Ascii;

    iput-object p3, p0, Lcom/squareup/haha/guava/base/Joiner$1;->val$nullText:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/squareup/haha/guava/base/Ascii;-><init>(Lcom/squareup/haha/guava/base/Ascii;B)V

    return-void
.end method


# virtual methods
.method final toString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "part"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 221
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/squareup/haha/guava/base/Joiner$1;->val$nullText:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/haha/guava/base/Joiner$1;->this$0$5f22bbb7:Lcom/squareup/haha/guava/base/Ascii;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/base/Ascii;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public final useForNull$5f7c8ce0(Ljava/lang/String;)Lcom/squareup/haha/guava/base/Ascii;
    .locals 2
    .param p1, "nullText"    # Ljava/lang/String;

    .prologue
    .line 225
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified useForNull"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
