.class public Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;
.super Ljava/lang/Object;
.source "MemoryMappedFileBuffer.java"

# interfaces
.implements Lcom/squareup/haha/perflib/io/HprofBuffer;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEFAULT_PADDING:I = 0x400

.field private static final DEFAULT_SIZE:I = 0x40000000


# instance fields
.field private final mBufferSize:I

.field private final mByteBuffers:[Ljava/nio/ByteBuffer;

.field private mCurrentPosition:J

.field private final mLength:J

.field private final mPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    const/high16 v0, 0x40000000    # 2.0f

    const/16 v1, 0x400

    invoke-direct {p0, p1, v0, v1}, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;-><init>(Ljava/io/File;II)V

    .line 83
    return-void
.end method

.method constructor <init>(Ljava/io/File;II)V
    .locals 12
    .param p1, "f"    # Ljava/io/File;
    .param p2, "bufferSize"    # I
    .param p3, "padding"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mBufferSize:I

    .line 52
    iput p3, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mPadding:I

    .line 53
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mLength:J

    .line 54
    iget-wide v0, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mLength:J

    iget v9, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mBufferSize:I

    int-to-long v10, v9

    div-long/2addr v0, v10

    long-to-int v0, v0

    add-int/lit8 v8, v0, 0x1

    .line 55
    .local v8, "shards":I
    new-array v0, v8, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mByteBuffers:[Ljava/nio/ByteBuffer;

    .line 57
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 59
    .local v7, "inputStream":Ljava/io/FileInputStream;
    const-wide/16 v2, 0x0

    .line 60
    .local v2, "offset":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_0

    .line 61
    :try_start_0
    iget-wide v0, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mLength:J

    sub-long/2addr v0, v2

    iget v9, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mBufferSize:I

    iget v10, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mPadding:I

    add-int/2addr v9, v10

    int-to-long v10, v9

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 62
    .local v4, "size":J
    iget-object v9, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mByteBuffers:[Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    aput-object v0, v9, v6

    .line 64
    iget-object v0, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mByteBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v6

    sget-object v1, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->HPROF_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 65
    iget v0, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mBufferSize:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    .line 60
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 67
    .end local v4    # "size":J
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mCurrentPosition:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    throw v0
.end method

.method private getIndex()I
    .locals 4

    .prologue
    .line 214
    iget-wide v0, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mCurrentPosition:J

    iget v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mBufferSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private getOffset()I
    .locals 4

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mCurrentPosition:J

    iget v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mBufferSize:I

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mByteBuffers:[Ljava/nio/ByteBuffer;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mByteBuffers:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v0

    check-cast v1, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v1}, Lsun/nio/ch/DirectBuffer;->cleaner()Lsun/misc/Cleaner;

    move-result-object v1

    invoke-virtual {v1}, Lsun/misc/Cleaner;->clean()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    :cond_0
    return-void
.end method

.method public hasRemaining()Z
    .locals 4

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mCurrentPosition:J

    iget-wide v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public position()J
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mCurrentPosition:J

    return-wide v0
.end method

.method public read([B)V
    .locals 6
    .param p1, "b"    # [B

    .prologue
    const/4 v4, 0x0

    .line 108
    invoke-direct {p0}, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->getIndex()I

    move-result v0

    .line 109
    .local v0, "index":I
    iget-object v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mByteBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v0

    invoke-direct {p0}, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->getOffset()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    array-length v2, p1

    iget-object v3, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mByteBuffers:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 111
    iget-object v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mByteBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v0

    array-length v3, p1

    invoke-virtual {v2, p1, v4, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 119
    :goto_0
    iget-wide v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mCurrentPosition:J

    array-length v4, p1

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mCurrentPosition:J

    .line 120
    return-void

    .line 114
    :cond_0
    iget v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mBufferSize:I

    iget-object v3, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mByteBuffers:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int v1, v2, v3

    .line 115
    .local v1, "split":I
    iget-object v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mByteBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, v4, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 116
    iget-object v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mByteBuffers:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 117
    iget-object v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mByteBuffers:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    array-length v3, p1

    sub-int/2addr v3, v1

    invoke-virtual {v2, p1, v1, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public readByte()B
    .locals 6

    .prologue
    .line 101
    iget-object v1, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mByteBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->getIndex()I

    move-result v2

    aget-object v1, v1, v2

    invoke-direct {p0}, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->getOffset()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 102
    .local v0, "result":B
    iget-wide v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mCurrentPosition:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mCurrentPosition:J

    .line 103
    return v0
.end method

.method public readChar()C
    .locals 6

    .prologue
    .line 153
    iget-object v1, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mByteBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->getIndex()I

    move-result v2

    aget-object v1, v1, v2

    invoke-direct {p0}, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->getOffset()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v0

    .line 154
    .local v0, "result":C
    iget-wide v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mCurrentPosition:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mCurrentPosition:J

    .line 155
    return v0
.end method

.method public readDouble()D
    .locals 6

    .prologue
    .line 188
    iget-object v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mByteBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->getIndex()I

    move-result v3

    aget-object v2, v2, v3

    invoke-direct {p0}, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->getOffset()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v0

    .line 189
    .local v0, "result":D
    iget-wide v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mCurrentPosition:J

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mCurrentPosition:J

    .line 190
    return-wide v0
.end method

.method public readFloat()F
    .locals 6

    .prologue
    .line 181
    iget-object v1, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mByteBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->getIndex()I

    move-result v2

    aget-object v1, v1, v2

    invoke-direct {p0}, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->getOffset()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v0

    .line 182
    .local v0, "result":F
    iget-wide v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mCurrentPosition:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mCurrentPosition:J

    .line 183
    return v0
.end method

.method public readInt()I
    .locals 6

    .prologue
    .line 167
    iget-object v1, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mByteBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->getIndex()I

    move-result v2

    aget-object v1, v1, v2

    invoke-direct {p0}, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->getOffset()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 168
    .local v0, "result":I
    iget-wide v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mCurrentPosition:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mCurrentPosition:J

    .line 169
    return v0
.end method

.method public readLong()J
    .locals 6

    .prologue
    .line 174
    iget-object v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mByteBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->getIndex()I

    move-result v3

    aget-object v2, v2, v3

    invoke-direct {p0}, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->getOffset()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    .line 175
    .local v0, "result":J
    iget-wide v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mCurrentPosition:J

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mCurrentPosition:J

    .line 176
    return-wide v0
.end method

.method public readShort()S
    .locals 6

    .prologue
    .line 160
    iget-object v1, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mByteBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->getIndex()I

    move-result v2

    aget-object v1, v1, v2

    invoke-direct {p0}, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->getOffset()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    .line 161
    .local v0, "result":S
    iget-wide v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mCurrentPosition:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mCurrentPosition:J

    .line 162
    return v0
.end method

.method public readSubSequence([BII)V
    .locals 12
    .param p1, "b"    # [B
    .param p2, "sourceStart"    # I
    .param p3, "length"    # I

    .prologue
    .line 124
    sget-boolean v7, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    int-to-long v8, p3

    iget-wide v10, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mLength:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 126
    :cond_0
    iget-wide v8, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mCurrentPosition:J

    int-to-long v10, p2

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mCurrentPosition:J

    .line 128
    invoke-direct {p0}, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->getIndex()I

    move-result v1

    .line 129
    .local v1, "index":I
    iget-object v7, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mByteBuffers:[Ljava/nio/ByteBuffer;

    aget-object v7, v7, v1

    invoke-direct {p0}, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->getOffset()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 130
    array-length v7, p1

    iget-object v8, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mByteBuffers:[Ljava/nio/ByteBuffer;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-gt v7, v8, :cond_2

    .line 131
    iget-object v7, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mByteBuffers:[Ljava/nio/ByteBuffer;

    aget-object v7, v7, v1

    const/4 v8, 0x0

    array-length v9, p1

    invoke-virtual {v7, p1, v8, v9}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 148
    :cond_1
    iget-wide v8, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mCurrentPosition:J

    array-length v7, p1

    invoke-static {v7, p3}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v10, v7

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mCurrentPosition:J

    .line 149
    return-void

    .line 133
    :cond_2
    iget v7, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mBufferSize:I

    iget-object v8, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mByteBuffers:[Ljava/nio/ByteBuffer;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    sub-int v5, v7, v8

    .line 134
    .local v5, "split":I
    iget-object v7, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mByteBuffers:[Ljava/nio/ByteBuffer;

    aget-object v7, v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 136
    move v6, v5

    .line 137
    .local v6, "start":I
    sub-int v7, p3, v5

    array-length v8, p1

    sub-int/2addr v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 138
    .local v3, "remainingMaxLength":I
    iget v7, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mBufferSize:I

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mBufferSize:I

    div-int v4, v7, v8

    .line 139
    .local v4, "remainingShardCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 140
    iget v7, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mBufferSize:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 141
    .local v2, "maxToRead":I
    iget-object v7, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mByteBuffers:[Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v1, 0x1

    add-int/2addr v8, v0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 142
    iget-object v7, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mByteBuffers:[Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v1, 0x1

    add-int/2addr v8, v0

    aget-object v7, v7, v8

    invoke-virtual {v7, p1, v6, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 143
    add-int/2addr v6, v2

    .line 144
    sub-int/2addr v3, v2

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public remaining()J
    .locals 4

    .prologue
    .line 210
    iget-wide v0, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mLength:J

    iget-wide v2, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mCurrentPosition:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public setPosition(J)V
    .locals 1
    .param p1, "position"    # J

    .prologue
    .line 195
    iput-wide p1, p0, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;->mCurrentPosition:J

    .line 196
    return-void
.end method
