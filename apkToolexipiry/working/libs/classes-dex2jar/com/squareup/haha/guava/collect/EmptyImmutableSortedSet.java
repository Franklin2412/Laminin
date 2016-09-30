package com.squareup.haha.guava.collect;

import java.util.Collection;
import java.util.Comparator;
import java.util.NoSuchElementException;
import java.util.Set;
import javax.annotation.Nullable;

final class EmptyImmutableSortedSet<E> extends ImmutableSortedSet<E> {
    EmptyImmutableSortedSet(Comparator<? super E> comparator) {
        super(comparator);
    }

    public final ImmutableList<E> asList() {
        return ImmutableList.of();
    }

    public final boolean contains(@Nullable Object obj) {
        return false;
    }

    public final boolean containsAll(Collection<?> collection) {
        return collection.isEmpty();
    }

    final int copyIntoArray(Object[] objArr, int i) {
        return i;
    }

    final ImmutableSortedSet<E> createDescendingSet() {
        return new EmptyImmutableSortedSet(Ordering.from(this.comparator).reverse());
    }

    public final UnmodifiableIterator<E> descendingIterator() {
        return Iterators.emptyIterator();
    }

    public final boolean equals(@Nullable Object obj) {
        return obj instanceof Set ? ((Set) obj).isEmpty() : false;
    }

    public final E first() {
        throw new NoSuchElementException();
    }

    public final int hashCode() {
        return 0;
    }

    final ImmutableSortedSet<E> headSetImpl(E e, boolean z) {
        return this;
    }

    public final boolean isEmpty() {
        return true;
    }

    final boolean isPartialView() {
        return false;
    }

    public final UnmodifiableIterator<E> iterator() {
        return Iterators.emptyIterator();
    }

    public final E last() {
        throw new NoSuchElementException();
    }

    public final int size() {
        return 0;
    }

    final ImmutableSortedSet<E> subSetImpl(E e, boolean z, E e2, boolean z2) {
        return this;
    }

    final ImmutableSortedSet<E> tailSetImpl(E e, boolean z) {
        return this;
    }

    public final String toString() {
        return "[]";
    }
}
