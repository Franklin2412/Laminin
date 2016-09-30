package com.squareup.haha.guava.base;

import javax.annotation.Nullable;

public abstract class Converter<A, B> implements Function<A, B> {
    private final boolean handleNullAutomatically;

    @Deprecated
    @Nullable
    public final B apply(@Nullable A a) {
        return this.handleNullAutomatically ? a == null ? null : Ascii.checkNotNull(doForward$7713a341()) : doForward$7713a341();
    }

    protected abstract B doForward$7713a341();

    public boolean equals(@Nullable Object obj) {
        return super.equals(obj);
    }
}
