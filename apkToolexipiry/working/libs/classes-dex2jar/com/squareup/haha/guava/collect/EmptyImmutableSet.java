package com.squareup.haha.guava.collect;

import java.util.Collection;
import java.util.Set;
import javax.annotation.Nullable;

final class EmptyImmutableSet extends ImmutableSet<Object> {
    static final EmptyImmutableSet INSTANCE;

    static {
        INSTANCE = new EmptyImmutableSet();
    }

    private EmptyImmutableSet() {
    }

    public final ImmutableList<Object> asList() {
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

    public final boolean equals(@Nullable Object obj) {
        return obj instanceof Set ? ((Set) obj).isEmpty() : false;
    }

    public final int hashCode() {
        return 0;
    }

    public final boolean isEmpty() {
        return true;
    }

    final boolean isHashCodeFast() {
        return true;
    }

    final boolean isPartialView() {
        return false;
    }

    public final UnmodifiableIterator<Object> iterator() {
        return Iterators.emptyIterator();
    }

    public final int size() {
        return 0;
    }

    public final String toString() {
        return "[]";
    }
}
