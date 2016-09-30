package com.squareup.haha.guava.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

abstract class AbstractSetMultimap<K, V> extends AbstractMapBasedMultimap<K, V> implements SetMultimap<K, V> {
    public Map<K, Collection<V>> asMap() {
        return super.asMap();
    }

    abstract Set<V> createCollection();

    public final /* bridge */ /* synthetic */ Collection entries() {
        return (Set) super.entries();
    }

    public boolean equals(@Nullable Object obj) {
        return super.equals(obj);
    }

    public Set<V> get(@Nullable K k) {
        return (Set) super.get(k);
    }

    public final boolean put(@Nullable K k, @Nullable V v) {
        return super.put(k, v);
    }
}
