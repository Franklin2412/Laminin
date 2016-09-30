package com.squareup.haha.guava.collect;

import java.util.Comparator;
import javax.annotation.Nullable;

public abstract class Ordering<T> implements Comparator<T> {
    protected Ordering() {
    }

    public static <T> Ordering<T> from(Comparator<T> comparator) {
        return comparator instanceof Ordering ? (Ordering) comparator : new ComparatorOrdering(comparator);
    }

    public static <C extends Comparable> Ordering<C> natural() {
        return NaturalOrdering.INSTANCE;
    }

    public abstract int compare(@Nullable T t, @Nullable T t2);

    public <S extends T> Ordering<S> reverse() {
        return new ReverseOrdering(this);
    }
}
