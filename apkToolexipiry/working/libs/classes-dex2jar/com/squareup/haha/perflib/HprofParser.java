package com.squareup.haha.perflib;

import android.support.v4.internal.view.SupportMenu;
import com.squareup.haha.perflib.io.HprofBuffer;
import com.squareup.haha.trove.TLongObjectHashMap;
import java.io.EOFException;
import java.io.IOException;

public class HprofParser {
    private static final int ALLOC_SITES = 6;
    private static final int CONTROL_SETTINGS = 14;
    private static final int CPU_SAMPLES = 13;
    private static final int END_THREAD = 11;
    private static final int HEAP_DUMP = 12;
    private static final int HEAP_DUMP_END = 44;
    private static final int HEAP_DUMP_SEGMENT = 28;
    private static final int HEAP_SUMMARY = 7;
    private static final int LOAD_CLASS = 2;
    private static final int ROOT_CLASS_DUMP = 32;
    private static final int ROOT_DEBUGGER = 139;
    private static final int ROOT_FINALIZING = 138;
    private static final int ROOT_HEAP_DUMP_INFO = 254;
    private static final int ROOT_INSTANCE_DUMP = 33;
    private static final int ROOT_INTERNED_STRING = 137;
    private static final int ROOT_JAVA_FRAME = 3;
    private static final int ROOT_JNI_GLOBAL = 1;
    private static final int ROOT_JNI_LOCAL = 2;
    private static final int ROOT_JNI_MONITOR = 142;
    private static final int ROOT_MONITOR_USED = 7;
    private static final int ROOT_NATIVE_STACK = 4;
    private static final int ROOT_OBJECT_ARRAY_DUMP = 34;
    private static final int ROOT_PRIMITIVE_ARRAY_DUMP = 35;
    private static final int ROOT_PRIMITIVE_ARRAY_NODATA = 195;
    private static final int ROOT_REFERENCE_CLEANUP = 140;
    private static final int ROOT_STICKY_CLASS = 5;
    private static final int ROOT_THREAD_BLOCK = 6;
    private static final int ROOT_THREAD_OBJECT = 8;
    private static final int ROOT_UNKNOWN = 255;
    private static final int ROOT_UNREACHABLE = 144;
    private static final int ROOT_VM_INTERNAL = 141;
    private static final int STACK_FRAME = 4;
    private static final int STACK_TRACE = 5;
    private static final int START_THREAD = 10;
    private static final int STRING_IN_UTF8 = 1;
    private static final int UNLOAD_CLASS = 3;
    TLongObjectHashMap<String> mClassNames;
    int mIdSize;
    private final HprofBuffer mInput;
    Snapshot mSnapshot;
    TLongObjectHashMap<String> mStrings;

    public HprofParser(HprofBuffer hprofBuffer) {
        this.mStrings = new TLongObjectHashMap();
        this.mClassNames = new TLongObjectHashMap();
        this.mInput = hprofBuffer;
    }

    private int loadBasicObj(RootType rootType) throws IOException {
        this.mSnapshot.addRoot(new RootObj(rootType, readId()));
        return this.mIdSize;
    }

    private void loadClass() throws IOException {
        this.mInput.readInt();
        long readId = readId();
        this.mInput.readInt();
        this.mClassNames.put(readId, (String) this.mStrings.get(readId()));
    }

    private int loadClassDump() throws IOException {
        int i;
        long readId = readId();
        StackTrace stackTrace = this.mSnapshot.getStackTrace(this.mInput.readInt());
        long readId2 = readId();
        long readId3 = readId();
        readId();
        readId();
        readId();
        readId();
        int readInt = this.mInput.readInt();
        int i2 = this.mIdSize;
        int readUnsignedShort = readUnsignedShort();
        int i3 = (((i2 * ROOT_MONITOR_USED) + STACK_FRAME) + STACK_FRAME) + ROOT_JNI_LOCAL;
        i2 = 0;
        while (i2 < readUnsignedShort) {
            readUnsignedShort();
            i2 += STRING_IN_UTF8;
            i3 = (skipValue() + ROOT_JNI_LOCAL) + i3;
        }
        ClassObj classObj = new ClassObj(readId, stackTrace, (String) this.mClassNames.get(readId), this.mInput.position());
        classObj.setSuperClassId(readId2);
        classObj.setClassLoaderId(readId3);
        int readUnsignedShort2 = readUnsignedShort();
        Field[] fieldArr = new Field[readUnsignedShort2];
        readUnsignedShort = i3 + ROOT_JNI_LOCAL;
        for (i = 0; i < readUnsignedShort2; i += STRING_IN_UTF8) {
            String str = (String) this.mStrings.get(readId());
            Type type = Type.getType(this.mInput.readByte());
            fieldArr[i] = new Field(type, str);
            skipFully((long) this.mSnapshot.getTypeSize(type));
            readUnsignedShort += (this.mIdSize + STRING_IN_UTF8) + this.mSnapshot.getTypeSize(type);
        }
        classObj.setStaticFields(fieldArr);
        readUnsignedShort2 = readUnsignedShort();
        fieldArr = new Field[readUnsignedShort2];
        i = readUnsignedShort + ROOT_JNI_LOCAL;
        readUnsignedShort = 0;
        while (readUnsignedShort < readUnsignedShort2) {
            fieldArr[readUnsignedShort] = new Field(Type.getType(readUnsignedByte()), (String) this.mStrings.get(readId()));
            readUnsignedShort += STRING_IN_UTF8;
            i = (this.mIdSize + STRING_IN_UTF8) + i;
        }
        classObj.setFields(fieldArr);
        classObj.setInstanceSize(readInt);
        this.mSnapshot.addClass(readId, classObj);
        return i;
    }

