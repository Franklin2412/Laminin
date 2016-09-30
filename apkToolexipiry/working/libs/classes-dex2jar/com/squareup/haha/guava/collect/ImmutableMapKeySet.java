package com.squareup.haha.guava.collect;

import java.util.Map.Entry;
import javax.annotation.Nullable;

final class ImmutableMapKeySet<K, V> extends ImmutableSet<K> {
    private final ImmutableMap<K, V> map;

    /* renamed from: com.squareup.haha.guava.collect.ImmutableMapKeySet.1 */
    final class AnonymousClass1 extends ImmutableAsList<K> {
        private /* synthetic */ ImmutableList val$entryList;

        AnonymousClass1(ImmutableList immutableList) {
            this.val$entryList = immutableList;
        }

        final ImmutableCollection<K> delegateCollection() {
            return ImmutableMapKeySet.this;
        }

        public final K get(int i) {
            return ((Entry) this.val$entryList.get(i)).getKey();
        }
    }

    ImmutableMapKeySet(ImmutableMap<K, V> immutableMap) {
        this.map = immutableMap;
    }

    public final boolean contains(@Nullable Object obj) {
        return this.map.containsKey(obj);
    }

    final ImmutableList<K> createAsList() {
        return new AnonymousClass1(this.map.entrySet().asList());
    }

    final boolean isPartialView() {
        return true;
    }

    public final UnmodifiableIterator<K> iterator() {
        return asList().iterator();
    }

    public final int size() {
        return this.map.size();
    }
}
