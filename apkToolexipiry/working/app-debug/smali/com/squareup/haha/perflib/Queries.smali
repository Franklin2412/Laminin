.class public Lcom/squareup/haha/perflib/Queries;
.super Ljava/lang/Object;
.source "Queries.java"


# static fields
.field private static final DEFAULT_PACKAGE:Ljava/lang/String; = "<default>"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allClasses(Lcom/squareup/haha/perflib/Snapshot;)Ljava/util/Map;
    .locals 1
    .param p0, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/perflib/Snapshot;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/squareup/haha/perflib/ClassObj;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/squareup/haha/perflib/Queries;->classes(Lcom/squareup/haha/perflib/Snapshot;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static allInstancesOf(Lcom/squareup/haha/perflib/Snapshot;Ljava/lang/String;)[Lcom/squareup/haha/perflib/Instance;
    .locals 9
    .param p0, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;
    .param p1, "baseClassName"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/squareup/haha/perflib/Snapshot;->findClass(Ljava/lang/String;)Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v5

    .line 174
    .local v5, "theClass":Lcom/squareup/haha/perflib/ClassObj;
    if-nez v5, :cond_0

    .line 175
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Class not found: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 178
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v0, "classList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/squareup/haha/perflib/ClassObj;>;"
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-static {v5}, Lcom/squareup/haha/perflib/Queries;->traverseSubclasses(Lcom/squareup/haha/perflib/ClassObj;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 183
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v2, "instanceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/squareup/haha/perflib/Instance;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/haha/perflib/ClassObj;

    .line 186
    .local v4, "someClass":Lcom/squareup/haha/perflib/ClassObj;
    invoke-virtual {v4}, Lcom/squareup/haha/perflib/ClassObj;->getInstancesList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 189
    .end local v4    # "someClass":Lcom/squareup/haha/perflib/ClassObj;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v3, v6, [Lcom/squareup/haha/perflib/Instance;

    .line 191
    .local v3, "result":[Lcom/squareup/haha/perflib/Instance;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 193
    return-object v3
.end method

.method public static classes(Lcom/squareup/haha/perflib/Snapshot;[Ljava/lang/String;)Ljava/util/Map;
    .locals 14
    .param p0, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;
    .param p1, "excludedPrefixes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/perflib/Snapshot;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/squareup/haha/perflib/ClassObj;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v10, Ljava/util/TreeMap;

    invoke-direct {v10}, Ljava/util/TreeMap;-><init>()V

    .line 73
    .local v10, "result":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/Set<Lcom/squareup/haha/perflib/ClassObj;>;>;"
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 76
    .local v3, "classes":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/haha/perflib/ClassObj;>;"
    iget-object v12, p0, Lcom/squareup/haha/perflib/Snapshot;->mHeaps:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/haha/perflib/Heap;

    .line 77
    .local v4, "heap":Lcom/squareup/haha/perflib/Heap;
    invoke-virtual {v4}, Lcom/squareup/haha/perflib/Heap;->getClasses()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 81
    .end local v4    # "heap":Lcom/squareup/haha/perflib/Heap;
    :cond_0
    if-eqz p1, :cond_3

    .line 82
    array-length v0, p1

    .line 83
    .local v0, "N":I
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 85
    .local v7, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/haha/perflib/ClassObj;>;"
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 86
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/squareup/haha/perflib/ClassObj;

    .line 87
    .local v11, "theClass":Lcom/squareup/haha/perflib/ClassObj;
    invoke-virtual {v11}, Lcom/squareup/haha/perflib/ClassObj;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "classPath":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v0, :cond_1

    .line 90
    aget-object v12, p1, v5

    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 91
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 89
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 99
    .end local v0    # "N":I
    .end local v1    # "classPath":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v7    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/haha/perflib/ClassObj;>;"
    .end local v11    # "theClass":Lcom/squareup/haha/perflib/ClassObj;
    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/squareup/haha/perflib/ClassObj;

    .line 100
    .restart local v11    # "theClass":Lcom/squareup/haha/perflib/ClassObj;
    const-string v9, "<default>"

    .line 101
    .local v9, "packageName":Ljava/lang/String;
    iget-object v12, v11, Lcom/squareup/haha/perflib/ClassObj;->mClassName:Ljava/lang/String;

    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 103
    .local v8, "lastDot":I
    const/4 v12, -0x1

    if-eq v8, v12, :cond_4

    .line 104
    iget-object v12, v11, Lcom/squareup/haha/perflib/ClassObj;->mClassName:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 107
    :cond_4
    invoke-virtual {v10, v9}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 109
    .local v2, "classSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/haha/perflib/ClassObj;>;"
    if-nez v2, :cond_5

    .line 110
    new-instance v2, Ljava/util/TreeSet;

    .end local v2    # "classSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/haha/perflib/ClassObj;>;"
    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 111
    .restart local v2    # "classSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/haha/perflib/ClassObj;>;"
    invoke-virtual {v10, v9, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_5
    invoke-interface {v2, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 117
    .end local v2    # "classSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/haha/perflib/ClassObj;>;"
    .end local v8    # "lastDot":I
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v11    # "theClass":Lcom/squareup/haha/perflib/ClassObj;
    :cond_6
    return-object v10
.end method

.method public static commonClasses(Lcom/squareup/haha/perflib/Snapshot;Lcom/squareup/haha/perflib/Snapshot;)Ljava/util/Collection;
    .locals 6
    .param p0, "first"    # Lcom/squareup/haha/perflib/Snapshot;
    .param p1, "second"    # Lcom/squareup/haha/perflib/Snapshot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/perflib/Snapshot;",
            "Lcom/squareup/haha/perflib/Snapshot;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/squareup/haha/perflib/ClassObj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v0, "classes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/squareup/haha/perflib/ClassObj;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/Snapshot;->getHeaps()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/haha/perflib/Heap;

    .line 132
    .local v2, "heap":Lcom/squareup/haha/perflib/Heap;
    invoke-virtual {v2}, Lcom/squareup/haha/perflib/Heap;->getClasses()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/haha/perflib/ClassObj;

    .line 133
    .local v1, "clazz":Lcom/squareup/haha/perflib/ClassObj;
    invoke-virtual {v1}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/squareup/haha/perflib/Snapshot;->findClass(Ljava/lang/String;)Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 134
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    .end local v1    # "clazz":Lcom/squareup/haha/perflib/ClassObj;
    .end local v2    # "heap":Lcom/squareup/haha/perflib/Heap;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object v0
.end method

.method public static findClass(Lcom/squareup/haha/perflib/Snapshot;Ljava/lang/String;)Lcom/squareup/haha/perflib/ClassObj;
    .locals 1
    .param p0, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/squareup/haha/perflib/Snapshot;->findClass(Ljava/lang/String;)Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v0

    return-object v0
.end method

.method public static findObject(Lcom/squareup/haha/perflib/Snapshot;Ljava/lang/String;)Lcom/squareup/haha/perflib/Instance;
    .locals 3
    .param p0, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 213
    const/16 v2, 0x10

    invoke-static {p1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 215
    .local v0, "id2":J
    invoke-virtual {p0, v0, v1}, Lcom/squareup/haha/perflib/Snapshot;->findInstance(J)Lcom/squareup/haha/perflib/Instance;

    move-result-object v2

    return-object v2
.end method

.method public static getRoots(Lcom/squareup/haha/perflib/Snapshot;)Ljava/util/Collection;
    .locals 4
    .param p0, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/perflib/Snapshot;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/squareup/haha/perflib/RootObj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 222
    .local v2, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/squareup/haha/perflib/RootObj;>;"
    iget-object v3, p0, Lcom/squareup/haha/perflib/Snapshot;->mHeaps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/Heap;

    .line 223
    .local v0, "heap":Lcom/squareup/haha/perflib/Heap;
    iget-object v3, v0, Lcom/squareup/haha/perflib/Heap;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 226
    .end local v0    # "heap":Lcom/squareup/haha/perflib/Heap;
    :cond_0
    return-object v2
.end method

.method public static instancesOf(Lcom/squareup/haha/perflib/Snapshot;Ljava/lang/String;)[Lcom/squareup/haha/perflib/Instance;
    .locals 5
    .param p0, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;
    .param p1, "baseClassName"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/squareup/haha/perflib/Snapshot;->findClass(Ljava/lang/String;)Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v1

    .line 158
    .local v1, "theClass":Lcom/squareup/haha/perflib/ClassObj;
    if-nez v1, :cond_0

    .line 159
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Class not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 162
    :cond_0
    invoke-virtual {v1}, Lcom/squareup/haha/perflib/ClassObj;->getInstancesList()Ljava/util/List;

    move-result-object v0

    .line 163
    .local v0, "instances":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/haha/perflib/Instance;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/squareup/haha/perflib/Instance;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/squareup/haha/perflib/Instance;

    return-object v2
.end method

.method public static final newInstances(Lcom/squareup/haha/perflib/Snapshot;Lcom/squareup/haha/perflib/Snapshot;)[Lcom/squareup/haha/perflib/Instance;
    .locals 10
    .param p0, "older"    # Lcom/squareup/haha/perflib/Snapshot;
    .param p1, "newer"    # Lcom/squareup/haha/perflib/Snapshot;

    .prologue
    .line 231
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v7, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/squareup/haha/perflib/Instance;>;"
    iget-object v8, p1, Lcom/squareup/haha/perflib/Snapshot;->mHeaps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/haha/perflib/Heap;

    .line 234
    .local v3, "newHeap":Lcom/squareup/haha/perflib/Heap;
    invoke-virtual {v3}, Lcom/squareup/haha/perflib/Heap;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/squareup/haha/perflib/Snapshot;->getHeap(Ljava/lang/String;)Lcom/squareup/haha/perflib/Heap;

    move-result-object v4

    .line 236
    .local v4, "oldHeap":Lcom/squareup/haha/perflib/Heap;
    if-eqz v4, :cond_0

    .line 240
    invoke-virtual {v3}, Lcom/squareup/haha/perflib/Heap;->getInstances()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/haha/perflib/Instance;

    .line 241
    .local v2, "instance":Lcom/squareup/haha/perflib/Instance;
    iget-wide v8, v2, Lcom/squareup/haha/perflib/Instance;->mId:J

    invoke-virtual {v4, v8, v9}, Lcom/squareup/haha/perflib/Heap;->getInstance(J)Lcom/squareup/haha/perflib/Instance;

    move-result-object v5

    .line 249
    .local v5, "oldInstance":Lcom/squareup/haha/perflib/Instance;
    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/squareup/haha/perflib/Instance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v8

    invoke-virtual {v5}, Lcom/squareup/haha/perflib/Instance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v9

    if-eq v8, v9, :cond_1

    .line 250
    :cond_2
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "instance":Lcom/squareup/haha/perflib/Instance;
    .end local v3    # "newHeap":Lcom/squareup/haha/perflib/Heap;
    .end local v4    # "oldHeap":Lcom/squareup/haha/perflib/Heap;
    .end local v5    # "oldInstance":Lcom/squareup/haha/perflib/Instance;
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v6, v8, [Lcom/squareup/haha/perflib/Instance;

    .line 257
    .local v6, "resultArray":[Lcom/squareup/haha/perflib/Instance;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/squareup/haha/perflib/Instance;

    return-object v8
.end method

.method private static traverseSubclasses(Lcom/squareup/haha/perflib/ClassObj;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "base"    # Lcom/squareup/haha/perflib/ClassObj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/perflib/ClassObj;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/squareup/haha/perflib/ClassObj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/squareup/haha/perflib/ClassObj;>;"
    iget-object v3, p0, Lcom/squareup/haha/perflib/ClassObj;->mSubclasses:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/haha/perflib/ClassObj;

    .line 201
    .local v2, "subclass":Lcom/squareup/haha/perflib/ClassObj;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-static {v2}, Lcom/squareup/haha/perflib/Queries;->traverseSubclasses(Lcom/squareup/haha/perflib/ClassObj;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 205
    .end local v2    # "subclass":Lcom/squareup/haha/perflib/ClassObj;
    :cond_0
    return-object v1
.end method
