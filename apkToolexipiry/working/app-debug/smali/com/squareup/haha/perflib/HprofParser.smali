.class public Lcom/squareup/haha/perflib/HprofParser;
.super Ljava/lang/Object;
.source "HprofParser.java"


# static fields
.field private static final ALLOC_SITES:I = 0x6

.field private static final CONTROL_SETTINGS:I = 0xe

.field private static final CPU_SAMPLES:I = 0xd

.field private static final END_THREAD:I = 0xb

.field private static final HEAP_DUMP:I = 0xc

.field private static final HEAP_DUMP_END:I = 0x2c

.field private static final HEAP_DUMP_SEGMENT:I = 0x1c

.field private static final HEAP_SUMMARY:I = 0x7

.field private static final LOAD_CLASS:I = 0x2

.field private static final ROOT_CLASS_DUMP:I = 0x20

.field private static final ROOT_DEBUGGER:I = 0x8b

.field private static final ROOT_FINALIZING:I = 0x8a

.field private static final ROOT_HEAP_DUMP_INFO:I = 0xfe

.field private static final ROOT_INSTANCE_DUMP:I = 0x21

.field private static final ROOT_INTERNED_STRING:I = 0x89

.field private static final ROOT_JAVA_FRAME:I = 0x3

.field private static final ROOT_JNI_GLOBAL:I = 0x1

.field private static final ROOT_JNI_LOCAL:I = 0x2

.field private static final ROOT_JNI_MONITOR:I = 0x8e

.field private static final ROOT_MONITOR_USED:I = 0x7

.field private static final ROOT_NATIVE_STACK:I = 0x4

.field private static final ROOT_OBJECT_ARRAY_DUMP:I = 0x22

.field private static final ROOT_PRIMITIVE_ARRAY_DUMP:I = 0x23

.field private static final ROOT_PRIMITIVE_ARRAY_NODATA:I = 0xc3

.field private static final ROOT_REFERENCE_CLEANUP:I = 0x8c

.field private static final ROOT_STICKY_CLASS:I = 0x5

.field private static final ROOT_THREAD_BLOCK:I = 0x6

.field private static final ROOT_THREAD_OBJECT:I = 0x8

.field private static final ROOT_UNKNOWN:I = 0xff

.field private static final ROOT_UNREACHABLE:I = 0x90

.field private static final ROOT_VM_INTERNAL:I = 0x8d

.field private static final STACK_FRAME:I = 0x4

.field private static final STACK_TRACE:I = 0x5

.field private static final START_THREAD:I = 0xa

.field private static final STRING_IN_UTF8:I = 0x1

.field private static final UNLOAD_CLASS:I = 0x3


# instance fields
.field mClassNames:Lcom/squareup/haha/trove/TLongObjectHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/trove/TLongObjectHashMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mIdSize:I

.field private final mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

.field mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

.field mStrings:Lcom/squareup/haha/trove/TLongObjectHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/trove/TLongObjectHashMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/squareup/haha/perflib/io/HprofBuffer;)V
    .locals 1
    .param p1, "buffer"    # Lcom/squareup/haha/perflib/io/HprofBuffer;

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Lcom/squareup/haha/trove/TLongObjectHashMap;

    invoke-direct {v0}, Lcom/squareup/haha/trove/TLongObjectHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/haha/perflib/HprofParser;->mStrings:Lcom/squareup/haha/trove/TLongObjectHashMap;

    .line 136
    new-instance v0, Lcom/squareup/haha/trove/TLongObjectHashMap;

    invoke-direct {v0}, Lcom/squareup/haha/trove/TLongObjectHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/haha/perflib/HprofParser;->mClassNames:Lcom/squareup/haha/trove/TLongObjectHashMap;

    .line 140
    iput-object p1, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    .line 141
    return-void
.end method

.method private loadBasicObj(Lcom/squareup/haha/perflib/RootType;)I
    .locals 4
    .param p1, "type"    # Lcom/squareup/haha/perflib/RootType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    move-result-wide v0

    .line 455
    .local v0, "id":J
    new-instance v2, Lcom/squareup/haha/perflib/RootObj;

    invoke-direct {v2, p1, v0, v1}, Lcom/squareup/haha/perflib/RootObj;-><init>(Lcom/squareup/haha/perflib/RootType;J)V

    .line 457
    .local v2, "root":Lcom/squareup/haha/perflib/RootObj;
    iget-object v3, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v3, v2}, Lcom/squareup/haha/perflib/Snapshot;->addRoot(Lcom/squareup/haha/perflib/RootObj;)V

    .line 459
    iget v3, p0, Lcom/squareup/haha/perflib/HprofParser;->mIdSize:I

    return v3
.end method

.method private loadClass()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    iget-object v3, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v3}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    .line 266
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    move-result-wide v0

    .line 267
    .local v0, "id":J
    iget-object v3, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v3}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    .line 268
    iget-object v3, p0, Lcom/squareup/haha/perflib/HprofParser;->mStrings:Lcom/squareup/haha/trove/TLongObjectHashMap;

    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/squareup/haha/trove/TLongObjectHashMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 270
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/squareup/haha/perflib/HprofParser;->mClassNames:Lcom/squareup/haha/trove/TLongObjectHashMap;

    invoke-virtual {v3, v0, v1, v2}, Lcom/squareup/haha/trove/TLongObjectHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 271
    return-void
.end method

