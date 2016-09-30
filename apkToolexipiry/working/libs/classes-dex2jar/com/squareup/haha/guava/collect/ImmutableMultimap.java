package com.squareup.haha.guava.collect;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.annotation.Nullable;

public abstract class ImmutableMultimap<K, V> extends AbstractMultimap<K, V> implements Serializable {
    final transient ImmutableMap<K, ? extends ImmutableCollection<V>> map;
    private transient int size;

    abstract class Itr<T> extends UnmodifiableIterator<T> {
        private K key;
        private Iterator<Entry<K, Collection<V>>> mapIterator;
        private Iterator<V> valueIterator;

        private Itr() {
            this.mapIterator = ImmutableMultimap.this.map.entrySet().iterator();
            this.key = null;
            this.valueIterator = Iterators.emptyIterator();
        }

        public boolean hasNext() {
            return this.mapIterator.hasNext() || this.valueIterator.hasNext();
        }

        public T next() {
            if (!this.valueIterator.hasNext()) {
                Entry entry = (Entry) this.mapIterator.next();
                this.key = entry.getKey();
                this.valueIterator = ((Collection) entry.getValue()).iterator();
            }
            return output(this.key, this.valueIterator.next());
        }

        abstract T output(K k, V v);
    }

    static final class EntryCollection<K, V> extends ImmutableCollection<Entry<K, V>> {
        private ImmutableMultimap<K, V> multimap;

        EntryCollection(ImmutableMultimap<K, V> immutableMultimap) {
            this.multimap = immutableMultimap;
        }

        public final boolean contains(Object obj) {
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            return this.multimap.containsEntry(entry.getKey(), entry.getValue());
        }

        final boolean isPartialView() {
            return this.multimap.map.isPartialView();
        }

        public final UnmodifiableIterator<Entry<K, V>> iterator() {
            return this.multimap.entryIterator();
        }

        public final int size() {
            return this.multimap.size();
        }
    }

    static final class Values<K, V> extends ImmutableCollection<V> {
        private final transient ImmutableMultimap<K, V> multimap;

        Values(ImmutableMultimap<K, V> immutableMultimap) {
            this.multimap = immutableMultimap;
        }

        public final boolean contains(@Nullable Object obj) {
            return this.multimap.containsValue(obj);
        }

        final int copyIntoArray(Object[] objArr, int i) {
            Iterator it = this.multimap.map.values().iterator();
            while (it.hasNext()) {
                i = ((ImmutableCollection) it.next()).copyIntoArray(objArr, i);
            }
            return i;
        }

        final boolean isPartialView() {
            return true;
        }

        public final UnmodifiableIterator<V> iterator() {
            return this.multimap.valueIterator();
        }

        public final int size() {
            return this.multimap.size();
        }
    }

    public final /* bridge */ /* synthetic */ Map asMap() {
        return this.map;
    }

    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    public final /* bridge */ /* synthetic */ boolean containsEntry(Object obj, Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    public final boolean containsValue(@Nullable Object obj) {
        return obj != null && super.containsValue(obj);
    }

    final Map<K, Collection<V>> createAsMap() {
        throw new AssertionError("should never be called");
    }

    final /* bridge */ /* synthetic */ Collection createEntries() {
        return new EntryCollection(this);
    }

    final /* bridge */ /* synthetic */ Collection createValues() {
        return new Values(this);
    }

    public final /* bridge */ /* synthetic */ Collection entries() {
        return (ImmutableCollection) super.entries();
    }

    final UnmodifiableIterator<Entry<K, V>> entryIterator() {
        return new Itr<Entry<K, V>>() {
            final /* bridge */ /* synthetic */ Object output(Object obj, Object obj2) {
                return Maps.immutableEntry(obj, obj2);
            }
        };
    }

    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    public final /* bridge */ /* synthetic */ Collection get(Object obj) {
        return get$2b2cadec();
    }

    public abstract ImmutableCollection<V> get$2b2cadec();

    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    public final /* bridge */ /* synthetic */ Set keySet() {
        return this.map.keySet();
    }

    @Deprecated
    public final boolean put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    public final int size() {
        return this.size;
    }

    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    final UnmodifiableIterator<V> valueIterator() {
        return new Itr<V>() {
            final V output(K k, V v) {
                return v;
            }
        };
    }

    public final /* bridge */ /* synthetic */ Collection values() {
        return (ImmutableCollection) super.values();
    }
}
