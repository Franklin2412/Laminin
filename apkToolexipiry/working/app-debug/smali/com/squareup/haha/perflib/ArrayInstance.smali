.class public Lcom/squareup/haha/perflib/ArrayInstance;
.super Lcom/squareup/haha/perflib/Instance;
.source "ArrayInstance.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mLength:I

.field private final mType:Lcom/squareup/haha/perflib/Type;

.field private final mValuesOffset:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/squareup/haha/perflib/ArrayInstance;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/squareup/haha/perflib/ArrayInstance;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(JLcom/squareup/haha/perflib/StackTrace;Lcom/squareup/haha/perflib/Type;IJ)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "stack"    # Lcom/squareup/haha/perflib/StackTrace;
    .param p4, "type"    # Lcom/squareup/haha/perflib/Type;
    .param p5, "length"    # I
    .param p6, "valuesOffset"    # J

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/haha/perflib/Instance;-><init>(JLcom/squareup/haha/perflib/StackTrace;)V

    .line 36
    iput-object p4, p0, Lcom/squareup/haha/perflib/ArrayInstance;->mType:Lcom/squareup/haha/perflib/Type;

    .line 37
    iput p5, p0, Lcom/squareup/haha/perflib/ArrayInstance;->mLength:I

    .line 38
    iput-wide p6, p0, Lcom/squareup/haha/perflib/ArrayInstance;->mValuesOffset:J

    .line 39
    return-void
.end method

