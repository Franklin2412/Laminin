package com.squareup.haha.guava.collect;

import com.squareup.haha.guava.base.Ascii;
import com.squareup.haha.guava.base.Function;
import com.squareup.haha.guava.base.Predicate;
import com.squareup.haha.guava.base.Predicates;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import javax.annotation.Nullable;

public final class Iterators {
    private static UnmodifiableListIterator<Object> EMPTY_LIST_ITERATOR;
    private static final Iterator<Object> EMPTY_MODIFIABLE_ITERATOR;

    /* renamed from: com.squareup.haha.guava.collect.Iterators.11 */
    static final class AnonymousClass11 extends AbstractIndexedListIterator<T> {
        private /* synthetic */ Object[] val$array;
        private /* synthetic */ int val$offset;

        AnonymousClass11(int i, int i2, Object[] objArr, int i3) {
            this.val$array = objArr;
            this.val$offset = i3;
            super(i, i2);
        }

        protected final T get(int i) {
            return this.val$array[this.val$offset + i];
        }
    }

    /* renamed from: com.squareup.haha.guava.collect.Iterators.12 */
    static final class AnonymousClass12 extends UnmodifiableIterator<T> {
        private boolean done;
        private /* synthetic */ Object val$value;

        AnonymousClass12(Object obj) {
            this.val$value = obj;
        }

        public final boolean hasNext() {
            return !this.done;
        }

        public final T next() {
            if (this.done) {
                throw new NoSuchElementException();
            }
            this.done = true;
            return this.val$value;
        }
    }

    /* renamed from: com.squareup.haha.guava.collect.Iterators.5 */
    static final class AnonymousClass5 implements Iterator<T> {
        private Iterator<? extends T> current;
        private Iterator<? extends T> removeFrom;
        private /* synthetic */ Iterator val$inputs;

        AnonymousClass5(Iterator it) {
            this.val$inputs = it;
            this.current = Iterators.emptyIterator();
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final boolean hasNext() {
            /*
            r2 = this;
        L_0x0000:
            r0 = r2.current;
            r0 = com.squareup.haha.guava.base.Ascii.checkNotNull(r0);
            r0 = (java.util.Iterator) r0;
            r0 = r0.hasNext();
            if (r0 != 0) goto L_0x0021;
        L_0x000e:
            r1 = r2.val$inputs;
            r1 = r1.hasNext();
            if (r1 == 0) goto L_0x0021;
        L_0x0016:
            r0 = r2.val$inputs;
            r0 = r0.next();
            r0 = (java.util.Iterator) r0;
            r2.current = r0;
            goto L_0x0000;
        L_0x0021:
            return r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.squareup.haha.guava.collect.Iterators.5.hasNext():boolean");
        }

        public final T next() {
            if (hasNext()) {
                this.removeFrom = this.current;
                return this.current.next();
            }
            throw new NoSuchElementException();
        }

        public final void remove() {
            Ascii.checkRemove(this.removeFrom != null);
            this.removeFrom.remove();
            this.removeFrom = null;
        }
    }

    /* renamed from: com.squareup.haha.guava.collect.Iterators.8 */
    static final class AnonymousClass8 extends TransformedIterator<F, T> {
        private /* synthetic */ Function val$function;

        AnonymousClass8(Iterator it, Function function) {
            this.val$function = function;
            super(it);
        }

        final T transform(F f) {
            return this.val$function.apply(f);
        }
    }

    static {
        EMPTY_LIST_ITERATOR = new UnmodifiableListIterator<Object>() {
            public final boolean hasNext() {
                return false;
            }

            public final boolean hasPrevious() {
                return false;
            }

            public final Object next() {
                throw new NoSuchElementException();
            }

            public final int nextIndex() {
                return 0;
            }

            public final Object previous() {
                throw new NoSuchElementException();
            }

            public final int previousIndex() {
                return -1;
            }
        };
        EMPTY_MODIFIABLE_ITERATOR = new Iterator<Object>() {
            public final boolean hasNext() {
                return false;
            }

            public final Object next() {
                throw new NoSuchElementException();
            }

            public final void remove() {
                Ascii.checkRemove(false);
            }
        };
    }

    public static <T> boolean addAll(Collection<T> collection, Iterator<? extends T> it) {
        Ascii.checkNotNull(collection);
        Ascii.checkNotNull(it);
        boolean z = false;
        while (it.hasNext()) {
            z |= collection.add(it.next());
        }
        return z;
    }

    static <T> ListIterator<T> cast(Iterator<T> it) {
        return (ListIterator) it;
    }

    static void clear(Iterator<?> it) {
        Ascii.checkNotNull(it);
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    public static <T> Iterator<T> concat(Iterator<? extends Iterator<? extends T>> it) {
        Ascii.checkNotNull(it);
        return new AnonymousClass5(it);
    }

    public static boolean contains(Iterator<?> it, @Nullable Object obj) {
        Predicate equalTo = Predicates.equalTo(obj);
        if (equalTo == null) {
            throw new NullPointerException(String.valueOf("predicate"));
        }
        int i = 0;
        while (it.hasNext()) {
            if (equalTo.apply(it.next())) {
                break;
            }
            i++;
        }
        i = -1;
        return i != -1;
    }

    public static boolean elementsEqual(Iterator<?> it, Iterator<?> it2) {
        while (it.hasNext()) {
            if (!it2.hasNext()) {
                return false;
            }
            if (!Ascii.equal(it.next(), it2.next())) {
                return false;
            }
        }
        return !it2.hasNext();
    }

    public static <T> UnmodifiableIterator<T> emptyIterator() {
        return EMPTY_LIST_ITERATOR;
    }

    static <T> Iterator<T> emptyModifiableIterator() {
        return EMPTY_MODIFIABLE_ITERATOR;
    }

    static <T> UnmodifiableListIterator<T> forArray(T[] tArr, int i, int i2, int i3) {
        Ascii.checkArgument(i2 >= 0);
        Ascii.checkPositionIndexes(i, i + i2, tArr.length);
        Ascii.checkPositionIndex(i3, i2);
        return i2 == 0 ? EMPTY_LIST_ITERATOR : new AnonymousClass11(i2, i3, tArr, i);
    }

    @Nullable
    public static <T> T getNext(Iterator<? extends T> it, @Nullable T t) {
        return it.hasNext() ? it.next() : t;
    }

    @Nullable
    static <T> T pollNext(Iterator<T> it) {
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        it.remove();
        return next;
    }

    public static boolean removeAll(Iterator<?> it, Collection<?> collection) {
        return removeIf(it, Predicates.in(collection));
    }

    public static <T> boolean removeIf(Iterator<T> it, Predicate<? super T> predicate) {
        Ascii.checkNotNull(predicate);
        boolean z = false;
        while (it.hasNext()) {
            if (predicate.apply(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    public static <T> UnmodifiableIterator<T> singletonIterator(@Nullable T t) {
        return new AnonymousClass12(t);
    }

    public static String toString(Iterator<?> it) {
        return Collections2.STANDARD_JOINER$5f22bbb7.appendTo(new StringBuilder("["), (Iterator) it).append(']').toString();
    }

    public static <F, T> Iterator<T> transform(Iterator<F> it, Function<? super F, ? extends T> function) {
        Ascii.checkNotNull(function);
        return new AnonymousClass8(it, function);
    }
}
