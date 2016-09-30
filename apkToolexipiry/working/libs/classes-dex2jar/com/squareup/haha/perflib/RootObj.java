package com.squareup.haha.perflib;

public class RootObj extends Instance {
    public static final String UNDEFINED_CLASS_NAME = "no class defined!!";
    int mIndex;
    int mThread;
    RootType mType;

    public RootObj(RootType rootType) {
        this(rootType, 0, 0, null);
    }

    public RootObj(RootType rootType, long j) {
        this(rootType, j, 0, null);
    }

    public RootObj(RootType rootType, long j, int i, StackTrace stackTrace) {
        super(j, stackTrace);
        this.mType = RootType.UNKNOWN;
        this.mType = rootType;
        this.mThread = i;
    }

    public final void accept(Visitor visitor) {
        visitor.visitRootObj(this);
        Instance referredInstance = getReferredInstance();
        if (referredInstance != null) {
            visitor.visitLater(null, referredInstance);
        }
    }

    public final String getClassName(Snapshot snapshot) {
        ClassObj findClass = this.mType == RootType.SYSTEM_CLASS ? snapshot.findClass(this.mId) : snapshot.findInstance(this.mId).getClassObj();
        return findClass == null ? UNDEFINED_CLASS_NAME : findClass.mClassName;
    }

    public Instance getReferredInstance() {
        return this.mType == RootType.SYSTEM_CLASS ? this.mHeap.mSnapshot.findClass(this.mId) : this.mHeap.mSnapshot.findInstance(this.mId);
    }

    public RootType getRootType() {
        return this.mType;
    }

    public final String toString() {
        return String.format("%s@0x%08x", new Object[]{this.mType.getName(), Long.valueOf(this.mId)});
    }
}