.method private loadClassDump()I
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 486
    invoke-direct/range {p0 .. p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    move-result-wide v4

    .line 487
    .local v4, "id":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v7}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    move-result v17

    .line 488
    .local v17, "stackSerialNumber":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/squareup/haha/perflib/Snapshot;->getStackTrace(I)Lcom/squareup/haha/perflib/StackTrace;

    move-result-object v6

    .line 489
    .local v6, "stack":Lcom/squareup/haha/perflib/StackTrace;
    invoke-direct/range {p0 .. p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    move-result-wide v20

    .line 490
    .local v20, "superClassId":J
    invoke-direct/range {p0 .. p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    move-result-wide v10

    .line 491
    .local v10, "classLoaderId":J
    invoke-direct/range {p0 .. p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    .line 492
    invoke-direct/range {p0 .. p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    .line 493
    invoke-direct/range {p0 .. p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    .line 494
    invoke-direct/range {p0 .. p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    .line 495
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v7}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    move-result v14

    .line 497
    .local v14, "instanceSize":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/squareup/haha/perflib/HprofParser;->mIdSize:I

    mul-int/lit8 v7, v7, 0x7

    add-int/lit8 v7, v7, 0x4

    add-int/lit8 v2, v7, 0x4

    .line 500
    .local v2, "bytesRead":I
    invoke-direct/range {p0 .. p0}, Lcom/squareup/haha/perflib/HprofParser;->readUnsignedShort()I

    move-result v16

    .line 501
    .local v16, "numEntries":I
    add-int/lit8 v2, v2, 0x2

    .line 503
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_0

    .line 504
    invoke-direct/range {p0 .. p0}, Lcom/squareup/haha/perflib/HprofParser;->readUnsignedShort()I

    .line 505
    invoke-direct/range {p0 .. p0}, Lcom/squareup/haha/perflib/HprofParser;->skipValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v2, v7

    .line 503
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 508
    :cond_0
    new-instance v3, Lcom/squareup/haha/perflib/ClassObj;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/squareup/haha/perflib/HprofParser;->mClassNames:Lcom/squareup/haha/trove/TLongObjectHashMap;

    invoke-virtual {v7, v4, v5}, Lcom/squareup/haha/trove/TLongObjectHashMap;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v8}, Lcom/squareup/haha/perflib/io/HprofBuffer;->position()J

    move-result-wide v8

    invoke-direct/range {v3 .. v9}, Lcom/squareup/haha/perflib/ClassObj;-><init>(JLcom/squareup/haha/perflib/StackTrace;Ljava/lang/String;J)V

    .line 509
    .local v3, "theClass":Lcom/squareup/haha/perflib/ClassObj;
    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Lcom/squareup/haha/perflib/ClassObj;->setSuperClassId(J)V

    .line 510
    invoke-virtual {v3, v10, v11}, Lcom/squareup/haha/perflib/ClassObj;->setClassLoaderId(J)V

    .line 513
    invoke-direct/range {p0 .. p0}, Lcom/squareup/haha/perflib/HprofParser;->readUnsignedShort()I

    move-result v16

    .line 514
    add-int/lit8 v2, v2, 0x2

    .line 516
    move/from16 v0, v16

    new-array v0, v0, [Lcom/squareup/haha/perflib/Field;

    move-object/from16 v18, v0

    .line 518
    .local v18, "staticFields":[Lcom/squareup/haha/perflib/Field;
    const/4 v13, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_1

    .line 519
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/squareup/haha/perflib/HprofParser;->mStrings:Lcom/squareup/haha/trove/TLongObjectHashMap;

    invoke-direct/range {p0 .. p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/squareup/haha/trove/TLongObjectHashMap;->get(J)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 520
    .local v15, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v7}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readByte()B

    move-result v7

    invoke-static {v7}, Lcom/squareup/haha/perflib/Type;->getType(I)Lcom/squareup/haha/perflib/Type;

    move-result-object v19

    .line 522
    .local v19, "type":Lcom/squareup/haha/perflib/Type;
    new-instance v7, Lcom/squareup/haha/perflib/Field;

    move-object/from16 v0, v19

    invoke-direct {v7, v0, v15}, Lcom/squareup/haha/perflib/Field;-><init>(Lcom/squareup/haha/perflib/Type;Ljava/lang/String;)V

    aput-object v7, v18, v13

    .line 523
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/squareup/haha/perflib/Snapshot;->getTypeSize(Lcom/squareup/haha/perflib/Type;)I

    move-result v7

    int-to-long v8, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/squareup/haha/perflib/HprofParser;->skipFully(J)V

    .line 525
    move-object/from16 v0, p0

    iget v7, v0, Lcom/squareup/haha/perflib/HprofParser;->mIdSize:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/squareup/haha/perflib/Snapshot;->getTypeSize(Lcom/squareup/haha/perflib/Type;)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v2, v7

    .line 518
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 528
    .end local v15    # "name":Ljava/lang/String;
    .end local v19    # "type":Lcom/squareup/haha/perflib/Type;
    :cond_1
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/squareup/haha/perflib/ClassObj;->setStaticFields([Lcom/squareup/haha/perflib/Field;)V

    .line 531
    invoke-direct/range {p0 .. p0}, Lcom/squareup/haha/perflib/HprofParser;->readUnsignedShort()I

    move-result v16

    .line 532
    add-int/lit8 v2, v2, 0x2

    .line 534
    move/from16 v0, v16

    new-array v12, v0, [Lcom/squareup/haha/perflib/Field;

    .line 536
    .local v12, "fields":[Lcom/squareup/haha/perflib/Field;
    const/4 v13, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_2

    .line 537
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/squareup/haha/perflib/HprofParser;->mStrings:Lcom/squareup/haha/trove/TLongObjectHashMap;

    invoke-direct/range {p0 .. p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/squareup/haha/trove/TLongObjectHashMap;->get(J)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 538
    .restart local v15    # "name":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/squareup/haha/perflib/HprofParser;->readUnsignedByte()I

    move-result v7

    invoke-static {v7}, Lcom/squareup/haha/perflib/Type;->getType(I)Lcom/squareup/haha/perflib/Type;

    move-result-object v19

    .line 540
    .restart local v19    # "type":Lcom/squareup/haha/perflib/Type;
    new-instance v7, Lcom/squareup/haha/perflib/Field;

    move-object/from16 v0, v19

    invoke-direct {v7, v0, v15}, Lcom/squareup/haha/perflib/Field;-><init>(Lcom/squareup/haha/perflib/Type;Ljava/lang/String;)V

    aput-object v7, v12, v13

    .line 542
    move-object/from16 v0, p0

    iget v7, v0, Lcom/squareup/haha/perflib/HprofParser;->mIdSize:I

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v2, v7

    .line 536
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 545
    .end local v15    # "name":Ljava/lang/String;
    .end local v19    # "type":Lcom/squareup/haha/perflib/Type;
    :cond_2
    invoke-virtual {v3, v12}, Lcom/squareup/haha/perflib/ClassObj;->setFields([Lcom/squareup/haha/perflib/Field;)V

    .line 546
    invoke-virtual {v3, v14}, Lcom/squareup/haha/perflib/ClassObj;->setInstanceSize(I)V

    .line 548
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v7, v4, v5, v3}, Lcom/squareup/haha/perflib/Snapshot;->addClass(JLcom/squareup/haha/perflib/ClassObj;)V

    .line 550
    return v2
.end method

.method private loadHeapDump(J)V
    .locals 11
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-lez v5, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readUnsignedByte()I

    move-result v4

    .line 305
    .local v4, "tag":I
    const-wide/16 v6, 0x1

    sub-long/2addr p1, v6

    .line 307
    sparse-switch v4, :sswitch_data_0

    .line 407
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "loadHeapDump loop with unknown tag "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v7}, Lcom/squareup/haha/perflib/io/HprofBuffer;->remaining()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes possibly remaining"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 309
    :sswitch_0
    sget-object v5, Lcom/squareup/haha/perflib/RootType;->UNKNOWN:Lcom/squareup/haha/perflib/RootType;

    invoke-direct {p0, v5}, Lcom/squareup/haha/perflib/HprofParser;->loadBasicObj(Lcom/squareup/haha/perflib/RootType;)I

    move-result v5

    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 310
    goto :goto_0

    .line 313
    :sswitch_1
    sget-object v5, Lcom/squareup/haha/perflib/RootType;->NATIVE_STATIC:Lcom/squareup/haha/perflib/RootType;

    invoke-direct {p0, v5}, Lcom/squareup/haha/perflib/HprofParser;->loadBasicObj(Lcom/squareup/haha/perflib/RootType;)I

    move-result v5

    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 314
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    .line 315
    iget v5, p0, Lcom/squareup/haha/perflib/HprofParser;->mIdSize:I

    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 316
    goto :goto_0

    .line 319
    :sswitch_2
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->loadJniLocal()I

    move-result v5

    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 320
    goto :goto_0

    .line 323
    :sswitch_3
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->loadJavaFrame()I

    move-result v5

    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 324
    goto :goto_0

    .line 327
    :sswitch_4
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->loadNativeStack()I

    move-result v5

    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 328
    goto :goto_0

    .line 331
    :sswitch_5
    sget-object v5, Lcom/squareup/haha/perflib/RootType;->SYSTEM_CLASS:Lcom/squareup/haha/perflib/RootType;

    invoke-direct {p0, v5}, Lcom/squareup/haha/perflib/HprofParser;->loadBasicObj(Lcom/squareup/haha/perflib/RootType;)I

    move-result v5

    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 332
    goto :goto_0

    .line 335
    :sswitch_6
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->loadThreadBlock()I

    move-result v5

    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 336
    goto :goto_0

    .line 339
    :sswitch_7
    sget-object v5, Lcom/squareup/haha/perflib/RootType;->BUSY_MONITOR:Lcom/squareup/haha/perflib/RootType;

    invoke-direct {p0, v5}, Lcom/squareup/haha/perflib/HprofParser;->loadBasicObj(Lcom/squareup/haha/perflib/RootType;)I

    move-result v5

    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 340
    goto/16 :goto_0

    .line 343
    :sswitch_8
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->loadThreadObject()I

    move-result v5

    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 344
    goto/16 :goto_0

    .line 347
    :sswitch_9
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->loadClassDump()I

    move-result v5

    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 348
    goto/16 :goto_0

    .line 351
    :sswitch_a
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->loadInstanceDump()I

    move-result v5

    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 352
    goto/16 :goto_0

    .line 355
    :sswitch_b
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->loadObjectArrayDump()I

    move-result v5

    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 356
    goto/16 :goto_0

    .line 359
    :sswitch_c
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->loadPrimitiveArrayDump()I

    move-result v5

    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 360
    goto/16 :goto_0

    .line 363
    :sswitch_d
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "+--- PRIMITIVE ARRAY NODATA DUMP"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 364
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->loadPrimitiveArrayDump()I

    .line 366
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Don\'t know how to load a nodata array"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 370
    :sswitch_e
    iget-object v5, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v5}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    move-result v0

    .line 371
    .local v0, "heapId":I
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    move-result-wide v2

    .line 372
    .local v2, "heapNameId":J
    iget-object v5, p0, Lcom/squareup/haha/perflib/HprofParser;->mStrings:Lcom/squareup/haha/trove/TLongObjectHashMap;

    invoke-virtual {v5, v2, v3}, Lcom/squareup/haha/trove/TLongObjectHashMap;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 374
    .local v1, "heapName":Ljava/lang/String;
    iget-object v5, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v5, v0, v1}, Lcom/squareup/haha/perflib/Snapshot;->setHeapTo(ILjava/lang/String;)Lcom/squareup/haha/perflib/Heap;

    .line 375
    iget v5, p0, Lcom/squareup/haha/perflib/HprofParser;->mIdSize:I

    add-int/lit8 v5, v5, 0x4

    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 376
    goto/16 :goto_0

    .line 379
    .end local v0    # "heapId":I
    .end local v1    # "heapName":Ljava/lang/String;
    .end local v2    # "heapNameId":J
    :sswitch_f
    sget-object v5, Lcom/squareup/haha/perflib/RootType;->INTERNED_STRING:Lcom/squareup/haha/perflib/RootType;

    invoke-direct {p0, v5}, Lcom/squareup/haha/perflib/HprofParser;->loadBasicObj(Lcom/squareup/haha/perflib/RootType;)I

    move-result v5

    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 380
    goto/16 :goto_0

    .line 383
    :sswitch_10
    sget-object v5, Lcom/squareup/haha/perflib/RootType;->FINALIZING:Lcom/squareup/haha/perflib/RootType;

    invoke-direct {p0, v5}, Lcom/squareup/haha/perflib/HprofParser;->loadBasicObj(Lcom/squareup/haha/perflib/RootType;)I

    move-result v5

    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 384
    goto/16 :goto_0

    .line 387
    :sswitch_11
    sget-object v5, Lcom/squareup/haha/perflib/RootType;->DEBUGGER:Lcom/squareup/haha/perflib/RootType;

    invoke-direct {p0, v5}, Lcom/squareup/haha/perflib/HprofParser;->loadBasicObj(Lcom/squareup/haha/perflib/RootType;)I

    move-result v5

    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 388
    goto/16 :goto_0

    .line 391
    :sswitch_12
    sget-object v5, Lcom/squareup/haha/perflib/RootType;->REFERENCE_CLEANUP:Lcom/squareup/haha/perflib/RootType;

    invoke-direct {p0, v5}, Lcom/squareup/haha/perflib/HprofParser;->loadBasicObj(Lcom/squareup/haha/perflib/RootType;)I

    move-result v5

    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 392
    goto/16 :goto_0

    .line 395
    :sswitch_13
    sget-object v5, Lcom/squareup/haha/perflib/RootType;->VM_INTERNAL:Lcom/squareup/haha/perflib/RootType;

    invoke-direct {p0, v5}, Lcom/squareup/haha/perflib/HprofParser;->loadBasicObj(Lcom/squareup/haha/perflib/RootType;)I

    move-result v5

    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 396
    goto/16 :goto_0

    .line 399
    :sswitch_14
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->loadJniMonitor()I

    move-result v5

    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 400
    goto/16 :goto_0

    .line 403
    :sswitch_15
    sget-object v5, Lcom/squareup/haha/perflib/RootType;->UNREACHABLE:Lcom/squareup/haha/perflib/RootType;

    invoke-direct {p0, v5}, Lcom/squareup/haha/perflib/HprofParser;->loadBasicObj(Lcom/squareup/haha/perflib/RootType;)I

    move-result v5

    int-to-long v6, v5

    sub-long/2addr p1, v6

    .line 404
    goto/16 :goto_0

    .line 413
    .end local v4    # "tag":I
    :cond_0
    return-void

    .line 307
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x20 -> :sswitch_9
        0x21 -> :sswitch_a
        0x22 -> :sswitch_b
        0x23 -> :sswitch_c
        0x89 -> :sswitch_f
        0x8a -> :sswitch_10
        0x8b -> :sswitch_11
        0x8c -> :sswitch_12
        0x8d -> :sswitch_13
        0x8e -> :sswitch_14
        0x90 -> :sswitch_15
        0xc3 -> :sswitch_d
        0xfe -> :sswitch_e
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method private loadInstanceDump()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    move-result-wide v1

    .line 555
    .local v1, "id":J
    iget-object v10, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v10}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    move-result v9

    .line 556
    .local v9, "stackId":I
    iget-object v10, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v10, v9}, Lcom/squareup/haha/perflib/Snapshot;->getStackTrace(I)Lcom/squareup/haha/perflib/StackTrace;

    move-result-object v3

    .line 557
    .local v3, "stack":Lcom/squareup/haha/perflib/StackTrace;
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    move-result-wide v6

    .line 558
    .local v6, "classId":J
    iget-object v10, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v10}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    move-result v8

    .line 560
    .local v8, "remaining":I
    iget-object v10, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v10}, Lcom/squareup/haha/perflib/io/HprofBuffer;->position()J

    move-result-wide v4

    .line 561
    .local v4, "position":J
    new-instance v0, Lcom/squareup/haha/perflib/ClassInstance;

    invoke-direct/range {v0 .. v5}, Lcom/squareup/haha/perflib/ClassInstance;-><init>(JLcom/squareup/haha/perflib/StackTrace;J)V

    .line 562
    .local v0, "instance":Lcom/squareup/haha/perflib/ClassInstance;
    invoke-virtual {v0, v6, v7}, Lcom/squareup/haha/perflib/ClassInstance;->setClassId(J)V

    .line 563
    iget-object v10, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v10, v1, v2, v0}, Lcom/squareup/haha/perflib/Snapshot;->addInstance(JLcom/squareup/haha/perflib/Instance;)V

    .line 565
    int-to-long v10, v8

    invoke-direct {p0, v10, v11}, Lcom/squareup/haha/perflib/HprofParser;->skipFully(J)V

    .line 566
    iget v10, p0, Lcom/squareup/haha/perflib/HprofParser;->mIdSize:I

    add-int/lit8 v10, v10, 0x4

    iget v11, p0, Lcom/squareup/haha/perflib/HprofParser;->mIdSize:I

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x4

    add-int/2addr v10, v8

    return v10
.end method

.method private loadJavaFrame()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    move-result-wide v2

    .line 430
    .local v2, "id":J
    iget-object v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v1}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    move-result v4

    .line 431
    .local v4, "threadSerialNumber":I
    iget-object v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v1}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    move-result v6

    .line 432
    .local v6, "stackFrameNumber":I
    iget-object v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v1, v4}, Lcom/squareup/haha/perflib/Snapshot;->getThread(I)Lcom/squareup/haha/perflib/ThreadObj;

    move-result-object v7

    .line 433
    .local v7, "thread":Lcom/squareup/haha/perflib/ThreadObj;
    iget-object v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    iget v8, v7, Lcom/squareup/haha/perflib/ThreadObj;->mStackTrace:I

    invoke-virtual {v1, v8, v6}, Lcom/squareup/haha/perflib/Snapshot;->getStackTraceAtDepth(II)Lcom/squareup/haha/perflib/StackTrace;

    move-result-object v5

    .line 434
    .local v5, "trace":Lcom/squareup/haha/perflib/StackTrace;
    new-instance v0, Lcom/squareup/haha/perflib/RootObj;

    sget-object v1, Lcom/squareup/haha/perflib/RootType;->JAVA_LOCAL:Lcom/squareup/haha/perflib/RootType;

    invoke-direct/range {v0 .. v5}, Lcom/squareup/haha/perflib/RootObj;-><init>(Lcom/squareup/haha/perflib/RootType;JILcom/squareup/haha/perflib/StackTrace;)V

    .line 436
    .local v0, "root":Lcom/squareup/haha/perflib/RootObj;
    iget-object v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v1, v0}, Lcom/squareup/haha/perflib/Snapshot;->addRoot(Lcom/squareup/haha/perflib/RootObj;)V

    .line 438
    iget v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mIdSize:I

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x4

    return v1
