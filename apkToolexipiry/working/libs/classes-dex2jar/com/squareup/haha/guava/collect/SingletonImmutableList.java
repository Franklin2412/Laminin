package com.squareup.haha.guava.collect;

import com.squareup.haha.guava.base.Ascii;
import java.util.List;
import javax.annotation.Nullable;

final class SingletonImmutableList<E> extends ImmutableList<E> {
    private transient E element;

    SingletonImmutableList(E e) {
        this.element = Ascii.checkNotNull(e);
    }

    public final boolean contains(@Nullable Object obj) {
        return this.element.equals(obj);
    }

    final int copyIntoArray(Object[] objArr, int i) {
        objArr[i] = this.element;
        return i + 1;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        List list = (List) obj;
        return list.size() == 1 && this.element.equals(list.get(0));
    }

    public final E get(int i) {
        Ascii.checkElementIndex(i, 1);
        return this.element;
    }

    public final int hashCode() {
        return this.element.hashCode() + 31;
    }

    public final int indexOf(@Nullable Object obj) {
        return this.element.equals(obj) ? 0 : -1;
    }

    public final boolean isEmpty() {
        return false;
    }

    final boolean isPartialView() {
        return false;
    }

    public final UnmodifiableIterator<E> iterator() {
        return Iterators.singletonIterator(this.element);
    }

    public final int lastIndexOf(@Nullable Object obj) {
        return indexOf(obj);
    }

    public final ImmutableList<E> reverse() {
        return this;
    }

    public final int size() {
        return 1;
    }

    public final ImmutableList<E> subList(int i, int i2) {
        Ascii.checkPositionIndexes(i, i2, 1);
        return i == i2 ? ImmutableList.EMPTY : this;
    }

    public final String toString() {
        String obj = this.element.toString();
        return new StringBuilder(obj.length() + 2).append('[').append(obj).append(']').toString();
    }
}
