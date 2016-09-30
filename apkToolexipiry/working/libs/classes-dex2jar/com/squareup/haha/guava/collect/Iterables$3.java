package com.squareup.haha.guava.collect;

import java.util.Iterator;

public final class Iterables$3 extends TransformedIterator<Iterable<? extends T>, Iterator<? extends T>> {
    public Iterables$3(Iterator it) {
        super(it);
    }

    final /* bridge */ /* synthetic */ Object transform(Object obj) {
        return ((Iterable) obj).iterator();
    }
}