.end method

.method private loadJniLocal()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    move-result-wide v2

    .line 417
    .local v2, "id":J
    iget-object v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v1}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    move-result v4

    .line 418
    .local v4, "threadSerialNumber":I
    iget-object v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v1}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    move-result v6

    .line 419
    .local v6, "stackFrameNumber":I
    iget-object v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v1, v4}, Lcom/squareup/haha/perflib/Snapshot;->getThread(I)Lcom/squareup/haha/perflib/ThreadObj;

    move-result-object v7

    .line 420
    .local v7, "thread":Lcom/squareup/haha/perflib/ThreadObj;
    iget-object v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    iget v8, v7, Lcom/squareup/haha/perflib/ThreadObj;->mStackTrace:I

    invoke-virtual {v1, v8, v6}, Lcom/squareup/haha/perflib/Snapshot;->getStackTraceAtDepth(II)Lcom/squareup/haha/perflib/StackTrace;

    move-result-object v5

    .line 421
    .local v5, "trace":Lcom/squareup/haha/perflib/StackTrace;
    new-instance v0, Lcom/squareup/haha/perflib/RootObj;

    sget-object v1, Lcom/squareup/haha/perflib/RootType;->NATIVE_LOCAL:Lcom/squareup/haha/perflib/RootType;

    invoke-direct/range {v0 .. v5}, Lcom/squareup/haha/perflib/RootObj;-><init>(Lcom/squareup/haha/perflib/RootType;JILcom/squareup/haha/perflib/StackTrace;)V

    .line 423
    .local v0, "root":Lcom/squareup/haha/perflib/RootObj;
    iget-object v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v1, v0}, Lcom/squareup/haha/perflib/Snapshot;->addRoot(Lcom/squareup/haha/perflib/RootObj;)V

    .line 425
    iget v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mIdSize:I

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x4

    return v1
