.class final Lcom/squareup/haha/guava/collect/Multisets$ImmutableEntry;
.super Lcom/squareup/haha/guava/collect/Multisets$AbstractEntry;
.source "Multisets.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ImmutableEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/Multisets$AbstractEntry",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private count:I

.field private element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lcom/squareup/haha/guava/collect/Multisets$ImmutableEntry;, "Lcom/squareup/haha/guava/collect/Multisets$ImmutableEntry<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/Multisets$AbstractEntry;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/Multisets$ImmutableEntry;->element:Ljava/lang/Object;

    .line 222
    iput p2, p0, Lcom/squareup/haha/guava/collect/Multisets$ImmutableEntry;->count:I

    .line 223
    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/squareup/haha/guava/base/Ascii;->checkNonnegative(ILjava/lang/String;)I

    .line 224
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 233
    .local p0, "this":Lcom/squareup/haha/guava/collect/Multisets$ImmutableEntry;, "Lcom/squareup/haha/guava/collect/Multisets$ImmutableEntry<TE;>;"
    iget v0, p0, Lcom/squareup/haha/guava/collect/Multisets$ImmutableEntry;->count:I

    return v0
.end method

.method public final getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lcom/squareup/haha/guava/collect/Multisets$ImmutableEntry;, "Lcom/squareup/haha/guava/collect/Multisets$ImmutableEntry<TE;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Multisets$ImmutableEntry;->element:Ljava/lang/Object;

    return-object v0
.end method
