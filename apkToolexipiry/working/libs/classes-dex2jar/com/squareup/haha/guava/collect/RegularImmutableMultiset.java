package com.squareup.haha.guava.collect;

import com.squareup.haha.guava.collect.Multiset.Entry;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

final class RegularImmutableMultiset<E> extends ImmutableMultiset<E> {
    private final transient ImmutableMap<E, Integer> map;
    private final transient int size;

    RegularImmutableMultiset(ImmutableMap<E, Integer> immutableMap, int i) {
        this.map = immutableMap;
        this.size = 0;
    }

    public final boolean contains(@Nullable Object obj) {
        return this.map.containsKey(obj);
    }

    public final int count(@Nullable Object obj) {
        Integer num = (Integer) this.map.get(obj);
        return num == null ? 0 : num.intValue();
    }

    public final /* bridge */ /* synthetic */ Set elementSet() {
        return this.map.keySet();
    }

    final Entry<E> getEntry(int i) {
        Map.Entry entry = (Map.Entry) this.map.entrySet().asList().get(i);
        return Multisets.immutableEntry(entry.getKey(), ((Integer) entry.getValue()).intValue());
    }

    public final int hashCode() {
        return this.map.hashCode();
    }

    final boolean isPartialView() {
        return this.map.isPartialView();
    }

    public final int size() {
        return this.size;
    }
}
