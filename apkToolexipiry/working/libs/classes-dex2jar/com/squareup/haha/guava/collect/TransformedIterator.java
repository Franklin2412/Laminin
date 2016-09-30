package com.squareup.haha.guava.collect;

import com.squareup.haha.guava.base.Ascii;
import java.util.Iterator;

abstract class TransformedIterator<F, T> implements Iterator<T> {
    final Iterator<? extends F> backingIterator;

    TransformedIterator(Iterator<? extends F> it) {
        this.backingIterator = (Iterator) Ascii.checkNotNull(it);
    }

    public final boolean hasNext() {
        return this.backingIterator.hasNext();
    }

    public final T next() {
        return transform(this.backingIterator.next());
    }

    public final void remove() {
        this.backingIterator.remove();
    }

    abstract T transform(F f);
}