.method private asRawByteArray(II)[B
    .locals 4
    .param p1, "start"    # I
    .param p2, "elementCount"    # I

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ArrayInstance;->getBuffer()Lcom/squareup/haha/perflib/io/HprofBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/squareup/haha/perflib/ArrayInstance;->mValuesOffset:J

    invoke-interface {v1, v2, v3}, Lcom/squareup/haha/perflib/io/HprofBuffer;->setPosition(J)V

    .line 55
    sget-boolean v1, Lcom/squareup/haha/perflib/ArrayInstance;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/squareup/haha/perflib/ArrayInstance;->mType:Lcom/squareup/haha/perflib/Type;

    sget-object v2, Lcom/squareup/haha/perflib/Type;->OBJECT:Lcom/squareup/haha/perflib/Type;

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 56
    :cond_0
    sget-boolean v1, Lcom/squareup/haha/perflib/ArrayInstance;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    add-int v1, p1, p2

    iget v2, p0, Lcom/squareup/haha/perflib/ArrayInstance;->mLength:I

    if-le v1, v2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/squareup/haha/perflib/ArrayInstance;->mType:Lcom/squareup/haha/perflib/Type;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/Type;->getSize()I

    move-result v1

    mul-int/2addr v1, p2

    new-array v0, v1, [B

    .line 58
    .local v0, "bytes":[B
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ArrayInstance;->getBuffer()Lcom/squareup/haha/perflib/io/HprofBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/haha/perflib/ArrayInstance;->mType:Lcom/squareup/haha/perflib/Type;

    invoke-virtual {v2}, Lcom/squareup/haha/perflib/Type;->getSize()I

    move-result v2

    mul-int/2addr v2, p1

    iget-object v3, p0, Lcom/squareup/haha/perflib/ArrayInstance;->mType:Lcom/squareup/haha/perflib/Type;

    invoke-virtual {v3}, Lcom/squareup/haha/perflib/Type;->getSize()I

    move-result v3

    mul-int/2addr v3, p2

    invoke-interface {v1, v0, v2, v3}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readSubSequence([BII)V

    .line 59
    return-object v0
.end method


# virtual methods
.method public final accept(Lcom/squareup/haha/perflib/Visitor;)V
    .locals 6
    .param p1, "visitor"    # Lcom/squareup/haha/perflib/Visitor;

    .prologue
    .line 80
    invoke-interface {p1, p0}, Lcom/squareup/haha/perflib/Visitor;->visitArrayInstance(Lcom/squareup/haha/perflib/ArrayInstance;)V

    .line 81
    iget-object v4, p0, Lcom/squareup/haha/perflib/ArrayInstance;->mType:Lcom/squareup/haha/perflib/Type;

    sget-object v5, Lcom/squareup/haha/perflib/Type;->OBJECT:Lcom/squareup/haha/perflib/Type;

    if-ne v4, v5, :cond_3

    .line 82
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ArrayInstance;->getValues()[Ljava/lang/Object;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 83
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lcom/squareup/haha/perflib/Instance;

    if-eqz v4, :cond_1

    .line 84
    iget-boolean v4, p0, Lcom/squareup/haha/perflib/ArrayInstance;->mReferencesAdded:Z

    if-nez v4, :cond_0

    move-object v4, v3

    .line 85
    check-cast v4, Lcom/squareup/haha/perflib/Instance;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p0}, Lcom/squareup/haha/perflib/Instance;->addReference(Lcom/squareup/haha/perflib/Field;Lcom/squareup/haha/perflib/Instance;)V

    .line 87
    :cond_0
    check-cast v3, Lcom/squareup/haha/perflib/Instance;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-interface {p1, p0, v3}, Lcom/squareup/haha/perflib/Visitor;->visitLater(Lcom/squareup/haha/perflib/Instance;Lcom/squareup/haha/perflib/Instance;)V

    .line 82
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/squareup/haha/perflib/ArrayInstance;->mReferencesAdded:Z

    .line 92
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_3
    return-void
.end method

.method public asCharArray(II)[C
    .locals 4
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 64
    sget-boolean v2, Lcom/squareup/haha/perflib/ArrayInstance;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/squareup/haha/perflib/ArrayInstance;->mType:Lcom/squareup/haha/perflib/Type;

    sget-object v3, Lcom/squareup/haha/perflib/Type;->CHAR:Lcom/squareup/haha/perflib/Type;

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 66
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/squareup/haha/perflib/ArrayInstance;->asRawByteArray(II)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Lcom/squareup/haha/perflib/io/HprofBuffer;->HPROF_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 67
    .local v0, "charBuffer":Ljava/nio/CharBuffer;
    new-array v1, p2, [C

    .line 68
    .local v1, "result":[C
    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 69
    return-object v1
.end method

.method public getArrayType()Lcom/squareup/haha/perflib/Type;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/squareup/haha/perflib/ArrayInstance;->mType:Lcom/squareup/haha/perflib/Type;

    return-object v0
.end method

.method public getClassObj()Lcom/squareup/haha/perflib/ClassObj;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/squareup/haha/perflib/ArrayInstance;->mType:Lcom/squareup/haha/perflib/Type;

    sget-object v1, Lcom/squareup/haha/perflib/Type;->OBJECT:Lcom/squareup/haha/perflib/Type;

    if-ne v0, v1, :cond_0

    .line 97
    invoke-super {p0}, Lcom/squareup/haha/perflib/Instance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/haha/perflib/ArrayInstance;->mHeap:Lcom/squareup/haha/perflib/Heap;

    iget-object v0, v0, Lcom/squareup/haha/perflib/Heap;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    iget-object v1, p0, Lcom/squareup/haha/perflib/ArrayInstance;->mType:Lcom/squareup/haha/perflib/Type;

    invoke-static {v1}, Lcom/squareup/haha/perflib/Type;->getClassNameOfPrimitiveArray(Lcom/squareup/haha/perflib/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/haha/perflib/Snapshot;->findClass(Ljava/lang/String;)Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v0

    goto :goto_0
.end method

.method public final getSize()I
    .locals 3

    .prologue
    .line 75
    iget v0, p0, Lcom/squareup/haha/perflib/ArrayInstance;->mLength:I

    iget-object v1, p0, Lcom/squareup/haha/perflib/ArrayInstance;->mHeap:Lcom/squareup/haha/perflib/Heap;

    iget-object v1, v1, Lcom/squareup/haha/perflib/Heap;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    iget-object v2, p0, Lcom/squareup/haha/perflib/ArrayInstance;->mType:Lcom/squareup/haha/perflib/Type;

    invoke-virtual {v1, v2}, Lcom/squareup/haha/perflib/Snapshot;->getTypeSize(Lcom/squareup/haha/perflib/Type;)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getValues()[Ljava/lang/Object;
    .locals 6

    .prologue
    .line 43
    iget v2, p0, Lcom/squareup/haha/perflib/ArrayInstance;->mLength:I

    new-array v1, v2, [Ljava/lang/Object;

    .line 45
    .local v1, "values":[Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ArrayInstance;->getBuffer()Lcom/squareup/haha/perflib/io/HprofBuffer;

    move-result-object v2

    iget-wide v4, p0, Lcom/squareup/haha/perflib/ArrayInstance;->mValuesOffset:J

    invoke-interface {v2, v4, v5}, Lcom/squareup/haha/perflib/io/HprofBuffer;->setPosition(J)V

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/squareup/haha/perflib/ArrayInstance;->mLength:I

    if-ge v0, v2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/squareup/haha/perflib/ArrayInstance;->mType:Lcom/squareup/haha/perflib/Type;

    invoke-virtual {p0, v2}, Lcom/squareup/haha/perflib/ArrayInstance;->readValue(Lcom/squareup/haha/perflib/Type;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ArrayInstance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "className":Ljava/lang/String;
    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_0
    const-string v1, "%s[%d]@%d (0x%x)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/squareup/haha/perflib/ArrayInstance;->mLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ArrayInstance;->getUniqueId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/squareup/haha/perflib/ArrayInstance;->getUniqueId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