.end method

.method private loadJniMonitor()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    move-result-wide v2

    .line 602
    .local v2, "id":J
    iget-object v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v1}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    move-result v4

    .line 603
    .local v4, "threadSerialNumber":I
    iget-object v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v1}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    move-result v6

    .line 604
    .local v6, "stackDepth":I
    iget-object v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v1, v4}, Lcom/squareup/haha/perflib/Snapshot;->getThread(I)Lcom/squareup/haha/perflib/ThreadObj;

    move-result-object v7

    .line 605
    .local v7, "thread":Lcom/squareup/haha/perflib/ThreadObj;
    iget-object v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    iget v8, v7, Lcom/squareup/haha/perflib/ThreadObj;->mStackTrace:I

    invoke-virtual {v1, v8, v6}, Lcom/squareup/haha/perflib/Snapshot;->getStackTraceAtDepth(II)Lcom/squareup/haha/perflib/StackTrace;

    move-result-object v5

    .line 606
    .local v5, "trace":Lcom/squareup/haha/perflib/StackTrace;
    new-instance v0, Lcom/squareup/haha/perflib/RootObj;

    sget-object v1, Lcom/squareup/haha/perflib/RootType;->NATIVE_MONITOR:Lcom/squareup/haha/perflib/RootType;

    invoke-direct/range {v0 .. v5}, Lcom/squareup/haha/perflib/RootObj;-><init>(Lcom/squareup/haha/perflib/RootType;JILcom/squareup/haha/perflib/StackTrace;)V

    .line 608
    .local v0, "root":Lcom/squareup/haha/perflib/RootObj;
    iget-object v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v1, v0}, Lcom/squareup/haha/perflib/Snapshot;->addRoot(Lcom/squareup/haha/perflib/RootObj;)V

    .line 610
    iget v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mIdSize:I

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x4

    return v1
