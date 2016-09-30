package com.squareup.haha.guava.collect;

import com.squareup.haha.guava.base.Ascii;
import java.io.Serializable;
import java.util.Comparator;
import javax.annotation.Nullable;

final class ComparatorOrdering<T> extends Ordering<T> implements Serializable {
    private Comparator<T> comparator;

    ComparatorOrdering(Comparator<T> comparator) {
        this.comparator = (Comparator) Ascii.checkNotNull(comparator);
    }

    public final int compare(T t, T t2) {
        return this.comparator.compare(t, t2);
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ComparatorOrdering)) {
            return false;
        }
        return this.comparator.equals(((ComparatorOrdering) obj).comparator);
    }

    public final int hashCode() {
        return this.comparator.hashCode();
    }

    public final String toString() {
        return this.comparator.toString();
    }
}
