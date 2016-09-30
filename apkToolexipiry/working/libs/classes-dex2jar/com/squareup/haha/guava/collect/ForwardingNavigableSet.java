package com.squareup.haha.guava.collect;

import java.util.Iterator;
import java.util.NavigableSet;

public abstract class ForwardingNavigableSet<E> extends ForwardingSortedSet<E> implements NavigableSet<E> {
    public E ceiling(E e) {
        return delegate().ceiling(e);
    }

    protected abstract NavigableSet<E> delegate();

    public Iterator<E> descendingIterator() {
        return delegate().descendingIterator();
    }

    public NavigableSet<E> descendingSet() {
        return delegate().descendingSet();
    }

    public E floor(E e) {
        return delegate().floor(e);
    }

    public NavigableSet<E> headSet(E e, boolean z) {
        return delegate().headSet(e, z);
    }

    public E higher(E e) {
        return delegate().higher(e);
    }

    public E lower(E e) {
        return delegate().lower(e);
    }

    public E pollFirst() {
        return delegate().pollFirst();
    }

    public E pollLast() {
        return delegate().pollLast();
    }

    public NavigableSet<E> subSet(E e, boolean z, E e2, boolean z2) {
        return delegate().subSet(e, z, e2, z2);
    }

    public NavigableSet<E> tailSet(E e, boolean z) {
        return delegate().tailSet(e, z);
    }
}
