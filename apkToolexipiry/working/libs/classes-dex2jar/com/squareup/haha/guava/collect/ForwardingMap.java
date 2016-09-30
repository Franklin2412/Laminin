package com.squareup.haha.guava.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.annotation.Nullable;

public abstract class ForwardingMap<K, V> extends ForwardingObject implements Map<K, V> {

    public abstract class StandardEntrySet extends EntrySet<K, V> {
        private /* synthetic */ ForwardingMap this$0;

        final Map<K, V> map() {
            return this.this$0;
        }
    }

    protected ForwardingMap() {
    }

    public void clear() {
        delegate().clear();
    }

    public boolean containsKey(@Nullable Object obj) {
        return delegate().containsKey(obj);
    }

    public boolean containsValue(@Nullable Object obj) {
        return delegate().containsValue(obj);
    }

    protected abstract Map<K, V> delegate();

    public Set<Entry<K, V>> entrySet() {
        return delegate().entrySet();
    }

    public boolean equals(@Nullable Object obj) {
        return obj == this || delegate().equals(obj);
    }

    public V get(@Nullable Object obj) {
        return delegate().get(obj);
    }

    public int hashCode() {
        return delegate().hashCode();
    }

    public boolean isEmpty() {
        return delegate().isEmpty();
    }

    public Set<K> keySet() {
        return delegate().keySet();
    }

    public V put(K k, V v) {
        return delegate().put(k, v);
    }

    public void putAll(Map<? extends K, ? extends V> map) {
        delegate().putAll(map);
    }

    public V remove(Object obj) {
        return delegate().remove(obj);
    }

    public int size() {
        return delegate().size();
    }

    public Collection<V> values() {
        return delegate().values();
    }
}
