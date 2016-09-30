package com.squareup.haha.trove;

final class TObjectCanonicalHashingStrategy<T> implements TObjectHashingStrategy<T> {
    TObjectCanonicalHashingStrategy() {
    }

    public final int computeHashCode(T t) {
        return t != null ? t.hashCode() : 0;
    }

    public final boolean equals(T t, T t2) {
        return t != null ? t.equals(t2) : t2 == null;
    }
}
