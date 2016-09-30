package com.squareup.haha.guava.collect;

import com.squareup.haha.guava.base.Ascii;
import com.squareup.haha.guava.base.Function;
import com.squareup.haha.guava.base.Joiner$MapJoiner;
import com.squareup.haha.guava.base.Predicate;
import com.squareup.haha.guava.base.Predicates;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import javax.annotation.Nullable;

public final class Maps {
    private static Joiner$MapJoiner STANDARD_JOINER;

    static abstract class EntrySet<K, V> extends Sets$ImprovedAbstractSet<Entry<K, V>> {
        EntrySet() {
        }

        public void clear() {
            map().clear();
        }

        public boolean contains(Object obj) {
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            Object key = entry.getKey();
            Object safeGet = Maps.safeGet(map(), key);
            return Ascii.equal(safeGet, entry.getValue()) ? safeGet != null || map().containsKey(key) : false;
        }

        public boolean isEmpty() {
            return map().isEmpty();
        }

        abstract Map<K, V> map();

        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            return map().keySet().remove(((Entry) obj).getKey());
        }

        public boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) Ascii.checkNotNull(collection));
            } catch (UnsupportedOperationException e) {
                return Ascii.removeAllImpl((Set) this, collection.iterator());
            }
        }

        public boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) Ascii.checkNotNull(collection));
            } catch (UnsupportedOperationException e) {
                Collection hashSet = new HashSet(Maps.capacity(collection.size()));
                for (Object next : collection) {
                    if (contains(next)) {
                        hashSet.add(((Entry) next).getKey());
                    }
                }
                return map().keySet().retainAll(hashSet);
            }
        }

        public int size() {
            return map().size();
        }
    }

    static abstract class ImprovedAbstractMap<K, V> extends AbstractMap<K, V> {
        private transient Set<Entry<K, V>> entrySet;
        private transient Set<K> keySet;
        private transient Collection<V> values;

        ImprovedAbstractMap() {
        }

        abstract Set<Entry<K, V>> createEntrySet();

        Set<K> createKeySet() {
            return new KeySet(this);
        }

        Collection<V> createValues() {
            return new Values(this);
        }

        public Set<Entry<K, V>> entrySet() {
            Set<Entry<K, V>> set = this.entrySet;
            if (set != null) {
                return set;
            }
            set = createEntrySet();
            this.entrySet = set;
            return set;
        }

        public Set<K> keySet() {
            Set<K> set = this.keySet;
            if (set != null) {
                return set;
            }
            set = createKeySet();
            this.keySet = set;
            return set;
        }

        public Collection<V> values() {
            Collection<V> collection = this.values;
            if (collection != null) {
                return collection;
            }
            collection = createValues();
            this.values = collection;
            return collection;
        }
    }

    static class KeySet<K, V> extends Sets$ImprovedAbstractSet<K> {
        final Map<K, V> map;

        KeySet(Map<K, V> map) {
            this.map = (Map) Ascii.checkNotNull(map);
        }

        public void clear() {
            map().clear();
        }

        public boolean contains(Object obj) {
            return map().containsKey(obj);
        }

        public boolean isEmpty() {
            return map().isEmpty();
        }

        public Iterator<K> iterator() {
            return Maps.keyIterator(map().entrySet().iterator());
        }

        Map<K, V> map() {
            return this.map;
        }

        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            map().remove(obj);
            return true;
        }

        public int size() {
            return map().size();
        }
    }

    static abstract class DescendingMap<K, V> extends ForwardingMap<K, V> implements NavigableMap<K, V> {
        private transient Comparator<? super K> comparator;
        private transient Set<Entry<K, V>> entrySet;
        private transient NavigableSet<K> navigableKeySet;

        DescendingMap() {
        }

        public Entry<K, V> ceilingEntry(K k) {
            return forward().floorEntry(k);
        }

        public K ceilingKey(K k) {
            return forward().floorKey(k);
        }

        public Comparator<? super K> comparator() {
            Comparator<? super K> comparator = this.comparator;
            if (comparator != null) {
                return comparator;
            }
            Comparator comparator2 = forward().comparator();
            if (comparator2 == null) {
                comparator2 = Ordering.natural();
            }
            comparator = Ordering.from(comparator2).reverse();
            this.comparator = comparator;
            return comparator;
        }

        protected final Map<K, V> delegate() {
            return forward();
        }

        public NavigableSet<K> descendingKeySet() {
            return forward().navigableKeySet();
        }

        public NavigableMap<K, V> descendingMap() {
            return forward();
        }

        abstract Iterator<Entry<K, V>> entryIterator();

        public Set<Entry<K, V>> entrySet() {
            Set<Entry<K, V>> set = this.entrySet;
            if (set != null) {
                return set;
            }
            set = new EntrySet<K, V>() {
                public final Iterator<Entry<K, V>> iterator() {
                    return DescendingMap.this.entryIterator();
                }

                final Map<K, V> map() {
                    return DescendingMap.this;
                }
            };
            this.entrySet = set;
            return set;
        }

        public Entry<K, V> firstEntry() {
            return forward().lastEntry();
        }

        public K firstKey() {
            return forward().lastKey();
        }

        public Entry<K, V> floorEntry(K k) {
            return forward().ceilingEntry(k);
        }

        public K floorKey(K k) {
            return forward().ceilingKey(k);
        }

        abstract NavigableMap<K, V> forward();

        public NavigableMap<K, V> headMap(K k, boolean z) {
            return forward().tailMap(k, z).descendingMap();
        }

        public SortedMap<K, V> headMap(K k) {
            return headMap(k, false);
        }

        public Entry<K, V> higherEntry(K k) {
            return forward().lowerEntry(k);
        }

        public K higherKey(K k) {
            return forward().lowerKey(k);
        }

        public Set<K> keySet() {
            return navigableKeySet();
        }

        public Entry<K, V> lastEntry() {
            return forward().firstEntry();
        }

        public K lastKey() {
            return forward().firstKey();
        }

        public Entry<K, V> lowerEntry(K k) {
            return forward().higherEntry(k);
        }

        public K lowerKey(K k) {
            return forward().higherKey(k);
        }

        public NavigableSet<K> navigableKeySet() {
            NavigableSet<K> navigableSet = this.navigableKeySet;
            if (navigableSet != null) {
                return navigableSet;
            }
            navigableSet = new NavigableKeySet(this);
            this.navigableKeySet = navigableSet;
            return navigableSet;
        }

        public Entry<K, V> pollFirstEntry() {
            return forward().pollLastEntry();
        }

        public Entry<K, V> pollLastEntry() {
            return forward().pollFirstEntry();
        }

        public NavigableMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
            return forward().subMap(k2, z2, k, z).descendingMap();
        }

        public SortedMap<K, V> subMap(K k, K k2) {
            return subMap(k, true, k2, false);
        }

        public NavigableMap<K, V> tailMap(K k, boolean z) {
            return forward().headMap(k, z).descendingMap();
        }

        public SortedMap<K, V> tailMap(K k) {
            return tailMap(k, true);
        }

        public String toString() {
            return Maps.toStringImpl(this);
        }

        public Collection<V> values() {
            return new Values(this);
        }
    }

    /* renamed from: com.squareup.haha.guava.collect.Maps.1 */
    static final class AnonymousClass1 extends UnmodifiableIterator<V> {
        private /* synthetic */ UnmodifiableIterator val$entryIterator;

        AnonymousClass1(UnmodifiableIterator unmodifiableIterator) {
            this.val$entryIterator = unmodifiableIterator;
        }

        public final boolean hasNext() {
            return this.val$entryIterator.hasNext();
        }

        public final V next() {
            return ((Entry) this.val$entryIterator.next()).getValue();
        }
    }

    static abstract class AbstractFilteredMap<K, V> extends ImprovedAbstractMap<K, V> {
        private Predicate<? super Entry<K, V>> predicate;
        private Map<K, V> unfiltered;

        private boolean apply(@Nullable Object obj, @Nullable V v) {
            return this.predicate.apply(Maps.immutableEntry(obj, v));
        }

        public boolean containsKey(Object obj) {
            return this.unfiltered.containsKey(obj) && apply(obj, this.unfiltered.get(obj));
        }

        final Collection<V> createValues() {
            return new FilteredMapValues(this, this.unfiltered, this.predicate);
        }

        public V get(Object obj) {
            V v = this.unfiltered.get(obj);
            return (v == null || !apply(obj, v)) ? null : v;
        }

        public boolean isEmpty() {
            return entrySet().isEmpty();
        }

        public V put(K k, V v) {
            Ascii.checkArgument(apply(k, v));
            return this.unfiltered.put(k, v);
        }

        public void putAll(Map<? extends K, ? extends V> map) {
            for (Entry entry : map.entrySet()) {
                Ascii.checkArgument(apply(entry.getKey(), entry.getValue()));
            }
            this.unfiltered.putAll(map);
        }

        public V remove(Object obj) {
            return containsKey(obj) ? this.unfiltered.remove(obj) : null;
        }
    }

    enum EntryFunction implements Function<Entry<?, ?>, Object> {
        KEY {
            public final /* bridge */ /* synthetic */ Object apply(Object obj) {
                return ((Entry) obj).getKey();
            }
        },
        VALUE {
            public final /* bridge */ /* synthetic */ Object apply(Object obj) {
                return ((Entry) obj).getValue();
            }
        };

        static {
            KEY = new AnonymousClass1("KEY", 0);
            VALUE = new AnonymousClass2("VALUE", 1);
            EntryFunction entryFunction = KEY;
            entryFunction = VALUE;
        }
    }

    static class Values<K, V> extends AbstractCollection<V> {
        private Map<K, V> map;

        Values(Map<K, V> map) {
            this.map = (Map) Ascii.checkNotNull(map);
        }

        public void clear() {
            this.map.clear();
        }

        public boolean contains(@Nullable Object obj) {
            return this.map.containsValue(obj);
        }

        public boolean isEmpty() {
            return this.map.isEmpty();
        }

        public Iterator<V> iterator() {
            return Maps.valueIterator(this.map.entrySet().iterator());
        }

        public boolean remove(Object obj) {
            try {
                return super.remove(obj);
            } catch (UnsupportedOperationException e) {
                for (Entry entry : this.map.entrySet()) {
                    if (Ascii.equal(obj, entry.getValue())) {
                        this.map.remove(entry.getKey());
                        return true;
                    }
                }
                return false;
            }
        }

        public boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) Ascii.checkNotNull(collection));
            } catch (UnsupportedOperationException e) {
                Collection hashSet = new HashSet();
                for (Entry entry : this.map.entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSet.add(entry.getKey());
                    }
                }
                return this.map.keySet().removeAll(hashSet);
            }
        }

        public boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) Ascii.checkNotNull(collection));
            } catch (UnsupportedOperationException e) {
                Collection hashSet = new HashSet();
                for (Entry entry : this.map.entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSet.add(entry.getKey());
                    }
                }
                return this.map.keySet().retainAll(hashSet);
            }
        }

        public int size() {
            return this.map.size();
        }
    }

    static final class FilteredMapValues<K, V> extends Values<K, V> {
        private Predicate<? super Entry<K, V>> predicate;
        private Map<K, V> unfiltered;

        FilteredMapValues(Map<K, V> map, Map<K, V> map2, Predicate<? super Entry<K, V>> predicate) {
            super(map);
            this.unfiltered = map2;
            this.predicate = predicate;
        }

        private boolean removeIf(Predicate<? super V> predicate) {
            Iterable entrySet = this.unfiltered.entrySet();
            Predicate and = Predicates.and(this.predicate, Maps.valuePredicateOnEntries(predicate));
            return ((entrySet instanceof RandomAccess) && (entrySet instanceof List)) ? Ascii.removeIfFromRandomAccessList((List) entrySet, (Predicate) Ascii.checkNotNull(and)) : Iterators.removeIf(entrySet.iterator(), and);
        }

        public final boolean remove(Object obj) {
            Object next;
            Iterable entrySet = this.unfiltered.entrySet();
            Predicate and = Predicates.and(this.predicate, Maps.valuePredicateOnEntries(Predicates.equalTo(obj)));
            Ascii.checkNotNull(and);
            Iterator it = entrySet.iterator();
            while (it.hasNext()) {
                next = it.next();
                if (and.apply(next)) {
                    it.remove();
                    break;
                }
            }
            next = null;
            return next != null;
        }

        public final boolean removeAll(Collection<?> collection) {
            return removeIf(Predicates.in(collection));
        }

        public final boolean retainAll(Collection<?> collection) {
            return removeIf(Predicates.not(Predicates.in(collection)));
        }

        public final Object[] toArray() {
            return Ascii.newArrayList(iterator()).toArray();
        }

        public final <T> T[] toArray(T[] tArr) {
            return Ascii.newArrayList(iterator()).toArray(tArr);
        }
    }

    static class SortedKeySet<K, V> extends KeySet<K, V> implements SortedSet<K> {
        SortedKeySet(SortedMap<K, V> sortedMap) {
            super(sortedMap);
        }

        public Comparator<? super K> comparator() {
            return map().comparator();
        }

        public K first() {
            return map().firstKey();
        }

        public SortedSet<K> headSet(K k) {
            return new SortedKeySet(map().headMap(k));
        }

        public K last() {
            return map().lastKey();
        }

        SortedMap<K, V> map() {
            return (SortedMap) super.map();
        }

        public SortedSet<K> subSet(K k, K k2) {
            return new SortedKeySet(map().subMap(k, k2));
        }

        public SortedSet<K> tailSet(K k) {
            return new SortedKeySet(map().tailMap(k));
        }
    }

    static final class NavigableKeySet<K, V> extends SortedKeySet<K, V> implements NavigableSet<K> {
        NavigableKeySet(NavigableMap<K, V> navigableMap) {
            super(navigableMap);
        }

        public final K ceiling(K k) {
            return ((NavigableMap) this.map).ceilingKey(k);
        }

        public final Iterator<K> descendingIterator() {
            return descendingSet().iterator();
        }

        public final NavigableSet<K> descendingSet() {
            return ((NavigableMap) this.map).descendingKeySet();
        }

        public final K floor(K k) {
            return ((NavigableMap) this.map).floorKey(k);
        }

        public final NavigableSet<K> headSet(K k, boolean z) {
            return ((NavigableMap) this.map).headMap(k, z).navigableKeySet();
        }

        public final SortedSet<K> headSet(K k) {
            return headSet(k, false);
        }

        public final K higher(K k) {
            return ((NavigableMap) this.map).higherKey(k);
        }

        public final K lower(K k) {
            return ((NavigableMap) this.map).lowerKey(k);
        }

        public final K pollFirst() {
            return Maps.keyOrNull(((NavigableMap) this.map).pollFirstEntry());
        }

        public final K pollLast() {
            return Maps.keyOrNull(((NavigableMap) this.map).pollLastEntry());
        }

        public final NavigableSet<K> subSet(K k, boolean z, K k2, boolean z2) {
            return ((NavigableMap) this.map).subMap(k, z, k2, z2).navigableKeySet();
        }

        public final SortedSet<K> subSet(K k, K k2) {
            return subSet(k, true, k2, false);
        }

        public final NavigableSet<K> tailSet(K k, boolean z) {
            return ((NavigableMap) this.map).tailMap(k, z).navigableKeySet();
        }

        public final SortedSet<K> tailSet(K k) {
            return tailSet(k, true);
        }
    }

    static {
        STANDARD_JOINER = Collections2.STANDARD_JOINER$5f22bbb7.withKeyValueSeparator("=");
    }

    public static int capacity(int i) {
        if (i >= 3) {
            return i < 1073741824 ? (i / 3) + i : ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        } else {
            Ascii.checkNonnegative(i, "expectedSize");
            return i + 1;
        }
    }

    static boolean equalsImpl(Map<?, ?> map, Object obj) {
        if (map == obj) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        return map.entrySet().equals(((Map) obj).entrySet());
    }

    public static <K, V> Entry<K, V> immutableEntry(@Nullable K k, @Nullable V v) {
        return new ImmutableEntry(k, v);
    }

    static <K, V> Iterator<K> keyIterator(Iterator<Entry<K, V>> it) {
        return Iterators.transform(it, EntryFunction.KEY);
    }

    @Nullable
    static <K> K keyOrNull(@Nullable Entry<K, ?> entry) {
        return entry == null ? null : entry.getKey();
    }

    public static <K, V> HashMap<K, V> newHashMap() {
        return new HashMap();
    }

    static boolean safeContainsKey(Map<?, ?> map, Object obj) {
        boolean z = false;
        Ascii.checkNotNull(map);
        try {
            z = map.containsKey(obj);
        } catch (ClassCastException e) {
        } catch (NullPointerException e2) {
        }
        return z;
    }

    static <V> V safeGet(Map<?, V> map, @Nullable Object obj) {
        V v = null;
        Ascii.checkNotNull(map);
        try {
            v = map.get(obj);
        } catch (ClassCastException e) {
        } catch (NullPointerException e2) {
        }
        return v;
    }

    static <V> V safeRemove(Map<?, V> map, Object obj) {
        V v = null;
        Ascii.checkNotNull(map);
        try {
            v = map.remove(obj);
        } catch (ClassCastException e) {
        } catch (NullPointerException e2) {
        }
        return v;
    }

    static String toStringImpl(Map<?, ?> map) {
        StringBuilder append = Collections2.newStringBuilderForCollection(map.size()).append('{');
        STANDARD_JOINER.appendTo(append, map.entrySet().iterator());
        return append.append('}').toString();
    }

    static <K, V> UnmodifiableIterator<V> valueIterator(UnmodifiableIterator<Entry<K, V>> unmodifiableIterator) {
        return new AnonymousClass1(unmodifiableIterator);
    }

    static <K, V> Iterator<V> valueIterator(Iterator<Entry<K, V>> it) {
        return Iterators.transform(it, EntryFunction.VALUE);
    }

    static <V> Predicate<Entry<?, V>> valuePredicateOnEntries(Predicate<? super V> predicate) {
        return Predicates.compose(predicate, EntryFunction.VALUE);
    }
}
