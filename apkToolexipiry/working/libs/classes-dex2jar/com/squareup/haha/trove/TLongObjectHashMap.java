package com.squareup.haha.trove;

import com.squareup.haha.guava.base.Ascii;

public final class TLongObjectHashMap<V> extends THash implements TLongHashingStrategy {
    protected final TLongHashingStrategy _hashingStrategy;
    private transient long[] _set;
    private transient V[] _values;

    static final class EqProcedure<V> implements TLongObjectProcedure<V> {
        private final TLongObjectHashMap<V> _otherMap;

        EqProcedure(TLongObjectHashMap<V> tLongObjectHashMap) {
            this._otherMap = tLongObjectHashMap;
        }

        public final boolean execute(long j, V v) {
            if (this._otherMap.index(j) >= 0) {
                V v2 = this._otherMap.get(j);
                boolean z = v == v2 || (v != null && v.equals(v2));
                if (z) {
                    return true;
                }
            }
            return false;
        }
    }

    final class HashProcedure implements TLongObjectProcedure<V> {
        int h;

        HashProcedure() {
        }

        public final boolean execute(long j, V v) {
            this.h += TLongObjectHashMap.this._hashingStrategy.computeHashCode(j) ^ Ascii.hash(v);
            return true;
        }
    }

    public TLongObjectHashMap() {
        this._hashingStrategy = this;
    }

    private boolean forEachEntry(TLongObjectProcedure<V> tLongObjectProcedure) {
        long[] jArr = this._set;
        Object[] objArr = this._values;
        int length = jArr.length;
        while (true) {
            int i = length - 1;
            if (length <= 0) {
                return true;
            }
            if (isFull(objArr, i) && !tLongObjectProcedure.execute(jArr[i], unwrapNull(objArr[i]))) {
                return false;
            }
            length = i;
        }
    }

    private int insertionIndex(long j) {
        Object[] objArr = this._values;
        long[] jArr = this._set;
        int length = jArr.length;
        int computeHashCode = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED & this._hashingStrategy.computeHashCode(j);
        int i = computeHashCode % length;
        if (isFree(objArr, i)) {
            return i;
        }
        if (isFull(objArr, i) && jArr[i] == j) {
            return (-i) - 1;
        }
        int i2 = (computeHashCode % (length - 2)) + 1;
        if (isRemoved(objArr, i)) {
            computeHashCode = i;
        } else {
            computeHashCode = i;
            i = -1;
        }
        do {
            computeHashCode -= i2;
            if (computeHashCode < 0) {
                computeHashCode += length;
            }
            if (i == -1 && isRemoved(objArr, computeHashCode)) {
                i = computeHashCode;
            }
            if (!isFull(objArr, computeHashCode)) {
                break;
            }
        } while (jArr[computeHashCode] != j);
        if (isRemoved(objArr, computeHashCode)) {
            while (!isFree(objArr, computeHashCode) && (isRemoved(objArr, computeHashCode) || jArr[computeHashCode] != j)) {
                computeHashCode -= i2;
                if (computeHashCode < 0) {
                    computeHashCode += length;
                }
            }
        }
        return isFull(objArr, computeHashCode) ? (-computeHashCode) - 1 : i == -1 ? computeHashCode : i;
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
        long[] jArr = this._set;
        Object[] objArr = this._values;
        int length = jArr.length;
        while (true) {
            int i = length - 1;
            if (length > 0) {
                jArr[i] = 0;
                objArr[i] = null;
                length = i;
            } else {
                return;
            }
        }
    }

    public final /* bridge */ /* synthetic */ Object clone() {
        TLongObjectHashMap tLongObjectHashMap = (TLongObjectHashMap) super.clone();
        tLongObjectHashMap._values = (Object[]) this._values.clone();
        return tLongObjectHashMap;
    }

    public final int computeHashCode(long j) {
        return (int) ((j >> 32) ^ j);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof TLongObjectHashMap) {
            TLongObjectHashMap tLongObjectHashMap = (TLongObjectHashMap) obj;
            if (tLongObjectHashMap.size() == size()) {
                return forEachEntry(new EqProcedure(tLongObjectHashMap));
            }
        }
        return false;
    }

    public final boolean forEachValue(TObjectProcedure<V> tObjectProcedure) {
        Object[] objArr = this._values;
        int length = objArr.length;
        while (true) {
            int i = length - 1;
            if (length <= 0) {
                return true;
            }
            if (isFull(objArr, i) && !tObjectProcedure.execute(unwrapNull(objArr[i]))) {
                return false;
            }
            length = i;
        }
    }

    public final V get(long j) {
        int index = index(j);
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
    protected final int index(long r10) {
        /*
        r9 = this;
        r1 = r9._set;
        r2 = r9._values;
        r3 = r1.length;
        r0 = r9._hashingStrategy;
        r0 = r0.computeHashCode(r10);
        r4 = 2147483647; // 0x7fffffff float:NaN double:1.060997895E-314;
        r4 = r4 & r0;
        r0 = r4 % r3;
        r5 = isFree(r2, r0);
        if (r5 != 0) goto L_0x003f;
    L_0x0017:
        r5 = isRemoved(r2, r0);
        if (r5 != 0) goto L_0x0023;
    L_0x001d:
        r6 = r1[r0];
        r5 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1));
        if (r5 == 0) goto L_0x003f;
    L_0x0023:
        r5 = r3 + -2;
        r5 = r4 % r5;
        r5 = r5 + 1;
        r0 = r0 - r5;
        if (r0 >= 0) goto L_0x002d;
    L_0x002c:
        r0 = r0 + r3;
    L_0x002d:
        r5 = isFree(r2, r0);
        if (r5 != 0) goto L_0x003f;
    L_0x0033:
        r5 = isRemoved(r2, r0);
        if (r5 != 0) goto L_0x0023;
    L_0x0039:
        r6 = r1[r0];
        r5 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1));
        if (r5 != 0) goto L_0x0023;
    L_0x003f:
        r1 = isFree(r2, r0);
        if (r1 == 0) goto L_0x0046;
    L_0x0045:
        r0 = -1;
    L_0x0046:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.haha.trove.TLongObjectHashMap.index(long):int");
    }

    public final V put(long j, V v) {
        boolean z = false;
        V v2 = null;
        int insertionIndex = insertionIndex(j);
        boolean z2 = true;
        if (insertionIndex < 0) {
            int i = (-insertionIndex) - 1;
            v2 = unwrapNull(this._values[i]);
            insertionIndex = i;
            z2 = false;
        } else {
            z = isFree(this._values, insertionIndex);
        }
        this._set[insertionIndex] = j;
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
        long[] jArr = this._set;
        Object[] objArr = this._values;
        this._set = new long[i];
        this._values = new Object[i];
        int i2 = length;
        while (true) {
            length = i2 - 1;
            if (i2 <= 0) {
                return;
            }
            if (isFull(objArr, length)) {
                long j = jArr[length];
                i2 = insertionIndex(j);
                this._set[i2] = j;
                this._values[i2] = objArr[length];
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
        this._set = new long[up];
        return up;
    }
}