.end method

.method private loadNativeStack()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    move-result-wide v2

    .line 443
    .local v2, "id":J
    iget-object v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v1}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    move-result v4

    .line 444
    .local v4, "threadSerialNumber":I
    iget-object v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v1, v4}, Lcom/squareup/haha/perflib/Snapshot;->getThread(I)Lcom/squareup/haha/perflib/ThreadObj;

    move-result-object v6

    .line 445
    .local v6, "thread":Lcom/squareup/haha/perflib/ThreadObj;
    iget-object v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    iget v7, v6, Lcom/squareup/haha/perflib/ThreadObj;->mStackTrace:I

    invoke-virtual {v1, v7}, Lcom/squareup/haha/perflib/Snapshot;->getStackTrace(I)Lcom/squareup/haha/perflib/StackTrace;

    move-result-object v5

    .line 446
    .local v5, "trace":Lcom/squareup/haha/perflib/StackTrace;
    new-instance v0, Lcom/squareup/haha/perflib/RootObj;

    sget-object v1, Lcom/squareup/haha/perflib/RootType;->NATIVE_STACK:Lcom/squareup/haha/perflib/RootType;

    invoke-direct/range {v0 .. v5}, Lcom/squareup/haha/perflib/RootObj;-><init>(Lcom/squareup/haha/perflib/RootType;JILcom/squareup/haha/perflib/StackTrace;)V

    .line 448
    .local v0, "root":Lcom/squareup/haha/perflib/RootObj;
    iget-object v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v1, v0}, Lcom/squareup/haha/perflib/Snapshot;->addRoot(Lcom/squareup/haha/perflib/RootObj;)V

    .line 450
    iget v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mIdSize:I

    add-int/lit8 v1, v1, 0x4

    return v1
