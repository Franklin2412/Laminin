package com.squareup.haha.guava.collect;

import com.squareup.haha.guava.base.Ascii;
import java.util.Comparator;
import java.util.Map.Entry;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.SortedMap;
import javax.annotation.Nullable;

public abstract class ImmutableSortedMap<K, V> extends ImmutableSortedMapFauxverideShim<K, V> implements NavigableMap<K, V> {
    private static final Comparator<Comparable> NATURAL_ORDER;
    private transient ImmutableSortedMap<K, V> descendingMap;

    static {
        NATURAL_ORDER = Ordering.natural();
        EmptyImmutableSortedMap emptyImmutableSortedMap = new EmptyImmutableSortedMap(NATURAL_ORDER);
    }

    ImmutableSortedMap() {
    }

    ImmutableSortedMap(ImmutableSortedMap<K, V> immutableSortedMap) {
        this.descendingMap = immutableSortedMap;
    }

    private ImmutableSortedMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
        Ascii.checkNotNull(k);
        Ascii.checkNotNull(k2);
        Ascii.checkArgument(comparator().compare(k, k2) <= 0, "expected fromKey <= toKey but %s > %s", k, k2);
        return headMap$166011c5(k2).tailMap$166011c5(k);
    }

    public Entry<K, V> ceilingEntry(K k) {
        return tailMap$166011c5(k).firstEntry();
    }

    public K ceilingKey(K k) {
        return Maps.keyOrNull(ceilingEntry(k));
    }

    public Comparator<? super K> comparator() {
        return keySet().comparator();
    }

    public boolean containsValue(@Nullable Object obj) {
        return values().contains(obj);
    }

    abstract ImmutableSortedMap<K, V> createDescendingMap();

    public /* bridge */ /* synthetic */ NavigableSet descendingKeySet() {
        return keySet().descendingSet();
    }

    public /* bridge */ /* synthetic */ NavigableMap descendingMap() {
        NavigableMap navigableMap = this.descendingMap;
        if (navigableMap != null) {
            return navigableMap;
        }
        navigableMap = createDescendingMap();
        this.descendingMap = navigableMap;
        return navigableMap;
    }

    public ImmutableSet<Entry<K, V>> entrySet() {
        return super.entrySet();
    }

    public Entry<K, V> firstEntry() {
        return isEmpty() ? null : (Entry) entrySet().asList().get(0);
    }

    public K firstKey() {
        return keySet().first();
    }

    public Entry<K, V> floorEntry(K k) {
        return headMap$166011c5(k).lastEntry();
    }

    public K floorKey(K k) {
        return Maps.keyOrNull(floorEntry(k));
    }

    public /* bridge */ /* synthetic */ NavigableMap headMap(Object obj, boolean z) {
        return headMap$166011c5(obj);
    }

    public /* bridge */ /* synthetic */ SortedMap headMap(Object obj) {
        return headMap$166011c5(obj);
    }

    public abstract ImmutableSortedMap<K, V> headMap$166011c5(K k);

    public Entry<K, V> higherEntry(K k) {
        return tailMap$166011c5(k).firstEntry();
    }

    public K higherKey(K k) {
        return Maps.keyOrNull(higherEntry(k));
    }

    boolean isPartialView() {
        return keySet().isPartialView() || values().isPartialView();
    }

    public abstract ImmutableSortedSet<K> keySet();

    public Entry<K, V> lastEntry() {
        return isEmpty() ? null : (Entry) entrySet().asList().get(size() - 1);
    }

    public K lastKey() {
        return keySet().last();
    }

    public Entry<K, V> lowerEntry(K k) {
        return headMap$166011c5(k).lastEntry();
    }

    public K lowerKey(K k) {
        return Maps.keyOrNull(lowerEntry(k));
    }

    public /* bridge */ /* synthetic */ NavigableSet navigableKeySet() {
        return keySet();
    }

    @Deprecated
    public final Entry<K, V> pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final Entry<K, V> pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    public int size() {
        return values().size();
    }

    public /* bridge */ /* synthetic */ SortedMap subMap(Object obj, Object obj2) {
        return subMap(obj, true, obj2, false);
    }

    public /* bridge */ /* synthetic */ NavigableMap tailMap(Object obj, boolean z) {
        return tailMap$166011c5(obj);
    }

    public /* bridge */ /* synthetic */ SortedMap tailMap(Object obj) {
        return tailMap$166011c5(obj);
    }

    public abstract ImmutableSortedMap<K, V> tailMap$166011c5(K k);

    public abstract ImmutableCollection<V> values();
}
