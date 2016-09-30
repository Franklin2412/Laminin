package com.squareup.haha.guava.collect;

import java.util.AbstractCollection;
import java.util.Map.Entry;
import javax.annotation.Nullable;

abstract class Multimaps$Entries<K, V> extends AbstractCollection<Entry<K, V>> {
    Multimaps$Entries() {
    }

    public void clear() {
        multimap().clear();
    }

    public boolean contains(@Nullable Object obj) {
        if (!(obj instanceof Entry)) {
            return false;
        }
        Entry entry = (Entry) obj;
        return multimap().containsEntry(entry.getKey(), entry.getValue());
    }

    abstract Multimap<K, V> multimap();

    public boolean remove(@Nullable Object obj) {
        if (!(obj instanceof Entry)) {
            return false;
        }
        Entry entry = (Entry) obj;
        return multimap().remove(entry.getKey(), entry.getValue());
    }

    public int size() {
        return multimap().size();
    }
}
