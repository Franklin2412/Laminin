.class final Lcom/squareup/leakcanary/ShortestPathFinder;
.super Ljava/lang/Object;
.source "ShortestPathFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/leakcanary/ShortestPathFinder$1;,
        Lcom/squareup/leakcanary/ShortestPathFinder$Result;
    }
.end annotation


# instance fields
.field private canIgnoreStrings:Z

.field private final excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

.field private final toVisitIfNoPathQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/squareup/leakcanary/LeakNode;",
            ">;"
        }
    .end annotation
.end field

.field private final toVisitIfNoPathSet:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/squareup/haha/perflib/Instance;",
            ">;"
        }
    .end annotation
.end field

.field private final toVisitQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/squareup/leakcanary/LeakNode;",
            ">;"
        }
    .end annotation
.end field

.field private final toVisitSet:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/squareup/haha/perflib/Instance;",
            ">;"
        }
    .end annotation
.end field

.field private final visitedSet:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/squareup/haha/perflib/Instance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/ExcludedRefs;)V
    .locals 1
    .param p1, "excludedRefs"    # Lcom/squareup/leakcanary/ExcludedRefs;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    .line 61
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitQueue:Ljava/util/Queue;

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathQueue:Ljava/util/Queue;

    .line 63
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitSet:Ljava/util/LinkedHashSet;

    .line 64
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathSet:Ljava/util/LinkedHashSet;

    .line 65
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->visitedSet:Ljava/util/LinkedHashSet;

    .line 66
    return-void
.end method

.method private checkSeen(Lcom/squareup/leakcanary/LeakNode;)Z
    .locals 2
    .param p1, "node"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->visitedSet:Ljava/util/LinkedHashSet;

    iget-object v1, p1, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearState()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 125
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 126
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 127
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 128
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->visitedSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 129
    return-void
.end method

