package com.squareup.haha.guava.collect;

final class DescendingImmutableSortedSet<E> extends ImmutableSortedSet<E> {
    private final ImmutableSortedSet<E> forward;

    DescendingImmutableSortedSet(ImmutableSortedSet<E> immutableSortedSet) {
        super(Ordering.from(immutableSortedSet.comparator()).reverse());
        this.forward = immutableSortedSet;
    }

    public final E ceiling(E e) {
        return this.forward.floor(e);
    }

    final ImmutableSortedSet<E> createDescendingSet() {
        throw new AssertionError("should never be called");
    }

    public final UnmodifiableIterator<E> descendingIterator() {
        return this.forward.iterator();
    }

    public final ImmutableSortedSet<E> descendingSet() {
        return this.forward;
    }

    public final E floor(E e) {
        return this.forward.ceiling(e);
    }

    final ImmutableSortedSet<E> headSetImpl(E e, boolean z) {
        return this.forward.tailSet((Object) e, z).descendingSet();
    }

    public final E higher(E e) {
        return this.forward.lower(e);
    }

    final boolean isPartialView() {
        return this.forward.isPartialView();
    }

    public final UnmodifiableIterator<E> iterator() {
        return this.forward.descendingIterator();
    }

    public final E lower(E e) {
        return this.forward.higher(e);
    }

    public final int size() {
        return this.forward.size();
    }

    final ImmutableSortedSet<E> subSetImpl(E e, boolean z, E e2, boolean z2) {
        return this.forward.subSet((Object) e2, z2, (Object) e, z).descendingSet();
    }

    final ImmutableSortedSet<E> tailSetImpl(E e, boolean z) {
        return this.forward.headSet((Object) e, z).descendingSet();
    }
}
