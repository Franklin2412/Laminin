package com.squareup.haha.guava.collect;

import com.squareup.haha.guava.base.Ascii;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import javax.annotation.Nullable;

public class Lists$ReverseList<T> extends AbstractList<T> {
    public final List<T> forwardList;

    /* renamed from: com.squareup.haha.guava.collect.Lists.ReverseList.1 */
    final class AnonymousClass1 implements ListIterator<T> {
        private boolean canRemoveOrSet;
        private /* synthetic */ ListIterator val$forwardIterator;

        AnonymousClass1(ListIterator listIterator) {
            this.val$forwardIterator = listIterator;
        }

        public final void add(T t) {
            this.val$forwardIterator.add(t);
            this.val$forwardIterator.previous();
            this.canRemoveOrSet = false;
        }

        public final boolean hasNext() {
            return this.val$forwardIterator.hasPrevious();
        }

        public final boolean hasPrevious() {
            return this.val$forwardIterator.hasNext();
        }

        public final T next() {
            if (hasNext()) {
                this.canRemoveOrSet = true;
                return this.val$forwardIterator.previous();
            }
            throw new NoSuchElementException();
        }

        public final int nextIndex() {
            return Lists$ReverseList.this.reversePosition(this.val$forwardIterator.nextIndex());
        }

        public final T previous() {
            if (hasPrevious()) {
                this.canRemoveOrSet = true;
                return this.val$forwardIterator.next();
            }
            throw new NoSuchElementException();
        }

        public final int previousIndex() {
            return nextIndex() - 1;
        }

        public final void remove() {
            Ascii.checkRemove(this.canRemoveOrSet);
            this.val$forwardIterator.remove();
            this.canRemoveOrSet = false;
        }

        public final void set(T t) {
            Ascii.checkState(this.canRemoveOrSet);
            this.val$forwardIterator.set(t);
        }
    }

    public Lists$ReverseList(List<T> list) {
        this.forwardList = (List) Ascii.checkNotNull(list);
    }

    private int reverseIndex(int i) {
        int size = size();
        Ascii.checkElementIndex(i, size);
        return (size - 1) - i;
    }

    private int reversePosition(int i) {
        int size = size();
        Ascii.checkPositionIndex(i, size);
        return size - i;
    }

    public void add(int i, @Nullable T t) {
        this.forwardList.add(reversePosition(i), t);
    }

    public void clear() {
        this.forwardList.clear();
    }

    public T get(int i) {
        return this.forwardList.get(reverseIndex(i));
    }

    public Iterator<T> iterator() {
        return listIterator();
    }

    public ListIterator<T> listIterator(int i) {
        return new AnonymousClass1(this.forwardList.listIterator(reversePosition(i)));
    }

    public T remove(int i) {
        return this.forwardList.remove(reverseIndex(i));
    }

    protected void removeRange(int i, int i2) {
        subList(i, i2).clear();
    }

    public T set(int i, @Nullable T t) {
        return this.forwardList.set(reverseIndex(i), t);
    }

    public int size() {
        return this.forwardList.size();
    }

    public List<T> subList(int i, int i2) {
        Ascii.checkPositionIndexes(i, i2, size());
        return Ascii.reverse(this.forwardList.subList(reversePosition(i2), reversePosition(i)));
    }
}
