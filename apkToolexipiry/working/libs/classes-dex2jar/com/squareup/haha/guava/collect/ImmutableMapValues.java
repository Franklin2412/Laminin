package com.squareup.haha.guava.collect;

import java.util.Map.Entry;
import javax.annotation.Nullable;

final class ImmutableMapValues<K, V> extends ImmutableCollection<V> {
    private final ImmutableMap<K, V> map;

    /* renamed from: com.squareup.haha.guava.collect.ImmutableMapValues.1 */
    final class AnonymousClass1 extends ImmutableAsList<V> {
        private /* synthetic */ ImmutableList val$entryList;

        AnonymousClass1(ImmutableList immutableList) {
            this.val$entryList = immutableList;
        }

        final ImmutableCollection<V> delegateCollection() {
            return ImmutableMapValues.this;
        }

        public final V get(int i) {
            return ((Entry) this.val$entryList.get(i)).getValue();
        }
    }

    ImmutableMapValues(ImmutableMap<K, V> immutableMap) {
        this.map = immutableMap;
    }

    public final boolean contains(@Nullable Object obj) {
        return obj != null && Iterators.contains(iterator(), obj);
    }

    final ImmutableList<V> createAsList() {
        return new AnonymousClass1(this.map.entrySet().asList());
    }

    final boolean isPartialView() {
        return true;
    }

    public final UnmodifiableIterator<V> iterator() {
        return Maps.valueIterator(this.map.entrySet().iterator());
    }

    public final int size() {
        return this.map.size();
    }
}