.end method

.method private loadObjectArrayDump()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    move-result-wide v1

    .line 571
    .local v1, "id":J
    iget-object v4, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v4}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    move-result v11

    .line 572
    .local v11, "stackId":I
    iget-object v4, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v4, v11}, Lcom/squareup/haha/perflib/Snapshot;->getStackTrace(I)Lcom/squareup/haha/perflib/StackTrace;

    move-result-object v3

    .line 573
    .local v3, "stack":Lcom/squareup/haha/perflib/StackTrace;
    iget-object v4, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v4}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    move-result v5

    .line 574
    .local v5, "numElements":I
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    move-result-wide v8

    .line 575
    .local v8, "classId":J
    new-instance v0, Lcom/squareup/haha/perflib/ArrayInstance;

    sget-object v4, Lcom/squareup/haha/perflib/Type;->OBJECT:Lcom/squareup/haha/perflib/Type;

    iget-object v6, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v6}, Lcom/squareup/haha/perflib/io/HprofBuffer;->position()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/squareup/haha/perflib/ArrayInstance;-><init>(JLcom/squareup/haha/perflib/StackTrace;Lcom/squareup/haha/perflib/Type;IJ)V

    .line 577
    .local v0, "array":Lcom/squareup/haha/perflib/ArrayInstance;
    invoke-virtual {v0, v8, v9}, Lcom/squareup/haha/perflib/ArrayInstance;->setClassId(J)V

    .line 578
    iget-object v4, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v4, v1, v2, v0}, Lcom/squareup/haha/perflib/Snapshot;->addInstance(JLcom/squareup/haha/perflib/Instance;)V

    .line 580
    iget v4, p0, Lcom/squareup/haha/perflib/HprofParser;->mIdSize:I

    mul-int v10, v5, v4

    .line 581
    .local v10, "remaining":I
    int-to-long v6, v10

    invoke-direct {p0, v6, v7}, Lcom/squareup/haha/perflib/HprofParser;->skipFully(J)V

    .line 582
    iget v4, p0, Lcom/squareup/haha/perflib/HprofParser;->mIdSize:I

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x4

    iget v6, p0, Lcom/squareup/haha/perflib/HprofParser;->mIdSize:I

    add-int/2addr v4, v6

    add-int/2addr v4, v10

    return v4
.end method

.method private loadPrimitiveArrayDump()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    move-result-wide v1

    .line 587
    .local v1, "id":J
    iget-object v6, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v6}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    move-result v10

    .line 588
    .local v10, "stackId":I
    iget-object v6, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v6, v10}, Lcom/squareup/haha/perflib/Snapshot;->getStackTrace(I)Lcom/squareup/haha/perflib/StackTrace;

    move-result-object v3

    .line 589
    .local v3, "stack":Lcom/squareup/haha/perflib/StackTrace;
    iget-object v6, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v6}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    move-result v5

    .line 590
    .local v5, "numElements":I
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readUnsignedByte()I

    move-result v6

    invoke-static {v6}, Lcom/squareup/haha/perflib/Type;->getType(I)Lcom/squareup/haha/perflib/Type;

    move-result-object v4

    .line 591
    .local v4, "type":Lcom/squareup/haha/perflib/Type;
    iget-object v6, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v6, v4}, Lcom/squareup/haha/perflib/Snapshot;->getTypeSize(Lcom/squareup/haha/perflib/Type;)I

    move-result v9

    .line 592
    .local v9, "size":I
    new-instance v0, Lcom/squareup/haha/perflib/ArrayInstance;

    iget-object v6, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v6}, Lcom/squareup/haha/perflib/io/HprofBuffer;->position()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/squareup/haha/perflib/ArrayInstance;-><init>(JLcom/squareup/haha/perflib/StackTrace;Lcom/squareup/haha/perflib/Type;IJ)V

    .line 593
    .local v0, "array":Lcom/squareup/haha/perflib/ArrayInstance;
    iget-object v6, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v6, v1, v2, v0}, Lcom/squareup/haha/perflib/Snapshot;->addInstance(JLcom/squareup/haha/perflib/Instance;)V

    .line 595
    mul-int v8, v5, v9

    .line 596
    .local v8, "remaining":I
    int-to-long v6, v8

    invoke-direct {p0, v6, v7}, Lcom/squareup/haha/perflib/HprofParser;->skipFully(J)V

    .line 597
    iget v6, p0, Lcom/squareup/haha/perflib/HprofParser;->mIdSize:I

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v8

    return v6
.end method

.method private loadStackFrame()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    move-result-wide v2

    .line 275
    .local v2, "id":J
    iget-object v0, p0, Lcom/squareup/haha/perflib/HprofParser;->mStrings:Lcom/squareup/haha/trove/TLongObjectHashMap;

    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/squareup/haha/trove/TLongObjectHashMap;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 276
    .local v4, "methodName":Ljava/lang/String;
    iget-object v0, p0, Lcom/squareup/haha/perflib/HprofParser;->mStrings:Lcom/squareup/haha/trove/TLongObjectHashMap;

    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/squareup/haha/trove/TLongObjectHashMap;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 277
    .local v5, "methodSignature":Ljava/lang/String;
    iget-object v0, p0, Lcom/squareup/haha/perflib/HprofParser;->mStrings:Lcom/squareup/haha/trove/TLongObjectHashMap;

    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/squareup/haha/trove/TLongObjectHashMap;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 278
    .local v6, "sourceFile":Ljava/lang/String;
    iget-object v0, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v0}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    move-result v7

    .line 279
    .local v7, "serial":I
    iget-object v0, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v0}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    move-result v8

    .line 281
    .local v8, "lineNumber":I
    new-instance v1, Lcom/squareup/haha/perflib/StackFrame;

    invoke-direct/range {v1 .. v8}, Lcom/squareup/haha/perflib/StackFrame;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 284
    .local v1, "frame":Lcom/squareup/haha/perflib/StackFrame;
    iget-object v0, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v0, v1}, Lcom/squareup/haha/perflib/Snapshot;->addStackFrame(Lcom/squareup/haha/perflib/StackFrame;)V

    .line 285
    return-void
