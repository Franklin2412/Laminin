package com.squareup.haha.guava.collect;

final class RegularImmutableAsList<E> extends ImmutableAsList<E> {
    private final ImmutableCollection<E> delegate;
    private final ImmutableList<? extends E> delegateList;

    private RegularImmutableAsList(ImmutableCollection<E> immutableCollection, ImmutableList<? extends E> immutableList) {
        this.delegate = immutableCollection;
        this.delegateList = immutableList;
    }

    RegularImmutableAsList(ImmutableCollection<E> immutableCollection, Object[] objArr) {
        this((ImmutableCollection) immutableCollection, ImmutableList.asImmutableList(objArr));
    }

    final int copyIntoArray(Object[] objArr, int i) {
        return this.delegateList.copyIntoArray(objArr, i);
    }

    final ImmutableCollection<E> delegateCollection() {
        return this.delegate;
    }

    public final E get(int i) {
        return this.delegateList.get(i);
    }

    public final UnmodifiableListIterator<E> listIterator(int i) {
        return this.delegateList.listIterator(i);
    }
}
