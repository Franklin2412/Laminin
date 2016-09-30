package com.squareup.haha.guava.collect;

import com.squareup.haha.guava.base.Ascii;
import java.util.Comparator;
import java.util.Map.Entry;
import java.util.NavigableMap;
import javax.annotation.Nullable;

final class EmptyImmutableSortedMap<K, V> extends ImmutableSortedMap<K, V> {
    private final transient ImmutableSortedSet<K> keySet;

    EmptyImmutableSortedMap(Comparator<? super K> comparator) {
        this.keySet = ImmutableSortedSet.emptySet(comparator);
    }

    private EmptyImmutableSortedMap(Comparator<? super K> comparator, ImmutableSortedMap<K, V> immutableSortedMap) {
        super(immutableSortedMap);
        this.keySet = ImmutableSortedSet.emptySet(comparator);
    }

    final ImmutableSortedMap<K, V> createDescendingMap() {
        return new EmptyImmutableSortedMap(Ordering.from(comparator()).reverse(), this);
    }

    final ImmutableSet<Entry<K, V>> createEntrySet() {
        throw new AssertionError("should never be called");
    }

    public final ImmutableSet<Entry<K, V>> entrySet() {
        return ImmutableSet.of();
    }

    public final V get(@Nullable Object obj) {
        return null;
    }

    public final /* bridge */ /* synthetic */ NavigableMap headMap(Object obj, boolean z) {
        Ascii.checkNotNull(obj);
        return this;
    }

    public final ImmutableSortedMap<K, V> headMap$166011c5(K k) {
        Ascii.checkNotNull(k);
        return this;
    }

    public final boolean isEmpty() {
        return true;
    }

    final boolean isPartialView() {
        return false;
    }

    public final ImmutableSortedSet<K> keySet() {
        return this.keySet;
    }

    public final int size() {
        return 0;
    }

    public final /* bridge */ /* synthetic */ NavigableMap tailMap(Object obj, boolean z) {
        Ascii.checkNotNull(obj);
        return this;
    }

    public final ImmutableSortedMap<K, V> tailMap$166011c5(K k) {
        Ascii.checkNotNull(k);
        return this;
    }

    public final String toString() {
        return "{}";
    }

    public final ImmutableCollection<V> values() {
        return ImmutableList.of();
    }
}
