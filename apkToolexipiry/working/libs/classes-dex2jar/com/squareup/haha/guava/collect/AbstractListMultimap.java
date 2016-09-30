package com.squareup.haha.guava.collect;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;

abstract class AbstractListMultimap<K, V> extends AbstractMapBasedMultimap<K, V> implements ListMultimap<K, V> {
    protected AbstractListMultimap(Map<K, Collection<V>> map) {
        super(map);
    }

    public Map<K, Collection<V>> asMap() {
        return super.asMap();
    }

    abstract List<V> createCollection();

    public boolean equals(@Nullable Object obj) {
        return super.equals(obj);
    }

    public List<V> get(@Nullable K k) {
        return (List) super.get(k);
    }

    public boolean put(@Nullable K k, @Nullable V v) {
        return super.put(k, v);
    }
}
