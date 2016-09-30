package com.squareup.haha.guava.collect;

import java.util.Map.Entry;
import javax.annotation.Nullable;

final class EmptyImmutableBiMap extends ImmutableBiMap<Object, Object> {
    static final EmptyImmutableBiMap INSTANCE;

    static {
        INSTANCE = new EmptyImmutableBiMap();
    }

    private EmptyImmutableBiMap() {
    }

    final ImmutableSet<Entry<Object, Object>> createEntrySet() {
        throw new AssertionError("should never be called");
    }

    public final ImmutableSet<Entry<Object, Object>> entrySet() {
        return ImmutableSet.of();
    }

    public final Object get(@Nullable Object obj) {
        return null;
    }

    public final ImmutableBiMap<Object, Object> inverse() {
        return this;
    }

    public final boolean isEmpty() {
        return true;
    }

    final boolean isPartialView() {
        return false;
    }

    public final ImmutableSet<Object> keySet() {
        return ImmutableSet.of();
    }

    public final int size() {
        return 0;
    }
}
