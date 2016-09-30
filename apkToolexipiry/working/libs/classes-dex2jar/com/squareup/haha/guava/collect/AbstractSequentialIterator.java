package com.squareup.haha.guava.collect;

import java.util.NoSuchElementException;

public abstract class AbstractSequentialIterator<T> extends UnmodifiableIterator<T> {
    private T nextOrNull;

    protected abstract T computeNext$7713a341();

    public final boolean hasNext() {
        return this.nextOrNull != null;
    }

    public final T next() {
        if (hasNext()) {
            try {
                T t = this.nextOrNull;
                return t;
            } finally {
                this.nextOrNull = computeNext$7713a341();
            }
        } else {
            throw new NoSuchElementException();
        }
    }
}