.end method

.method private loadStackTrace()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v6, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v6}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    move-result v3

    .line 289
    .local v3, "serialNumber":I
    iget-object v6, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v6}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    move-result v4

    .line 290
    .local v4, "threadSerialNumber":I
    iget-object v6, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v6}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    move-result v2

    .line 291
    .local v2, "numFrames":I
    new-array v0, v2, [Lcom/squareup/haha/perflib/StackFrame;

    .line 293
    .local v0, "frames":[Lcom/squareup/haha/perflib/StackFrame;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 294
    iget-object v6, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/squareup/haha/perflib/Snapshot;->getStackFrame(J)Lcom/squareup/haha/perflib/StackFrame;

    move-result-object v6

    aput-object v6, v0, v1

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    :cond_0
    new-instance v5, Lcom/squareup/haha/perflib/StackTrace;

    invoke-direct {v5, v3, v4, v0}, Lcom/squareup/haha/perflib/StackTrace;-><init>(II[Lcom/squareup/haha/perflib/StackFrame;)V

    .line 299
    .local v5, "trace":Lcom/squareup/haha/perflib/StackTrace;
    iget-object v6, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v6, v5}, Lcom/squareup/haha/perflib/Snapshot;->addStackTrace(Lcom/squareup/haha/perflib/StackTrace;)V

    .line 300
    return-void
.end method

.method private loadString(I)V
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    move-result-wide v0

    .line 259
    .local v0, "id":J
    invoke-direct {p0, p1}, Lcom/squareup/haha/perflib/HprofParser;->readUTF8(I)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "string":Ljava/lang/String;
    iget-object v3, p0, Lcom/squareup/haha/perflib/HprofParser;->mStrings:Lcom/squareup/haha/trove/TLongObjectHashMap;

    invoke-virtual {v3, v0, v1, v2}, Lcom/squareup/haha/trove/TLongObjectHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 262
    return-void
.end method

.method private loadThreadBlock()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    move-result-wide v2

    .line 464
    .local v2, "id":J
    iget-object v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v1}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    move-result v4

    .line 465
    .local v4, "threadSerialNumber":I
    iget-object v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v1, v4}, Lcom/squareup/haha/perflib/Snapshot;->getThread(I)Lcom/squareup/haha/perflib/ThreadObj;

    move-result-object v6

    .line 466
    .local v6, "thread":Lcom/squareup/haha/perflib/ThreadObj;
    iget-object v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    iget v7, v6, Lcom/squareup/haha/perflib/ThreadObj;->mStackTrace:I

    invoke-virtual {v1, v7}, Lcom/squareup/haha/perflib/Snapshot;->getStackTrace(I)Lcom/squareup/haha/perflib/StackTrace;

    move-result-object v5

    .line 467
    .local v5, "stack":Lcom/squareup/haha/perflib/StackTrace;
    new-instance v0, Lcom/squareup/haha/perflib/RootObj;

    sget-object v1, Lcom/squareup/haha/perflib/RootType;->THREAD_BLOCK:Lcom/squareup/haha/perflib/RootType;

    invoke-direct/range {v0 .. v5}, Lcom/squareup/haha/perflib/RootObj;-><init>(Lcom/squareup/haha/perflib/RootType;JILcom/squareup/haha/perflib/StackTrace;)V

    .line 469
    .local v0, "root":Lcom/squareup/haha/perflib/RootObj;
    iget-object v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v1, v0}, Lcom/squareup/haha/perflib/Snapshot;->addRoot(Lcom/squareup/haha/perflib/RootObj;)V

    .line 471
    iget v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mIdSize:I

    add-int/lit8 v1, v1, 0x4

    return v1
.end method

.method private loadThreadObject()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readId()J

    move-result-wide v0

    .line 476
    .local v0, "id":J
    iget-object v5, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v5}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    move-result v4

    .line 477
    .local v4, "threadSerialNumber":I
    iget-object v5, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v5}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    move-result v2

    .line 478
    .local v2, "stackSerialNumber":I
    new-instance v3, Lcom/squareup/haha/perflib/ThreadObj;

    invoke-direct {v3, v0, v1, v2}, Lcom/squareup/haha/perflib/ThreadObj;-><init>(JI)V

    .line 480
    .local v3, "thread":Lcom/squareup/haha/perflib/ThreadObj;
    iget-object v5, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v5, v3, v4}, Lcom/squareup/haha/perflib/Snapshot;->addThread(Lcom/squareup/haha/perflib/ThreadObj;I)V

    .line 482
    iget v5, p0, Lcom/squareup/haha/perflib/HprofParser;->mIdSize:I

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x4

    return v5
.end method

.method private readId()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    iget v0, p0, Lcom/squareup/haha/perflib/HprofParser;->mIdSize:I

    packed-switch v0, :pswitch_data_0

    .line 233
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ID Length must be 1, 2, 4, or 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :pswitch_1
    iget-object v0, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v0}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readByte()B

    move-result v0

    int-to-long v0, v0

    .line 230
    :goto_0
    return-wide v0

    .line 226
    :pswitch_2
    iget-object v0, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v0}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readShort()S

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 228
    :pswitch_3
    iget-object v0, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v0}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 230
    :pswitch_4
    iget-object v0, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v0}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readLong()J

    move-result-wide v0

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private readNullTerminatedString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .local v1, "s":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v2}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readByte()B

    move-result v0

    .local v0, "c":B
    :goto_0
    if-eqz v0, :cond_0

    .line 215
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    iget-object v2, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v2}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readByte()B

    move-result v0

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readUTF8(I)Ljava/lang/String;
    .locals 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    new-array v0, p1, [B

    .line 240
    .local v0, "b":[B
    iget-object v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v1, v0}, Lcom/squareup/haha/perflib/io/HprofBuffer;->read([B)V

    .line 242
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v0}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readByte()B

    move-result v0

    .line 1075
    and-int/lit16 v0, v0, 0xff

    .line 246
    return v0
.end method

.method private readUnsignedInt()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v0}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    move-result v0

    .line 2075
    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 254
    return-wide v0
