package com.squareup.haha.guava.collect;

public abstract class FluentIterable<E> implements Iterable<E> {
    private final Iterable<E> iterable;

    protected FluentIterable() {
        this.iterable = this;
    }

    public String toString() {
        return Iterators.toString(this.iterable.iterator());
    }
}
