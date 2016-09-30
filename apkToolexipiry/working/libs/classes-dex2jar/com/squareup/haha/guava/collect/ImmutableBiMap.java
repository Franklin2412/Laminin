package com.squareup.haha.guava.collect;

public abstract class ImmutableBiMap<K, V> extends ImmutableMap<K, V> implements BiMap<K, V> {
    ImmutableBiMap() {
    }

    public static <K, V> ImmutableBiMap<K, V> of() {
        return EmptyImmutableBiMap.INSTANCE;
    }

    public abstract ImmutableBiMap<V, K> inverse();
}
