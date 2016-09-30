package com.squareup.haha.trove;

public abstract class TIntHash extends TPrimitiveHash implements TIntHashingStrategy {
    private transient int[] _set;

    public Object clone() {
        TIntHash tIntHash = (TIntHash) super.clone();
        tIntHash._set = (int[]) this._set.clone();
        return tIntHash;
    }

    public final int computeHashCode(int i) {
        return i;
    }

    protected final void removeAt(int i) {
        this._set[i] = 0;
        super.removeAt(i);
    }

    protected final int setUp(int i) {
        int up = super.setUp(i);
        this._set = new int[up];
        return up;
    }
}