.end method

.method private readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v0}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private skipFully(J)V
    .locals 5
    .param p1, "numBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 623
    iget-object v0, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    iget-object v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v1}, Lcom/squareup/haha/perflib/io/HprofBuffer;->position()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-interface {v0, v2, v3}, Lcom/squareup/haha/perflib/io/HprofBuffer;->setPosition(J)V

    .line 624
    return-void
.end method

.method private skipValue()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 614
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readUnsignedByte()I

    move-result v2

    invoke-static {v2}, Lcom/squareup/haha/perflib/Type;->getType(I)Lcom/squareup/haha/perflib/Type;

    move-result-object v1

    .line 615
    .local v1, "type":Lcom/squareup/haha/perflib/Type;
    iget-object v2, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v2, v1}, Lcom/squareup/haha/perflib/Snapshot;->getTypeSize(Lcom/squareup/haha/perflib/Type;)I

    move-result v0

    .line 617
    .local v0, "size":I
    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lcom/squareup/haha/perflib/HprofParser;->skipFully(J)V

    .line 619
    add-int/lit8 v2, v0, 0x1

    return v2
.end method


# virtual methods
.method public final parse()Lcom/squareup/haha/perflib/Snapshot;
    .locals 7

    .prologue
    .line 145
    new-instance v1, Lcom/squareup/haha/perflib/Snapshot;

    iget-object v5, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-direct {v1, v5}, Lcom/squareup/haha/perflib/Snapshot;-><init>(Lcom/squareup/haha/perflib/io/HprofBuffer;)V

    .line 146
    .local v1, "snapshot":Lcom/squareup/haha/perflib/Snapshot;
    iput-object v1, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    .line 150
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readNullTerminatedString()Ljava/lang/String;

    .line 152
    iget-object v5, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v5}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    move-result v5

    iput v5, p0, Lcom/squareup/haha/perflib/HprofParser;->mIdSize:I

    .line 153
    iget-object v5, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    iget v6, p0, Lcom/squareup/haha/perflib/HprofParser;->mIdSize:I

    invoke-virtual {v5, v6}, Lcom/squareup/haha/perflib/Snapshot;->setIdSize(I)V

    .line 155
    iget-object v5, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v5}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readLong()J

    .line 157
    :goto_0
    iget-object v5, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v5}, Lcom/squareup/haha/perflib/io/HprofBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readUnsignedByte()I

    move-result v4

    .line 159
    .local v4, "tag":I
    iget-object v5, p0, Lcom/squareup/haha/perflib/HprofParser;->mInput:Lcom/squareup/haha/perflib/io/HprofBuffer;

    invoke-interface {v5}, Lcom/squareup/haha/perflib/io/HprofBuffer;->readInt()I

    .line 160
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->readUnsignedInt()J

    move-result-wide v2

    .line 162
    .local v2, "length":J
    sparse-switch v4, :sswitch_data_0

    .line 191
    invoke-direct {p0, v2, v3}, Lcom/squareup/haha/perflib/HprofParser;->skipFully(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v2    # "length":J
    .end local v4    # "tag":I
    :catch_0
    move-exception v5

    .line 198
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v5}, Lcom/squareup/haha/perflib/Snapshot;->resolveClasses()V

    .line 199
    iget-object v5, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v5}, Lcom/squareup/haha/perflib/Snapshot;->resolveReferences()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    :goto_1
    iget-object v5, p0, Lcom/squareup/haha/perflib/HprofParser;->mClassNames:Lcom/squareup/haha/trove/TLongObjectHashMap;

    invoke-virtual {v5}, Lcom/squareup/haha/trove/TLongObjectHashMap;->clear()V

    .line 207
    iget-object v5, p0, Lcom/squareup/haha/perflib/HprofParser;->mStrings:Lcom/squareup/haha/trove/TLongObjectHashMap;

    invoke-virtual {v5}, Lcom/squareup/haha/trove/TLongObjectHashMap;->clear()V

    .line 208
    return-object v1

    .line 165
    .restart local v2    # "length":J
    .restart local v4    # "tag":I
    :sswitch_0
    long-to-int v5, v2

    :try_start_2
    iget v6, p0, Lcom/squareup/haha/perflib/HprofParser;->mIdSize:I

    sub-int/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/squareup/haha/perflib/HprofParser;->loadString(I)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 202
    .end local v2    # "length":J
    .end local v4    # "tag":I
    :catch_1
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "length":J
    .restart local v4    # "tag":I
    :sswitch_1
    :try_start_3
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->loadClass()V

    goto :goto_0

    .line 173
    :sswitch_2
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->loadStackFrame()V

    goto :goto_0

    .line 177
    :sswitch_3
    invoke-direct {p0}, Lcom/squareup/haha/perflib/HprofParser;->loadStackTrace()V

    goto :goto_0

    .line 181
    :sswitch_4
    invoke-direct {p0, v2, v3}, Lcom/squareup/haha/perflib/HprofParser;->loadHeapDump(J)V

    .line 182
    iget-object v5, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v5}, Lcom/squareup/haha/perflib/Snapshot;->setToDefaultHeap()Lcom/squareup/haha/perflib/Heap;

    goto :goto_0

    .line 186
    :sswitch_5
    invoke-direct {p0, v2, v3}, Lcom/squareup/haha/perflib/HprofParser;->loadHeapDump(J)V

    .line 187
    iget-object v5, p0, Lcom/squareup/haha/perflib/HprofParser;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    invoke-virtual {v5}, Lcom/squareup/haha/perflib/Snapshot;->setToDefaultHeap()Lcom/squareup/haha/perflib/Heap;
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 162
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0xc -> :sswitch_4
        0x1c -> :sswitch_5
    .end sparse-switch
.end method
