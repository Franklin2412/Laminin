package com.squareup.haha.perflib;

import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.MotionEventCompat;
import com.payu.testapp.R;
import com.squareup.haha.guava.collect.ImmutableList;
import com.squareup.haha.perflib.io.HprofBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public abstract class Instance {
    static final /* synthetic */ boolean $assertionsDisabled;
    long mClassId;
    int mDistanceToGcRoot;
    private final ArrayList<Instance> mHardReferences;
    Heap mHeap;
    protected final long mId;
    private Instance mImmediateDominator;
    Instance mNextInstanceToGcRoot;
    boolean mReferencesAdded;
    private long[] mRetainedSizes;
    int mSize;
    private ArrayList<Instance> mSoftReferences;
    protected final StackTrace mStack;
    int mTopologicalOrder;

    /* renamed from: com.squareup.haha.perflib.Instance.1 */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$android$tools$perflib$heap$Type;

        static {
            $SwitchMap$com$android$tools$perflib$heap$Type = new int[Type.values().length];
            try {
                $SwitchMap$com$android$tools$perflib$heap$Type[Type.OBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$android$tools$perflib$heap$Type[Type.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$android$tools$perflib$heap$Type[Type.CHAR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$android$tools$perflib$heap$Type[Type.FLOAT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$android$tools$perflib$heap$Type[Type.DOUBLE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$android$tools$perflib$heap$Type[Type.BYTE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$android$tools$perflib$heap$Type[Type.SHORT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$android$tools$perflib$heap$Type[Type.INT.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$android$tools$perflib$heap$Type[Type.LONG.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    public static class CompositeSizeVisitor extends NonRecursiveVisitor {
        int mSize;

        public CompositeSizeVisitor() {
            this.mSize = 0;
        }

        protected void defaultAction(Instance instance) {
            this.mSize += instance.getSize();
        }

        public int getCompositeSize() {
            return this.mSize;
        }
    }

    static {
        $assertionsDisabled = !Instance.class.desiredAssertionStatus();
    }

    Instance(long j, StackTrace stackTrace) {
        this.mDistanceToGcRoot = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.mReferencesAdded = false;
        this.mNextInstanceToGcRoot = null;
        this.mHardReferences = new ArrayList();
        this.mSoftReferences = null;
        this.mId = j;
        this.mStack = stackTrace;
    }

    public abstract void accept(Visitor visitor);

    public void addReference(Field field, Instance instance) {
        if (instance.getIsSoftReference() && field != null && field.getName().equals("referent")) {
            if (this.mSoftReferences == null) {
                this.mSoftReferences = new ArrayList();
            }
            this.mSoftReferences.add(instance);
            return;
        }
        this.mHardReferences.add(instance);
    }

    public void addRetainedSize(int i, long j) {
        long[] jArr = this.mRetainedSizes;
        jArr[i] = jArr[i] + j;
    }

    protected HprofBuffer getBuffer() {
        return this.mHeap.mSnapshot.mBuffer;
    }

    public ClassObj getClassObj() {
        return this.mHeap.mSnapshot.findClass(this.mClassId);
    }

    public final int getCompositeSize() {
        CompositeSizeVisitor compositeSizeVisitor = new CompositeSizeVisitor();
        compositeSizeVisitor.doVisit(ImmutableList.of(this));
        return compositeSizeVisitor.getCompositeSize();
    }

    public int getDistanceToGcRoot() {
        return this.mDistanceToGcRoot;
    }

    public ArrayList<Instance> getHardReferences() {
        return this.mHardReferences;
    }

    public Heap getHeap() {
        return this.mHeap;
    }

    public long getId() {
        return this.mId;
    }

    public Instance getImmediateDominator() {
        return this.mImmediateDominator;
    }

    public boolean getIsSoftReference() {
        return false;
    }

    public Instance getNextInstanceToGcRoot() {
        return this.mNextInstanceToGcRoot;
    }

    public long getRetainedSize(int i) {
        return this.mRetainedSizes[i];
    }

    public int getSize() {
        return this.mSize;
    }

    public ArrayList<Instance> getSoftReferences() {
        return this.mSoftReferences;
    }

    public int getTopologicalOrder() {
        return this.mTopologicalOrder;
    }

    public long getTotalRetainedSize() {
        long j = 0;
        if (this.mRetainedSizes != null) {
            for (long j2 : this.mRetainedSizes) {
                j += j2;
            }
        }
        return j;
    }

    public long getUniqueId() {
        return getId() & this.mHeap.mSnapshot.getIdSizeMask();
    }

    protected long readId() {
        switch (this.mHeap.mSnapshot.getTypeSize(Type.OBJECT)) {
            case R.styleable.WaitingDots_period /*1*/:
                return (long) getBuffer().readByte();
            case R.styleable.WaitingDots_jumpHeight /*2*/:
                return (long) getBuffer().readShort();
            case R.styleable.View_theme /*4*/:
                return (long) getBuffer().readInt();
            case R.styleable.Toolbar_contentInsetRight /*8*/:
                return getBuffer().readLong();
            default:
                return 0;
        }
    }

    protected int readUnsignedByte() {
        return getBuffer().readByte() & MotionEventCompat.ACTION_MASK;
    }

    protected int readUnsignedShort() {
        return getBuffer().readShort() & SupportMenu.USER_MASK;
    }

    protected Object readValue(Type type) {
        switch (AnonymousClass1.$SwitchMap$com$android$tools$perflib$heap$Type[type.ordinal()]) {
            case R.styleable.WaitingDots_period /*1*/:
                return this.mHeap.mSnapshot.findInstance(readId());
            case R.styleable.WaitingDots_jumpHeight /*2*/:
                return Boolean.valueOf(getBuffer().readByte() != null);
            case R.styleable.WaitingDots_autoplay /*3*/:
                return Character.valueOf(getBuffer().readChar());
            case R.styleable.View_theme /*4*/:
                return Float.valueOf(getBuffer().readFloat());
            case R.styleable.ViewPagerIndicator_vpiUnderlinePageIndicatorStyle /*5*/:
                return Double.valueOf(getBuffer().readDouble());
            case R.styleable.Toolbar_contentInsetEnd /*6*/:
                return Byte.valueOf(getBuffer().readByte());
            case R.styleable.Toolbar_contentInsetLeft /*7*/:
                return Short.valueOf(getBuffer().readShort());
            case R.styleable.Toolbar_contentInsetRight /*8*/:
                return Integer.valueOf(getBuffer().readInt());
            case R.styleable.Toolbar_popupTheme /*9*/:
                return Long.valueOf(getBuffer().readLong());
            default:
                return null;
        }
    }

    public void resetRetainedSize() {
        List list = this.mHeap.mSnapshot.mHeaps;
        if (this.mRetainedSizes == null) {
            this.mRetainedSizes = new long[list.size()];
        } else {
            Arrays.fill(this.mRetainedSizes, 0);
        }
        this.mRetainedSizes[list.indexOf(this.mHeap)] = (long) getSize();
    }

    public void setClassId(long j) {
        this.mClassId = j;
    }

    public void setDistanceToGcRoot(int i) {
        if ($assertionsDisabled || i < this.mDistanceToGcRoot) {
            this.mDistanceToGcRoot = i;
            return;
        }
        throw new AssertionError();
    }

    public void setHeap(Heap heap) {
        this.mHeap = heap;
    }

    public void setImmediateDominator(Instance instance) {
        this.mImmediateDominator = instance;
    }

    public void setNextInstanceToGcRoot(Instance instance) {
        this.mNextInstanceToGcRoot = instance;
    }

    public void setSize(int i) {
        this.mSize = i;
    }

    public void setTopologicalOrder(int i) {
        this.mTopologicalOrder = i;
    }
}
