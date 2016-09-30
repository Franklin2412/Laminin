package com.squareup.haha.trove;

import java.util.ConcurrentModificationException;
import java.util.NoSuchElementException;

abstract class TIterator {
    protected int _expectedSize;
    private THash _hash;
    protected int _index;

    public TIterator(THash tHash) {
        this._hash = tHash;
        this._expectedSize = this._hash.size();
        this._index = this._hash.capacity();
    }

    public boolean hasNext() {
        return nextIndex() >= 0;
    }

    protected final void moveToNextIndex() {
        int nextIndex = nextIndex();
        this._index = nextIndex;
        if (nextIndex < 0) {
            throw new NoSuchElementException();
        }
    }

    protected abstract int nextIndex();

    public void remove() {
        if (this._expectedSize != this._hash.size()) {
            throw new ConcurrentModificationException();
        }
        this._hash.stopCompactingOnRemove();
        try {
            this._hash.removeAt(this._index);
            this._expectedSize--;
        } finally {
            this._hash.startCompactingOnRemove(false);
        }
    }
}
