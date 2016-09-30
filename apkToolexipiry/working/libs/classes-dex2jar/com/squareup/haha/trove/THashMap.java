package com.squareup.haha.trove;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class THashMap<K, V> extends TObjectHash<K> implements Map<K, V> {
    protected transient V[] _values;

    final class Entry implements java.util.Map.Entry<K, V> {
        private final int index;
        private final K key;
        private V val;

        Entry(K k, V v, int i) {
            this.key = k;
            this.val = v;
            this.index = i;
        }

        public final K getKey() {
            return this.key;
        }

        public final V getValue() {
            return this.val;
        }

        public final V setValue(V v) {
            if (THashMap.this._values[this.index] != this.val) {
                throw new ConcurrentModificationException();
            }
            THashMap.this._values[this.index] = v;
            V v2 = this.val;
            this.val = v;
            return v2;
        }
    }

    abstract class MapBackedView<E> implements Set<E> {
        MapBackedView() {
        }

        public boolean add(E e) {
            throw new UnsupportedOperationException();
        }

        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        public void clear() {
            THashMap.this.clear();
        }

        public boolean contains(Object obj) {
            return containsElement(obj);
        }

        public boolean containsAll(Collection<?> collection) {
            for (Object contains : collection) {
                if (!contains(contains)) {
                    return false;
                }
            }
            return true;
        }

        public abstract boolean containsElement(E e);

        public boolean isEmpty() {
            return THashMap.this.isEmpty();
        }

        public abstract Iterator<E> iterator();

        public boolean remove(Object obj) {
            return removeElement(obj);
        }

        public boolean removeAll(Collection<?> collection) {
            boolean z = false;
            for (Object remove : collection) {
                if (remove(remove)) {
                    z = true;
                }
            }
            return z;
        }

        public abstract boolean removeElement(E e);

        public boolean retainAll(Collection<?> collection) {
            boolean z = false;
            Iterator it = iterator();
            while (it.hasNext()) {
                if (!collection.contains(it.next())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        public int size() {
            return THashMap.this.size();
        }

        public Object[] toArray() {
            Object[] objArr = new Object[size()];
            Iterator it = iterator();
            int i = 0;
            while (it.hasNext()) {
                objArr[i] = it.next();
                i++;
            }
            return objArr;
        }

        public <T> T[] toArray(T[] tArr) {
            int size = size();
            T[] tArr2 = tArr.length < size ? (Object[]) Array.newInstance(tArr.getClass().getComponentType(), size) : tArr;
            Iterator it = iterator();
            for (int i = 0; i < size; i++) {
                tArr2[i] = it.next();
            }
            if (tArr2.length > size) {
                tArr2[size] = null;
            }
            return tArr2;
        }
    }

    public final class EntryView extends MapBackedView<java.util.Map.Entry<K, V>> {

        final class EntryIterator extends THashIterator<java.util.Map.Entry<K, V>> {
            EntryIterator(THashMap<K, V> tHashMap) {
                super(tHashMap);
            }

            public final /* bridge */ /* synthetic */ Object objectAtIndex(int i) {
                return new Entry(THashMap.this._set[i], THashMap.this._values[i], i);
            }
        }

        EntryView() {
            super();
        }

        public final /* bridge */ /* synthetic */ boolean containsElement(Object obj) {
            java.util.Map.Entry entry = (java.util.Map.Entry) obj;
            Object obj2 = THashMap.this.get(entry.getKey());
            Object value = entry.getValue();
            return value == obj2 || (obj2 != null && obj2.equals(value));
        }

        public final Iterator<java.util.Map.Entry<K, V>> iterator() {
            return new EntryIterator(THashMap.this);
        }

        public final /* bridge */ /* synthetic */ boolean removeElement(Object obj) {
            java.util.Map.Entry entry = (java.util.Map.Entry) obj;
            int index = THashMap.this.index(entry.getKey());
            if (index >= 0) {
                Object value = entry.getValue();
                if (value == THashMap.this._values[index] || (value != null && value.equals(THashMap.this._values[index]))) {
                    THashMap.this.removeAt(index);
                    return true;
                }
            }
            return false;
        }
    }

    static final class EqProcedure<K, V> implements TObjectObjectProcedure<K, V> {
        private final Map<K, V> _otherMap;

        EqProcedure(Map<K, V> map) {
            this._otherMap = map;
        }

        public final boolean execute(K k, V v) {
            V v2 = this._otherMap.get(k);
            return v2 == v || (v2 != null && v2.equals(v));
        }
    }

    final class HashProcedure implements TObjectObjectProcedure<K, V> {
        int h;

        HashProcedure() {
        }

        public final boolean execute(K k, V v) {
            this.h = ((v == null ? 0 : v.hashCode()) ^ THashMap.this._hashingStrategy.computeHashCode(k)) + this.h;
            return true;
        }
    }

    public final class KeyView extends MapBackedView<K> {
        KeyView() {
            super();
        }

        public final boolean containsElement(K k) {
            return THashMap.this.contains(k);
        }

        public final Iterator<K> iterator() {
            return new TObjectHashIterator(THashMap.this);
        }

        public final boolean removeElement(K k) {
            return THashMap.this.remove(k) != null;
        }
    }

    public final class ValueView extends MapBackedView<V> {

        /* renamed from: com.squareup.haha.trove.THashMap.ValueView.1 */
        final class AnonymousClass1 extends THashIterator<V> {
            AnonymousClass1(TObjectHash tObjectHash) {
                super(tObjectHash);
            }

            protected final V objectAtIndex(int i) {
                return THashMap.this._values[i];
            }
        }

        protected ValueView() {
            super();
        }

        public final boolean containsElement(V v) {
            return THashMap.this.containsValue(v);
        }

        public final Iterator<V> iterator() {
            return new AnonymousClass1(THashMap.this);
        }

        public final boolean removeElement(V v) {
            boolean z = false;
            Object[] objArr = THashMap.this._values;
            Object[] objArr2 = THashMap.this._set;
            int length = objArr.length;
            while (true) {
                int i = length - 1;
                if (length <= 0) {
                    return z;
                }
                if ((objArr2[i] == null || objArr2[i] == TObjectHash.REMOVED || v != objArr[i]) && (objArr[i] == null || !objArr[i].equals(v))) {
                    length = i;
                } else {
                    THashMap.this.removeAt(i);
                    z = true;
                    length = i;
                }
            }
        }
    }

    private THashMap<K, V> clone() {
        THashMap<K, V> tHashMap = (THashMap) super.clone();
        tHashMap._values = (Object[]) this._values.clone();
        return tHashMap;
    }

    private boolean forEachEntry(TObjectObjectProcedure<K, V> tObjectObjectProcedure) {
        Object[] objArr = this._set;
        Object[] objArr2 = this._values;
        int length = objArr.length;
        while (true) {
            int i = length - 1;
            if (length <= 0) {
                return true;
            }
            if (objArr[i] != null && objArr[i] != REMOVED && !tObjectObjectProcedure.execute(objArr[i], objArr2[i])) {
                return false;
            }
            length = i;
        }
    }

    public final void clear() {
        if (size() != 0) {
            super.clear();
            Object[] objArr = this._set;
            Object[] objArr2 = this._values;
            int length = objArr.length;
            while (true) {
                int i = length - 1;
                if (length > 0) {
                    objArr[i] = null;
                    objArr2[i] = null;
                    length = i;
                } else {
                    return;
                }
            }
        }
    }

    public final boolean containsKey(Object obj) {
        return contains(obj);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean containsValue(java.lang.Object r6) {
        /*
        r5 = this;
        r2 = r5._set;
        r3 = r5._values;
        if (r6 != 0) goto L_0x001b;
    L_0x0006:
        r0 = r3.length;
    L_0x0007:
        r1 = r0 + -1;
        if (r0 <= 0) goto L_0x0038;
    L_0x000b:
        r0 = r2[r1];
        if (r0 == 0) goto L_0x003a;
    L_0x000f:
        r0 = r2[r1];
        r4 = REMOVED;
        if (r0 == r4) goto L_0x003a;
    L_0x0015:
        r0 = r3[r1];
        if (r6 != r0) goto L_0x003a;
    L_0x0019:
        r0 = 1;
    L_0x001a:
        return r0;
    L_0x001b:
        r0 = r3.length;
    L_0x001c:
        r1 = r0 + -1;
        if (r0 <= 0) goto L_0x0038;
    L_0x0020:
        r0 = r2[r1];
        if (r0 == 0) goto L_0x0036;
    L_0x0024:
        r0 = r2[r1];
        r4 = REMOVED;
        if (r0 == r4) goto L_0x0036;
    L_0x002a:
        r0 = r3[r1];
        if (r6 == r0) goto L_0x0019;
    L_0x002e:
        r0 = r3[r1];
        r0 = r6.equals(r0);
        if (r0 != 0) goto L_0x0019;
    L_0x0036:
        r0 = r1;
        goto L_0x001c;
    L_0x0038:
        r0 = 0;
        goto L_0x001a;
    L_0x003a:
        r0 = r1;
        goto L_0x0007;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.haha.trove.THashMap.containsValue(java.lang.Object):boolean");
    }

    public final Set<java.util.Map.Entry<K, V>> entrySet() {
        return new EntryView();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (map.size() == size()) {
                return forEachEntry(new EqProcedure(map));
            }
        }
        return false;
    }

    public final V get(Object obj) {
        int index = index(obj);
        return index < 0 ? null : this._values[index];
    }

    public final int hashCode() {
        Object hashProcedure = new HashProcedure();
        forEachEntry(hashProcedure);
        return hashProcedure.h;
    }

    public final Set<K> keySet() {
        return new KeyView();
    }

    public final V put(K k, V v) {
        if (k == null) {
            throw new NullPointerException("null keys not supported");
        }
        V v2 = null;
        int insertionIndex = insertionIndex(k);
        Object obj = insertionIndex < 0 ? 1 : null;
        if (obj != null) {
            insertionIndex = (-insertionIndex) - 1;
            v2 = this._values[insertionIndex];
        }
        Object obj2 = this._set[insertionIndex];
        this._set[insertionIndex] = k;
        this._values[insertionIndex] = v;
        if (obj == null) {
            postInsertHook(obj2 == null);
        }
        return v2;
    }

    public final void putAll(Map<? extends K, ? extends V> map) {
        ensureCapacity(map.size());
        for (java.util.Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    protected final void rehash(int i) {
        int length = this._set.length;
        Object[] objArr = this._set;
        Object[] objArr2 = this._values;
        this._set = new Object[i];
        this._values = new Object[i];
        int i2 = length;
        while (true) {
            length = i2 - 1;
            if (i2 <= 0) {
                return;
            }
            if (objArr[length] == null || objArr[length] == REMOVED) {
                i2 = length;
            } else {
                Object obj = objArr[length];
                int insertionIndex = insertionIndex(obj);
                if (insertionIndex < 0) {
                    throwObjectContractViolation(this._set[(-insertionIndex) - 1], obj);
                }
                this._set[insertionIndex] = obj;
                this._values[insertionIndex] = objArr2[length];
                i2 = length;
            }
        }
    }

    public final V remove(Object obj) {
        int index = index(obj);
        if (index < 0) {
            return null;
        }
        V v = this._values[index];
        removeAt(index);
        return v;
    }

    protected final void removeAt(int i) {
        this._values[i] = null;
        super.removeAt(i);
    }

    protected final int setUp(int i) {
        int up = super.setUp(i);
        this._values = new Object[up];
        return up;
    }

    public final Collection<V> values() {
        return new ValueView();
    }
}
