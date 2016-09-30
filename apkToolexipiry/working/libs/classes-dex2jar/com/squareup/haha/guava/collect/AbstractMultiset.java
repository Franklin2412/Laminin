package com.squareup.haha.guava.collect;

import com.squareup.haha.guava.base.Ascii;
import com.squareup.haha.guava.collect.Multiset.Entry;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.Nullable;

abstract class AbstractMultiset<E> extends AbstractCollection<E> implements Multiset<E> {
    private transient Set<E> elementSet;
    private transient Set<Entry<E>> entrySet;

    final class ElementSet extends ElementSet<E> {
        ElementSet() {
        }

        final Multiset<E> multiset() {
            return AbstractMultiset.this;
        }
    }

    final class EntrySet extends EntrySet<E> {
        EntrySet() {
        }

        public final Iterator<Entry<E>> iterator() {
            return AbstractMultiset.this.entryIterator();
        }

        final Multiset<E> multiset() {
            return AbstractMultiset.this;
        }

        public final int size() {
            return AbstractMultiset.this.distinctElements();
        }
    }

    public int add(@Nullable E e, int i) {
        throw new UnsupportedOperationException();
    }

    public boolean add(@Nullable E e) {
        add(e, 1);
        return true;
    }

    public boolean addAll(Collection<? extends E> collection) {
        return Multisets.addAllImpl(this, collection);
    }

    public void clear() {
        Iterators.clear(entryIterator());
    }

    public boolean contains(@Nullable Object obj) {
        return count(obj) > 0;
    }

    public int count(@Nullable Object obj) {
        for (Entry entry : entrySet()) {
            if (Ascii.equal(entry.getElement(), obj)) {
                return entry.getCount();
            }
        }
        return 0;
    }

    abstract int distinctElements();

    public final Set<E> elementSet() {
        Set<E> set = this.elementSet;
        if (set != null) {
            return set;
        }
        set = new ElementSet();
        this.elementSet = set;
        return set;
    }

    abstract Iterator<Entry<E>> entryIterator();

    public Set<Entry<E>> entrySet() {
        Set<Entry<E>> set = this.entrySet;
        if (set != null) {
            return set;
        }
        set = new EntrySet();
        this.entrySet = set;
        return set;
    }

    public boolean equals(@Nullable Object obj) {
        return Multisets.equalsImpl(this, obj);
    }

    public int hashCode() {
        return entrySet().hashCode();
    }

    public boolean isEmpty() {
        return entrySet().isEmpty();
    }

    public Iterator<E> iterator() {
        return Multisets.iteratorImpl(this);
    }

    public int remove(@Nullable Object obj, int i) {
        throw new UnsupportedOperationException();
    }

    public boolean remove(@Nullable Object obj) {
        return remove(obj, 1) > 0;
    }

    public boolean removeAll(Collection<?> collection) {
        return Multisets.removeAllImpl(this, collection);
    }

    public boolean retainAll(Collection<?> collection) {
        return Multisets.retainAllImpl(this, collection);
    }

    public int setCount(@Nullable E e, int i) {
        return Multisets.setCountImpl(this, e, i);
    }

    public final boolean setCount(@Nullable E e, int i, int i2) {
        return Multisets.setCountImpl(this, e, i, i2);
    }

    public int size() {
        return Multisets.sizeImpl(this);
    }

    public String toString() {
        return entrySet().toString();
    }
}
