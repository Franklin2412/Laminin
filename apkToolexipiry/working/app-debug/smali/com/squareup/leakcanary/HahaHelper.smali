.class public final Lcom/squareup/leakcanary/HahaHelper;
.super Ljava/lang/Object;
.source "HahaHelper.java"


# static fields
.field private static final WRAPPER_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/squareup/leakcanary/HahaHelper;->WRAPPER_TYPES:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static asString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 15
    .param p0, "stringObject"    # Ljava/lang/Object;

    .prologue
    const/4 v14, 0x0

    .line 72
    move-object v5, p0

    check-cast v5, Lcom/squareup/haha/perflib/Instance;

    .line 73
    .local v5, "instance":Lcom/squareup/haha/perflib/Instance;
    invoke-static {v5}, Lcom/squareup/leakcanary/HahaHelper;->classInstanceValues(Lcom/squareup/haha/perflib/Instance;)Ljava/util/List;

    move-result-object v8

    .line 75
    .local v8, "values":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/haha/perflib/ClassInstance$FieldValue;>;"
    const-string v9, "count"

    invoke-static {v8, v9}, Lcom/squareup/leakcanary/HahaHelper;->fieldValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 76
    .local v2, "count":Ljava/lang/Integer;
    const-string v9, "value"

    invoke-static {v8, v9}, Lcom/squareup/leakcanary/HahaHelper;->fieldValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 79
    .local v7, "value":Ljava/lang/Object;
    invoke-static {v7}, Lcom/squareup/leakcanary/HahaHelper;->isCharArray(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v0, v7

    .line 80
    check-cast v0, Lcom/squareup/haha/perflib/ArrayInstance;

    .line 81
    .local v0, "charArray":Lcom/squareup/haha/perflib/ArrayInstance;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 86
    .local v6, "offset":Ljava/lang/Integer;
    const-string v9, "offset"

    invoke-static {v8, v9}, Lcom/squareup/leakcanary/HahaHelper;->hasField(Ljava/util/List;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 87
    const-string v9, "offset"

    invoke-static {v8, v9}, Lcom/squareup/leakcanary/HahaHelper;->fieldValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "offset":Ljava/lang/Integer;
    check-cast v6, Ljava/lang/Integer;

    .line 106
    .restart local v6    # "offset":Ljava/lang/Integer;
    :cond_0
    :goto_0
    const-string v9, "count"

    invoke-static {v2, v9}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    const-string v9, "charArray"

    invoke-static {v0, v9}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    const-string v9, "offset"

    invoke-static {v6, v9}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_3

    .line 111
    const-string v9, ""

    .line 116
    :goto_1
    return-object v9

    .line 97
    .end local v0    # "charArray":Lcom/squareup/haha/perflib/ArrayInstance;
    .end local v6    # "offset":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v5}, Lcom/squareup/haha/perflib/Instance;->getHeap()Lcom/squareup/haha/perflib/Heap;

    move-result-object v3

    .line 98
    .local v3, "heap":Lcom/squareup/haha/perflib/Heap;
    invoke-virtual {v5}, Lcom/squareup/haha/perflib/Instance;->getId()J

    move-result-wide v10

    const-wide/16 v12, 0x10

    add-long/2addr v10, v12

    invoke-virtual {v3, v10, v11}, Lcom/squareup/haha/perflib/Heap;->getInstance(J)Lcom/squareup/haha/perflib/Instance;

    move-result-object v4

    .line 99
    .local v4, "inlineInstance":Lcom/squareup/haha/perflib/Instance;
    invoke-static {v4}, Lcom/squareup/leakcanary/HahaHelper;->isCharArray(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v0, v4

    .line 100
    check-cast v0, Lcom/squareup/haha/perflib/ArrayInstance;

    .line 101
    .restart local v0    # "charArray":Lcom/squareup/haha/perflib/ArrayInstance;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .restart local v6    # "offset":Ljava/lang/Integer;
    goto :goto_0

    .line 103
    .end local v0    # "charArray":Lcom/squareup/haha/perflib/ArrayInstance;
    .end local v6    # "offset":Ljava/lang/Integer;
    :cond_2
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not find char array in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 114
    .end local v3    # "heap":Lcom/squareup/haha/perflib/Heap;
    .end local v4    # "inlineInstance":Lcom/squareup/haha/perflib/Instance;
    .restart local v0    # "charArray":Lcom/squareup/haha/perflib/ArrayInstance;
    .restart local v6    # "offset":Ljava/lang/Integer;
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Lcom/squareup/haha/perflib/ArrayInstance;->asCharArray(II)[C

    move-result-object v1

    .line 116
    .local v1, "chars":[C
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_1
.end method

.method static classInstanceValues(Lcom/squareup/haha/perflib/Instance;)Ljava/util/List;
    .locals 2
    .param p0, "instance"    # Lcom/squareup/haha/perflib/Instance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/perflib/Instance;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/haha/perflib/ClassInstance$FieldValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    check-cast v0, Lcom/squareup/haha/perflib/ClassInstance;

    .line 143
    .local v0, "classInstance":Lcom/squareup/haha/perflib/ClassInstance;
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ClassInstance;->getValues()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static extendsThread(Lcom/squareup/haha/perflib/ClassObj;)Z
    .locals 4
    .param p0, "clazz"    # Lcom/squareup/haha/perflib/ClassObj;

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "extendsThread":Z
    move-object v1, p0

    .line 61
    .local v1, "parentClass":Lcom/squareup/haha/perflib/ClassObj;
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/haha/perflib/ClassObj;->getSuperClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    const/4 v0, 0x1

    .line 68
    :cond_0
    return v0

    .line 66
    :cond_1
    invoke-virtual {v1}, Lcom/squareup/haha/perflib/ClassObj;->getSuperClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v1

    goto :goto_0
.end method

.method static fieldToString(Lcom/squareup/haha/perflib/ClassInstance$FieldValue;)Ljava/lang/String;
    .locals 2
    .param p0, "fieldValue"    # Lcom/squareup/haha/perflib/ClassInstance$FieldValue;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;->getField()Lcom/squareup/haha/perflib/Field;

    move-result-object v0

    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/squareup/leakcanary/HahaHelper;->fieldToString(Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static fieldToString(Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "field"    # Lcom/squareup/haha/perflib/Field;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/squareup/haha/perflib/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static fieldToString(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/squareup/haha/perflib/Field;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/Field;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/squareup/leakcanary/HahaHelper;->fieldToString(Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static fieldValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/haha/perflib/ClassInstance$FieldValue;",
            ">;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/haha/perflib/ClassInstance$FieldValue;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;

    .line 148
    .local v0, "fieldValue":Lcom/squareup/haha/perflib/ClassInstance$FieldValue;
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;->getField()Lcom/squareup/haha/perflib/Field;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/haha/perflib/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 153
    .end local v0    # "fieldValue":Lcom/squareup/haha/perflib/ClassInstance$FieldValue;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static hasField(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/haha/perflib/ClassInstance$FieldValue;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/haha/perflib/ClassInstance$FieldValue;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;

    .line 158
    .local v0, "fieldValue":Lcom/squareup/haha/perflib/ClassInstance$FieldValue;
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;->getField()Lcom/squareup/haha/perflib/Field;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/haha/perflib/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    const/4 v2, 0x1

    .line 163
    .end local v0    # "fieldValue":Lcom/squareup/haha/perflib/ClassInstance$FieldValue;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isCharArray(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 138
    instance-of v0, p0, Lcom/squareup/haha/perflib/ArrayInstance;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/squareup/haha/perflib/ArrayInstance;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ArrayInstance;->getArrayType()Lcom/squareup/haha/perflib/Type;

    move-result-object v0

    sget-object v1, Lcom/squareup/haha/perflib/Type;->CHAR:Lcom/squareup/haha/perflib/Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPrimitiveOrWrapperArray(Ljava/lang/Object;)Z
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 127
    instance-of v1, p0, Lcom/squareup/haha/perflib/ArrayInstance;

    if-nez v1, :cond_0

    .line 128
    const/4 v1, 0x0

    .line 134
    :goto_0
    return v1

    :cond_0
    move-object v0, p0

    .line 130
    check-cast v0, Lcom/squareup/haha/perflib/ArrayInstance;

    .line 131
    .local v0, "arrayInstance":Lcom/squareup/haha/perflib/ArrayInstance;
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ArrayInstance;->getArrayType()Lcom/squareup/haha/perflib/Type;

    move-result-object v1

    sget-object v2, Lcom/squareup/haha/perflib/Type;->OBJECT:Lcom/squareup/haha/perflib/Type;

    if-eq v1, v2, :cond_1

    .line 132
    const/4 v1, 0x1

    goto :goto_0

    .line 134
    :cond_1
    sget-object v1, Lcom/squareup/leakcanary/HahaHelper;->WRAPPER_TYPES:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ArrayInstance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isPrimitiveWrapper(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 120
    instance-of v0, p0, Lcom/squareup/haha/perflib/ClassInstance;

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 123
    .end local p0    # "value":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    sget-object v0, Lcom/squareup/leakcanary/HahaHelper;->WRAPPER_TYPES:Ljava/util/Set;

    check-cast p0, Lcom/squareup/haha/perflib/ClassInstance;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassInstance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static threadName(Lcom/squareup/haha/perflib/Instance;)Ljava/lang/String;
    .locals 3
    .param p0, "holder"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/squareup/leakcanary/HahaHelper;->classInstanceValues(Lcom/squareup/haha/perflib/Instance;)Ljava/util/List;

    move-result-object v1

    .line 54
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/haha/perflib/ClassInstance$FieldValue;>;"
    const-string v2, "name"

    invoke-static {v1, v2}, Lcom/squareup/leakcanary/HahaHelper;->fieldValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    .local v0, "nameField":Ljava/lang/Object;
    invoke-static {v0}, Lcom/squareup/leakcanary/HahaHelper;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
