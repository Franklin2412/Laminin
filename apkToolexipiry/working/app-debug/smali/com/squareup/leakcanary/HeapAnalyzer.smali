.class public final Lcom/squareup/leakcanary/HeapAnalyzer;
.super Ljava/lang/Object;
.source "HeapAnalyzer.java"


# static fields
.field private static final ANONYMOUS_CLASS_NAME_PATTERN:Ljava/lang/String; = "^.+\\$\\d+$"


# instance fields
.field private final excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;


# direct methods
.method public constructor <init>(Lcom/squareup/leakcanary/ExcludedRefs;)V
    .locals 0
    .param p1, "excludedRefs"    # Lcom/squareup/leakcanary/ExcludedRefs;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/squareup/leakcanary/HeapAnalyzer;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    .line 64
    return-void
.end method

.method private buildLeakElement(Lcom/squareup/leakcanary/LeakNode;)Lcom/squareup/leakcanary/LeakTraceElement;
    .locals 24
    .param p1, "node"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    .line 238
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/squareup/leakcanary/LeakNode;->parent:Lcom/squareup/leakcanary/LeakNode;

    if-nez v1, :cond_0

    .line 240
    const/4 v1, 0x0

    .line 315
    :goto_0
    return-object v1

    .line 242
    :cond_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/squareup/leakcanary/LeakNode;->parent:Lcom/squareup/leakcanary/LeakNode;

    iget-object v15, v1, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    .line 244
    .local v15, "holder":Lcom/squareup/haha/perflib/Instance;
    instance-of v1, v15, Lcom/squareup/haha/perflib/RootObj;

    if-eqz v1, :cond_1

    .line 245
    const/4 v1, 0x0

    goto :goto_0

    .line 247
    :cond_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/squareup/leakcanary/LeakNode;->referenceType:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    .line 248
    .local v3, "type":Lcom/squareup/leakcanary/LeakTraceElement$Type;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/squareup/leakcanary/LeakNode;->referenceName:Ljava/lang/String;

    .line 252
    .local v2, "referenceName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 253
    .local v6, "extra":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v8, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    instance-of v1, v15, Lcom/squareup/haha/perflib/ClassObj;

    if-eqz v1, :cond_2

    move-object v12, v15

    .line 255
    check-cast v12, Lcom/squareup/haha/perflib/ClassObj;

    .line 256
    .local v12, "classObj":Lcom/squareup/haha/perflib/ClassObj;
    sget-object v4, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->CLASS:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .line 257
    .local v4, "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    invoke-virtual {v12}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 258
    .local v5, "className":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/squareup/haha/perflib/ClassObj;->getStaticFieldValues()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 259
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/squareup/haha/perflib/Field;

    .line 260
    .local v14, "field":Lcom/squareup/haha/perflib/Field;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    .line 261
    .local v22, "value":Ljava/lang/Object;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "static "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14}, Lcom/squareup/haha/perflib/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 263
    .end local v4    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    .end local v5    # "className":Ljava/lang/String;
    .end local v12    # "classObj":Lcom/squareup/haha/perflib/ClassObj;
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;>;"
    .end local v14    # "field":Lcom/squareup/haha/perflib/Field;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v22    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v1, v15, Lcom/squareup/haha/perflib/ArrayInstance;

    if-eqz v1, :cond_3

    move-object v10, v15

    .line 264
    check-cast v10, Lcom/squareup/haha/perflib/ArrayInstance;

    .line 265
    .local v10, "arrayInstance":Lcom/squareup/haha/perflib/ArrayInstance;
    sget-object v4, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->ARRAY:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .line 266
    .restart local v4    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    invoke-virtual {v10}, Lcom/squareup/haha/perflib/ArrayInstance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 267
    .restart local v5    # "className":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/squareup/haha/perflib/ArrayInstance;->getArrayType()Lcom/squareup/haha/perflib/Type;

    move-result-object v1

    sget-object v7, Lcom/squareup/haha/perflib/Type;->OBJECT:Lcom/squareup/haha/perflib/Type;

    if-ne v1, v7, :cond_6

    .line 268
    invoke-virtual {v10}, Lcom/squareup/haha/perflib/ArrayInstance;->getValues()[Ljava/lang/Object;

    move-result-object v23

    .line 269
    .local v23, "values":[Ljava/lang/Object;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    move-object/from16 v0, v23

    array-length v1, v0

    move/from16 v0, v16

    if-ge v0, v1, :cond_6

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "] = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v7, v23, v16

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .end local v4    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    .end local v5    # "className":Ljava/lang/String;
    .end local v10    # "arrayInstance":Lcom/squareup/haha/perflib/ArrayInstance;
    .end local v16    # "i":I
    .end local v23    # "values":[Ljava/lang/Object;
    :cond_3
    move-object v11, v15

    .line 274
    check-cast v11, Lcom/squareup/haha/perflib/ClassInstance;

    .line 275
    .local v11, "classInstance":Lcom/squareup/haha/perflib/ClassInstance;
    invoke-virtual {v15}, Lcom/squareup/haha/perflib/Instance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v12

    .line 276
    .restart local v12    # "classObj":Lcom/squareup/haha/perflib/ClassObj;
    invoke-virtual {v12}, Lcom/squareup/haha/perflib/ClassObj;->getStaticFieldValues()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 277
    .restart local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "static "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v13}, Lcom/squareup/leakcanary/HahaHelper;->fieldToString(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 279
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;>;"
    :cond_4
    invoke-virtual {v11}, Lcom/squareup/haha/perflib/ClassInstance;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;

    .line 280
    .local v14, "field":Lcom/squareup/haha/perflib/ClassInstance$FieldValue;
    invoke-static {v14}, Lcom/squareup/leakcanary/HahaHelper;->fieldToString(Lcom/squareup/haha/perflib/ClassInstance$FieldValue;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 282
    .end local v14    # "field":Lcom/squareup/haha/perflib/ClassInstance$FieldValue;
    :cond_5
    invoke-virtual {v12}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 284
    .restart local v5    # "className":Ljava/lang/String;
    invoke-static {v12}, Lcom/squareup/leakcanary/HahaHelper;->extendsThread(Lcom/squareup/haha/perflib/ClassObj;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 285
    sget-object v4, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->THREAD:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .line 286
    .restart local v4    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    invoke-static {v15}, Lcom/squareup/leakcanary/HahaHelper;->threadName(Lcom/squareup/haha/perflib/Instance;)Ljava/lang/String;

    move-result-object v21

    .line 287
    .local v21, "threadName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(named \'"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "\')"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 315
    .end local v11    # "classInstance":Lcom/squareup/haha/perflib/ClassInstance;
    .end local v12    # "classObj":Lcom/squareup/haha/perflib/ClassObj;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v21    # "threadName":Ljava/lang/String;
    :cond_6
    :goto_5
    new-instance v1, Lcom/squareup/leakcanary/LeakTraceElement;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/squareup/leakcanary/LeakNode;->exclusion:Lcom/squareup/leakcanary/Exclusion;

    invoke-direct/range {v1 .. v8}, Lcom/squareup/leakcanary/LeakTraceElement;-><init>(Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;Lcom/squareup/leakcanary/LeakTraceElement$Holder;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/leakcanary/Exclusion;Ljava/util/List;)V

    goto/16 :goto_0

    .line 288
    .end local v4    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    .restart local v11    # "classInstance":Lcom/squareup/haha/perflib/ClassInstance;
    .restart local v12    # "classObj":Lcom/squareup/haha/perflib/ClassObj;
    .restart local v17    # "i$":Ljava/util/Iterator;
    :cond_7
    const-string v1, "^.+\\$\\d+$"

    invoke-virtual {v5, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 289
    invoke-virtual {v12}, Lcom/squareup/haha/perflib/ClassObj;->getSuperClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v20

    .line 290
    .local v20, "parentClassName":Ljava/lang/String;
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 291
    sget-object v4, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->OBJECT:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .line 296
    .restart local v4    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    :try_start_0
    invoke-virtual {v12}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 297
    .local v9, "actualClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v19

    .line 298
    .local v19, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v19

    array-length v1, v0

    if-lez v1, :cond_8

    .line 299
    const/4 v1, 0x0

    aget-object v18, v19, v1

    .line 300
    .local v18, "implementedInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(anonymous implementation of "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ")"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 301
    goto :goto_5

    .line 302
    .end local v18    # "implementedInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    const-string v6, "(anonymous subclass of java.lang.Object)"
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 307
    .end local v4    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    .end local v9    # "actualClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v19    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_9
    sget-object v4, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->OBJECT:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .line 309
    .restart local v4    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(anonymous subclass of "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ")"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 312
    .end local v4    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    .end local v20    # "parentClassName":Ljava/lang/String;
    :cond_a
    sget-object v4, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->OBJECT:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .restart local v4    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    goto :goto_5

    .line 304
    .restart local v20    # "parentClassName":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto/16 :goto_5
.end method

.method private buildLeakTrace(Lcom/squareup/leakcanary/LeakNode;)Lcom/squareup/leakcanary/LeakTrace;
    .locals 8
    .param p1, "leakingNode"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    const/4 v1, 0x0

    .line 224
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v7, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/leakcanary/LeakTraceElement;>;"
    new-instance v0, Lcom/squareup/leakcanary/LeakNode;

    move-object v2, v1

    move-object v3, p1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/squareup/leakcanary/LeakNode;-><init>(Lcom/squareup/leakcanary/Exclusion;Lcom/squareup/haha/perflib/Instance;Lcom/squareup/leakcanary/LeakNode;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    .line 227
    .local v0, "node":Lcom/squareup/leakcanary/LeakNode;
    :goto_0
    if-eqz v0, :cond_1

    .line 228
    invoke-direct {p0, v0}, Lcom/squareup/leakcanary/HeapAnalyzer;->buildLeakElement(Lcom/squareup/leakcanary/LeakNode;)Lcom/squareup/leakcanary/LeakTraceElement;

    move-result-object v6

    .line 229
    .local v6, "element":Lcom/squareup/leakcanary/LeakTraceElement;
    if-eqz v6, :cond_0

    .line 230
    const/4 v1, 0x0

    invoke-interface {v7, v1, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 232
    :cond_0
    iget-object v0, v0, Lcom/squareup/leakcanary/LeakNode;->parent:Lcom/squareup/leakcanary/LeakNode;

    .line 233
    goto :goto_0

    .line 234
    .end local v6    # "element":Lcom/squareup/leakcanary/LeakTraceElement;
    :cond_1
    new-instance v1, Lcom/squareup/leakcanary/LeakTrace;

    invoke-direct {v1, v7}, Lcom/squareup/leakcanary/LeakTrace;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private computeIgnoredBitmapRetainedSize(Lcom/squareup/haha/perflib/Snapshot;Lcom/squareup/haha/perflib/Instance;)I
    .locals 12
    .param p1, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;
    .param p2, "leakingInstance"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 179
    const/4 v2, 0x0

    .line 180
    .local v2, "bitmapRetainedSize":I
    const-string v9, "android.graphics.Bitmap"

    invoke-virtual {p1, v9}, Lcom/squareup/haha/perflib/Snapshot;->findClass(Ljava/lang/String;)Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v0

    .line 182
    .local v0, "bitmapClass":Lcom/squareup/haha/perflib/ClassObj;
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ClassObj;->getInstancesList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/haha/perflib/Instance;

    .line 183
    .local v1, "bitmapInstance":Lcom/squareup/haha/perflib/Instance;
    invoke-direct {p0, p2, v1}, Lcom/squareup/leakcanary/HeapAnalyzer;->isIgnoredDominator(Lcom/squareup/haha/perflib/Instance;Lcom/squareup/haha/perflib/Instance;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 184
    invoke-static {v1}, Lcom/squareup/leakcanary/HahaHelper;->classInstanceValues(Lcom/squareup/haha/perflib/Instance;)Ljava/util/List;

    move-result-object v9

    const-string v10, "mBuffer"

    invoke-static {v9, v10}, Lcom/squareup/leakcanary/HahaHelper;->fieldValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/squareup/haha/perflib/ArrayInstance;

    .line 186
    .local v8, "mBufferInstance":Lcom/squareup/haha/perflib/ArrayInstance;
    if-eqz v8, :cond_0

    .line 189
    invoke-virtual {v8}, Lcom/squareup/haha/perflib/ArrayInstance;->getTotalRetainedSize()J

    move-result-wide v6

    .line 190
    .local v6, "bufferSize":J
    invoke-virtual {v1}, Lcom/squareup/haha/perflib/Instance;->getTotalRetainedSize()J

    move-result-wide v4

    .line 193
    .local v4, "bitmapSize":J
    cmp-long v9, v4, v6

    if-gez v9, :cond_1

    .line 194
    add-long/2addr v4, v6

    .line 196
    :cond_1
    int-to-long v10, v2

    add-long/2addr v10, v4

    long-to-int v2, v10

    goto :goto_0

    .line 199
    .end local v1    # "bitmapInstance":Lcom/squareup/haha/perflib/Instance;
    .end local v4    # "bitmapSize":J
    .end local v6    # "bufferSize":J
    .end local v8    # "mBufferInstance":Lcom/squareup/haha/perflib/ArrayInstance;
    :cond_2
    return v2
.end method

.method private findLeakTrace(JLcom/squareup/haha/perflib/Snapshot;Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/leakcanary/AnalysisResult;
    .locals 11
    .param p1, "analysisStartNanoTime"    # J
    .param p3, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;
    .param p4, "leakingRef"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 144
    new-instance v8, Lcom/squareup/leakcanary/ShortestPathFinder;

    iget-object v1, p0, Lcom/squareup/leakcanary/HeapAnalyzer;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    invoke-direct {v8, v1}, Lcom/squareup/leakcanary/ShortestPathFinder;-><init>(Lcom/squareup/leakcanary/ExcludedRefs;)V

    .line 145
    .local v8, "pathFinder":Lcom/squareup/leakcanary/ShortestPathFinder;
    invoke-virtual {v8, p3, p4}, Lcom/squareup/leakcanary/ShortestPathFinder;->findPath(Lcom/squareup/haha/perflib/Snapshot;Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/leakcanary/ShortestPathFinder$Result;

    move-result-object v9

    .line 148
    .local v9, "result":Lcom/squareup/leakcanary/ShortestPathFinder$Result;
    iget-object v1, v9, Lcom/squareup/leakcanary/ShortestPathFinder$Result;->leakingNode:Lcom/squareup/leakcanary/LeakNode;

    if-nez v1, :cond_0

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/squareup/leakcanary/HeapAnalyzer;->since(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/squareup/leakcanary/AnalysisResult;->noLeak(J)Lcom/squareup/leakcanary/AnalysisResult;

    move-result-object v1

    .line 165
    :goto_0
    return-object v1

    .line 152
    :cond_0
    iget-object v1, v9, Lcom/squareup/leakcanary/ShortestPathFinder$Result;->leakingNode:Lcom/squareup/leakcanary/LeakNode;

    invoke-direct {p0, v1}, Lcom/squareup/leakcanary/HeapAnalyzer;->buildLeakTrace(Lcom/squareup/leakcanary/LeakNode;)Lcom/squareup/leakcanary/LeakTrace;

    move-result-object v3

    .line 154
    .local v3, "leakTrace":Lcom/squareup/leakcanary/LeakTrace;
    invoke-virtual {p4}, Lcom/squareup/haha/perflib/Instance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "className":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/squareup/haha/perflib/Snapshot;->computeDominators()V

    .line 159
    iget-object v1, v9, Lcom/squareup/leakcanary/ShortestPathFinder$Result;->leakingNode:Lcom/squareup/leakcanary/LeakNode;

    iget-object v0, v1, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    .line 161
    .local v0, "leakingInstance":Lcom/squareup/haha/perflib/Instance;
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/Instance;->getTotalRetainedSize()J

    move-result-wide v4

    .line 163
    .local v4, "retainedSize":J
    invoke-direct {p0, p3, v0}, Lcom/squareup/leakcanary/HeapAnalyzer;->computeIgnoredBitmapRetainedSize(Lcom/squareup/haha/perflib/Snapshot;Lcom/squareup/haha/perflib/Instance;)I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    .line 165
    iget-boolean v1, v9, Lcom/squareup/leakcanary/ShortestPathFinder$Result;->excludingKnownLeaks:Z

    invoke-direct {p0, p1, p2}, Lcom/squareup/leakcanary/HeapAnalyzer;->since(J)J

    move-result-wide v6

    invoke-static/range {v1 .. v7}, Lcom/squareup/leakcanary/AnalysisResult;->leakDetected(ZLjava/lang/String;Lcom/squareup/leakcanary/LeakTrace;JJ)Lcom/squareup/leakcanary/AnalysisResult;

    move-result-object v1

    goto :goto_0
.end method

.method private findLeakingReference(Ljava/lang/String;Lcom/squareup/haha/perflib/Snapshot;)Lcom/squareup/haha/perflib/Instance;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;

    .prologue
    .line 127
    const-class v6, Lcom/squareup/leakcanary/KeyedWeakReference;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/squareup/haha/perflib/Snapshot;->findClass(Ljava/lang/String;)Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v4

    .line 128
    .local v4, "refClass":Lcom/squareup/haha/perflib/ClassObj;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v3, "keysFound":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v4}, Lcom/squareup/haha/perflib/ClassObj;->getInstancesList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/haha/perflib/Instance;

    .line 130
    .local v1, "instance":Lcom/squareup/haha/perflib/Instance;
    invoke-static {v1}, Lcom/squareup/leakcanary/HahaHelper;->classInstanceValues(Lcom/squareup/haha/perflib/Instance;)Ljava/util/List;

    move-result-object v5

    .line 131
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/haha/perflib/ClassInstance$FieldValue;>;"
    const-string v6, "key"

    invoke-static {v5, v6}, Lcom/squareup/leakcanary/HahaHelper;->fieldValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/squareup/leakcanary/HahaHelper;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "keyCandidate":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 133
    const-string v6, "referent"

    invoke-static {v5, v6}, Lcom/squareup/leakcanary/HahaHelper;->fieldValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/haha/perflib/Instance;

    return-object v6

    .line 135
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    .end local v1    # "instance":Lcom/squareup/haha/perflib/Instance;
    .end local v2    # "keyCandidate":Ljava/lang/String;
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/haha/perflib/ClassInstance$FieldValue;>;"
    :cond_1
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find weak reference with key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private generateRootKey(Lcom/squareup/haha/perflib/RootObj;)Ljava/lang/String;
    .locals 6
    .param p1, "root"    # Lcom/squareup/haha/perflib/RootObj;

    .prologue
    .line 123
    const-string v0, "%s@0x%08x"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/squareup/haha/perflib/RootObj;->getRootType()Lcom/squareup/haha/perflib/RootType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/haha/perflib/RootType;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/squareup/haha/perflib/RootObj;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isIgnoredDominator(Lcom/squareup/haha/perflib/Instance;Lcom/squareup/haha/perflib/Instance;)Z
    .locals 4
    .param p1, "dominator"    # Lcom/squareup/haha/perflib/Instance;
    .param p2, "instance"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 205
    .local v0, "foundNativeRoot":Z
    :cond_0
    invoke-virtual {p2}, Lcom/squareup/haha/perflib/Instance;->getImmediateDominator()Lcom/squareup/haha/perflib/Instance;

    move-result-object v1

    .line 206
    .local v1, "immediateDominator":Lcom/squareup/haha/perflib/Instance;
    instance-of v2, v1, Lcom/squareup/haha/perflib/RootObj;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/squareup/haha/perflib/RootObj;

    invoke-virtual {v2}, Lcom/squareup/haha/perflib/RootObj;->getRootType()Lcom/squareup/haha/perflib/RootType;

    move-result-object v2

    sget-object v3, Lcom/squareup/haha/perflib/RootType;->UNKNOWN:Lcom/squareup/haha/perflib/RootType;

    if-ne v2, v3, :cond_1

    .line 209
    invoke-virtual {p2}, Lcom/squareup/haha/perflib/Instance;->getNextInstanceToGcRoot()Lcom/squareup/haha/perflib/Instance;

    move-result-object p2

    .line 210
    const/4 v0, 0x1

    .line 214
    :goto_0
    if-nez p2, :cond_2

    .line 215
    const/4 v0, 0x0

    .line 218
    .end local v0    # "foundNativeRoot":Z
    :goto_1
    return v0

    .line 212
    .restart local v0    # "foundNativeRoot":Z
    :cond_1
    move-object p2, v1

    goto :goto_0

    .line 217
    :cond_2
    if-ne p2, p1, :cond_0

    goto :goto_1
.end method

.method private since(J)J
    .locals 5
    .param p1, "analysisStartNanoTime"    # J

    .prologue
    .line 320
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public checkForLeak(Ljava/io/File;Ljava/lang/String;)Lcom/squareup/leakcanary/AnalysisResult;
    .locals 10
    .param p1, "heapDumpFile"    # Ljava/io/File;
    .param p2, "referenceKey"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 73
    .local v0, "analysisStartNanoTime":J
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 74
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File does not exist: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .local v4, "exception":Ljava/lang/Exception;
    invoke-direct {p0, v0, v1}, Lcom/squareup/leakcanary/HeapAnalyzer;->since(J)J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcom/squareup/leakcanary/AnalysisResult;->failure(Ljava/lang/Throwable;J)Lcom/squareup/leakcanary/AnalysisResult;

    move-result-object v8

    .line 93
    .end local v4    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v8

    .line 79
    :cond_0
    :try_start_0
    new-instance v2, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;

    invoke-direct {v2, p1}, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;-><init>(Ljava/io/File;)V

    .line 80
    .local v2, "buffer":Lcom/squareup/haha/perflib/io/HprofBuffer;
    new-instance v6, Lcom/squareup/haha/perflib/HprofParser;

    invoke-direct {v6, v2}, Lcom/squareup/haha/perflib/HprofParser;-><init>(Lcom/squareup/haha/perflib/io/HprofBuffer;)V

    .line 81
    .local v6, "parser":Lcom/squareup/haha/perflib/HprofParser;
    invoke-virtual {v6}, Lcom/squareup/haha/perflib/HprofParser;->parse()Lcom/squareup/haha/perflib/Snapshot;

    move-result-object v7

    .line 82
    .local v7, "snapshot":Lcom/squareup/haha/perflib/Snapshot;
    invoke-virtual {p0, v7}, Lcom/squareup/leakcanary/HeapAnalyzer;->deduplicateGcRoots(Lcom/squareup/haha/perflib/Snapshot;)V

    .line 84
    invoke-direct {p0, p2, v7}, Lcom/squareup/leakcanary/HeapAnalyzer;->findLeakingReference(Ljava/lang/String;Lcom/squareup/haha/perflib/Snapshot;)Lcom/squareup/haha/perflib/Instance;

    move-result-object v5

    .line 87
    .local v5, "leakingRef":Lcom/squareup/haha/perflib/Instance;
    if-nez v5, :cond_1

    .line 88
    invoke-direct {p0, v0, v1}, Lcom/squareup/leakcanary/HeapAnalyzer;->since(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/squareup/leakcanary/AnalysisResult;->noLeak(J)Lcom/squareup/leakcanary/AnalysisResult;

    move-result-object v8

    goto :goto_0

    .line 91
    :cond_1
    invoke-direct {p0, v0, v1, v7, v5}, Lcom/squareup/leakcanary/HeapAnalyzer;->findLeakTrace(JLcom/squareup/haha/perflib/Snapshot;Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/leakcanary/AnalysisResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 92
    .end local v2    # "buffer":Lcom/squareup/haha/perflib/io/HprofBuffer;
    .end local v5    # "leakingRef":Lcom/squareup/haha/perflib/Instance;
    .end local v6    # "parser":Lcom/squareup/haha/perflib/HprofParser;
    .end local v7    # "snapshot":Lcom/squareup/haha/perflib/Snapshot;
    :catch_0
    move-exception v3

    .line 93
    .local v3, "e":Ljava/lang/Throwable;
    invoke-direct {p0, v0, v1}, Lcom/squareup/leakcanary/HeapAnalyzer;->since(J)J

    move-result-wide v8

    invoke-static {v3, v8, v9}, Lcom/squareup/leakcanary/AnalysisResult;->failure(Ljava/lang/Throwable;J)Lcom/squareup/leakcanary/AnalysisResult;

    move-result-object v8

    goto :goto_0
.end method

.method deduplicateGcRoots(Lcom/squareup/haha/perflib/Snapshot;)V
    .locals 6
    .param p1, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;

    .prologue
    .line 102
    new-instance v4, Lcom/squareup/haha/trove/THashMap;

    invoke-direct {v4}, Lcom/squareup/haha/trove/THashMap;-><init>()V

    .line 104
    .local v4, "uniqueRootMap":Lcom/squareup/haha/trove/THashMap;, "Lcom/squareup/haha/trove/THashMap<Ljava/lang/String;Lcom/squareup/haha/perflib/RootObj;>;"
    invoke-virtual {p1}, Lcom/squareup/haha/perflib/Snapshot;->getGCRoots()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 105
    .local v0, "gcRoots":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/haha/perflib/RootObj;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/haha/perflib/RootObj;

    .line 106
    .local v3, "root":Lcom/squareup/haha/perflib/RootObj;
    invoke-direct {p0, v3}, Lcom/squareup/leakcanary/HeapAnalyzer;->generateRootKey(Lcom/squareup/haha/perflib/RootObj;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v4, v2}, Lcom/squareup/haha/trove/THashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 108
    invoke-virtual {v4, v2, v3}, Lcom/squareup/haha/trove/THashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 113
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "root":Lcom/squareup/haha/perflib/RootObj;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    new-instance v5, Lcom/squareup/leakcanary/HeapAnalyzer$1;

    invoke-direct {v5, p0, v0, v4}, Lcom/squareup/leakcanary/HeapAnalyzer$1;-><init>(Lcom/squareup/leakcanary/HeapAnalyzer;Ljava/util/List;Lcom/squareup/haha/trove/THashMap;)V

    invoke-virtual {v4, v5}, Lcom/squareup/haha/trove/THashMap;->forEach(Lcom/squareup/haha/trove/TObjectProcedure;)Z

    .line 120
    return-void
.end method
