package com.squareup.haha.guava.collect;

import java.util.Collection;
import java.util.Map;
import javax.annotation.Nullable;

public abstract class ForwardingMultimap<K, V> extends ForwardingObject implements Multimap<K, V> {
    public final Map<K, Collection<V>> asMap() {
        return delegate().asMap();
    }

    public final void clear() {
        delegate().clear();
    }

    public final boolean containsEntry(@Nullable Object obj, @Nullable Object obj2) {
        return delegate().containsEntry(obj, obj2);
    }

    protected abstract Multimap<K, V> delegate();

    public boolean equals(@Nullable Object obj) {
        return obj == this || delegate().equals(obj);
    }

    public final Collection<V> get(@Nullable K k) {
        return delegate().get(k);
    }

    public int hashCode() {
        return delegate().hashCode();
    }

    public final boolean put(K k, V v) {
        return delegate().put(k, v);
    }

    public final boolean remove(@Nullable Object obj, @Nullable Object obj2) {
        return delegate().remove(obj, obj2);
    }

    public final int size() {
        return delegate().size();
    }

    public final Collection<V> values() {
        return delegate().values();
    }
}