    private void loadHeapDump(long j) throws IOException {
        while (j > 0) {
            int readUnsignedByte = readUnsignedByte();
            long j2 = j - 1;
            switch (readUnsignedByte) {
                case STRING_IN_UTF8 /*1*/:
                    long loadBasicObj = (long) loadBasicObj(RootType.NATIVE_STATIC);
                    readId();
                    j = (j2 - loadBasicObj) - ((long) this.mIdSize);
                    break;
                case ROOT_JNI_LOCAL /*2*/:
                    j = j2 - ((long) loadJniLocal());
                    break;
                case UNLOAD_CLASS /*3*/:
                    j = j2 - ((long) loadJavaFrame());
                    break;
                case STACK_FRAME /*4*/:
                    j = j2 - ((long) loadNativeStack());
                    break;
                case STACK_TRACE /*5*/:
                    j = j2 - ((long) loadBasicObj(RootType.SYSTEM_CLASS));
                    break;
                case ROOT_THREAD_BLOCK /*6*/:
                    j = j2 - ((long) loadThreadBlock());
                    break;
                case ROOT_MONITOR_USED /*7*/:
                    j = j2 - ((long) loadBasicObj(RootType.BUSY_MONITOR));
                    break;
                case ROOT_THREAD_OBJECT /*8*/:
                    j = j2 - ((long) loadThreadObject());
                    break;
                case ROOT_CLASS_DUMP /*32*/:
                    j = j2 - ((long) loadClassDump());
                    break;
                case ROOT_INSTANCE_DUMP /*33*/:
                    j = j2 - ((long) loadInstanceDump());
                    break;
                case ROOT_OBJECT_ARRAY_DUMP /*34*/:
                    j = j2 - ((long) loadObjectArrayDump());
                    break;
                case ROOT_PRIMITIVE_ARRAY_DUMP /*35*/:
                    j = j2 - ((long) loadPrimitiveArrayDump());
                    break;
                case ROOT_INTERNED_STRING /*137*/:
                    j = j2 - ((long) loadBasicObj(RootType.INTERNED_STRING));
                    break;
                case ROOT_FINALIZING /*138*/:
                    j = j2 - ((long) loadBasicObj(RootType.FINALIZING));
                    break;
                case ROOT_DEBUGGER /*139*/:
                    j = j2 - ((long) loadBasicObj(RootType.DEBUGGER));
                    break;
                case ROOT_REFERENCE_CLEANUP /*140*/:
                    j = j2 - ((long) loadBasicObj(RootType.REFERENCE_CLEANUP));
                    break;
                case ROOT_VM_INTERNAL /*141*/:
                    j = j2 - ((long) loadBasicObj(RootType.VM_INTERNAL));
                    break;
                case ROOT_JNI_MONITOR /*142*/:
                    j = j2 - ((long) loadJniMonitor());
                    break;
                case ROOT_UNREACHABLE /*144*/:
                    j = j2 - ((long) loadBasicObj(RootType.UNREACHABLE));
                    break;
                case ROOT_PRIMITIVE_ARRAY_NODATA /*195*/:
                    System.err.println("+--- PRIMITIVE ARRAY NODATA DUMP");
                    loadPrimitiveArrayDump();
                    throw new IllegalArgumentException("Don't know how to load a nodata array");
                case ROOT_HEAP_DUMP_INFO /*254*/:
                    this.mSnapshot.setHeapTo(this.mInput.readInt(), (String) this.mStrings.get(readId()));
                    j = j2 - ((long) (this.mIdSize + STACK_FRAME));
                    break;
                case ROOT_UNKNOWN /*255*/:
                    j = j2 - ((long) loadBasicObj(RootType.UNKNOWN));
                    break;
                default:
                    throw new IllegalArgumentException("loadHeapDump loop with unknown tag " + readUnsignedByte + " with " + this.mInput.remaining() + " bytes possibly remaining");
            }
        }
    }

