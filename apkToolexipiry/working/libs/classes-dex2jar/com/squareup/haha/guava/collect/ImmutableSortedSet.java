package com.squareup.haha.guava.collect;

import com.squareup.haha.guava.base.Ascii;
import java.util.Comparator;
import java.util.NavigableSet;
import java.util.SortedSet;

public abstract class ImmutableSortedSet<E> extends ImmutableSortedSetFauxverideShim<E> implements SortedIterable<E>, NavigableSet<E> {
    private static final ImmutableSortedSet<Comparable> NATURAL_EMPTY_SET;
    private static final Comparator<Comparable> NATURAL_ORDER;
    final transient Comparator<? super E> comparator;
    private transient ImmutableSortedSet<E> descendingSet;

    static {
        NATURAL_ORDER = Ordering.natural();
        NATURAL_EMPTY_SET = new EmptyImmutableSortedSet(NATURAL_ORDER);
    }

    ImmutableSortedSet(Comparator<? super E> comparator) {
        this.comparator = comparator;
    }

    static <E> ImmutableSortedSet<E> emptySet(Comparator<? super E> comparator) {
        return NATURAL_ORDER.equals(comparator) ? NATURAL_EMPTY_SET : new EmptyImmutableSortedSet(comparator);
    }

    public E ceiling(E e) {
        return Ascii.getFirst(tailSet((Object) e, true), null);
    }

    public Comparator<? super E> comparator() {
        return this.comparator;
    }

    ImmutableSortedSet<E> createDescendingSet() {
        return new DescendingImmutableSortedSet(this);
    }

    public abstract UnmodifiableIterator<E> descendingIterator();

    public ImmutableSortedSet<E> descendingSet() {
        ImmutableSortedSet<E> immutableSortedSet = this.descendingSet;
        if (immutableSortedSet != null) {
            return immutableSortedSet;
        }
        immutableSortedSet = createDescendingSet();
        this.descendingSet = immutableSortedSet;
        immutableSortedSet.descendingSet = this;
        return immutableSortedSet;
    }

    public E first() {
        return iterator().next();
    }

    public E floor(E e) {
        return Iterators.getNext(headSet((Object) e, true).descendingIterator(), null);
    }

    public final ImmutableSortedSet<E> headSet(E e, boolean z) {
        return headSetImpl(Ascii.checkNotNull(e), z);
    }

    public /* bridge */ /* synthetic */ SortedSet headSet(Object obj) {
        return headSet(obj, false);
    }

    abstract ImmutableSortedSet<E> headSetImpl(E e, boolean z);

    public E higher(E e) {
        return Ascii.getFirst(tailSet((Object) e, false), null);
    }

    public abstract UnmodifiableIterator<E> iterator();

    public E last() {
        return descendingIterator().next();
    }

    public E lower(E e) {
        return Iterators.getNext(headSet((Object) e, false).descendingIterator(), null);
    }

    @Deprecated
    public final E pollFirst() {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final E pollLast() {
        throw new UnsupportedOperationException();
    }

    public final ImmutableSortedSet<E> subSet(E e, boolean z, E e2, boolean z2) {
        Ascii.checkNotNull(e);
        Ascii.checkNotNull(e2);
        Ascii.checkArgument(this.comparator.compare(e, e2) <= 0);
        return subSetImpl(e, z, e2, z2);
    }

    public /* bridge */ /* synthetic */ SortedSet subSet(Object obj, Object obj2) {
        return subSet(obj, true, obj2, false);
    }

    abstract ImmutableSortedSet<E> subSetImpl(E e, boolean z, E e2, boolean z2);

    public final ImmutableSortedSet<E> tailSet(E e, boolean z) {
        return tailSetImpl(Ascii.checkNotNull(e), z);
    }

    public /* bridge */ /* synthetic */ SortedSet tailSet(Object obj) {
        return tailSet(obj, true);
    }

    abstract ImmutableSortedSet<E> tailSetImpl(E e, boolean z);
}
