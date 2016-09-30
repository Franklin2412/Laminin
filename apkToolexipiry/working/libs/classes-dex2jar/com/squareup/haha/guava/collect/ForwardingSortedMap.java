package com.squareup.haha.guava.collect;

import java.util.Comparator;
import java.util.SortedMap;

public abstract class ForwardingSortedMap<K, V> extends ForwardingMap<K, V> implements SortedMap<K, V> {
    public Comparator<? super K> comparator() {
        return delegate().comparator();
    }

    protected abstract SortedMap<K, V> delegate();

    public K firstKey() {
        return delegate().firstKey();
    }

    public SortedMap<K, V> headMap(K k) {
        return delegate().headMap(k);
    }

    public K lastKey() {
        return delegate().lastKey();
    }

    public SortedMap<K, V> subMap(K k, K k2) {
        return delegate().subMap(k, k2);
    }

    public SortedMap<K, V> tailMap(K k) {
        return delegate().tailMap(k);
    }
}
