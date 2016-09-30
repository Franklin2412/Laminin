package com.squareup.haha.guava.collect;

import java.util.Collection;
import java.util.Map;
import java.util.SortedSet;
import javax.annotation.Nullable;

abstract class AbstractSortedSetMultimap<K, V> extends AbstractSetMultimap<K, V> implements SetMultimap<K, V> {
    private SortedSet<V> get(@Nullable K k) {
        return (SortedSet) super.get((Object) k);
    }

    public final Map<K, Collection<V>> asMap() {
        return super.asMap();
    }

    abstract SortedSet<V> createCollection();

    public final Collection<V> values() {
        return super.values();
    }
}
