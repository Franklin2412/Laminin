package com.squareup.haha.guava.collect;

import java.util.Map.Entry;
import javax.annotation.Nullable;

public abstract class ForwardingMapEntry<K, V> extends ForwardingObject implements Entry<K, V> {
    protected abstract Entry<K, V> delegate();

    public boolean equals(@Nullable Object obj) {
        return delegate().equals(obj);
    }

    public K getKey() {
        return delegate().getKey();
    }

    public V getValue() {
        return delegate().getValue();
    }

    public int hashCode() {
        return delegate().hashCode();
    }

    public V setValue(V v) {
        return delegate().setValue(v);
    }
}
