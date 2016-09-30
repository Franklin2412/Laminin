.class Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor$1;
.super Ljava/lang/Object;
.source "ShortestDistanceVisitor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/squareup/haha/perflib/Instance;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor;


# direct methods
.method constructor <init>(Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor$1;->this$0:Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/squareup/haha/perflib/Instance;Lcom/squareup/haha/perflib/Instance;)I
    .locals 2
    .param p1, "o1"    # Lcom/squareup/haha/perflib/Instance;
    .param p2, "o2"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/squareup/haha/perflib/Instance;->getDistanceToGcRoot()I

    move-result v0

    invoke-virtual {p2}, Lcom/squareup/haha/perflib/Instance;->getDistanceToGcRoot()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Lcom/squareup/haha/perflib/Instance;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/squareup/haha/perflib/Instance;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor$1;->compare(Lcom/squareup/haha/perflib/Instance;Lcom/squareup/haha/perflib/Instance;)I

    move-result v0

    return v0
.end method
