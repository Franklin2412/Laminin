package com.squareup.haha.guava.collect;

import com.squareup.haha.guava.base.Ascii;
import com.squareup.haha.guava.collect.Multiset.Entry;
import com.squareup.haha.guava.primitives.Ints;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import javax.annotation.Nullable;

public final class Multisets {

    static abstract class AbstractEntry<E> implements Entry<E> {
        AbstractEntry() {
        }

        public boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            return getCount() == entry.getCount() && Ascii.equal(getElement(), entry.getElement());
        }

        public int hashCode() {
            Object element = getElement();
            return (element == null ? 0 : element.hashCode()) ^ getCount();
        }

        public String toString() {
            String valueOf = String.valueOf(getElement());
            int count = getCount();
            return count == 1 ? valueOf : valueOf + " x " + count;
        }
    }

    static abstract class ElementSet<E> extends Sets$ImprovedAbstractSet<E> {

        /* renamed from: com.squareup.haha.guava.collect.Multisets.ElementSet.1 */
        final class AnonymousClass1 extends TransformedIterator<Entry<E>, E> {
            AnonymousClass1(ElementSet elementSet, Iterator it) {
                super(it);
            }

            final /* bridge */ /* synthetic */ Object transform(Object obj) {
                return ((Entry) obj).getElement();
            }
        }

        ElementSet() {
        }

        public void clear() {
            multiset().clear();
        }

        public boolean contains(Object obj) {
            return multiset().contains(obj);
        }

        public boolean containsAll(Collection<?> collection) {
            return multiset().containsAll(collection);
        }

        public boolean isEmpty() {
            return multiset().isEmpty();
        }

        public Iterator<E> iterator() {
            return new AnonymousClass1(this, multiset().entrySet().iterator());
        }

        abstract Multiset<E> multiset();

        public boolean remove(Object obj) {
            int count = multiset().count(obj);
            if (count <= 0) {
                return false;
            }
            multiset().remove(obj, count);
            return true;
        }

        public int size() {
            return multiset().entrySet().size();
        }
    }

    static abstract class EntrySet<E> extends Sets$ImprovedAbstractSet<Entry<E>> {
        EntrySet() {
        }

        public void clear() {
            multiset().clear();
        }

        public boolean contains(@Nullable Object obj) {
            if (obj instanceof Entry) {
                Entry entry = (Entry) obj;
                if (entry.getCount() > 0 && multiset().count(entry.getElement()) == entry.getCount()) {
                    return true;
                }
            }
            return false;
        }

        abstract Multiset<E> multiset();

        public boolean remove(Object obj) {
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            Object element = entry.getElement();
            int count = entry.getCount();
            return count != 0 ? multiset().setCount(element, count, 0) : false;
        }
    }

    static final class ImmutableEntry<E> extends AbstractEntry<E> implements Serializable {
        private int count;
        @Nullable
        private E element;

        ImmutableEntry(@Nullable E e, int i) {
            this.element = e;
            this.count = i;
            Ascii.checkNonnegative(i, "count");
        }

        public final int getCount() {
            return this.count;
        }

        @Nullable
        public final E getElement() {
            return this.element;
        }
    }

    static final class MultisetIteratorImpl<E> implements Iterator<E> {
        private boolean canRemove;
        private Entry<E> currentEntry;
        private final Iterator<Entry<E>> entryIterator;
        private int laterCount;
        private final Multiset<E> multiset;
        private int totalCount;

        MultisetIteratorImpl(Multiset<E> multiset, Iterator<Entry<E>> it) {
            this.multiset = multiset;
            this.entryIterator = it;
        }

        public final boolean hasNext() {
            return this.laterCount > 0 || this.entryIterator.hasNext();
        }

        public final E next() {
            if (hasNext()) {
                if (this.laterCount == 0) {
                    this.currentEntry = (Entry) this.entryIterator.next();
                    int count = this.currentEntry.getCount();
                    this.laterCount = count;
                    this.totalCount = count;
                }
                this.laterCount--;
                this.canRemove = true;
                return this.currentEntry.getElement();
            }
            throw new NoSuchElementException();
        }

        public final void remove() {
            Ascii.checkRemove(this.canRemove);
            if (this.totalCount == 1) {
                this.entryIterator.remove();
            } else {
                this.multiset.remove(this.currentEntry.getElement());
            }
            this.totalCount--;
            this.canRemove = false;
        }
    }

    static {
        AnonymousClass5 anonymousClass5 = new Ordering<Entry<?>>() {
            public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
                return Ints.compare(((Entry) obj2).getCount(), ((Entry) obj).getCount());
            }
        };
    }

    static <E> boolean addAllImpl(Multiset<E> multiset, Collection<? extends E> collection) {
        if (collection.isEmpty()) {
            return false;
        }
        if (collection instanceof Multiset) {
            for (Entry entry : ((Multiset) collection).entrySet()) {
                multiset.add(entry.getElement(), entry.getCount());
            }
        } else {
            Iterators.addAll(multiset, collection.iterator());
        }
        return true;
    }

    static boolean equalsImpl(Multiset<?> multiset, @Nullable Object obj) {
        if (obj != multiset) {
            if (!(obj instanceof Multiset)) {
                return false;
            }
            Multiset multiset2 = (Multiset) obj;
            if (multiset.size() != multiset2.size() || multiset.entrySet().size() != multiset2.entrySet().size()) {
                return false;
            }
            for (Entry entry : multiset2.entrySet()) {
                if (multiset.count(entry.getElement()) != entry.getCount()) {
                    return false;
                }
            }
        }
        return true;
    }

    public static <E> Entry<E> immutableEntry(@Nullable E e, int i) {
        return new ImmutableEntry(e, i);
    }

    static <E> Iterator<E> iteratorImpl(Multiset<E> multiset) {
        return new MultisetIteratorImpl(multiset, multiset.entrySet().iterator());
    }

    static boolean removeAllImpl(Multiset<?> multiset, Collection<?> collection) {
        Collection elementSet;
        if (collection instanceof Multiset) {
            elementSet = ((Multiset) collection).elementSet();
        }
        return multiset.elementSet().removeAll(elementSet);
    }

    static boolean retainAllImpl(Multiset<?> multiset, Collection<?> collection) {
        Collection elementSet;
        Ascii.checkNotNull(collection);
        if (collection instanceof Multiset) {
            elementSet = ((Multiset) collection).elementSet();
        }
        return multiset.elementSet().retainAll(elementSet);
    }

    static <E> int setCountImpl(Multiset<E> multiset, E e, int i) {
        Ascii.checkNonnegative(i, "count");
        int count = multiset.count(e);
        int i2 = i - count;
        if (i2 > 0) {
            multiset.add(e, i2);
        } else if (i2 < 0) {
            multiset.remove(e, -i2);
        }
        return count;
    }

    static <E> boolean setCountImpl(Multiset<E> multiset, E e, int i, int i2) {
        Ascii.checkNonnegative(i, "oldCount");
        Ascii.checkNonnegative(i2, "newCount");
        if (multiset.count(e) != i) {
            return false;
        }
        multiset.setCount(e, i2);
        return true;
    }

    static int sizeImpl(Multiset<?> multiset) {
        long j = 0;
        for (Entry count : multiset.entrySet()) {
            j = ((long) count.getCount()) + j;
        }
        return Ints.saturatedCast(j);
    }
}
