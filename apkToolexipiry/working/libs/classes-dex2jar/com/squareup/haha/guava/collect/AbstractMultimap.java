package com.squareup.haha.guava.collect;

import com.squareup.haha.guava.base.Ascii;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.annotation.Nullable;

abstract class AbstractMultimap<K, V> implements Multimap<K, V> {
    private transient Map<K, Collection<V>> asMap;
    private transient Collection<Entry<K, V>> entries;
    private transient Set<K> keySet;
    private transient Collection<V> values;

    class Entries extends Multimaps$Entries<K, V> {
        private Entries() {
        }

        public Iterator<Entry<K, V>> iterator() {
            return AbstractMultimap.this.entryIterator();
        }

        final Multimap<K, V> multimap() {
            return AbstractMultimap.this;
        }
    }

    final class EntrySet extends com.squareup.haha.guava.collect.AbstractMultimap$com.squareup.haha.guava.collect.AbstractMultimap.Entries implements Set<Entry<K, V>> {
        private EntrySet(AbstractMultimap abstractMultimap) {
            super((byte) 0);
        }

        public final boolean equals(@Nullable Object obj) {
            return Ascii.equalsImpl(this, obj);
        }

        public final int hashCode() {
            return Ascii.hashCodeImpl(this);
        }
    }

    final class Values extends AbstractCollection<V> {
        Values() {
        }

        public final void clear() {
            AbstractMultimap.this.clear();
        }

        public final boolean contains(@Nullable Object obj) {
            return AbstractMultimap.this.containsValue(obj);
        }

        public final Iterator<V> iterator() {
            return AbstractMultimap.this.valueIterator();
        }

        public final int size() {
            return AbstractMultimap.this.size();
        }
    }

    AbstractMultimap() {
    }

    public Map<K, Collection<V>> asMap() {
        Map<K, Collection<V>> map = this.asMap;
        if (map != null) {
            return map;
        }
        map = createAsMap();
        this.asMap = map;
        return map;
    }

    public boolean containsEntry(@Nullable Object obj, @Nullable Object obj2) {
        Collection collection = (Collection) asMap().get(obj);
        return collection != null && collection.contains(obj2);
    }

    public boolean containsValue(@Nullable Object obj) {
        for (Collection contains : asMap().values()) {
            if (contains.contains(obj)) {
                return true;
            }
        }
        return false;
    }

    abstract Map<K, Collection<V>> createAsMap();

    Collection<Entry<K, V>> createEntries() {
        return this instanceof SetMultimap ? new EntrySet() : new Entries();
    }

    Set<K> createKeySet() {
        return new KeySet(asMap());
    }

    Collection<V> createValues() {
        return new Values();
    }

    public Collection<Entry<K, V>> entries() {
        Collection<Entry<K, V>> collection = this.entries;
        if (collection != null) {
            return collection;
        }
        collection = createEntries();
        this.entries = collection;
        return collection;
    }

    abstract Iterator<Entry<K, V>> entryIterator();

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Multimap)) {
            return false;
        }
        return asMap().equals(((Multimap) obj).asMap());
    }

    public int hashCode() {
        return asMap().hashCode();
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

    public boolean put(@Nullable K k, @Nullable V v) {
        return get(k).add(v);
    }

    public boolean remove(@Nullable Object obj, @Nullable Object obj2) {
        Collection collection = (Collection) asMap().get(obj);
        return collection != null && collection.remove(obj2);
    }

    public String toString() {
        return asMap().toString();
    }

    Iterator<V> valueIterator() {
        return Maps.valueIterator(entries().iterator());
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
