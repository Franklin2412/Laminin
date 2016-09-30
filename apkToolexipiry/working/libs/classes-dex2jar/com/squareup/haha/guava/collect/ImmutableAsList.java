package com.squareup.haha.guava.collect;

abstract class ImmutableAsList<E> extends ImmutableList<E> {
    ImmutableAsList() {
    }

    public boolean contains(Object obj) {
        return delegateCollection().contains(obj);
    }

    abstract ImmutableCollection<E> delegateCollection();

    public boolean isEmpty() {
        return delegateCollection().isEmpty();
    }

    final boolean isPartialView() {
        return delegateCollection().isPartialView();
    }

    public int size() {
        return delegateCollection().size();
    }
}
