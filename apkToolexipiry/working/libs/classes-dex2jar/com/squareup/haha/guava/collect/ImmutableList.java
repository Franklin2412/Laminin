package com.squareup.haha.guava.collect;

import com.payu.testapp.R;
import com.squareup.haha.guava.base.Ascii;
import com.squareup.haha.perflib.StackFrame;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import javax.annotation.Nullable;

public abstract class ImmutableList<E> extends ImmutableCollection<E> implements List<E>, RandomAccess {
    static final ImmutableList<Object> EMPTY;

    /* renamed from: com.squareup.haha.guava.collect.ImmutableList.1 */
    final class AnonymousClass1 extends AbstractIndexedListIterator<E> {
        AnonymousClass1(int i, int i2) {
            super(i, i2);
        }

        protected final E get(int i) {
            return ImmutableList.this.get(i);
        }
    }

    static final class ReverseImmutableList<E> extends ImmutableList<E> {
        private final transient ImmutableList<E> forwardList;

        ReverseImmutableList(ImmutableList<E> immutableList) {
            this.forwardList = immutableList;
        }

        private int reverseIndex(int i) {
            return (size() - 1) - i;
        }

        public final boolean contains(@Nullable Object obj) {
            return this.forwardList.contains(obj);
        }

        public final E get(int i) {
            Ascii.checkElementIndex(i, size());
            return this.forwardList.get(reverseIndex(i));
        }

        public final int indexOf(@Nullable Object obj) {
            int lastIndexOf = this.forwardList.lastIndexOf(obj);
            return lastIndexOf >= 0 ? reverseIndex(lastIndexOf) : -1;
        }

        final boolean isPartialView() {
            return this.forwardList.isPartialView();
        }

        public final /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        public final int lastIndexOf(@Nullable Object obj) {
            int indexOf = this.forwardList.indexOf(obj);
            return indexOf >= 0 ? reverseIndex(indexOf) : -1;
        }

        public final /* bridge */ /* synthetic */ ListIterator listIterator() {
            return listIterator(0);
        }

        public final /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
            return super.listIterator(i);
        }

        public final ImmutableList<E> reverse() {
            return this.forwardList;
        }

        public final int size() {
            return this.forwardList.size();
        }

        public final ImmutableList<E> subList(int i, int i2) {
            Ascii.checkPositionIndexes(i, i2, size());
            return this.forwardList.subList(size() - i2, size() - i).reverse();
        }
    }

    final class SubList extends ImmutableList<E> {
        private transient int length;
        private transient int offset;

        SubList(int i, int i2) {
            this.offset = i;
            this.length = i2;
        }

        public final E get(int i) {
            Ascii.checkElementIndex(i, this.length);
            return ImmutableList.this.get(this.offset + i);
        }

        final boolean isPartialView() {
            return true;
        }

        public final /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        public final /* bridge */ /* synthetic */ ListIterator listIterator() {
            return listIterator(0);
        }

        public final /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
            return super.listIterator(i);
        }

        public final int size() {
            return this.length;
        }

        public final ImmutableList<E> subList(int i, int i2) {
            Ascii.checkPositionIndexes(i, i2, this.length);
            return ImmutableList.this.subList(this.offset + i, this.offset + i2);
        }
    }

    static {
        EMPTY = new RegularImmutableList(ObjectArrays.EMPTY_ARRAY);
    }

    ImmutableList() {
    }

    static <E> ImmutableList<E> asImmutableList(Object[] objArr) {
        int length = objArr.length;
        switch (length) {
            case StackFrame.NO_LINE_NUMBER /*0*/:
                return EMPTY;
            case R.styleable.WaitingDots_period /*1*/:
                return new SingletonImmutableList(objArr[0]);
            default:
                if (length < objArr.length) {
                    objArr = ObjectArrays.arraysCopyOf(objArr, length);
                }
                return new RegularImmutableList(objArr);
        }
    }

    public static <E> ImmutableList<E> copyOf(Collection<? extends E> collection) {
        if (!(collection instanceof ImmutableCollection)) {
            return asImmutableList(ObjectArrays.checkElementsNotNull(collection.toArray()));
        }
        ImmutableList<E> asList = ((ImmutableCollection) collection).asList();
        return asList.isPartialView() ? asImmutableList(asList.toArray()) : asList;
    }

    public static <E> ImmutableList<E> of() {
        return EMPTY;
    }

    public static <E> ImmutableList<E> of(E e) {
        return new SingletonImmutableList(e);
    }

    public static <E> ImmutableList<E> of(E e, E e2) {
        return asImmutableList(ObjectArrays.checkElementsNotNull(e, e2));
    }

    @Deprecated
    public final void add(int i, E e) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    public final ImmutableList<E> asList() {
        return this;
    }

    public boolean contains(@Nullable Object obj) {
        return indexOf(obj) >= 0;
    }

    int copyIntoArray(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(@javax.annotation.Nullable java.lang.Object r3) {
        /*
        r2 = this;
        r0 = com.squareup.haha.guava.base.Ascii.checkNotNull(r2);
        if (r3 != r0) goto L_0x0008;
    L_0x0006:
        r0 = 1;
    L_0x0007:
        return r0;
    L_0x0008:
        r0 = r3 instanceof java.util.List;
        if (r0 == 0) goto L_0x0026;
    L_0x000c:
        r3 = (java.util.List) r3;
        r0 = r2.size();
        r1 = r3.size();
        if (r0 != r1) goto L_0x0026;
    L_0x0018:
        r0 = r2.iterator();
        r1 = r3.iterator();
        r0 = com.squareup.haha.guava.collect.Iterators.elementsEqual(r0, r1);
        if (r0 != 0) goto L_0x0006;
    L_0x0026:
        r0 = 0;
        goto L_0x0007;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.haha.guava.collect.ImmutableList.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < size(); i2++) {
            i = (((i * 31) + get(i2).hashCode()) ^ -1) ^ -1;
        }
        return i;
    }

    public int indexOf(@Nullable Object obj) {
        if (obj != null) {
            ListIterator listIterator = listIterator();
            while (listIterator.hasNext()) {
                if (Ascii.equal(obj, listIterator.next())) {
                    return listIterator.previousIndex();
                }
            }
        }
        return -1;
    }

    public UnmodifiableIterator<E> iterator() {
        return listIterator(0);
    }

    public int lastIndexOf(@Nullable Object obj) {
        if (obj != null) {
            ListIterator listIterator = listIterator(size());
            while (listIterator.hasPrevious()) {
                if (Ascii.equal(obj, listIterator.previous())) {
                    return listIterator.nextIndex();
                }
            }
        }
        return -1;
    }

    public UnmodifiableListIterator<E> listIterator(int i) {
        return new AnonymousClass1(size(), i);
    }

    public /* bridge */ /* synthetic */ ListIterator listIterator() {
        return listIterator(0);
    }

    @Deprecated
    public final E remove(int i) {
        throw new UnsupportedOperationException();
    }

    public ImmutableList<E> reverse() {
        return new ReverseImmutableList(this);
    }

    @Deprecated
    public final E set(int i, E e) {
        throw new UnsupportedOperationException();
    }

    public ImmutableList<E> subList(int i, int i2) {
        Ascii.checkPositionIndexes(i, i2, size());
        switch (i2 - i) {
            case StackFrame.NO_LINE_NUMBER /*0*/:
                return EMPTY;
            case R.styleable.WaitingDots_period /*1*/:
                return of(get(i));
            default:
                return subListUnchecked(i, i2);
        }
    }

    ImmutableList<E> subListUnchecked(int i, int i2) {
        return new SubList(i, i2 - i);
    }
}
