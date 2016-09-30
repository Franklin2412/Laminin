package com.squareup.haha.guava.collect;

import com.squareup.haha.guava.base.Ascii;
import java.io.Serializable;

final class NaturalOrdering extends Ordering<Comparable> implements Serializable {
    static final NaturalOrdering INSTANCE;

    static {
        INSTANCE = new NaturalOrdering();
    }

    private NaturalOrdering() {
    }

    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        Ascii.checkNotNull(comparable);
        Ascii.checkNotNull(comparable2);
        return comparable.compareTo(comparable2);
    }

    public final <S extends Comparable> Ordering<S> reverse() {
        return ReverseNaturalOrdering.INSTANCE;
    }

    public final String toString() {
        return "Ordering.natural()";
    }
}
