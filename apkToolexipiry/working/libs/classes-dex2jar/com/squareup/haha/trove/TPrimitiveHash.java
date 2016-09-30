package com.squareup.haha.trove;

public abstract class TPrimitiveHash extends THash {
    protected transient byte[] _states;

    protected final int capacity() {
        return this._states.length;
    }

    public Object clone() {
        TPrimitiveHash tPrimitiveHash = (TPrimitiveHash) super.clone();
        tPrimitiveHash._states = (byte[]) this._states.clone();
        return tPrimitiveHash;
    }

    protected void removeAt(int i) {
        this._states[i] = (byte) 2;
        super.removeAt(i);
    }

    protected int setUp(int i) {
        int up = super.setUp(i);
        this._states = new byte[up];
        return up;
    }
}
