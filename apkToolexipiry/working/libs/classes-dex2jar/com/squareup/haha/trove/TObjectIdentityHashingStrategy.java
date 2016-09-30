package com.squareup.haha.trove;

public final class TObjectIdentityHashingStrategy<T> implements TObjectHashingStrategy<T> {
    public final int computeHashCode(T t) {
        return System.identityHashCode(t);
    }

    public final boolean equals(T t, T t2) {
        return t == t2;
    }
}
