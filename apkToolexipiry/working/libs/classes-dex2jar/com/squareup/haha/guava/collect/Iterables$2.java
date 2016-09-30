package com.squareup.haha.guava.collect;

import java.util.Iterator;

public final class Iterables$2 extends FluentIterable<T> {
    private /* synthetic */ Iterable val$inputs;

    public Iterables$2(Iterable iterable) {
        this.val$inputs = iterable;
    }

    public final Iterator<T> iterator() {
        return Iterators.concat(new Iterables$3(this.val$inputs.iterator()));
    }
}
