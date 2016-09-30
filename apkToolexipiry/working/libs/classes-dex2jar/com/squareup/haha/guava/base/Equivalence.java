package com.squareup.haha.guava.base;

import javax.annotation.Nullable;

public abstract class Equivalence<T> {
    protected abstract boolean doEquivalent$2838e5b1();

    protected abstract int doHash$5d527804();

    public final boolean equivalent(@Nullable T t, @Nullable T t2) {
        return t == t2 ? true : (t == null || t2 == null) ? false : doEquivalent$2838e5b1();
    }

    public final int hash(@Nullable T t) {
        return t == null ? 0 : doHash$5d527804();
    }
}
