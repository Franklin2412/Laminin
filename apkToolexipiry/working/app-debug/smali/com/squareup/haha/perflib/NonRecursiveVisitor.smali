.class public Lcom/squareup/haha/perflib/NonRecursiveVisitor;
.super Ljava/lang/Object;
.source "NonRecursiveVisitor.java"

# interfaces
.implements Lcom/squareup/haha/perflib/Visitor;


# instance fields
.field public final mSeen:Lcom/squareup/haha/trove/TLongHashSet;

.field public final mStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/squareup/haha/perflib/Instance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/squareup/haha/perflib/NonRecursiveVisitor;->mStack:Ljava/util/Deque;

    .line 34
    new-instance v0, Lcom/squareup/haha/trove/TLongHashSet;

    invoke-direct {v0}, Lcom/squareup/haha/trove/TLongHashSet;-><init>()V

    iput-object v0, p0, Lcom/squareup/haha/perflib/NonRecursiveVisitor;->mSeen:Lcom/squareup/haha/trove/TLongHashSet;

    return-void
.end method


# virtual methods
.method protected defaultAction(Lcom/squareup/haha/perflib/Instance;)V
    .locals 0
    .param p1, "instance"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 37
    return-void
.end method

.method public doVisit(Ljava/lang/Iterable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/squareup/haha/perflib/Instance;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "startNodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/squareup/haha/perflib/Instance;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/haha/perflib/Instance;

    .line 66
    .local v1, "node":Lcom/squareup/haha/perflib/Instance;
    instance-of v2, v1, Lcom/squareup/haha/perflib/RootObj;

    if-eqz v2, :cond_0

    .line 68
    invoke-virtual {v1, p0}, Lcom/squareup/haha/perflib/Instance;->accept(Lcom/squareup/haha/perflib/Visitor;)V

    goto :goto_0

    .line 70
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/squareup/haha/perflib/NonRecursiveVisitor;->visitLater(Lcom/squareup/haha/perflib/Instance;Lcom/squareup/haha/perflib/Instance;)V

    goto :goto_0

    .line 73
    .end local v1    # "node":Lcom/squareup/haha/perflib/Instance;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/squareup/haha/perflib/NonRecursiveVisitor;->mStack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 74
    iget-object v2, p0, Lcom/squareup/haha/perflib/NonRecursiveVisitor;->mStack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/haha/perflib/Instance;

    .line 75
    .restart local v1    # "node":Lcom/squareup/haha/perflib/Instance;
    iget-object v2, p0, Lcom/squareup/haha/perflib/NonRecursiveVisitor;->mSeen:Lcom/squareup/haha/trove/TLongHashSet;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/Instance;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/squareup/haha/trove/TLongHashSet;->add(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    invoke-virtual {v1, p0}, Lcom/squareup/haha/perflib/Instance;->accept(Lcom/squareup/haha/perflib/Visitor;)V

    goto :goto_1

    .line 79
    .end local v1    # "node":Lcom/squareup/haha/perflib/Instance;
    :cond_2
    return-void
.end method

.method public visitArrayInstance(Lcom/squareup/haha/perflib/ArrayInstance;)V
    .locals 0
    .param p1, "instance"    # Lcom/squareup/haha/perflib/ArrayInstance;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/squareup/haha/perflib/NonRecursiveVisitor;->defaultAction(Lcom/squareup/haha/perflib/Instance;)V

    .line 47
    return-void
.end method

.method public visitClassInstance(Lcom/squareup/haha/perflib/ClassInstance;)V
    .locals 0
    .param p1, "instance"    # Lcom/squareup/haha/perflib/ClassInstance;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/squareup/haha/perflib/NonRecursiveVisitor;->defaultAction(Lcom/squareup/haha/perflib/Instance;)V

    .line 52
    return-void
.end method

.method public visitClassObj(Lcom/squareup/haha/perflib/ClassObj;)V
    .locals 0
    .param p1, "instance"    # Lcom/squareup/haha/perflib/ClassObj;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/squareup/haha/perflib/NonRecursiveVisitor;->defaultAction(Lcom/squareup/haha/perflib/Instance;)V

    .line 57
    return-void
.end method

.method public visitLater(Lcom/squareup/haha/perflib/Instance;Lcom/squareup/haha/perflib/Instance;)V
    .locals 1
    .param p1, "parent"    # Lcom/squareup/haha/perflib/Instance;
    .param p2, "child"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/squareup/haha/perflib/NonRecursiveVisitor;->mStack:Ljava/util/Deque;

    invoke-interface {v0, p2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public visitRootObj(Lcom/squareup/haha/perflib/RootObj;)V
    .locals 0
    .param p1, "root"    # Lcom/squareup/haha/perflib/RootObj;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/squareup/haha/perflib/NonRecursiveVisitor;->defaultAction(Lcom/squareup/haha/perflib/Instance;)V

    .line 42
    return-void
.end method