    private int loadInstanceDump() throws IOException {
        long readId = readId();
        StackTrace stackTrace = this.mSnapshot.getStackTrace(this.mInput.readInt());
        long readId2 = readId();
        int readInt = this.mInput.readInt();
        Instance classInstance = new ClassInstance(readId, stackTrace, this.mInput.position());
        classInstance.setClassId(readId2);
        this.mSnapshot.addInstance(readId, classInstance);
        skipFully((long) readInt);
        return (((this.mIdSize + STACK_FRAME) + this.mIdSize) + STACK_FRAME) + readInt;
    }

    private int loadJavaFrame() throws IOException {
        long readId = readId();
        int readInt = this.mInput.readInt();
        this.mSnapshot.addRoot(new RootObj(RootType.JAVA_LOCAL, readId, readInt, this.mSnapshot.getStackTraceAtDepth(this.mSnapshot.getThread(readInt).mStackTrace, this.mInput.readInt())));
        return (this.mIdSize + STACK_FRAME) + STACK_FRAME;
    }

    private int loadJniLocal() throws IOException {
        long readId = readId();
        int readInt = this.mInput.readInt();
        this.mSnapshot.addRoot(new RootObj(RootType.NATIVE_LOCAL, readId, readInt, this.mSnapshot.getStackTraceAtDepth(this.mSnapshot.getThread(readInt).mStackTrace, this.mInput.readInt())));
        return (this.mIdSize + STACK_FRAME) + STACK_FRAME;
    }

    private int loadJniMonitor() throws IOException {
        long readId = readId();
        int readInt = this.mInput.readInt();
        this.mSnapshot.addRoot(new RootObj(RootType.NATIVE_MONITOR, readId, readInt, this.mSnapshot.getStackTraceAtDepth(this.mSnapshot.getThread(readInt).mStackTrace, this.mInput.readInt())));
        return (this.mIdSize + STACK_FRAME) + STACK_FRAME;
    }

    private int loadNativeStack() throws IOException {
        long readId = readId();
        int readInt = this.mInput.readInt();
        this.mSnapshot.addRoot(new RootObj(RootType.NATIVE_STACK, readId, readInt, this.mSnapshot.getStackTrace(this.mSnapshot.getThread(readInt).mStackTrace)));
        return this.mIdSize + STACK_FRAME;
    }

    private int loadObjectArrayDump() throws IOException {
        long readId = readId();
        StackTrace stackTrace = this.mSnapshot.getStackTrace(this.mInput.readInt());
        int readInt = this.mInput.readInt();
        long readId2 = readId();
        Instance arrayInstance = new ArrayInstance(readId, stackTrace, Type.OBJECT, readInt, this.mInput.position());
        arrayInstance.setClassId(readId2);
        this.mSnapshot.addInstance(readId, arrayInstance);
        int i = this.mIdSize * readInt;
        skipFully((long) i);
        return i + (((this.mIdSize + STACK_FRAME) + STACK_FRAME) + this.mIdSize);
    }

    private int loadPrimitiveArrayDump() throws IOException {
        long readId = readId();
        StackTrace stackTrace = this.mSnapshot.getStackTrace(this.mInput.readInt());
        int readInt = this.mInput.readInt();
        Type type = Type.getType(readUnsignedByte());
        int typeSize = this.mSnapshot.getTypeSize(type);
        this.mSnapshot.addInstance(readId, new ArrayInstance(readId, stackTrace, type, readInt, this.mInput.position()));
        int i = readInt * typeSize;
        skipFully((long) i);
        return i + (((this.mIdSize + STACK_FRAME) + STACK_FRAME) + STRING_IN_UTF8);
    }

    private void loadStackFrame() throws IOException {
        this.mSnapshot.addStackFrame(new StackFrame(readId(), (String) this.mStrings.get(readId()), (String) this.mStrings.get(readId()), (String) this.mStrings.get(readId()), this.mInput.readInt(), this.mInput.readInt()));
    }

