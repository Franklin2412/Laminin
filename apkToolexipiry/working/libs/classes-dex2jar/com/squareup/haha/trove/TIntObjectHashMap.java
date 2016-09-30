package com.squareup.haha.trove;

import com.squareup.haha.guava.base.Ascii;

public final class TIntObjectHashMap<V> extends THash implements TIntHashingStrategy {
    protected final TIntHashingStrategy _hashingStrategy;
    private transient int[] _set;
    private transient V[] _values;

    static final class EqProcedure<V> implements TIntObjectProcedure<V> {
        private final TIntObjectHashMap<V> _otherMap;

        EqProcedure(TIntObjectHashMap<V> tIntObjectHashMap) {
            this._otherMap = tIntObjectHashMap;
        }

        public final boolean execute(int i, V v) {
            if (this._otherMap.index(i) >= 0) {
                V v2 = this._otherMap.get(i);
                boolean z = v == v2 || (v != null && v.equals(v2));
                if (z) {
                    return true;
                }
            }
            return false;
        }
    }

    final class HashProcedure implements TIntObjectProcedure<V> {
        int h;

        HashProcedure() {
        }

        public final boolean execute(int i, V v) {
            this.h += TIntObjectHashMap.this._hashingStrategy.computeHashCode(i) ^ Ascii.hash(v);
            return true;
        }
    }

    public TIntObjectHashMap() {
        this._hashingStrategy = this;
    }

    private boolean forEachEntry(TIntObjectProcedure<V> tIntObjectProcedure) {
        int[] iArr = this._set;
        Object[] objArr = this._values;
        int length = iArr.length;
        while (true) {
            int i = length - 1;
            if (length <= 0) {
                return true;
            }
            if (isFull(objArr, i) && !tIntObjectProcedure.execute(iArr[i], unwrapNull(objArr[i]))) {
                return false;
            }
            length = i;
        }
    }

    private int insertionIndex(int i) {
        Object[] objArr = this._values;
        int[] iArr = this._set;
        int length = iArr.length;
        int computeHashCode = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED & this._hashingStrategy.computeHashCode(i);
        int i2 = computeHashCode % length;
        if (isFree(objArr, i2)) {
            return i2;
        }
        if (isFull(objArr, i2) && iArr[i2] == i) {
            return (-i2) - 1;
        }
        int i3 = (computeHashCode % (length - 2)) + 1;
        if (isRemoved(objArr, i2)) {
            computeHashCode = i2;
        } else {
            computeHashCode = i2;
            i2 = -1;
        }
        do {
            computeHashCode -= i3;
            if (computeHashCode < 0) {
                computeHashCode += length;
            }
            if (i2 == -1 && isRemoved(objArr, computeHashCode)) {
                i2 = computeHashCode;
            }
            if (!isFull(objArr, computeHashCode)) {
                break;
            }
        } while (iArr[computeHashCode] != i);
        if (isRemoved(objArr, computeHashCode)) {
            while (!isFree(objArr, computeHashCode) && (isRemoved(objArr, computeHashCode) || iArr[computeHashCode] != i)) {
                computeHashCode -= i3;
                if (computeHashCode < 0) {
                    computeHashCode += length;
                }
            }
        }
        return isFull(objArr, computeHashCode) ? (-computeHashCode) - 1 : i2 == -1 ? computeHashCode : i2;
    }

    private static boolean isFree(Object[] objArr, int i) {
        return objArr[i] == null;
    }

    private static boolean isFull(Object[] objArr, int i) {
        Object obj = objArr[i];
        return (obj == null || obj == TObjectHash.REMOVED) ? false : true;
    }

    private static boolean isRemoved(Object[] objArr, int i) {
        return objArr[i] == TObjectHash.REMOVED;
    }

    private static <V> V unwrapNull(V v) {
        return v == TObjectHash.NULL ? null : v;
    }

    protected final int capacity() {
        return this._values.length;
    }

    public final void clear() {
        super.clear();
        int[] iArr = this._set;
        Object[] objArr = this._values;
        int length = iArr.length;
        while (true) {
            int i = length - 1;
            if (length > 0) {
                iArr[i] = 0;
                objArr[i] = null;
                length = i;
            } else {
                return;
            }
        }
    }

    public final /* bridge */ /* synthetic */ Object clone() {
        TIntObjectHashMap tIntObjectHashMap = (TIntObjectHashMap) super.clone();
        tIntObjectHashMap._values = (Object[]) this._values.clone();
        return tIntObjectHashMap;
    }

