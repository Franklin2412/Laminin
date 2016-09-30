package com.squareup.haha.trove;

public abstract class THash implements Cloneable {
    private transient int _deadkeys;
    private transient int _free;
    private float _loadFactor;
    private int _maxSize;
    private transient int _size;

    public THash() {
        this(4, 0.8f);
    }

    private THash(int i, float f) {
        this._loadFactor = 0.8f;
        setUp(6);
    }

    private void computeMaxSize(int i) {
        this._maxSize = Math.min(i - 1, (int) (((float) i) * this._loadFactor));
        this._free = i - this._size;
        this._deadkeys = 0;
    }

    protected abstract int capacity();

    public void clear() {
        this._size = 0;
        this._free = capacity();
        this._deadkeys = 0;
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    public final void ensureCapacity(int i) {
        if (i > this._maxSize - size()) {
            rehash(PrimeFinder.nextPrime(((int) (((float) i) + (((float) size()) / this._loadFactor))) + 2));
            computeMaxSize(capacity());
        }
    }

    public boolean isEmpty() {
        return this._size == 0;
    }

    protected final void postInsertHook(boolean z) {
        if (z) {
            this._free--;
        } else {
            this._deadkeys--;
        }
        int i = this._size + 1;
        this._size = i;
        if (i > this._maxSize || this._free == 0) {
            rehash(PrimeFinder.nextPrime(capacity() << 1));
            computeMaxSize(capacity());
        }
    }

    protected abstract void rehash(int i);

    protected void removeAt(int i) {
        this._size--;
        this._deadkeys++;
        if (this._deadkeys > this._size && capacity() > 42) {
            rehash(PrimeFinder.nextPrime(((int) (((float) size()) / this._loadFactor)) + 2));
            computeMaxSize(capacity());
        }
    }

    protected int setUp(int i) {
        int nextPrime = PrimeFinder.nextPrime(i);
        computeMaxSize(nextPrime);
        return nextPrime;
    }

    public int size() {
        return this._size;
    }

    public final void startCompactingOnRemove(boolean z) {
        if (this._deadkeys >= 0) {
            throw new IllegalStateException("Unpaired stop/startCompactingOnRemove");
        }
        this._deadkeys += capacity();
    }

    public final void stopCompactingOnRemove() {
        if (this._deadkeys < 0) {
            throw new IllegalStateException("Unpaired stop/startCompactingOnRemove");
        }
        this._deadkeys -= capacity();
    }
}
