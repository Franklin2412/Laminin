package com.squareup.haha.trove;

import com.squareup.leakcanary.watcher.BuildConfig;

public abstract class TObjectHash<T> extends THash implements TObjectHashingStrategy<T> {
    public static final NULL NULL;
    public static final Object REMOVED;
    protected final TObjectHashingStrategy<T> _hashingStrategy;
    protected transient Object[] _set;

    static final class NULL {
        NULL() {
        }
    }

    static {
        REMOVED = new Object();
        NULL = new NULL();
    }

    public TObjectHash() {
        this._hashingStrategy = this;
    }

    protected final int capacity() {
        return this._set.length;
    }

    public TObjectHash<T> clone() {
        TObjectHash<T> tObjectHash = (TObjectHash) super.clone();
        tObjectHash._set = (Object[]) this._set.clone();
        return tObjectHash;
    }

    public final int computeHashCode(T t) {
        return t != null ? t.hashCode() : 0;
    }

    public boolean contains(Object obj) {
        return index(obj) >= 0;
    }

    public final boolean equals(T t, T t2) {
        return t != null ? t.equals(t2) : t2 == null;
    }

    public final boolean forEach(TObjectProcedure<T> tObjectProcedure) {
        Object[] objArr = this._set;
        int length = objArr.length;
        while (true) {
            int i = length - 1;
            if (length <= 0) {
                return true;
            }
            if (objArr[i] != null && objArr[i] != REMOVED && !tObjectProcedure.execute(objArr[i])) {
                return false;
            }
            length = i;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected final int index(T r7) {
        /*
        r6 = this;
        r2 = r6._set;
        r3 = r2.length;
        r0 = r6._hashingStrategy;
        r0 = r0.computeHashCode(r7);
        r1 = 2147483647; // 0x7fffffff float:NaN double:1.060997895E-314;
        r4 = r0 & r1;
        r0 = r4 % r3;
        r1 = r2[r0];
        if (r1 == 0) goto L_0x003a;
    L_0x0014:
        r5 = REMOVED;
        if (r1 == r5) goto L_0x0020;
    L_0x0018:
        r5 = r6._hashingStrategy;
        r5 = r5.equals(r1, r7);
        if (r5 != 0) goto L_0x003a;
    L_0x0020:
        r1 = r3 + -2;
        r1 = r4 % r1;
        r1 = r1 + 1;
        r0 = r0 - r1;
        if (r0 >= 0) goto L_0x002a;
    L_0x0029:
        r0 = r0 + r3;
    L_0x002a:
        r1 = r2[r0];
        if (r1 == 0) goto L_0x003a;
    L_0x002e:
        r5 = REMOVED;
        if (r1 == r5) goto L_0x0020;
    L_0x0032:
        r5 = r6._hashingStrategy;
        r5 = r5.equals(r1, r7);
        if (r5 == 0) goto L_0x0020;
    L_0x003a:
        if (r1 != 0) goto L_0x003d;
    L_0x003c:
        r0 = -1;
    L_0x003d:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.haha.trove.TObjectHash.index(java.lang.Object):int");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected final int insertionIndex(T r10) {
        /*
        r9 = this;
        r4 = -1;
        r5 = r9._set;
        r6 = r5.length;
        r0 = r9._hashingStrategy;
        r0 = r0.computeHashCode(r10);
        r1 = 2147483647; // 0x7fffffff float:NaN double:1.060997895E-314;
        r1 = r1 & r0;
        r0 = r1 % r6;
        r2 = r5[r0];
        if (r2 != 0) goto L_0x0015;
    L_0x0014:
        return r0;
    L_0x0015:
        r3 = REMOVED;
        if (r2 == r3) goto L_0x0025;
    L_0x0019:
        r3 = r9._hashingStrategy;
        r3 = r3.equals(r2, r10);
        if (r3 == 0) goto L_0x0025;
    L_0x0021:
        r0 = -r0;
        r0 = r0 + -1;
        goto L_0x0014;
    L_0x0025:
        r3 = r6 + -2;
        r1 = r1 % r3;
        r7 = r1 + 1;
        r1 = REMOVED;
        if (r2 != r1) goto L_0x006b;
    L_0x002e:
        r3 = r0;
    L_0x002f:
        r0 = r0 - r7;
        if (r0 >= 0) goto L_0x0083;
    L_0x0032:
        r0 = r0 + r6;
        r1 = r0;
    L_0x0034:
        r2 = r5[r1];
        if (r3 != r4) goto L_0x0081;
    L_0x0038:
        r0 = REMOVED;
        if (r2 != r0) goto L_0x0081;
    L_0x003c:
        r0 = r1;
    L_0x003d:
        if (r2 == 0) goto L_0x004b;
    L_0x003f:
        r3 = REMOVED;
        if (r2 == r3) goto L_0x004b;
    L_0x0043:
        r3 = r9._hashingStrategy;
        r3 = r3.equals(r2, r10);
        if (r3 == 0) goto L_0x007e;
    L_0x004b:
        r3 = REMOVED;
        if (r2 != r3) goto L_0x0070;
    L_0x004f:
        r8 = r2;
        r2 = r1;
        r1 = r8;
    L_0x0052:
        if (r1 == 0) goto L_0x006d;
    L_0x0054:
        r3 = REMOVED;
        if (r1 == r3) goto L_0x0060;
    L_0x0058:
        r3 = r9._hashingStrategy;
        r3 = r3.equals(r1, r10);
        if (r3 != 0) goto L_0x006d;
    L_0x0060:
        r1 = r2 - r7;
        if (r1 >= 0) goto L_0x0065;
    L_0x0064:
        r1 = r1 + r6;
    L_0x0065:
        r2 = r5[r1];
        r8 = r2;
        r2 = r1;
        r1 = r8;
        goto L_0x0052;
    L_0x006b:
        r3 = r4;
        goto L_0x002f;
    L_0x006d:
        r8 = r1;
        r1 = r2;
        r2 = r8;
    L_0x0070:
        if (r2 == 0) goto L_0x007a;
    L_0x0072:
        r3 = REMOVED;
        if (r2 == r3) goto L_0x007a;
    L_0x0076:
        r0 = -r1;
        r0 = r0 + -1;
        goto L_0x0014;
    L_0x007a:
        if (r0 != r4) goto L_0x0014;
    L_0x007c:
        r0 = r1;
        goto L_0x0014;
    L_0x007e:
        r3 = r0;
        r0 = r1;
        goto L_0x002f;
    L_0x0081:
        r0 = r3;
        goto L_0x003d;
    L_0x0083:
        r1 = r0;
        goto L_0x0034;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.haha.trove.TObjectHash.insertionIndex(java.lang.Object):int");
    }

    protected void removeAt(int i) {
        this._set[i] = REMOVED;
        super.removeAt(i);
    }

    protected int setUp(int i) {
        int up = super.setUp(i);
        this._set = new Object[up];
        return up;
    }

    protected final void throwObjectContractViolation(Object obj, Object obj2) throws IllegalArgumentException {
        throw new IllegalArgumentException("Equal objects must have equal hashcodes. During rehashing, Trove discovered that the following two objects claim to be equal (as in java.lang.Object.equals() or TObjectHashingStrategy.equals()) but their hashCodes (or those calculated by your TObjectHashingStrategy) are not equal.This violates the general contract of java.lang.Object.hashCode().  See bullet point two in that method's documentation. object #1 =" + obj + (obj == null ? BuildConfig.VERSION_NAME : " (" + obj.getClass() + ")") + ", hashCode=" + this._hashingStrategy.computeHashCode(obj) + "; object #2 =" + obj2 + (obj2 == null ? BuildConfig.VERSION_NAME : " (" + obj2.getClass() + ")") + ", hashCode=" + this._hashingStrategy.computeHashCode(obj2));
    }
}
