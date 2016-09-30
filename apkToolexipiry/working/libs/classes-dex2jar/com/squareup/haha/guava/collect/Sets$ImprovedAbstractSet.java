package com.squareup.haha.guava.collect;

import com.squareup.haha.guava.base.Ascii;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Set;

abstract class Sets$ImprovedAbstractSet<E> extends AbstractSet<E> {
    Sets$ImprovedAbstractSet() {
    }

    public boolean removeAll(Collection<?> collection) {
        return Ascii.removeAllImpl((Set) this, (Collection) collection);
    }

    public boolean retainAll(Collection<?> collection) {
        return super.retainAll((Collection) Ascii.checkNotNull(collection));
    }
}
