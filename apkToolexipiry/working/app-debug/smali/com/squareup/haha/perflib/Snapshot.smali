.class public Lcom/squareup/haha/perflib/Snapshot;
.super Ljava/lang/Object;
.source "Snapshot.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEFAULT_HEAP_ID:I = 0x0

.field private static final JAVA_LANG_CLASS:Ljava/lang/String; = "java.lang.Class"

.field public static final SENTINEL_ROOT:Lcom/squareup/haha/perflib/Instance;


# instance fields
.field final mBuffer:Lcom/squareup/haha/perflib/io/HprofBuffer;

.field mCurrentHeap:Lcom/squareup/haha/perflib/Heap;

.field private mDominators:Lcom/squareup/haha/perflib/analysis/Dominators;

.field mHeaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/squareup/haha/perflib/Heap;",
            ">;"
        }
    .end annotation
.end field

.field private mIdSizeMask:J

.field private mReferenceClasses:Lcom/squareup/haha/trove/THashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/trove/THashSet",
            "<",
            "Lcom/squareup/haha/perflib/ClassObj;",
            ">;"
        }
    .end annotation
.end field

.field private mTopSort:Lcom/squareup/haha/guava/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/ImmutableList",
            "<",
            "Lcom/squareup/haha/perflib/Instance;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeSizes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-class v0, Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/squareup/haha/perflib/Snapshot;->$assertionsDisabled:Z

    .line 42
    new-instance v0, Lcom/squareup/haha/perflib/RootObj;

    sget-object v1, Lcom/squareup/haha/perflib/RootType;->UNKNOWN:Lcom/squareup/haha/perflib/RootType;

    invoke-direct {v0, v1}, Lcom/squareup/haha/perflib/RootObj;-><init>(Lcom/squareup/haha/perflib/RootType;)V

    sput-object v0, Lcom/squareup/haha/perflib/Snapshot;->SENTINEL_ROOT:Lcom/squareup/haha/perflib/Instance;

    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/squareup/haha/perflib/io/HprofBuffer;)V
    .locals 2
    .param p1, "buffer"    # Lcom/squareup/haha/perflib/io/HprofBuffer;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/haha/perflib/Snapshot;->mHeaps:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Lcom/squareup/haha/trove/THashSet;

    invoke-direct {v0}, Lcom/squareup/haha/trove/THashSet;-><init>()V

    iput-object v0, p0, Lcom/squareup/haha/perflib/Snapshot;->mReferenceClasses:Lcom/squareup/haha/trove/THashSet;

    .line 64
    const-wide v0, 0xffffffffL

    iput-wide v0, p0, Lcom/squareup/haha/perflib/Snapshot;->mIdSizeMask:J

    .line 67
    iput-object p1, p0, Lcom/squareup/haha/perflib/Snapshot;->mBuffer:Lcom/squareup/haha/perflib/io/HprofBuffer;

    .line 68
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/Snapshot;->setToDefaultHeap()Lcom/squareup/haha/perflib/Heap;

    .line 69
    return-void
.end method


