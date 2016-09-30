package com.squareup.haha.guava.collect;

import com.squareup.haha.guava.base.Ascii;
import java.util.Set;
import javax.annotation.Nullable;

public abstract class ImmutableSet<E> extends ImmutableCollection<E> implements Set<E> {
    ImmutableSet() {
    }

    public static <E> ImmutableSet<E> of() {
        return EmptyImmutableSet.INSTANCE;
    }

    public boolean equals(@Nullable Object obj) {
        return obj == this ? true : ((obj instanceof ImmutableSet) && isHashCodeFast() && ((ImmutableSet) obj).isHashCodeFast() && hashCode() != obj.hashCode()) ? false : Ascii.equalsImpl(this, obj);
    }

    public int hashCode() {
        return Ascii.hashCodeImpl(this);
    }

    boolean isHashCodeFast() {
        return false;
    }

    public abstract UnmodifiableIterator<E> iterator();
}
