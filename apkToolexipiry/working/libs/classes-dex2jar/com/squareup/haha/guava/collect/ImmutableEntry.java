package com.squareup.haha.guava.collect;

import java.io.Serializable;
import javax.annotation.Nullable;

class ImmutableEntry<K, V> extends AbstractMapEntry<K, V> implements Serializable {
    private K key;
    private V value;

    ImmutableEntry(@Nullable K k, @Nullable V v) {
        this.key = k;
        this.value = v;
    }

    @Nullable
    public final K getKey() {
        return this.key;
    }

    @Nullable
    public final V getValue() {
        return this.value;
    }

    public final V setValue(V v) {
        throw new UnsupportedOperationException();
    }
}