# virtual methods
.method public final addClass(JLcom/squareup/haha/perflib/ClassObj;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "theClass"    # Lcom/squareup/haha/perflib/ClassObj;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/squareup/haha/perflib/Snapshot;->mCurrentHeap:Lcom/squareup/haha/perflib/Heap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/squareup/haha/perflib/Heap;->addClass(JLcom/squareup/haha/perflib/ClassObj;)V

    .line 192
    iget-object v0, p0, Lcom/squareup/haha/perflib/Snapshot;->mCurrentHeap:Lcom/squareup/haha/perflib/Heap;

    invoke-virtual {p3, v0}, Lcom/squareup/haha/perflib/ClassObj;->setHeap(Lcom/squareup/haha/perflib/Heap;)V

    .line 193
    return-void
.end method

.method public final addInstance(JLcom/squareup/haha/perflib/Instance;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "instance"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/squareup/haha/perflib/Snapshot;->mCurrentHeap:Lcom/squareup/haha/perflib/Heap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/squareup/haha/perflib/Heap;->addInstance(JLcom/squareup/haha/perflib/Instance;)V

    .line 187
    iget-object v0, p0, Lcom/squareup/haha/perflib/Snapshot;->mCurrentHeap:Lcom/squareup/haha/perflib/Heap;

    invoke-virtual {p3, v0}, Lcom/squareup/haha/perflib/Instance;->setHeap(Lcom/squareup/haha/perflib/Heap;)V

    .line 188
    return-void
.end method

.method public final addRoot(Lcom/squareup/haha/perflib/RootObj;)V
    .locals 1
    .param p1, "root"    # Lcom/squareup/haha/perflib/RootObj;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/squareup/haha/perflib/Snapshot;->mCurrentHeap:Lcom/squareup/haha/perflib/Heap;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/perflib/Heap;->addRoot(Lcom/squareup/haha/perflib/RootObj;)V

    .line 150
    iget-object v0, p0, Lcom/squareup/haha/perflib/Snapshot;->mCurrentHeap:Lcom/squareup/haha/perflib/Heap;

    invoke-virtual {p1, v0}, Lcom/squareup/haha/perflib/RootObj;->setHeap(Lcom/squareup/haha/perflib/Heap;)V

    .line 151
    return-void
.end method

.method public final addStackFrame(Lcom/squareup/haha/perflib/StackFrame;)V
    .locals 1
    .param p1, "theFrame"    # Lcom/squareup/haha/perflib/StackFrame;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/squareup/haha/perflib/Snapshot;->mCurrentHeap:Lcom/squareup/haha/perflib/Heap;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/perflib/Heap;->addStackFrame(Lcom/squareup/haha/perflib/StackFrame;)V

    .line 130
    return-void
.end method

.method public final addStackTrace(Lcom/squareup/haha/perflib/StackTrace;)V
    .locals 1
    .param p1, "theTrace"    # Lcom/squareup/haha/perflib/StackTrace;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/squareup/haha/perflib/Snapshot;->mCurrentHeap:Lcom/squareup/haha/perflib/Heap;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/perflib/Heap;->addStackTrace(Lcom/squareup/haha/perflib/StackTrace;)V

    .line 138
    return-void
.end method

.method public final addThread(Lcom/squareup/haha/perflib/ThreadObj;I)V
    .locals 1
    .param p1, "thread"    # Lcom/squareup/haha/perflib/ThreadObj;
    .param p2, "serialNumber"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/squareup/haha/perflib/Snapshot;->mCurrentHeap:Lcom/squareup/haha/perflib/Heap;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/haha/perflib/Heap;->addThread(Lcom/squareup/haha/perflib/ThreadObj;I)V

    .line 155
    return-void
.end method

.method public computeDominators()V
    .locals 3

    .prologue
    .line 310
    iget-object v1, p0, Lcom/squareup/haha/perflib/Snapshot;->mDominators:Lcom/squareup/haha/perflib/analysis/Dominators;

    if-nez v1, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/Snapshot;->getGCRoots()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/haha/perflib/analysis/TopologicalSort;->compute(Ljava/lang/Iterable;)Lcom/squareup/haha/guava/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/haha/perflib/Snapshot;->mTopSort:Lcom/squareup/haha/guava/collect/ImmutableList;

    .line 312
    new-instance v1, Lcom/squareup/haha/perflib/analysis/Dominators;

    iget-object v2, p0, Lcom/squareup/haha/perflib/Snapshot;->mTopSort:Lcom/squareup/haha/guava/collect/ImmutableList;

    invoke-direct {v1, p0, v2}, Lcom/squareup/haha/perflib/analysis/Dominators;-><init>(Lcom/squareup/haha/perflib/Snapshot;Lcom/squareup/haha/guava/collect/ImmutableList;)V

    iput-object v1, p0, Lcom/squareup/haha/perflib/Snapshot;->mDominators:Lcom/squareup/haha/perflib/analysis/Dominators;

    .line 313
    iget-object v1, p0, Lcom/squareup/haha/perflib/Snapshot;->mDominators:Lcom/squareup/haha/perflib/analysis/Dominators;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/analysis/Dominators;->computeRetainedSizes()V

    .line 315
    new-instance v0, Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor;

    invoke-direct {v0}, Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor;-><init>()V

    .line 316
    .local v0, "shortestDistanceVisitor":Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor;
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/Snapshot;->getGCRoots()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor;->doVisit(Ljava/lang/Iterable;)V

    .line 318
    .end local v0    # "shortestDistanceVisitor":Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor;
    :cond_0
    return-void
.end method

.method public final dumpInstanceCounts()V
    .locals 5

    .prologue
    .line 336
    iget-object v2, p0, Lcom/squareup/haha/perflib/Snapshot;->mHeaps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/Heap;

    .line 337
    .local v0, "heap":Lcom/squareup/haha/perflib/Heap;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "+------------------ instance counts for heap: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/squareup/haha/perflib/Heap;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/Heap;->dumpInstanceCounts()V

    goto :goto_0

    .line 341
    .end local v0    # "heap":Lcom/squareup/haha/perflib/Heap;
    :cond_0
    return-void
.end method

.method public final dumpSizes()V
    .locals 5

    .prologue
    .line 344
    iget-object v2, p0, Lcom/squareup/haha/perflib/Snapshot;->mHeaps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/Heap;

    .line 345
    .local v0, "heap":Lcom/squareup/haha/perflib/Heap;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "+------------------ sizes for heap: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/squareup/haha/perflib/Heap;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/Heap;->dumpSizes()V

    goto :goto_0

    .line 349
    .end local v0    # "heap":Lcom/squareup/haha/perflib/Heap;
    :cond_0
    return-void
.end method

.method public final dumpSubclasses()V
    .locals 5

    .prologue
    .line 352
    iget-object v2, p0, Lcom/squareup/haha/perflib/Snapshot;->mHeaps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/Heap;

    .line 353
    .local v0, "heap":Lcom/squareup/haha/perflib/Heap;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "+------------------ subclasses for heap: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/squareup/haha/perflib/Heap;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/Heap;->dumpSubclasses()V

    goto :goto_0

    .line 357
    .end local v0    # "heap":Lcom/squareup/haha/perflib/Heap;
    :cond_0
    return-void
.end method

.method public findAllDescendantClasses(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/haha/perflib/ClassObj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Lcom/squareup/haha/perflib/Snapshot;->findClasses(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 301
    .local v1, "ancestorClasses":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/squareup/haha/perflib/ClassObj;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v2, "descendants":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/haha/perflib/ClassObj;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/ClassObj;

    .line 303
    .local v0, "ancestor":Lcom/squareup/haha/perflib/ClassObj;
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ClassObj;->getDescendantClasses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 305
    .end local v0    # "ancestor":Lcom/squareup/haha/perflib/ClassObj;
    :cond_0
    return-object v2
.end method

.method public final findClass(J)Lcom/squareup/haha/perflib/ClassObj;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/squareup/haha/perflib/Snapshot;->mHeaps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 214
    iget-object v2, p0, Lcom/squareup/haha/perflib/Snapshot;->mHeaps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/haha/perflib/Heap;

    invoke-virtual {v2, p1, p2}, Lcom/squareup/haha/perflib/Heap;->getClass(J)Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v1

    .line 216
    .local v1, "theClass":Lcom/squareup/haha/perflib/ClassObj;
    if-eqz v1, :cond_0

    .line 221
    .end local v1    # "theClass":Lcom/squareup/haha/perflib/ClassObj;
    :goto_1
    return-object v1

    .line 213
    .restart local v1    # "theClass":Lcom/squareup/haha/perflib/ClassObj;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    .end local v1    # "theClass":Lcom/squareup/haha/perflib/ClassObj;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final findClass(Ljava/lang/String;)Lcom/squareup/haha/perflib/ClassObj;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 233
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/squareup/haha/perflib/Snapshot;->mHeaps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 234
    iget-object v2, p0, Lcom/squareup/haha/perflib/Snapshot;->mHeaps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/haha/perflib/Heap;

    invoke-virtual {v2, p1}, Lcom/squareup/haha/perflib/Heap;->getClass(Ljava/lang/String;)Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v1

    .line 236
    .local v1, "theClass":Lcom/squareup/haha/perflib/ClassObj;
    if-eqz v1, :cond_0

    .line 241
    .end local v1    # "theClass":Lcom/squareup/haha/perflib/ClassObj;
    :goto_1
    return-object v1

    .line 233
    .restart local v1    # "theClass":Lcom/squareup/haha/perflib/ClassObj;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    .end local v1    # "theClass":Lcom/squareup/haha/perflib/ClassObj;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final findClasses(Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/squareup/haha/perflib/ClassObj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v0, "classObjs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/squareup/haha/perflib/ClassObj;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/squareup/haha/perflib/Snapshot;->mHeaps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 256
    iget-object v2, p0, Lcom/squareup/haha/perflib/Snapshot;->mHeaps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/haha/perflib/Heap;

    invoke-virtual {v2, p1}, Lcom/squareup/haha/perflib/Heap;->getClasses(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :cond_0
    return-object v0
.end method

.method public final findInstance(J)Lcom/squareup/haha/perflib/Instance;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/squareup/haha/perflib/Snapshot;->mHeaps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/squareup/haha/perflib/Snapshot;->mHeaps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/haha/perflib/Heap;

    invoke-virtual {v2, p1, p2}, Lcom/squareup/haha/perflib/Heap;->getInstance(J)Lcom/squareup/haha/perflib/Instance;

    move-result-object v1

    .line 201
    .local v1, "instance":Lcom/squareup/haha/perflib/Instance;
    if-eqz v1, :cond_0

    .line 207
    .end local v1    # "instance":Lcom/squareup/haha/perflib/Instance;
    :goto_1
    return-object v1

    .line 198
    .restart local v1    # "instance":Lcom/squareup/haha/perflib/Instance;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    .end local v1    # "instance":Lcom/squareup/haha/perflib/Instance;
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/squareup/haha/perflib/Snapshot;->findClass(J)Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v1

    goto :goto_1
.end method

.method public getGCRoots()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/squareup/haha/perflib/RootObj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/squareup/haha/perflib/Snapshot;->mHeaps:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/Heap;

    iget-object v0, v0, Lcom/squareup/haha/perflib/Heap;->mRoots:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHeap(I)Lcom/squareup/haha/perflib/Heap;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/squareup/haha/perflib/Snapshot;->mHeaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/squareup/haha/perflib/Snapshot;->mHeaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/haha/perflib/Heap;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/Heap;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/squareup/haha/perflib/Snapshot;->mHeaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/haha/perflib/Heap;

    .line 103
    :goto_1
    return-object v1

    .line 98
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getHeap(Ljava/lang/String;)Lcom/squareup/haha/perflib/Heap;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/squareup/haha/perflib/Snapshot;->mHeaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/squareup/haha/perflib/Snapshot;->mHeaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/haha/perflib/Heap;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/Heap;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/squareup/haha/perflib/Snapshot;->mHeaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/haha/perflib/Heap;

    .line 114
    :goto_1
    return-object v1

    .line 109
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getHeapIndex(Lcom/squareup/haha/perflib/Heap;)I
    .locals 1
    .param p1, "heap"    # Lcom/squareup/haha/perflib/Heap;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/squareup/haha/perflib/Snapshot;->mHeaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getHeaps()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/squareup/haha/perflib/Heap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/squareup/haha/perflib/Snapshot;->mHeaps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getIdSizeMask()J
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/squareup/haha/perflib/Snapshot;->mIdSizeMask:J

    return-wide v0
.end method

.method public getReachableInstances()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/haha/perflib/Instance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/squareup/haha/perflib/Snapshot;->mTopSort:Lcom/squareup/haha/guava/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/squareup/haha/guava/collect/ImmutableList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 323
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/haha/perflib/Instance;>;"
    iget-object v3, p0, Lcom/squareup/haha/perflib/Snapshot;->mTopSort:Lcom/squareup/haha/guava/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/squareup/haha/guava/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/haha/perflib/Instance;

    .line 324
    .local v1, "node":Lcom/squareup/haha/perflib/Instance;
    invoke-virtual {v1}, Lcom/squareup/haha/perflib/Instance;->getImmediateDominator()Lcom/squareup/haha/perflib/Instance;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 325
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 328
    .end local v1    # "node":Lcom/squareup/haha/perflib/Instance;
    :cond_1
    return-object v2
.end method

.method public final getStackFrame(J)Lcom/squareup/haha/perflib/StackFrame;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 133
    iget-object v0, p0, Lcom/squareup/haha/perflib/Snapshot;->mCurrentHeap:Lcom/squareup/haha/perflib/Heap;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/haha/perflib/Heap;->getStackFrame(J)Lcom/squareup/haha/perflib/StackFrame;

    move-result-object v0

    return-object v0
.end method

.method public final getStackTrace(I)Lcom/squareup/haha/perflib/StackTrace;
    .locals 1
    .param p1, "traceSerialNumber"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/squareup/haha/perflib/Snapshot;->mCurrentHeap:Lcom/squareup/haha/perflib/Heap;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/perflib/Heap;->getStackTrace(I)Lcom/squareup/haha/perflib/StackTrace;

    move-result-object v0

    return-object v0
.end method

.method public final getStackTraceAtDepth(II)Lcom/squareup/haha/perflib/StackTrace;
    .locals 1
    .param p1, "traceSerialNumber"    # I
    .param p2, "depth"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/squareup/haha/perflib/Snapshot;->mCurrentHeap:Lcom/squareup/haha/perflib/Heap;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/haha/perflib/Heap;->getStackTraceAtDepth(II)Lcom/squareup/haha/perflib/StackTrace;

    move-result-object v0

    return-object v0
.end method

.method public final getThread(I)Lcom/squareup/haha/perflib/ThreadObj;
    .locals 1
    .param p1, "serialNumber"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/squareup/haha/perflib/Snapshot;->mCurrentHeap:Lcom/squareup/haha/perflib/Heap;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/perflib/Heap;->getThread(I)Lcom/squareup/haha/perflib/ThreadObj;

    move-result-object v0

    return-object v0
.end method

.method public getTopologicalOrdering()Lcom/squareup/haha/guava/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/haha/guava/collect/ImmutableList",
            "<",
            "Lcom/squareup/haha/perflib/Instance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/squareup/haha/perflib/Snapshot;->mTopSort:Lcom/squareup/haha/guava/collect/ImmutableList;

    return-object v0
.end method

.method public final getTypeSize(Lcom/squareup/haha/perflib/Type;)I
    .locals 2
    .param p1, "type"    # Lcom/squareup/haha/perflib/Type;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/squareup/haha/perflib/Snapshot;->mTypeSizes:[I

    invoke-virtual {p1}, Lcom/squareup/haha/perflib/Type;->getTypeId()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public resolveClasses()V
    .locals 14

    .prologue
    .line 263
    const-string v13, "java.lang.Class"

    invoke-virtual {p0, v13}, Lcom/squareup/haha/perflib/Snapshot;->findClass(Ljava/lang/String;)Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v3

    .line 264
    .local v3, "clazz":Lcom/squareup/haha/perflib/ClassObj;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/squareup/haha/perflib/ClassObj;->getInstanceSize()I

    move-result v10

    .line 266
    .local v10, "javaLangClassSize":I
    :goto_0
    iget-object v13, p0, Lcom/squareup/haha/perflib/Snapshot;->mHeaps:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/haha/perflib/Heap;

    .line 267
    .local v5, "heap":Lcom/squareup/haha/perflib/Heap;
    invoke-virtual {v5}, Lcom/squareup/haha/perflib/Heap;->getClasses()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/haha/perflib/ClassObj;

    .line 268
    .local v1, "classObj":Lcom/squareup/haha/perflib/ClassObj;
    invoke-virtual {v1}, Lcom/squareup/haha/perflib/ClassObj;->getSuperClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v12

    .line 269
    .local v12, "superClass":Lcom/squareup/haha/perflib/ClassObj;
    if-eqz v12, :cond_1

    .line 270
    invoke-virtual {v12, v1}, Lcom/squareup/haha/perflib/ClassObj;->addSubclass(Lcom/squareup/haha/perflib/ClassObj;)V

    .line 274
    :cond_1
    move v2, v10

    .line 276
    .local v2, "classSize":I
    iget-object v0, v1, Lcom/squareup/haha/perflib/ClassObj;->mStaticFields:[Lcom/squareup/haha/perflib/Field;

    .local v0, "arr$":[Lcom/squareup/haha/perflib/Field;
    array-length v11, v0

    .local v11, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_2
    if-ge v8, v11, :cond_3

    aget-object v4, v0, v8

    .line 277
    .local v4, "f":Lcom/squareup/haha/perflib/Field;
    invoke-virtual {v4}, Lcom/squareup/haha/perflib/Field;->getType()Lcom/squareup/haha/perflib/Type;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/squareup/haha/perflib/Snapshot;->getTypeSize(Lcom/squareup/haha/perflib/Type;)I

    move-result v13

    add-int/2addr v2, v13

    .line 276
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 264
    .end local v0    # "arr$":[Lcom/squareup/haha/perflib/Field;
    .end local v1    # "classObj":Lcom/squareup/haha/perflib/ClassObj;
    .end local v2    # "classSize":I
    .end local v4    # "f":Lcom/squareup/haha/perflib/Field;
    .end local v5    # "heap":Lcom/squareup/haha/perflib/Heap;
    .end local v8    # "i$":I
    .end local v10    # "javaLangClassSize":I
    .end local v11    # "len$":I
    .end local v12    # "superClass":Lcom/squareup/haha/perflib/ClassObj;
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 279
    .restart local v0    # "arr$":[Lcom/squareup/haha/perflib/Field;
    .restart local v1    # "classObj":Lcom/squareup/haha/perflib/ClassObj;
    .restart local v2    # "classSize":I
    .restart local v5    # "heap":Lcom/squareup/haha/perflib/Heap;
    .restart local v8    # "i$":I
    .restart local v10    # "javaLangClassSize":I
    .restart local v11    # "len$":I
    .restart local v12    # "superClass":Lcom/squareup/haha/perflib/ClassObj;
    :cond_3
    invoke-virtual {v1, v2}, Lcom/squareup/haha/perflib/ClassObj;->setSize(I)V

    goto :goto_1

    .line 281
    .end local v0    # "arr$":[Lcom/squareup/haha/perflib/Field;
    .end local v1    # "classObj":Lcom/squareup/haha/perflib/ClassObj;
    .end local v2    # "classSize":I
    .end local v8    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "superClass":Lcom/squareup/haha/perflib/ClassObj;
    :cond_4
    invoke-virtual {v5}, Lcom/squareup/haha/perflib/Heap;->getInstances()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/squareup/haha/perflib/Instance;

    .line 282
    .local v9, "instance":Lcom/squareup/haha/perflib/Instance;
    invoke-virtual {v9}, Lcom/squareup/haha/perflib/Instance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v1

    .line 283
    .restart local v1    # "classObj":Lcom/squareup/haha/perflib/ClassObj;
    if-eqz v1, :cond_5

    .line 284
    invoke-virtual {v5}, Lcom/squareup/haha/perflib/Heap;->getId()I

    move-result v13

    invoke-virtual {v1, v13, v9}, Lcom/squareup/haha/perflib/ClassObj;->addInstance(ILcom/squareup/haha/perflib/Instance;)V

    goto :goto_3

    .line 288
    .end local v1    # "classObj":Lcom/squareup/haha/perflib/ClassObj;
    .end local v5    # "heap":Lcom/squareup/haha/perflib/Heap;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "instance":Lcom/squareup/haha/perflib/Instance;
    :cond_6
    return-void
.end method

.method public resolveReferences()V
    .locals 4

    .prologue
    .line 291
    invoke-static {}, Lcom/squareup/haha/perflib/ClassObj;->getReferenceClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/squareup/haha/perflib/Snapshot;->findAllDescendantClasses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 292
    .local v2, "referenceDescendants":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/haha/perflib/ClassObj;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/ClassObj;

    .line 293
    .local v0, "classObj":Lcom/squareup/haha/perflib/ClassObj;
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ClassObj;->setIsSoftReference()V

    .line 294
    iget-object v3, p0, Lcom/squareup/haha/perflib/Snapshot;->mReferenceClasses:Lcom/squareup/haha/trove/THashSet;

    invoke-virtual {v3, v0}, Lcom/squareup/haha/trove/THashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    .end local v0    # "classObj":Lcom/squareup/haha/perflib/ClassObj;
    :cond_0
    return-void
.end method

.method public setHeapTo(ILjava/lang/String;)Lcom/squareup/haha/perflib/Heap;
    .locals 2
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/squareup/haha/perflib/Snapshot;->getHeap(I)Lcom/squareup/haha/perflib/Heap;

    move-result-object v0

    .line 80
    .local v0, "heap":Lcom/squareup/haha/perflib/Heap;
    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/squareup/haha/perflib/Heap;

    .end local v0    # "heap":Lcom/squareup/haha/perflib/Heap;
    invoke-direct {v0, p1, p2}, Lcom/squareup/haha/perflib/Heap;-><init>(ILjava/lang/String;)V

    .line 82
    .restart local v0    # "heap":Lcom/squareup/haha/perflib/Heap;
    iput-object p0, v0, Lcom/squareup/haha/perflib/Heap;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    .line 83
    iget-object v1, p0, Lcom/squareup/haha/perflib/Snapshot;->mHeaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    iput-object v0, p0, Lcom/squareup/haha/perflib/Snapshot;->mCurrentHeap:Lcom/squareup/haha/perflib/Heap;

    .line 88
    iget-object v1, p0, Lcom/squareup/haha/perflib/Snapshot;->mCurrentHeap:Lcom/squareup/haha/perflib/Heap;

    return-object v1
.end method

.method public final setIdSize(I)V
    .locals 5
    .param p1, "size"    # I

    .prologue
    .line 162
    const/4 v1, -0x1

    .line 163
    .local v1, "maxId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/squareup/haha/perflib/Type;->values()[Lcom/squareup/haha/perflib/Type;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 164
    invoke-static {}, Lcom/squareup/haha/perflib/Type;->values()[Lcom/squareup/haha/perflib/Type;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/squareup/haha/perflib/Type;->getTypeId()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    sget-boolean v2, Lcom/squareup/haha/perflib/Snapshot;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-lez v1, :cond_1

    sget-object v2, Lcom/squareup/haha/perflib/Type;->LONG:Lcom/squareup/haha/perflib/Type;

    invoke-virtual {v2}, Lcom/squareup/haha/perflib/Type;->getTypeId()I

    move-result v2

    if-le v1, v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 167
    :cond_2
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/squareup/haha/perflib/Snapshot;->mTypeSizes:[I

    .line 168
    iget-object v2, p0, Lcom/squareup/haha/perflib/Snapshot;->mTypeSizes:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 170
    const/4 v0, 0x0

    :goto_1
    invoke-static {}, Lcom/squareup/haha/perflib/Type;->values()[Lcom/squareup/haha/perflib/Type;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 171
    iget-object v2, p0, Lcom/squareup/haha/perflib/Snapshot;->mTypeSizes:[I

    invoke-static {}, Lcom/squareup/haha/perflib/Type;->values()[Lcom/squareup/haha/perflib/Type;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/squareup/haha/perflib/Type;->getTypeId()I

    move-result v3

    invoke-static {}, Lcom/squareup/haha/perflib/Type;->values()[Lcom/squareup/haha/perflib/Type;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/squareup/haha/perflib/Type;->getSize()I

    move-result v4

    aput v4, v2, v3

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 173
    :cond_3
    iget-object v2, p0, Lcom/squareup/haha/perflib/Snapshot;->mTypeSizes:[I

    sget-object v3, Lcom/squareup/haha/perflib/Type;->OBJECT:Lcom/squareup/haha/perflib/Type;

    invoke-virtual {v3}, Lcom/squareup/haha/perflib/Type;->getTypeId()I

    move-result v3

    aput p1, v2, v3

    .line 174
    const-wide/16 v2, -0x1

    rsub-int/lit8 v4, p1, 0x8

    shl-int/lit8 v4, v4, 0x3

    ushr-long/2addr v2, v4

    iput-wide v2, p0, Lcom/squareup/haha/perflib/Snapshot;->mIdSizeMask:J

    .line 175
    return-void
.end method

.method public setToDefaultHeap()Lcom/squareup/haha/perflib/Heap;
    .locals 2

    .prologue
    .line 73
    const/4 v0, 0x0

    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/squareup/haha/perflib/Snapshot;->setHeapTo(ILjava/lang/String;)Lcom/squareup/haha/perflib/Heap;

    move-result-object v0

    return-object v0
.end method
