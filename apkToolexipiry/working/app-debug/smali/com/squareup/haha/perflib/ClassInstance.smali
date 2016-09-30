.class public Lcom/squareup/haha/perflib/ClassInstance;
.super Lcom/squareup/haha/perflib/Instance;
.source "ClassInstance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/haha/perflib/ClassInstance$FieldValue;
    }
.end annotation


# instance fields
.field private final mValuesOffset:J


# direct methods
.method public constructor <init>(JLcom/squareup/haha/perflib/StackTrace;J)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "stack"    # Lcom/squareup/haha/perflib/StackTrace;
    .param p4, "valuesOffset"    # J

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/haha/perflib/Instance;-><init>(JLcom/squareup/haha/perflib/StackTrace;)V

    .line 32
    iput-wide p4, p0, Lcom/squareup/haha/perflib/ClassInstance;->mValuesOffset:J

    .line 33
    return-void
.end method


# virtual methods
.method public final accept(Lcom/squareup/haha/perflib/Visitor;)V
    .locals 4
    .param p1, "visitor"    # Lcom/squareup/haha/perflib/Visitor;

    .prologue
    .line 64
    invoke-interface {p1, p0}, Lcom/squareup/haha/perflib/Visitor;->visitClassInstance(Lcom/squareup/haha/perflib/ClassInstance;)V

    .line 65
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassInstance;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;

    .line 66
    .local v0, "field":Lcom/squareup/haha/perflib/ClassInstance$FieldValue;
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/squareup/haha/perflib/Instance;

    if-eqz v2, :cond_0

    .line 67
    iget-boolean v2, p0, Lcom/squareup/haha/perflib/ClassInstance;->mReferencesAdded:Z

    if-nez v2, :cond_1

    .line 68
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/haha/perflib/Instance;

    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;->getField()Lcom/squareup/haha/perflib/Field;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/squareup/haha/perflib/Instance;->addReference(Lcom/squareup/haha/perflib/Field;Lcom/squareup/haha/perflib/Instance;)V

    .line 70
    :cond_1
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/haha/perflib/Instance;

    invoke-interface {p1, p0, v2}, Lcom/squareup/haha/perflib/Visitor;->visitLater(Lcom/squareup/haha/perflib/Instance;Lcom/squareup/haha/perflib/Instance;)V

    goto :goto_0

    .line 73
    .end local v0    # "field":Lcom/squareup/haha/perflib/ClassInstance$FieldValue;
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/squareup/haha/perflib/ClassInstance;->mReferencesAdded:Z

    .line 74
    return-void
.end method

.method getFields(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/haha/perflib/ClassInstance$FieldValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/squareup/haha/perflib/ClassInstance$FieldValue;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassInstance;->getValues()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;

    .line 40
    .local v2, "value":Lcom/squareup/haha/perflib/ClassInstance$FieldValue;
    invoke-virtual {v2}, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;->getField()Lcom/squareup/haha/perflib/Field;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/haha/perflib/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    .end local v2    # "value":Lcom/squareup/haha/perflib/ClassInstance$FieldValue;
    :cond_1
    return-object v1
.end method

.method public getIsSoftReference()Z
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassInstance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ClassObj;->getIsSoftReference()Z

    move-result v0

    return v0
.end method

.method public getValues()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/haha/perflib/ClassInstance$FieldValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/squareup/haha/perflib/ClassInstance$FieldValue;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassInstance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v1

    .line 52
    .local v1, "clazz":Lcom/squareup/haha/perflib/ClassObj;
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassInstance;->getBuffer()Lcom/squareup/haha/perflib/io/HprofBuffer;

    move-result-object v6

    iget-wide v8, p0, Lcom/squareup/haha/perflib/ClassInstance;->mValuesOffset:J

    invoke-interface {v6, v8, v9}, Lcom/squareup/haha/perflib/io/HprofBuffer;->setPosition(J)V

    .line 53
    :goto_0
    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {v1}, Lcom/squareup/haha/perflib/ClassObj;->getFields()[Lcom/squareup/haha/perflib/Field;

    move-result-object v0

    .local v0, "arr$":[Lcom/squareup/haha/perflib/Field;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 55
    .local v2, "field":Lcom/squareup/haha/perflib/Field;
    new-instance v6, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;

    invoke-virtual {v2}, Lcom/squareup/haha/perflib/Field;->getType()Lcom/squareup/haha/perflib/Type;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/squareup/haha/perflib/ClassInstance;->readValue(Lcom/squareup/haha/perflib/Type;)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;-><init>(Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 57
    .end local v2    # "field":Lcom/squareup/haha/perflib/Field;
    :cond_0
    invoke-virtual {v1}, Lcom/squareup/haha/perflib/ClassObj;->getSuperClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v1

    goto :goto_0

    .line 59
    .end local v0    # "arr$":[Lcom/squareup/haha/perflib/Field;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    return-object v5
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 82
    const-string v0, "%s@%d (0x%x)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassInstance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassInstance;->getUniqueId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ClassInstance;->getUniqueId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
