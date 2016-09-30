package com.squareup.haha.guava.collect;

import java.util.Collection;
import java.util.Set;
import javax.annotation.Nullable;

public interface Multiset<E> extends Collection<E> {

    public interface Entry<E> {
        int getCount();

        E getElement();
    }

    int add(@Nullable E e, int i);

    boolean contains(@Nullable Object obj);

    boolean containsAll(Collection<?> collection);

    int count(@Nullable Object obj);

    Set<E> elementSet();

    Set<Entry<E>> entrySet();

    boolean equals(@Nullable Object obj);

    int hashCode();

    int remove(@Nullable Object obj, int i);

    boolean remove(@Nullable Object obj);

    int setCount(E e, int i);

    boolean setCount(E e, int i, int i2);
}
