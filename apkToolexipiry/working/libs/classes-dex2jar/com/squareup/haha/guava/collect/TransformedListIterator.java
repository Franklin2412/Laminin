package com.squareup.haha.guava.collect;

import java.util.ListIterator;

abstract class TransformedListIterator<F, T> extends TransformedIterator<F, T> implements ListIterator<T> {
    public void add(T t) {
        throw new UnsupportedOperationException();
    }

    public final boolean hasPrevious() {
        return Iterators.cast(this.backingIterator).hasPrevious();
    }

    public final int nextIndex() {
        return Iterators.cast(this.backingIterator).nextIndex();
    }

    public final T previous() {
        return transform(Iterators.cast(this.backingIterator).previous());
    }

    public final int previousIndex() {
        return Iterators.cast(this.backingIterator).previousIndex();
    }

    public void set(T t) {
        throw new UnsupportedOperationException();
    }
}