    public final int computeHashCode(int i) {
        return i;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof TIntObjectHashMap) {
            TIntObjectHashMap tIntObjectHashMap = (TIntObjectHashMap) obj;
            if (tIntObjectHashMap.size() == size()) {
                return forEachEntry(new EqProcedure(tIntObjectHashMap));
            }
        }
        return false;
    }

    public final V get(int i) {
        int index = index(i);
        return index < 0 ? null : unwrapNull(this._values[index]);
    }

    public final Object[] getValues() {
        Object[] objArr = new Object[size()];
        Object[] objArr2 = this._values;
        int length = objArr2.length;
        int i = 0;
        while (true) {
            int i2 = length - 1;
            if (length <= 0) {
                return objArr;
            }
            if (isFull(objArr2, i2)) {
                objArr[i] = unwrapNull(objArr2[i2]);
                i++;
                length = i2;
            } else {
                length = i2;
            }
        }
    }

    public final int hashCode() {
        Object hashProcedure = new HashProcedure();
        forEachEntry(hashProcedure);
        return hashProcedure.h;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected final int index(int r7) {
        /*
        r6 = this;
        r1 = r6._set;
        r2 = r6._values;
        r3 = r1.length;
        r0 = r6._hashingStrategy;
        r0 = r0.computeHashCode(r7);
        r4 = 2147483647; // 0x7fffffff float:NaN double:1.060997895E-314;
        r4 = r4 & r0;
        r0 = r4 % r3;
        r5 = isFree(r2, r0);
        if (r5 != 0) goto L_0x003b;
    L_0x0017:
        r5 = isRemoved(r2, r0);
        if (r5 != 0) goto L_0x0021;
    L_0x001d:
        r5 = r1[r0];
        if (r5 == r7) goto L_0x003b;
    L_0x0021:
        r5 = r3 + -2;
        r5 = r4 % r5;
        r5 = r5 + 1;
        r0 = r0 - r5;
        if (r0 >= 0) goto L_0x002b;
    L_0x002a:
        r0 = r0 + r3;
    L_0x002b:
        r5 = isFree(r2, r0);
        if (r5 != 0) goto L_0x003b;
    L_0x0031:
        r5 = isRemoved(r2, r0);
        if (r5 != 0) goto L_0x0021;
    L_0x0037:
        r5 = r1[r0];
        if (r5 != r7) goto L_0x0021;
    L_0x003b:
        r1 = isFree(r2, r0);
        if (r1 == 0) goto L_0x0042;
    L_0x0041:
        r0 = -1;
    L_0x0042:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.haha.trove.TIntObjectHashMap.index(int):int");
    }

    public final int[] keys() {
        int[] iArr = new int[size()];
        int[] iArr2 = this._set;
        Object[] objArr = this._values;
        int length = iArr2.length;
        int i = 0;
        while (true) {
            int i2 = length - 1;
            if (length <= 0) {
                return iArr;
            }
            if (isFull(objArr, i2)) {
                iArr[i] = iArr2[i2];
                i++;
                length = i2;
            } else {
                length = i2;
            }
        }
    }

    public final V put(int i, V v) {
        boolean z = false;
        V v2 = null;
        int insertionIndex = insertionIndex(i);
        boolean z2 = true;
        if (insertionIndex < 0) {
            int i2 = (-insertionIndex) - 1;
            v2 = unwrapNull(this._values[i2]);
            insertionIndex = i2;
            z2 = false;
        } else {
            z = isFree(this._values, insertionIndex);
        }
        this._set[insertionIndex] = i;
        Object[] objArr = this._values;
        if (v == null) {
            v = TObjectHash.NULL;
        }
        objArr[insertionIndex] = v;
        if (z2) {
            postInsertHook(z);
        }
        return v2;
    }

    protected final void rehash(int i) {
        int length = this._set.length;
        int[] iArr = this._set;
        Object[] objArr = this._values;
        this._set = new int[i];
        this._values = new Object[i];
        int i2 = length;
        while (true) {
            length = i2 - 1;
            if (i2 <= 0) {
                return;
            }
            if (isFull(objArr, length)) {
                i2 = iArr[length];
                int insertionIndex = insertionIndex(i2);
                this._set[insertionIndex] = i2;
                this._values[insertionIndex] = objArr[length];
                i2 = length;
            } else {
                i2 = length;
            }
        }
    }

    protected final void removeAt(int i) {
        this._values[i] = TObjectHash.REMOVED;
        super.removeAt(i);
    }

    protected final int setUp(int i) {
        int up = super.setUp(i);
        this._values = new Object[up];
        this._set = new int[up];
        return up;
    }
}
