package com.squareup.haha.trove;

public final class TLongHashSet extends TLongHash {

    /* renamed from: com.squareup.haha.trove.TLongHashSet.1 */
    final class AnonymousClass1 implements TLongProcedure {
        private /* synthetic */ TLongHashSet val$that;

        AnonymousClass1(TLongHashSet tLongHashSet, TLongHashSet tLongHashSet2) {
            this.val$that = tLongHashSet2;
        }

        public final boolean execute(long j) {
            return this.val$that.contains(j);
        }
    }

    final class HashProcedure implements TLongProcedure {
        int h;

        HashProcedure() {
        }

        public final boolean execute(long j) {
            this.h += TLongHashSet.this._hashingStrategy.computeHashCode(j);
            return true;
        }
    }

    public final boolean add(long j) {
        boolean z = false;
        int insertionIndex = insertionIndex(j);
        if (insertionIndex < 0) {
            return false;
        }
        byte b = this._states[insertionIndex];
        this._set[insertionIndex] = j;
        this._states[insertionIndex] = (byte) 1;
        if (b == null) {
            z = true;
        }
        postInsertHook(z);
        return true;
    }

    public final void clear() {
        super.clear();
        long[] jArr = this._set;
        byte[] bArr = this._states;
        int length = jArr.length;
        while (true) {
            int i = length - 1;
            if (length > 0) {
                jArr[i] = 0;
                bArr[i] = (byte) 0;
                length = i;
            } else {
                return;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof TLongHashSet) {
            TLongHashSet tLongHashSet = (TLongHashSet) obj;
            if (tLongHashSet.size() == size()) {
                return forEach(new AnonymousClass1(this, tLongHashSet));
            }
        }
        return false;
    }

    public final int hashCode() {
        Object hashProcedure = new HashProcedure();
        forEach(hashProcedure);
        return hashProcedure.h;
    }

    protected final void rehash(int i) {
        int length = this._set.length;
        long[] jArr = this._set;
        byte[] bArr = this._states;
        this._set = new long[i];
        this._states = new byte[i];
        while (true) {
            int i2 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i2] == (byte) 1) {
                long j = jArr[i2];
                length = insertionIndex(j);
                this._set[length] = j;
                this._states[length] = (byte) 1;
                length = i2;
            } else {
                length = i2;
            }
        }
    }
}
