package com.squareup.haha.perflib.io;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel.MapMode;
import sun.nio.ch.DirectBuffer;

public class MemoryMappedFileBuffer implements HprofBuffer {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final int DEFAULT_PADDING = 1024;
    private static final int DEFAULT_SIZE = 1073741824;
    private final int mBufferSize;
    private final ByteBuffer[] mByteBuffers;
    private long mCurrentPosition;
    private final long mLength;
    private final int mPadding;

    static {
        $assertionsDisabled = !MemoryMappedFileBuffer.class.desiredAssertionStatus() ? true : $assertionsDisabled;
    }

    public MemoryMappedFileBuffer(File file) throws IOException {
        this(file, DEFAULT_SIZE, DEFAULT_PADDING);
    }

    MemoryMappedFileBuffer(File file, int i, int i2) throws IOException {
        long j = 0;
        this.mBufferSize = i;
        this.mPadding = i2;
        this.mLength = file.length();
        int i3 = ((int) (this.mLength / ((long) this.mBufferSize))) + 1;
        this.mByteBuffers = new ByteBuffer[i3];
        FileInputStream fileInputStream = new FileInputStream(file);
        int i4 = 0;
        while (i4 < i3) {
            try {
                this.mByteBuffers[i4] = fileInputStream.getChannel().map(MapMode.READ_ONLY, j, Math.min(this.mLength - j, (long) (this.mBufferSize + this.mPadding)));
                this.mByteBuffers[i4].order(HPROF_BYTE_ORDER);
                j += (long) this.mBufferSize;
                i4++;
            } catch (Throwable th) {
                fileInputStream.close();
            }
        }
        this.mCurrentPosition = 0;
        fileInputStream.close();
    }

    private int getIndex() {
        return (int) (this.mCurrentPosition / ((long) this.mBufferSize));
    }

    private int getOffset() {
        return (int) (this.mCurrentPosition % ((long) this.mBufferSize));
    }

    public void dispose() {
        int i = 0;
        while (i < this.mByteBuffers.length) {
            try {
                ((DirectBuffer) this.mByteBuffers[i]).cleaner().clean();
                i++;
            } catch (Exception e) {
                return;
            }
        }
    }

    public boolean hasRemaining() {
        return this.mCurrentPosition < this.mLength ? true : $assertionsDisabled;
    }

    public long position() {
        return this.mCurrentPosition;
    }

    public void read(byte[] bArr) {
        int index = getIndex();
        this.mByteBuffers[index].position(getOffset());
        if (bArr.length <= this.mByteBuffers[index].remaining()) {
            this.mByteBuffers[index].get(bArr, 0, bArr.length);
        } else {
            int position = this.mBufferSize - this.mByteBuffers[index].position();
            this.mByteBuffers[index].get(bArr, 0, position);
            this.mByteBuffers[index + 1].position(0);
            this.mByteBuffers[index + 1].get(bArr, position, bArr.length - position);
        }
        this.mCurrentPosition += (long) bArr.length;
    }

    public byte readByte() {
        byte b = this.mByteBuffers[getIndex()].get(getOffset());
        this.mCurrentPosition++;
        return b;
    }

    public char readChar() {
        char c = this.mByteBuffers[getIndex()].getChar(getOffset());
        this.mCurrentPosition += 2;
        return c;
    }

    public double readDouble() {
        double d = this.mByteBuffers[getIndex()].getDouble(getOffset());
        this.mCurrentPosition += 8;
        return d;
    }

    public float readFloat() {
        float f = this.mByteBuffers[getIndex()].getFloat(getOffset());
        this.mCurrentPosition += 4;
        return f;
    }

    public int readInt() {
        int i = this.mByteBuffers[getIndex()].getInt(getOffset());
        this.mCurrentPosition += 4;
        return i;
    }

    public long readLong() {
        long j = this.mByteBuffers[getIndex()].getLong(getOffset());
        this.mCurrentPosition += 8;
        return j;
    }

    public short readShort() {
        short s = this.mByteBuffers[getIndex()].getShort(getOffset());
        this.mCurrentPosition += 2;
        return s;
    }

    public void readSubSequence(byte[] bArr, int i, int i2) {
        if ($assertionsDisabled || ((long) i2) < this.mLength) {
            this.mCurrentPosition += (long) i;
            int index = getIndex();
            this.mByteBuffers[index].position(getOffset());
            if (bArr.length <= this.mByteBuffers[index].remaining()) {
                this.mByteBuffers[index].get(bArr, 0, bArr.length);
            } else {
                int position = this.mBufferSize - this.mByteBuffers[index].position();
                this.mByteBuffers[index].get(bArr, 0, position);
                int min = Math.min(i2 - position, bArr.length - position);
                int i3 = ((this.mBufferSize + min) - 1) / this.mBufferSize;
                for (int i4 = 0; i4 < i3; i4++) {
                    int min2 = Math.min(min, this.mBufferSize);
                    this.mByteBuffers[(index + 1) + i4].position(0);
                    this.mByteBuffers[(index + 1) + i4].get(bArr, position, min2);
                    position += min2;
                    min -= min2;
                }
            }
            this.mCurrentPosition += (long) Math.min(bArr.length, i2);
            return;
        }
        throw new AssertionError();
    }

    public long remaining() {
        return this.mLength - this.mCurrentPosition;
    }

    public void setPosition(long j) {
        this.mCurrentPosition = j;
    }
}