    private void loadStackTrace() throws IOException {
        int readInt = this.mInput.readInt();
        int readInt2 = this.mInput.readInt();
        int readInt3 = this.mInput.readInt();
        StackFrame[] stackFrameArr = new StackFrame[readInt3];
        for (int i = 0; i < readInt3; i += STRING_IN_UTF8) {
            stackFrameArr[i] = this.mSnapshot.getStackFrame(readId());
        }
        this.mSnapshot.addStackTrace(new StackTrace(readInt, readInt2, stackFrameArr));
    }

    private void loadString(int i) throws IOException {
        this.mStrings.put(readId(), readUTF8(i));
    }

    private int loadThreadBlock() throws IOException {
        long readId = readId();
        int readInt = this.mInput.readInt();
        this.mSnapshot.addRoot(new RootObj(RootType.THREAD_BLOCK, readId, readInt, this.mSnapshot.getStackTrace(this.mSnapshot.getThread(readInt).mStackTrace)));
        return this.mIdSize + STACK_FRAME;
    }

    private int loadThreadObject() throws IOException {
        long readId = readId();
        int readInt = this.mInput.readInt();
        this.mSnapshot.addThread(new ThreadObj(readId, this.mInput.readInt()), readInt);
        return (this.mIdSize + STACK_FRAME) + STACK_FRAME;
    }

    private long readId() throws IOException {
        switch (this.mIdSize) {
            case STRING_IN_UTF8 /*1*/:
                return (long) this.mInput.readByte();
            case ROOT_JNI_LOCAL /*2*/:
                return (long) this.mInput.readShort();
            case STACK_FRAME /*4*/:
                return (long) this.mInput.readInt();
            case ROOT_THREAD_OBJECT /*8*/:
                return this.mInput.readLong();
            default:
                throw new IllegalArgumentException("ID Length must be 1, 2, 4, or 8");
        }
    }

    private String readNullTerminatedString() throws IOException {
        StringBuilder stringBuilder = new StringBuilder();
        int readByte = this.mInput.readByte();
        while (readByte != 0) {
            stringBuilder.append((char) readByte);
            readByte = this.mInput.readByte();
        }
        return stringBuilder.toString();
    }

    private String readUTF8(int i) throws IOException {
        byte[] bArr = new byte[i];
        this.mInput.read(bArr);
        return new String(bArr, "utf-8");
    }

    private int readUnsignedByte() throws IOException {
        return this.mInput.readByte() & ROOT_UNKNOWN;
    }

    private long readUnsignedInt() throws IOException {
        return ((long) this.mInput.readInt()) & 4294967295L;
    }

    private int readUnsignedShort() throws IOException {
        return this.mInput.readShort() & SupportMenu.USER_MASK;
    }

    private void skipFully(long j) throws IOException {
        this.mInput.setPosition(this.mInput.position() + j);
    }

    private int skipValue() throws IOException {
        int typeSize = this.mSnapshot.getTypeSize(Type.getType(readUnsignedByte()));
        skipFully((long) typeSize);
        return typeSize + STRING_IN_UTF8;
    }

    public final Snapshot parse() {
        Snapshot snapshot = new Snapshot(this.mInput);
        this.mSnapshot = snapshot;
        readNullTerminatedString();
        this.mIdSize = this.mInput.readInt();
        this.mSnapshot.setIdSize(this.mIdSize);
        this.mInput.readLong();
        while (this.mInput.hasRemaining()) {
            int readUnsignedByte = readUnsignedByte();
            this.mInput.readInt();
            long readUnsignedInt = readUnsignedInt();
            switch (readUnsignedByte) {
                case STRING_IN_UTF8 /*1*/:
                    try {
                        loadString(((int) readUnsignedInt) - this.mIdSize);
                        break;
                    } catch (EOFException e) {
                        break;
                    }
                case ROOT_JNI_LOCAL /*2*/:
                    loadClass();
                    break;
                case STACK_FRAME /*4*/:
                    loadStackFrame();
                    break;
                case STACK_TRACE /*5*/:
                    loadStackTrace();
                    break;
                case HEAP_DUMP /*12*/:
                    loadHeapDump(readUnsignedInt);
                    this.mSnapshot.setToDefaultHeap();
                    break;
                case HEAP_DUMP_SEGMENT /*28*/:
                    loadHeapDump(readUnsignedInt);
                    this.mSnapshot.setToDefaultHeap();
                    break;
                default:
                    skipFully(readUnsignedInt);
                    break;
            }
        }
        try {
            this.mSnapshot.resolveClasses();
            this.mSnapshot.resolveReferences();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.mClassNames.clear();
        this.mStrings.clear();
        return snapshot;
    }
}
