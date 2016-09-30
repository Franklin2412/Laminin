package com.squareup.haha.trove;

public abstract class TLongHash extends TPrimitiveHash implements TLongHashingStrategy {
    protected TLongHashingStrategy _hashingStrategy;
    protected transient long[] _set;

    public TLongHash() {
        this._hashingStrategy = this;
    }

    public Object clone() {
        TLongHash tLongHash = (TLongHash) super.clone();
        tLongHash._set = (long[]) this._set.clone();
        return tLongHash;
    }

    public final int computeHashCode(long j) {
        return (int) ((j >> 32) ^ j);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean contains(long r10) {
        /*
        r9 = this;
        r8 = 2;
        r1 = r9._states;
        r2 = r9._set;
        r3 = r1.length;
        r0 = 2147483647; // 0x7fffffff float:NaN double:1.060997895E-314;
        r4 = r9._hashingStrategy;
        r4 = r4.computeHashCode(r10);
        r4 = r4 & r0;
        r0 = r4 % r3;
        r5 = r1[r0];
        if (r5 == 0) goto L_0x0038;
    L_0x0016:
        r5 = r1[r0];
        if (r5 == r8) goto L_0x0020;
    L_0x001a:
        r6 = r2[r0];
        r5 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1));
        if (r5 == 0) goto L_0x0038;
    L_0x0020:
        r5 = r3 + -2;
        r5 = r4 % r5;
        r5 = r5 + 1;
        r0 = r0 - r5;
        if (r0 >= 0) goto L_0x002a;
    L_0x0029:
        r0 = r0 + r3;
    L_0x002a:
        r5 = r1[r0];
        if (r5 == 0) goto L_0x0038;
    L_0x002e:
        r5 = r1[r0];
        if (r5 == r8) goto L_0x0020;
    L_0x0032:
        r6 = r2[r0];
        r5 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1));
        if (r5 != 0) goto L_0x0020;
    L_0x0038:
        r1 = r1[r0];
        if (r1 != 0) goto L_0x003d;
    L_0x003c:
        r0 = -1;
    L_0x003d:
        if (r0 < 0) goto L_0x0041;
    L_0x003f:
        r0 = 1;
    L_0x0040:
        return r0;
    L_0x0041:
        r0 = 0;
        goto L_0x0040;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.haha.trove.TLongHash.contains(long):boolean");
    }

    public final boolean forEach(TLongProcedure tLongProcedure) {
        byte[] bArr = this._states;
        long[] jArr = this._set;
        int length = jArr.length;
        while (true) {
            int i = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i] == (byte) 1 && !tLongProcedure.execute(jArr[i])) {
                return false;
            }
            length = i;
        }
    }

    protected final int insertionIndex(long j) {
        byte[] bArr = this._states;
        long[] jArr = this._set;
        int length = bArr.length;
        int computeHashCode = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED & this._hashingStrategy.computeHashCode(j);
        int i = computeHashCode % length;
        if (bArr[i] == null) {
            return i;
        }
        if (bArr[i] == (byte) 1 && jArr[i] == j) {
            return (-i) - 1;
        }
        int i2 = (computeHashCode % (length - 2)) + 1;
        do {
            i -= i2;
            if (i < 0) {
                i += length;
            }
            if (bArr[i] != (byte) 1) {
                break;
            }
        } while (jArr[i] != j);
        if (bArr[i] != (byte) 2) {
            return bArr[i] == (byte) 1 ? (-i) - 1 : i;
        } else {
            computeHashCode = i;
            while (bArr[computeHashCode] != null && (bArr[computeHashCode] == (byte) 2 || jArr[computeHashCode] != j)) {
                computeHashCode -= i2;
                if (computeHashCode < 0) {
                    computeHashCode += length;
                }
            }
            return bArr[computeHashCode] == (byte) 1 ? (-computeHashCode) - 1 : i;
        }
    }

    protected final void removeAt(int i) {
        this._set[i] = 0;
        super.removeAt(i);
    }

    protected final int setUp(int i) {
        int up = super.setUp(i);
        this._set = new long[up];
        return up;
    }
}
