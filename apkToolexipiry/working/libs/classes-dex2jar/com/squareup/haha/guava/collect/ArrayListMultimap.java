package com.squareup.haha.guava.collect;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class ArrayListMultimap<K, V> extends AbstractListMultimap<K, V> {
    private transient int expectedValuesPerKey;

    private ArrayListMultimap() {
        super(new HashMap());
        this.expectedValuesPerKey = 3;
    }

    public static <K, V> ArrayListMultimap<K, V> create() {
        return new ArrayListMultimap();
    }

    public final /* bridge */ /* synthetic */ Map asMap() {
        return super.asMap();
    }

    public final /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    public final /* bridge */ /* synthetic */ boolean containsEntry(Object obj, Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    public final /* bridge */ /* synthetic */ boolean containsValue(Object obj) {
        return super.containsValue(obj);
    }

    final List<V> createCollection() {
        return new ArrayList(this.expectedValuesPerKey);
    }

    public final /* bridge */ /* synthetic */ Collection entries() {
        return super.entries();
    }

    public final /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    public final /* bridge */ /* synthetic */ List get(Object obj) {
        return super.get(obj);
    }

    public final /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    public final /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    public final /* bridge */ /* synthetic */ boolean put(Object obj, Object obj2) {
        return super.put(obj, obj2);
    }

    public final /* bridge */ /* synthetic */ boolean remove(Object obj, Object obj2) {
        return super.remove(obj, obj2);
    }

    public final /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    public final /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public final /* bridge */ /* synthetic */ Collection values() {
        return super.values();
    }
}
