package com.squareup.haha.guava.collect;

import com.squareup.haha.guava.base.Ascii;
import com.squareup.haha.guava.collect.Multiset.Entry;
import com.squareup.haha.guava.primitives.Ints;
import java.io.Serializable;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

abstract class AbstractMapBasedMultiset<E> extends AbstractMultiset<E> implements Serializable {
    private transient long size;

    /* renamed from: com.squareup.haha.guava.collect.AbstractMapBasedMultiset.1 */
    final class AnonymousClass1 implements Iterator<Entry<E>> {
        private Map.Entry<E, Count> toRemove;
        private /* synthetic */ Iterator val$backingEntries;

        /* renamed from: com.squareup.haha.guava.collect.AbstractMapBasedMultiset.1.1 */
        final class AnonymousClass1 extends AbstractEntry<E> {
            private /* synthetic */ Map.Entry val$mapEntry;

            AnonymousClass1(Map.Entry entry) {
                this.val$mapEntry = entry;
            }

            public final int getCount() {
                Count count = (Count) this.val$mapEntry.getValue();
                if (count == null || count.value == 0) {
                    Count count2 = (Count) null.get(getElement());
                    if (count2 != null) {
                        return count2.value;
                    }
                }
                return count == null ? 0 : count.value;
            }

            public final E getElement() {
                return this.val$mapEntry.getKey();
            }
        }

        AnonymousClass1(Iterator it) {
            this.val$backingEntries = it;
        }

        public final boolean hasNext() {
            return this.val$backingEntries.hasNext();
        }

        public final /* bridge */ /* synthetic */ Object next() {
            Map.Entry entry = (Map.Entry) this.val$backingEntries.next();
            this.toRemove = entry;
            return new AnonymousClass1(entry);
        }

        public final void remove() {
            Ascii.checkRemove(this.toRemove != null);
            AbstractMapBasedMultiset.access$122(AbstractMapBasedMultiset.this, (long) ((Count) this.toRemove.getValue()).getAndSet(0));
            this.val$backingEntries.remove();
            this.toRemove = null;
        }
    }

    final class MapBasedMultisetIterator implements Iterator<E> {
        private boolean canRemove;
        private Map.Entry<E, Count> currentEntry;
        private Iterator<Map.Entry<E, Count>> entryIterator;
        private int occurrencesLeft;

        MapBasedMultisetIterator() {
            this.entryIterator = null.entrySet().iterator();
        }

        public final boolean hasNext() {
            return this.occurrencesLeft > 0 || this.entryIterator.hasNext();
        }

        public final E next() {
            if (this.occurrencesLeft == 0) {
                this.currentEntry = (Map.Entry) this.entryIterator.next();
                this.occurrencesLeft = ((Count) this.currentEntry.getValue()).value;
            }
            this.occurrencesLeft--;
            this.canRemove = true;
            return this.currentEntry.getKey();
        }

        public final void remove() {
            Ascii.checkRemove(this.canRemove);
            if (((Count) this.currentEntry.getValue()).value <= 0) {
                throw new ConcurrentModificationException();
            }
            if (((Count) this.currentEntry.getValue()).addAndGet(-1) == 0) {
                this.entryIterator.remove();
            }
            AbstractMapBasedMultiset.this.size = AbstractMapBasedMultiset.this.size - 1;
            this.canRemove = false;
        }
    }

    static /* synthetic */ long access$122(AbstractMapBasedMultiset abstractMapBasedMultiset, long j) {
        long j2 = abstractMapBasedMultiset.size - j;
        abstractMapBasedMultiset.size = j2;
        return j2;
    }

    private static int getAndSet(Count count, int i) {
        return count == null ? 0 : count.getAndSet(i);
    }

    public final int add(@Nullable E e, int i) {
        if (i == 0) {
            return count(e);
        }
        Ascii.checkArgument(i > 0, "occurrences cannot be negative: %s", Integer.valueOf(i));
        throw new NullPointerException();
    }

    public void clear() {
        throw new NullPointerException();
    }

    public final int count(@Nullable Object obj) {
        Count count = (Count) Maps.safeGet(null, obj);
        return count == null ? 0 : count.value;
    }

    final int distinctElements() {
        throw new NullPointerException();
    }

    final Iterator<Entry<E>> entryIterator() {
        throw new NullPointerException();
    }

    public final Set<Entry<E>> entrySet() {
        return super.entrySet();
    }

    public Iterator<E> iterator() {
        return new MapBasedMultisetIterator();
    }

    public final int remove(@Nullable Object obj, int i) {
        if (i == 0) {
            return count(obj);
        }
        Ascii.checkArgument(i > 0, "occurrences cannot be negative: %s", Integer.valueOf(i));
        throw new NullPointerException();
    }

    public final int setCount(@Nullable E e, int i) {
        Ascii.checkNonnegative(i, "count");
        if (i == 0) {
            throw new NullPointerException();
        }
        throw new NullPointerException();
    }

    public int size() {
        return Ints.saturatedCast(this.size);
    }
}
