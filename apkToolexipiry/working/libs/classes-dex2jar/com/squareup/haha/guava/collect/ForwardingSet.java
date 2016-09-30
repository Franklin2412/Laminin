package com.squareup.haha.guava.collect;

import java.util.Set;
import javax.annotation.Nullable;

public abstract class ForwardingSet<E> extends ForwardingCollection<E> implements Set<E> {
    protected abstract Set<E> delegate();

    public boolean equals(@Nullable Object obj) {
        return obj == this || delegate().equals(obj);
    }

    public int hashCode() {
        return delegate().hashCode();
    }
}
