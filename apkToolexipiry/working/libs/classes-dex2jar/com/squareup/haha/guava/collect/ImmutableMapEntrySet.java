package com.squareup.haha.guava.collect;

import java.util.Map.Entry;
import javax.annotation.Nullable;

abstract class ImmutableMapEntrySet<K, V> extends ImmutableSet<Entry<K, V>> {
    public boolean contains(@Nullable Object obj) {
        if (!(obj instanceof Entry)) {
            return false;
        }
        Entry entry = (Entry) obj;
        Object obj2 = map().get(entry.getKey());
        return obj2 != null && obj2.equals(entry.getValue());
    }

    final boolean isPartialView() {
        return map().isPartialView();
    }

    abstract ImmutableMap<K, V> map();

    public int size() {
        return map().size();
    }
}
