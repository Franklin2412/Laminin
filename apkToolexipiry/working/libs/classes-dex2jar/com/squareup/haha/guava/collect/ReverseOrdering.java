package com.squareup.haha.guava.collect;

import com.squareup.haha.guava.base.Ascii;
import java.io.Serializable;
import javax.annotation.Nullable;

final class ReverseOrdering<T> extends Ordering<T> implements Serializable {
    private Ordering<? super T> forwardOrder;

    ReverseOrdering(Ordering<? super T> ordering) {
        this.forwardOrder = (Ordering) Ascii.checkNotNull(ordering);
    }

    public final int compare(T t, T t2) {
        return this.forwardOrder.compare(t2, t);
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ReverseOrdering)) {
            return false;
        }
        return this.forwardOrder.equals(((ReverseOrdering) obj).forwardOrder);
    }

    public final int hashCode() {
        return -this.forwardOrder.hashCode();
    }

    public final <S extends T> Ordering<S> reverse() {
        return this.forwardOrder;
    }

    public final String toString() {
        return this.forwardOrder + ".reverse()";
    }
}
