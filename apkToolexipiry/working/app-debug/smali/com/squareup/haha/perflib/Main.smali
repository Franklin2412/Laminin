.class public Lcom/squareup/haha/perflib/Main;
.super Ljava/lang/Object;
.source "Main.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 12
    .param p0, "argv"    # [Ljava/lang/String;

    .prologue
    .line 30
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 31
    .local v4, "start":J
    new-instance v0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;

    new-instance v3, Ljava/io/File;

    const/4 v6, 0x0

    aget-object v6, p0, v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;-><init>(Ljava/io/File;)V

    .line 32
    .local v0, "buffer":Lcom/squareup/haha/perflib/io/HprofBuffer;
    new-instance v3, Lcom/squareup/haha/perflib/HprofParser;

    invoke-direct {v3, v0}, Lcom/squareup/haha/perflib/HprofParser;-><init>(Lcom/squareup/haha/perflib/io/HprofBuffer;)V

    invoke-virtual {v3}, Lcom/squareup/haha/perflib/HprofParser;->parse()Lcom/squareup/haha/perflib/Snapshot;

    move-result-object v2

    .line 34
    .local v2, "snapshot":Lcom/squareup/haha/perflib/Snapshot;
    invoke-static {v2}, Lcom/squareup/haha/perflib/Main;->testClassesQuery(Lcom/squareup/haha/perflib/Snapshot;)V

    .line 35
    invoke-static {v2}, Lcom/squareup/haha/perflib/Main;->testAllClassesQuery(Lcom/squareup/haha/perflib/Snapshot;)V

    .line 36
    invoke-static {v2}, Lcom/squareup/haha/perflib/Main;->testFindInstancesOf(Lcom/squareup/haha/perflib/Snapshot;)V

    .line 37
    invoke-static {v2}, Lcom/squareup/haha/perflib/Main;->testFindAllInstancesOf(Lcom/squareup/haha/perflib/Snapshot;)V

    .line 39
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Memory stats: free="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / total="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Time: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0    # "buffer":Lcom/squareup/haha/perflib/io/HprofBuffer;
    .end local v2    # "snapshot":Lcom/squareup/haha/perflib/Snapshot;
    .end local v4    # "start":J
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static testAllClassesQuery(Lcom/squareup/haha/perflib/Snapshot;)V
    .locals 9
    .param p0, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;

    .prologue
    .line 68
    invoke-static {p0}, Lcom/squareup/haha/perflib/Queries;->allClasses(Lcom/squareup/haha/perflib/Snapshot;)Ljava/util/Map;

    move-result-object v0

    .line 70
    .local v0, "allClasses":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lcom/squareup/haha/perflib/ClassObj;>;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 71
    .local v5, "thePackage":Ljava/lang/String;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "------------------- "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 75
    .local v1, "classes":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/haha/perflib/ClassObj;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/haha/perflib/ClassObj;

    .line 76
    .local v4, "theClass":Lcom/squareup/haha/perflib/ClassObj;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "     "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v4, Lcom/squareup/haha/perflib/ClassObj;->mClassName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v1    # "classes":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/haha/perflib/ClassObj;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "theClass":Lcom/squareup/haha/perflib/ClassObj;
    .end local v5    # "thePackage":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static testClassesQuery(Lcom/squareup/haha/perflib/Snapshot;)V
    .locals 10
    .param p0, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;

    .prologue
    .line 48
    const/4 v7, 0x3

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "char["

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "javax."

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "org.xml.sax"

    aput-object v8, v6, v7

    .line 54
    .local v6, "x":[Ljava/lang/String;
    invoke-static {p0, v6}, Lcom/squareup/haha/perflib/Queries;->classes(Lcom/squareup/haha/perflib/Snapshot;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 56
    .local v3, "someClasses":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Lcom/squareup/haha/perflib/ClassObj;>;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 57
    .local v5, "thePackage":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "------------------- "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 61
    .local v0, "classes":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/haha/perflib/ClassObj;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/haha/perflib/ClassObj;

    .line 62
    .local v4, "theClass":Lcom/squareup/haha/perflib/ClassObj;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "     "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v4, Lcom/squareup/haha/perflib/ClassObj;->mClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    .end local v0    # "classes":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/haha/perflib/ClassObj;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "theClass":Lcom/squareup/haha/perflib/ClassObj;
    .end local v5    # "thePackage":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static testFindAllInstancesOf(Lcom/squareup/haha/perflib/Snapshot;)V
    .locals 4
    .param p0, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;

    .prologue
    .line 88
    const-string v1, "android.graphics.drawable.Drawable"

    invoke-static {p0, v1}, Lcom/squareup/haha/perflib/Queries;->allInstancesOf(Lcom/squareup/haha/perflib/Snapshot;Ljava/lang/String;)[Lcom/squareup/haha/perflib/Instance;

    move-result-object v0

    .line 91
    .local v0, "instances":[Lcom/squareup/haha/perflib/Instance;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "There are "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instances of Drawables and its subclasses."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method private static testFindInstancesOf(Lcom/squareup/haha/perflib/Snapshot;)V
    .locals 4
    .param p0, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;

    .prologue
    .line 82
    const-string v1, "java.lang.String"

    invoke-static {p0, v1}, Lcom/squareup/haha/perflib/Queries;->instancesOf(Lcom/squareup/haha/perflib/Snapshot;Ljava/lang/String;)[Lcom/squareup/haha/perflib/Instance;

    move-result-object v0

    .line 84
    .local v0, "instances":[Lcom/squareup/haha/perflib/Instance;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "There are "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Strings."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    return-void
.end method
