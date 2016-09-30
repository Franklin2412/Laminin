package com.squareup.haha.guava.collect;

import java.util.AbstractMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import javax.annotation.Nullable;

abstract class AbstractNavigableMap<K, V> extends AbstractMap<K, V> implements NavigableMap<K, V> {

    final class DescendingMap extends DescendingMap<K, V> {
        private DescendingMap() {
        }

        final Iterator<Entry<K, V>> entryIterator() {
            return AbstractNavigableMap.this.descendingEntryIterator();
        }

        final NavigableMap<K, V> forward() {
            return AbstractNavigableMap.this;
        }
    }

    @Nullable
    public Entry<K, V> ceilingEntry(K k) {
        return tailMap(k, true).firstEntry();
    }

    public K ceilingKey(K k) {
        return Maps.keyOrNull(ceilingEntry(k));
    }

    abstract Iterator<Entry<K, V>> descendingEntryIterator();

    public NavigableSet<K> descendingKeySet() {
        return descendingMap().navigableKeySet();
    }

    public NavigableMap<K, V> descendingMap() {
        return new DescendingMap();
    }

    abstract Iterator<Entry<K, V>> entryIterator();

    public Set<Entry<K, V>> entrySet() {
        return new EntrySet<K, V>() {
            public final Iterator<Entry<K, V>> iterator() {
                return AbstractNavigableMap.this.entryIterator();
            }

            final Map<K, V> map() {
                return AbstractNavigableMap.this;
            }
        };
    }

    @Nullable
    public Entry<K, V> firstEntry() {
        return (Entry) Iterators.getNext(entryIterator(), null);
    }

    public K firstKey() {
        Entry firstEntry = firstEntry();
        if (firstEntry != null) {
            return firstEntry.getKey();
        }
        throw new NoSuchElementException();
    }

    @Nullable
    public Entry<K, V> floorEntry(K k) {
        return headMap(k, true).lastEntry();
    }

    public K floorKey(K k) {
        return Maps.keyOrNull(floorEntry(k));
    }

    public SortedMap<K, V> headMap(K k) {
        return headMap(k, false);
    }

    @Nullable
    public Entry<K, V> higherEntry(K k) {
        return tailMap(k, false).firstEntry();
    }

    public K higherKey(K k) {
        return Maps.keyOrNull(higherEntry(k));
    }

    public Set<K> keySet() {
        return navigableKeySet();
    }

    @Nullable
    public Entry<K, V> lastEntry() {
        return (Entry) Iterators.getNext(descendingEntryIterator(), null);
    }

    public K lastKey() {
        Entry lastEntry = lastEntry();
        if (lastEntry != null) {
            return lastEntry.getKey();
        }
        throw new NoSuchElementException();
    }

    @Nullable
    public Entry<K, V> lowerEntry(K k) {
        return headMap(k, false).lastEntry();
    }

    public K lowerKey(K k) {
        return Maps.keyOrNull(lowerEntry(k));
    }

    public NavigableSet<K> navigableKeySet() {
        return new NavigableKeySet(this);
    }

    @Nullable
    public Entry<K, V> pollFirstEntry() {
        return (Entry) Iterators.pollNext(entryIterator());
    }

    @Nullable
    public Entry<K, V> pollLastEntry() {
        return (Entry) Iterators.pollNext(descendingEntryIterator());
    }

    public SortedMap<K, V> subMap(K k, K k2) {
        return subMap(k, true, k2, false);
    }

    public SortedMap<K, V> tailMap(K k) {
        return tailMap(k, true);
    }
}
