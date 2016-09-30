package com.squareup.haha.guava.collect;

import com.squareup.haha.guava.collect.Multiset.Entry;
import java.util.Set;
import javax.annotation.Nullable;

public abstract class ForwardingMultiset<E> extends ForwardingCollection<E> implements Multiset<E> {
    public final int add(E e, int i) {
        return delegate().add(e, i);
    }

    public final int count(Object obj) {
        return delegate().count(obj);
    }

    protected abstract Multiset<E> delegate();

    public final Set<E> elementSet() {
        return delegate().elementSet();
    }

    public final Set<Entry<E>> entrySet() {
        return delegate().entrySet();
    }

    public boolean equals(@Nullable Object obj) {
        return obj == this || delegate().equals(obj);
    }

    public int hashCode() {
        return delegate().hashCode();
    }

    public final int remove(Object obj, int i) {
        return delegate().remove(obj, i);
    }

    public final int setCount(E e, int i) {
        return delegate().setCount(e, i);
    }

    public final boolean setCount(E e, int i, int i2) {
        return delegate().setCount(e, i, i2);
    }
}
