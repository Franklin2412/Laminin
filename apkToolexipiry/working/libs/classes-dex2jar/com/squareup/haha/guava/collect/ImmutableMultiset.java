package com.squareup.haha.guava.collect;

import com.squareup.haha.guava.base.Ascii;
import com.squareup.haha.guava.collect.Multiset.Entry;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import javax.annotation.Nullable;

public abstract class ImmutableMultiset<E> extends ImmutableCollection<E> implements Multiset<E> {
    private transient ImmutableSet<Entry<E>> entrySet;

    /* renamed from: com.squareup.haha.guava.collect.ImmutableMultiset.1 */
    final class AnonymousClass1 extends UnmodifiableIterator<E> {
        private E element;
        private int remaining;
        private /* synthetic */ Iterator val$entryIterator;

        AnonymousClass1(ImmutableMultiset immutableMultiset, Iterator it) {
            this.val$entryIterator = it;
        }

        public final boolean hasNext() {
            return this.remaining > 0 || this.val$entryIterator.hasNext();
        }

        public final E next() {
            if (this.remaining <= 0) {
                Entry entry = (Entry) this.val$entryIterator.next();
                this.element = entry.getElement();
                this.remaining = entry.getCount();
            }
            this.remaining--;
            return this.element;
        }
    }

    final class EntrySet extends ImmutableSet<Entry<E>> {
        private EntrySet() {
        }

        public final boolean contains(Object obj) {
            if (obj instanceof Entry) {
                Entry entry = (Entry) obj;
                if (entry.getCount() > 0 && ImmutableMultiset.this.count(entry.getElement()) == entry.getCount()) {
                    return true;
                }
            }
            return false;
        }

        final ImmutableList<Entry<E>> createAsList() {
            return new ImmutableAsList<Entry<E>>() {
                final ImmutableCollection<Entry<E>> delegateCollection() {
                    return EntrySet.this;
                }

                public final /* bridge */ /* synthetic */ Object get(int i) {
                    return ImmutableMultiset.this.getEntry(i);
                }
            };
        }

        public final int hashCode() {
            return ImmutableMultiset.this.hashCode();
        }

        final boolean isPartialView() {
            return ImmutableMultiset.this.isPartialView();
        }

        public final UnmodifiableIterator<Entry<E>> iterator() {
            return asList().iterator();
        }

        public final int size() {
            return ImmutableMultiset.this.elementSet().size();
        }
    }

    static {
        RegularImmutableMultiset regularImmutableMultiset = new RegularImmutableMultiset(ImmutableMap.of(), 0);
    }

    ImmutableMultiset() {
    }

    private ImmutableSet<Entry<E>> entrySet() {
        ImmutableSet<Entry<E>> immutableSet = this.entrySet;
        if (immutableSet == null) {
            immutableSet = isEmpty() ? ImmutableSet.of() : new EntrySet();
            this.entrySet = immutableSet;
        }
        return immutableSet;
    }

    @Deprecated
    public final int add(E e, int i) {
        throw new UnsupportedOperationException();
    }

    public boolean contains(@Nullable Object obj) {
        return count(obj) > 0;
    }

    public boolean containsAll(Collection<?> collection) {
        return elementSet().containsAll(collection);
    }

    final int copyIntoArray(Object[] objArr, int i) {
        Iterator it = entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            Arrays.fill(objArr, i, entry.getCount() + i, entry.getElement());
            i += entry.getCount();
        }
        return i;
    }

    public boolean equals(@Nullable Object obj) {
        return Multisets.equalsImpl(this, obj);
    }

    abstract Entry<E> getEntry(int i);

    public int hashCode() {
        return Ascii.hashCodeImpl(entrySet());
    }

    public final UnmodifiableIterator<E> iterator() {
        return new AnonymousClass1(this, entrySet().iterator());
    }

    @Deprecated
    public final int remove(Object obj, int i) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final int setCount(E e, int i) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final boolean setCount(E e, int i, int i2) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return entrySet().toString();
    }
}