.method private enqueue(Lcom/squareup/leakcanary/Exclusion;Lcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V
    .locals 7
    .param p1, "exclusion"    # Lcom/squareup/leakcanary/Exclusion;
    .param p2, "parent"    # Lcom/squareup/leakcanary/LeakNode;
    .param p3, "child"    # Lcom/squareup/haha/perflib/Instance;
    .param p4, "referenceName"    # Ljava/lang/String;
    .param p5, "referenceType"    # Lcom/squareup/leakcanary/LeakTraceElement$Type;

    .prologue
    .line 308
    if-nez p3, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    invoke-static {p3}, Lcom/squareup/leakcanary/HahaHelper;->isPrimitiveOrWrapperArray(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Lcom/squareup/leakcanary/HahaHelper;->isPrimitiveWrapper(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    if-nez p1, :cond_4

    const/4 v6, 0x1

    .line 319
    .local v6, "visitNow":Z
    :goto_1
    if-nez v6, :cond_2

    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    :cond_2
    iget-boolean v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->canIgnoreStrings:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, p3}, Lcom/squareup/leakcanary/ShortestPathFinder;->isString(Lcom/squareup/haha/perflib/Instance;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    :cond_3
    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->visitedSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    new-instance v0, Lcom/squareup/leakcanary/LeakNode;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/squareup/leakcanary/LeakNode;-><init>(Lcom/squareup/leakcanary/Exclusion;Lcom/squareup/haha/perflib/Instance;Lcom/squareup/leakcanary/LeakNode;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    .line 329
    .local v0, "childNode":Lcom/squareup/leakcanary/LeakNode;
    if-eqz v6, :cond_5

    .line 330
    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 318
    .end local v0    # "childNode":Lcom/squareup/leakcanary/LeakNode;
    .end local v6    # "visitNow":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 333
    .restart local v0    # "childNode":Lcom/squareup/leakcanary/LeakNode;
    .restart local v6    # "visitNow":Z
    :cond_5
    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private enqueueGcRoots(Lcom/squareup/haha/perflib/Snapshot;)V
    .locals 13
    .param p1, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-virtual {p1}, Lcom/squareup/haha/perflib/Snapshot;->getGCRoots()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/haha/perflib/RootObj;

    .line 133
    .local v3, "rootObj":Lcom/squareup/haha/perflib/RootObj;
    sget-object v0, Lcom/squareup/leakcanary/ShortestPathFinder$1;->$SwitchMap$com$squareup$haha$perflib$RootType:[I

    invoke-virtual {v3}, Lcom/squareup/haha/perflib/RootObj;->getRootType()Lcom/squareup/haha/perflib/RootType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown root type:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/squareup/haha/perflib/RootObj;->getRootType()Lcom/squareup/haha/perflib/RootType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :pswitch_1
    invoke-static {v3}, Lcom/squareup/haha/perflib/HahaSpy;->allocatingThread(Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/haha/perflib/Instance;

    move-result-object v11

    .line 136
    .local v11, "thread":Lcom/squareup/haha/perflib/Instance;
    invoke-static {v11}, Lcom/squareup/leakcanary/HahaHelper;->threadName(Lcom/squareup/haha/perflib/Instance;)Ljava/lang/String;

    move-result-object v12

    .line 137
    .local v12, "threadName":Ljava/lang/String;
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    iget-object v0, v0, Lcom/squareup/leakcanary/ExcludedRefs;->threadNames:Ljava/util/Map;

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/leakcanary/Exclusion;

    .line 138
    .local v1, "params":Lcom/squareup/leakcanary/Exclusion;
    if-eqz v1, :cond_1

    iget-boolean v0, v1, Lcom/squareup/leakcanary/Exclusion;->alwaysExclude:Z

    if-nez v0, :cond_0

    :cond_1
    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    .line 139
    invoke-direct/range {v0 .. v5}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(Lcom/squareup/leakcanary/Exclusion;Lcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    goto :goto_0

    .end local v1    # "params":Lcom/squareup/leakcanary/Exclusion;
    .end local v11    # "thread":Lcom/squareup/haha/perflib/Instance;
    .end local v12    # "threadName":Ljava/lang/String;
    :pswitch_2
    move-object v4, p0

    move-object v5, v2

    move-object v6, v2

    move-object v7, v3

    move-object v8, v2

    move-object v9, v2

    .line 166
    invoke-direct/range {v4 .. v9}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(Lcom/squareup/leakcanary/Exclusion;Lcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    goto :goto_0

    .line 172
    .end local v3    # "rootObj":Lcom/squareup/haha/perflib/RootObj;
    :cond_2
    return-void

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private isString(Lcom/squareup/haha/perflib/Instance;)Z
    .locals 2
    .param p1, "instance"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 339
    invoke-virtual {p1}, Lcom/squareup/haha/perflib/Instance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/squareup/haha/perflib/Instance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rootSuperClassAlwaysIgnored(Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/leakcanary/Exclusion;
    .locals 5
    .param p1, "child"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 203
    if-nez p1, :cond_1

    .line 204
    const/4 v0, 0x0

    .line 218
    :cond_0
    return-object v0

    .line 206
    :cond_1
    const/4 v0, 0x0

    .line 207
    .local v0, "matchingParams":Lcom/squareup/leakcanary/Exclusion;
    invoke-virtual {p1}, Lcom/squareup/haha/perflib/Instance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v2

    .line 208
    .local v2, "superClassObj":Lcom/squareup/haha/perflib/ClassObj;
    :goto_0
    if-eqz v2, :cond_0

    .line 209
    iget-object v3, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    iget-object v3, v3, Lcom/squareup/leakcanary/ExcludedRefs;->rootClassNames:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/leakcanary/Exclusion;

    .line 210
    .local v1, "params":Lcom/squareup/leakcanary/Exclusion;
    if-eqz v1, :cond_3

    .line 212
    if-eqz v0, :cond_2

    iget-boolean v3, v0, Lcom/squareup/leakcanary/Exclusion;->alwaysExclude:Z

    if-nez v3, :cond_3

    .line 213
    :cond_2
    move-object v0, v1

    .line 216
    :cond_3
    invoke-virtual {v2}, Lcom/squareup/haha/perflib/ClassObj;->getSuperClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v2

    .line 217
    goto :goto_0
.end method

.method private visitArrayInstance(Lcom/squareup/leakcanary/LeakNode;)V
    .locals 10
    .param p1, "node"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    .line 295
    iget-object v6, p1, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    check-cast v6, Lcom/squareup/haha/perflib/ArrayInstance;

    .line 296
    .local v6, "arrayInstance":Lcom/squareup/haha/perflib/ArrayInstance;
    invoke-virtual {v6}, Lcom/squareup/haha/perflib/ArrayInstance;->getArrayType()Lcom/squareup/haha/perflib/Type;

    move-result-object v7

    .line 297
    .local v7, "arrayType":Lcom/squareup/haha/perflib/Type;
    sget-object v0, Lcom/squareup/haha/perflib/Type;->OBJECT:Lcom/squareup/haha/perflib/Type;

    if-ne v7, v0, :cond_0

    .line 298
    invoke-virtual {v6}, Lcom/squareup/haha/perflib/ArrayInstance;->getValues()[Ljava/lang/Object;

    move-result-object v9

    .line 299
    .local v9, "values":[Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v9

    if-ge v8, v0, :cond_0

    .line 300
    aget-object v3, v9, v8

    check-cast v3, Lcom/squareup/haha/perflib/Instance;

    .line 301
    .local v3, "child":Lcom/squareup/haha/perflib/Instance;
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Type;->ARRAY_ENTRY:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(Lcom/squareup/leakcanary/Exclusion;Lcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    .line 299
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 304
    .end local v3    # "child":Lcom/squareup/haha/perflib/Instance;
    .end local v8    # "i":I
    .end local v9    # "values":[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private visitClassInstance(Lcom/squareup/leakcanary/LeakNode;)V
    .locals 16
    .param p1, "node"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    .line 252
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    check-cast v9, Lcom/squareup/haha/perflib/ClassInstance;

    .line 253
    .local v9, "classInstance":Lcom/squareup/haha/perflib/ClassInstance;
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 254
    .local v13, "ignoredFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/squareup/leakcanary/Exclusion;>;"
    invoke-virtual {v9}, Lcom/squareup/haha/perflib/ClassInstance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v15

    .line 255
    .local v15, "superClassObj":Lcom/squareup/haha/perflib/ClassObj;
    const/4 v7, 0x0

    .line 256
    .local v7, "classExclusion":Lcom/squareup/leakcanary/Exclusion;
    :goto_0
    if-eqz v15, :cond_3

    .line 257
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/leakcanary/ShortestPathFinder;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    iget-object v1, v1, Lcom/squareup/leakcanary/ExcludedRefs;->classNames:Ljava/util/Map;

    invoke-virtual {v15}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/squareup/leakcanary/Exclusion;

    .line 258
    .local v14, "params":Lcom/squareup/leakcanary/Exclusion;
    if-eqz v14, :cond_1

    .line 260
    if-eqz v7, :cond_0

    iget-boolean v1, v7, Lcom/squareup/leakcanary/Exclusion;->alwaysExclude:Z

    if-nez v1, :cond_1

    .line 261
    :cond_0
    move-object v7, v14

    .line 264
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/leakcanary/ShortestPathFinder;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    iget-object v1, v1, Lcom/squareup/leakcanary/ExcludedRefs;->fieldNameByClassName:Ljava/util/Map;

    invoke-virtual {v15}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 266
    .local v8, "classIgnoredFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/squareup/leakcanary/Exclusion;>;"
    if-eqz v8, :cond_2

    .line 267
    invoke-interface {v13, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 269
    :cond_2
    invoke-virtual {v15}, Lcom/squareup/haha/perflib/ClassObj;->getSuperClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v15

    .line 270
    goto :goto_0

    .line 272
    .end local v8    # "classIgnoredFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/squareup/leakcanary/Exclusion;>;"
    .end local v14    # "params":Lcom/squareup/leakcanary/Exclusion;
    :cond_3
    if-eqz v7, :cond_5

    iget-boolean v1, v7, Lcom/squareup/leakcanary/Exclusion;->alwaysExclude:Z

    if-eqz v1, :cond_5

    .line 292
    :cond_4
    return-void

    .line 276
    :cond_5
    invoke-virtual {v9}, Lcom/squareup/haha/perflib/ClassInstance;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;

    .line 277
    .local v11, "fieldValue":Lcom/squareup/haha/perflib/ClassInstance$FieldValue;
    move-object v2, v7

    .line 278
    .local v2, "fieldExclusion":Lcom/squareup/leakcanary/Exclusion;
    invoke-virtual {v11}, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;->getField()Lcom/squareup/haha/perflib/Field;

    move-result-object v10

    .line 279
    .local v10, "field":Lcom/squareup/haha/perflib/Field;
    invoke-virtual {v10}, Lcom/squareup/haha/perflib/Field;->getType()Lcom/squareup/haha/perflib/Type;

    move-result-object v1

    sget-object v3, Lcom/squareup/haha/perflib/Type;->OBJECT:Lcom/squareup/haha/perflib/Type;

    if-ne v1, v3, :cond_6

    .line 282
    invoke-virtual {v11}, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/haha/perflib/Instance;

    .line 283
    .local v4, "child":Lcom/squareup/haha/perflib/Instance;
    invoke-virtual {v10}, Lcom/squareup/haha/perflib/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 284
    .local v5, "fieldName":Ljava/lang/String;
    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/squareup/leakcanary/Exclusion;

    .line 286
    .restart local v14    # "params":Lcom/squareup/leakcanary/Exclusion;
    if-eqz v14, :cond_8

    if-eqz v2, :cond_7

    iget-boolean v1, v14, Lcom/squareup/leakcanary/Exclusion;->alwaysExclude:Z

    if-eqz v1, :cond_8

    iget-boolean v1, v2, Lcom/squareup/leakcanary/Exclusion;->alwaysExclude:Z

    if-nez v1, :cond_8

    .line 288
    :cond_7
    move-object v2, v14

    .line 290
    :cond_8
    sget-object v6, Lcom/squareup/leakcanary/LeakTraceElement$Type;->INSTANCE_FIELD:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(Lcom/squareup/leakcanary/Exclusion;Lcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    goto :goto_1
.end method

.method private visitClassObj(Lcom/squareup/leakcanary/LeakNode;)V
    .locals 18
    .param p1, "node"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    .line 222
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    check-cast v12, Lcom/squareup/haha/perflib/ClassObj;

    .line 223
    .local v12, "classObj":Lcom/squareup/haha/perflib/ClassObj;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/leakcanary/ShortestPathFinder;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    iget-object v1, v1, Lcom/squareup/leakcanary/ExcludedRefs;->staticFieldNameByClassName:Ljava/util/Map;

    invoke-virtual {v12}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map;

    .line 225
    .local v16, "ignoredStaticFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/squareup/leakcanary/Exclusion;>;"
    invoke-virtual {v12}, Lcom/squareup/haha/perflib/ClassObj;->getStaticFieldValues()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 226
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/squareup/haha/perflib/Field;

    .line 227
    .local v14, "field":Lcom/squareup/haha/perflib/Field;
    invoke-virtual {v14}, Lcom/squareup/haha/perflib/Field;->getType()Lcom/squareup/haha/perflib/Type;

    move-result-object v1

    sget-object v3, Lcom/squareup/haha/perflib/Type;->OBJECT:Lcom/squareup/haha/perflib/Type;

    if-ne v1, v3, :cond_0

    .line 230
    invoke-virtual {v14}, Lcom/squareup/haha/perflib/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, "fieldName":Ljava/lang/String;
    const-string v1, "$staticOverhead"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/haha/perflib/Instance;

    .line 235
    .local v4, "child":Lcom/squareup/haha/perflib/Instance;
    const/16 v17, 0x1

    .line 236
    .local v17, "visit":Z
    if-eqz v16, :cond_1

    .line 237
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/leakcanary/Exclusion;

    .line 238
    .local v2, "params":Lcom/squareup/leakcanary/Exclusion;
    if-eqz v2, :cond_1

    .line 239
    const/16 v17, 0x0

    .line 240
    iget-boolean v1, v2, Lcom/squareup/leakcanary/Exclusion;->alwaysExclude:Z

    if-nez v1, :cond_1

    .line 241
    sget-object v6, Lcom/squareup/leakcanary/LeakTraceElement$Type;->STATIC_FIELD:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(Lcom/squareup/leakcanary/Exclusion;Lcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    .line 245
    .end local v2    # "params":Lcom/squareup/leakcanary/Exclusion;
    :cond_1
    if-eqz v17, :cond_0

    .line 246
    const/4 v7, 0x0

    sget-object v11, Lcom/squareup/leakcanary/LeakTraceElement$Type;->STATIC_FIELD:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object v9, v4

    move-object v10, v5

    invoke-direct/range {v6 .. v11}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(Lcom/squareup/leakcanary/Exclusion;Lcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    goto :goto_0

    .line 249
    .end local v4    # "child":Lcom/squareup/haha/perflib/Instance;
    .end local v5    # "fieldName":Ljava/lang/String;
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;>;"
    .end local v14    # "field":Lcom/squareup/haha/perflib/Field;
    .end local v17    # "visit":Z
    :cond_2
    return-void
.end method

.method private visitRootObj(Lcom/squareup/leakcanary/LeakNode;)V
    .locals 14
    .param p1, "node"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    const/4 v1, 0x0

    .line 179
    iget-object v13, p1, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    check-cast v13, Lcom/squareup/haha/perflib/RootObj;

    .line 180
    .local v13, "rootObj":Lcom/squareup/haha/perflib/RootObj;
    invoke-virtual {v13}, Lcom/squareup/haha/perflib/RootObj;->getReferredInstance()Lcom/squareup/haha/perflib/Instance;

    move-result-object v6

    .line 182
    .local v6, "child":Lcom/squareup/haha/perflib/Instance;
    invoke-direct {p0, v6}, Lcom/squareup/leakcanary/ShortestPathFinder;->rootSuperClassAlwaysIgnored(Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/leakcanary/Exclusion;

    move-result-object v8

    .line 184
    .local v8, "exclusion":Lcom/squareup/leakcanary/Exclusion;
    if-eqz v8, :cond_0

    iget-boolean v3, v8, Lcom/squareup/leakcanary/Exclusion;->alwaysExclude:Z

    if-eqz v3, :cond_0

    move-object v4, v8

    .line 200
    .end local v8    # "exclusion":Lcom/squareup/leakcanary/Exclusion;
    .local v4, "exclusion":Lcom/squareup/leakcanary/Exclusion;
    :goto_0
    return-void

    .line 188
    .end local v4    # "exclusion":Lcom/squareup/leakcanary/Exclusion;
    .restart local v8    # "exclusion":Lcom/squareup/leakcanary/Exclusion;
    :cond_0
    invoke-virtual {v13}, Lcom/squareup/haha/perflib/RootObj;->getRootType()Lcom/squareup/haha/perflib/RootType;

    move-result-object v3

    sget-object v5, Lcom/squareup/haha/perflib/RootType;->JAVA_LOCAL:Lcom/squareup/haha/perflib/RootType;

    if-ne v3, v5, :cond_1

    .line 189
    invoke-static {v13}, Lcom/squareup/haha/perflib/HahaSpy;->allocatingThread(Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/haha/perflib/Instance;

    move-result-object v2

    .line 192
    .local v2, "holder":Lcom/squareup/haha/perflib/Instance;
    new-instance v0, Lcom/squareup/leakcanary/LeakNode;

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/squareup/leakcanary/LeakNode;-><init>(Lcom/squareup/leakcanary/Exclusion;Lcom/squareup/haha/perflib/Instance;Lcom/squareup/leakcanary/LeakNode;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    .line 193
    .local v0, "parent":Lcom/squareup/leakcanary/LeakNode;
    iget-object v1, p1, Lcom/squareup/leakcanary/LeakNode;->exclusion:Lcom/squareup/leakcanary/Exclusion;

    if-eqz v1, :cond_2

    .line 194
    iget-object v4, p1, Lcom/squareup/leakcanary/LeakNode;->exclusion:Lcom/squareup/leakcanary/Exclusion;

    .line 196
    .end local v8    # "exclusion":Lcom/squareup/leakcanary/Exclusion;
    .restart local v4    # "exclusion":Lcom/squareup/leakcanary/Exclusion;
    :goto_1
    const-string v7, "<Java Local>"

    sget-object v8, Lcom/squareup/leakcanary/LeakTraceElement$Type;->LOCAL:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    move-object v3, p0

    move-object v5, v0

    invoke-direct/range {v3 .. v8}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(Lcom/squareup/leakcanary/Exclusion;Lcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    goto :goto_0

    .end local v0    # "parent":Lcom/squareup/leakcanary/LeakNode;
    .end local v2    # "holder":Lcom/squareup/haha/perflib/Instance;
    .end local v4    # "exclusion":Lcom/squareup/leakcanary/Exclusion;
    .restart local v8    # "exclusion":Lcom/squareup/leakcanary/Exclusion;
    :cond_1
    move-object v7, p0

    move-object v9, p1

    move-object v10, v6

    move-object v11, v1

    move-object v12, v1

    .line 198
    invoke-direct/range {v7 .. v12}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(Lcom/squareup/leakcanary/Exclusion;Lcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    move-object v4, v8

    .end local v8    # "exclusion":Lcom/squareup/leakcanary/Exclusion;
    .restart local v4    # "exclusion":Lcom/squareup/leakcanary/Exclusion;
    goto :goto_0

    .end local v4    # "exclusion":Lcom/squareup/leakcanary/Exclusion;
    .restart local v0    # "parent":Lcom/squareup/leakcanary/LeakNode;
    .restart local v2    # "holder":Lcom/squareup/haha/perflib/Instance;
    .restart local v8    # "exclusion":Lcom/squareup/leakcanary/Exclusion;
    :cond_2
    move-object v4, v8

    .end local v8    # "exclusion":Lcom/squareup/leakcanary/Exclusion;
    .restart local v4    # "exclusion":Lcom/squareup/leakcanary/Exclusion;
    goto :goto_1
.end method


# virtual methods
.method findPath(Lcom/squareup/haha/perflib/Snapshot;Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/leakcanary/ShortestPathFinder$Result;
    .locals 6
    .param p1, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;
    .param p2, "leakingRef"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/squareup/leakcanary/ShortestPathFinder;->clearState()V

    .line 80
    invoke-direct {p0, p2}, Lcom/squareup/leakcanary/ShortestPathFinder;->isString(Lcom/squareup/haha/perflib/Instance;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->canIgnoreStrings:Z

    .line 82
    invoke-direct {p0, p1}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueueGcRoots(Lcom/squareup/haha/perflib/Snapshot;)V

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "excludingKnownLeaks":Z
    const/4 v1, 0x0

    .line 86
    .local v1, "leakingNode":Lcom/squareup/leakcanary/LeakNode;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 88
    :cond_1
    iget-object v3, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 89
    iget-object v3, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/leakcanary/LeakNode;

    .line 99
    .local v2, "node":Lcom/squareup/leakcanary/LeakNode;
    :goto_2
    iget-object v3, v2, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    if-ne v3, p2, :cond_6

    .line 100
    move-object v1, v2

    .line 120
    .end local v2    # "node":Lcom/squareup/leakcanary/LeakNode;
    :cond_2
    new-instance v3, Lcom/squareup/leakcanary/ShortestPathFinder$Result;

    invoke-direct {v3, v1, v0}, Lcom/squareup/leakcanary/ShortestPathFinder$Result;-><init>(Lcom/squareup/leakcanary/LeakNode;Z)V

    return-object v3

    .line 80
    .end local v0    # "excludingKnownLeaks":Z
    .end local v1    # "leakingNode":Lcom/squareup/leakcanary/LeakNode;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 91
    .restart local v0    # "excludingKnownLeaks":Z
    .restart local v1    # "leakingNode":Lcom/squareup/leakcanary/LeakNode;
    :cond_4
    iget-object v3, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/leakcanary/LeakNode;

    .line 92
    .restart local v2    # "node":Lcom/squareup/leakcanary/LeakNode;
    iget-object v3, v2, Lcom/squareup/leakcanary/LeakNode;->exclusion:Lcom/squareup/leakcanary/Exclusion;

    if-nez v3, :cond_5

    .line 93
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected node to have an exclusion "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    .line 104
    :cond_6
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/ShortestPathFinder;->checkSeen(Lcom/squareup/leakcanary/LeakNode;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    iget-object v3, v2, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    instance-of v3, v3, Lcom/squareup/haha/perflib/RootObj;

    if-eqz v3, :cond_7

    .line 109
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/ShortestPathFinder;->visitRootObj(Lcom/squareup/leakcanary/LeakNode;)V

    goto :goto_1

    .line 110
    :cond_7
    iget-object v3, v2, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    instance-of v3, v3, Lcom/squareup/haha/perflib/ClassObj;

    if-eqz v3, :cond_8

    .line 111
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/ShortestPathFinder;->visitClassObj(Lcom/squareup/leakcanary/LeakNode;)V

    goto :goto_1

    .line 112
    :cond_8
    iget-object v3, v2, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    instance-of v3, v3, Lcom/squareup/haha/perflib/ClassInstance;

    if-eqz v3, :cond_9

    .line 113
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/ShortestPathFinder;->visitClassInstance(Lcom/squareup/leakcanary/LeakNode;)V

    goto :goto_1

    .line 114
    :cond_9
    iget-object v3, v2, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    instance-of v3, v3, Lcom/squareup/haha/perflib/ArrayInstance;

    if-eqz v3, :cond_a

    .line 115
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/ShortestPathFinder;->visitArrayInstance(Lcom/squareup/leakcanary/LeakNode;)V

    goto/16 :goto_1

    .line 117
    :cond_a
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected type for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
