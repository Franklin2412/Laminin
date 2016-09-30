package com.squareup.haha.guava.collect;

import com.squareup.haha.guava.base.Ascii;
import com.squareup.haha.guava.base.Equivalence;
import com.squareup.haha.guava.base.Ticker;
import com.squareup.haha.guava.primitives.Ints;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractQueue;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

class MapMakerInternalMap<K, V> extends AbstractMap<K, V> implements Serializable, ConcurrentMap<K, V> {
    static final Queue<? extends Object> DISCARDING_QUEUE;
    private static ValueReference<Object, Object> UNSET;
    static final Logger logger;
    final transient EntryFactory entryFactory;
    private transient Set<Entry<K, V>> entrySet;
    final long expireAfterAccessNanos;
    final long expireAfterWriteNanos;
    final Equivalence<Object> keyEquivalence;
    private transient Set<K> keySet;
    private Strength keyStrength;
    final int maximumSize;
    final Queue<RemovalNotification<K, V>> removalNotificationQueue;
    private transient int segmentMask;
    private transient int segmentShift;
    final transient Segment<K, V>[] segments;
    final Ticker ticker;
    final Equivalence<Object> valueEquivalence;
    final Strength valueStrength;
    private transient Collection<V> values;

    interface ValueReference<K, V> {
        void clear$5ca9f1d3();

        ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, @Nullable V v, ReferenceEntry<K, V> referenceEntry);

        V get();

        ReferenceEntry<K, V> getEntry();
    }

    enum EntryFactory {
        STRONG {
            final <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
                return new StrongEntry(k, i, referenceEntry);
            }
        },
        STRONG_EXPIRABLE {
            final <K, V> ReferenceEntry<K, V> copyEntry(Segment<K, V> segment, ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
                ReferenceEntry<K, V> copyEntry = super.copyEntry(segment, referenceEntry, referenceEntry2);
                EntryFactory.copyExpirableEntry(referenceEntry, copyEntry);
                return copyEntry;
            }

            final <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
                return new StrongExpirableEntry(k, i, referenceEntry);
            }
        },
        STRONG_EVICTABLE {
            final <K, V> ReferenceEntry<K, V> copyEntry(Segment<K, V> segment, ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
                ReferenceEntry<K, V> copyEntry = super.copyEntry(segment, referenceEntry, referenceEntry2);
                EntryFactory.copyEvictableEntry(referenceEntry, copyEntry);
                return copyEntry;
            }

            final <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
                return new StrongEvictableEntry(k, i, referenceEntry);
            }
        },
        STRONG_EXPIRABLE_EVICTABLE {
            final <K, V> ReferenceEntry<K, V> copyEntry(Segment<K, V> segment, ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
                ReferenceEntry<K, V> copyEntry = super.copyEntry(segment, referenceEntry, referenceEntry2);
                EntryFactory.copyExpirableEntry(referenceEntry, copyEntry);
                EntryFactory.copyEvictableEntry(referenceEntry, copyEntry);
                return copyEntry;
            }

            final <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
                return new StrongExpirableEvictableEntry(k, i, referenceEntry);
            }
        },
        WEAK {
            final <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
                return new WeakEntry(segment.keyReferenceQueue, k, i, referenceEntry);
            }
        },
        WEAK_EXPIRABLE {
            final <K, V> ReferenceEntry<K, V> copyEntry(Segment<K, V> segment, ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
                ReferenceEntry<K, V> copyEntry = super.copyEntry(segment, referenceEntry, referenceEntry2);
                EntryFactory.copyExpirableEntry(referenceEntry, copyEntry);
                return copyEntry;
            }

            final <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
                return new WeakExpirableEntry(segment.keyReferenceQueue, k, i, referenceEntry);
            }
        },
        WEAK_EVICTABLE {
            final <K, V> ReferenceEntry<K, V> copyEntry(Segment<K, V> segment, ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
                ReferenceEntry<K, V> copyEntry = super.copyEntry(segment, referenceEntry, referenceEntry2);
                EntryFactory.copyEvictableEntry(referenceEntry, copyEntry);
                return copyEntry;
            }

            final <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
                return new WeakEvictableEntry(segment.keyReferenceQueue, k, i, referenceEntry);
            }
        },
        WEAK_EXPIRABLE_EVICTABLE {
            final <K, V> ReferenceEntry<K, V> copyEntry(Segment<K, V> segment, ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
                ReferenceEntry<K, V> copyEntry = super.copyEntry(segment, referenceEntry, referenceEntry2);
                EntryFactory.copyExpirableEntry(referenceEntry, copyEntry);
                EntryFactory.copyEvictableEntry(referenceEntry, copyEntry);
                return copyEntry;
            }

            final <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
                return new WeakExpirableEvictableEntry(segment.keyReferenceQueue, k, i, referenceEntry);
            }
        };

        static {
            STRONG = new AnonymousClass1("STRONG", 0);
            STRONG_EXPIRABLE = new AnonymousClass2("STRONG_EXPIRABLE", 1);
            STRONG_EVICTABLE = new AnonymousClass3("STRONG_EVICTABLE", 2);
            STRONG_EXPIRABLE_EVICTABLE = new AnonymousClass4("STRONG_EXPIRABLE_EVICTABLE", 3);
            WEAK = new AnonymousClass5("WEAK", 4);
            WEAK_EXPIRABLE = new AnonymousClass6("WEAK_EXPIRABLE", 5);
            WEAK_EVICTABLE = new AnonymousClass7("WEAK_EVICTABLE", 6);
            WEAK_EXPIRABLE_EVICTABLE = new AnonymousClass8("WEAK_EXPIRABLE_EVICTABLE", 7);
            EntryFactory entryFactory = STRONG;
            entryFactory = STRONG_EXPIRABLE;
            entryFactory = STRONG_EVICTABLE;
            entryFactory = STRONG_EXPIRABLE_EVICTABLE;
            entryFactory = WEAK;
            entryFactory = WEAK_EXPIRABLE;
            entryFactory = WEAK_EVICTABLE;
            entryFactory = WEAK_EXPIRABLE_EVICTABLE;
            EntryFactory[] entryFactoryArr = new EntryFactory[]{STRONG, STRONG_EXPIRABLE, STRONG_EVICTABLE, STRONG_EXPIRABLE_EVICTABLE};
            entryFactoryArr = new EntryFactory[0];
            entryFactoryArr = new EntryFactory[]{WEAK, WEAK_EXPIRABLE, WEAK_EVICTABLE, WEAK_EXPIRABLE_EVICTABLE};
        }

        @GuardedBy("Segment.this")
        static <K, V> void copyEvictableEntry(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
            MapMakerInternalMap.connectEvictables(referenceEntry.getPreviousEvictable(), referenceEntry2);
            MapMakerInternalMap.connectEvictables(referenceEntry2, referenceEntry.getNextEvictable());
            MapMakerInternalMap.nullifyEvictable(referenceEntry);
        }

        @GuardedBy("Segment.this")
        static <K, V> void copyExpirableEntry(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
            referenceEntry2.setExpirationTime(referenceEntry.getExpirationTime());
            MapMakerInternalMap.connectExpirables(referenceEntry.getPreviousExpirable(), referenceEntry2);
            MapMakerInternalMap.connectExpirables(referenceEntry2, referenceEntry.getNextExpirable());
            MapMakerInternalMap.nullifyExpirable(referenceEntry);
        }

        @GuardedBy("Segment.this")
        <K, V> ReferenceEntry<K, V> copyEntry(Segment<K, V> segment, ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
            return newEntry(segment, referenceEntry.getKey(), referenceEntry.getHash(), referenceEntry2);
        }

        abstract <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry);
    }

    abstract class HashIterator<E> implements Iterator<E> {
        private Segment<K, V> currentSegment;
        private AtomicReferenceArray<ReferenceEntry<K, V>> currentTable;
        private com.squareup.haha.guava.collect.MapMakerInternalMap$com.squareup.haha.guava.collect.MapMakerInternalMap$com.squareup.haha.guava.collect.MapMakerInternalMap.WriteThroughEntry lastReturned;
        private ReferenceEntry<K, V> nextEntry;
        private com.squareup.haha.guava.collect.MapMakerInternalMap$com.squareup.haha.guava.collect.MapMakerInternalMap$com.squareup.haha.guava.collect.MapMakerInternalMap.WriteThroughEntry nextExternal;
        private int nextSegmentIndex;
        private int nextTableIndex;

        HashIterator() {
            this.nextSegmentIndex = MapMakerInternalMap.this.segments.length - 1;
            this.nextTableIndex = -1;
            advance();
        }

        private void advance() {
            this.nextExternal = null;
            if (!nextInChain() && !nextInTable()) {
                while (this.nextSegmentIndex >= 0) {
                    Segment[] segmentArr = MapMakerInternalMap.this.segments;
                    int i = this.nextSegmentIndex;
                    this.nextSegmentIndex = i - 1;
                    this.currentSegment = segmentArr[i];
                    if (this.currentSegment.count != 0) {
                        this.currentTable = this.currentSegment.table;
                        this.nextTableIndex = this.currentTable.length() - 1;
                        if (nextInTable()) {
                            return;
                        }
                    }
                }
            }
        }

        private boolean advanceTo(ReferenceEntry<K, V> referenceEntry) {
            Object obj = null;
            try {
                Object key = referenceEntry.getKey();
                MapMakerInternalMap mapMakerInternalMap = MapMakerInternalMap.this;
                if (referenceEntry.getKey() != null) {
                    Object obj2 = referenceEntry.getValueReference().get();
                    if (!(obj2 == null || (mapMakerInternalMap.expires() && mapMakerInternalMap.isExpired(referenceEntry)))) {
                        obj = obj2;
                    }
                }
                if (obj != null) {
                    this.nextExternal = new WriteThroughEntry(key, obj);
                    return true;
                }
                this.currentSegment.postReadCleanup();
                return false;
            } finally {
                this.currentSegment.postReadCleanup();
            }
        }

        private boolean nextInChain() {
            if (this.nextEntry != null) {
                this.nextEntry = this.nextEntry.getNext();
                while (this.nextEntry != null) {
                    if (advanceTo(this.nextEntry)) {
                        return true;
                    }
                    this.nextEntry = this.nextEntry.getNext();
                }
            }
            return false;
        }

        private boolean nextInTable() {
            while (this.nextTableIndex >= 0) {
                AtomicReferenceArray atomicReferenceArray = this.currentTable;
                int i = this.nextTableIndex;
                this.nextTableIndex = i - 1;
                ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(i);
                this.nextEntry = referenceEntry;
                if (referenceEntry != null && (advanceTo(this.nextEntry) || nextInChain())) {
                    return true;
                }
            }
            return false;
        }

        public boolean hasNext() {
            return this.nextExternal != null;
        }

        final com.squareup.haha.guava.collect.MapMakerInternalMap$com.squareup.haha.guava.collect.MapMakerInternalMap.WriteThroughEntry nextEntry() {
            if (this.nextExternal == null) {
                throw new NoSuchElementException();
            }
            this.lastReturned = this.nextExternal;
            advance();
            return this.lastReturned;
        }

        public void remove() {
            Ascii.checkRemove(this.lastReturned != null);
            MapMakerInternalMap.this.remove(this.lastReturned.getKey());
            this.lastReturned = null;
        }
    }

    final class EntryIterator extends HashIterator<Entry<K, V>> {
        EntryIterator(MapMakerInternalMap mapMakerInternalMap) {
            super();
        }

        public final /* bridge */ /* synthetic */ Object next() {
            return nextEntry();
        }
    }

    final class EntrySet extends AbstractSet<Entry<K, V>> {
        EntrySet() {
        }

        public final void clear() {
            MapMakerInternalMap.this.clear();
        }

        public final boolean contains(Object obj) {
            if (obj instanceof Entry) {
                Entry entry = (Entry) obj;
                Object key = entry.getKey();
                if (key != null) {
                    key = MapMakerInternalMap.this.get(key);
                    if (key != null && MapMakerInternalMap.this.valueEquivalence.equivalent(entry.getValue(), key)) {
                        return true;
                    }
                }
            }
            return false;
        }

        public final boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        public final Iterator<Entry<K, V>> iterator() {
            return new EntryIterator(MapMakerInternalMap.this);
        }

        public final boolean remove(Object obj) {
            if (obj instanceof Entry) {
                Entry entry = (Entry) obj;
                Object key = entry.getKey();
                if (key != null && MapMakerInternalMap.this.remove(key, entry.getValue())) {
                    return true;
                }
            }
            return false;
        }

        public final int size() {
            return MapMakerInternalMap.this.size();
        }
    }

    final class KeyIterator extends HashIterator<K> {
        KeyIterator(MapMakerInternalMap mapMakerInternalMap) {
            super();
        }

        public final K next() {
            return nextEntry().getKey();
        }
    }

    final class KeySet extends AbstractSet<K> {
        KeySet() {
        }

        public final void clear() {
            MapMakerInternalMap.this.clear();
        }

        public final boolean contains(Object obj) {
            return MapMakerInternalMap.this.containsKey(obj);
        }

        public final boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        public final Iterator<K> iterator() {
            return new KeyIterator(MapMakerInternalMap.this);
        }

        public final boolean remove(Object obj) {
            return MapMakerInternalMap.this.remove(obj) != null;
        }

        public final int size() {
            return MapMakerInternalMap.this.size();
        }
    }

    interface ReferenceEntry<K, V> {
        long getExpirationTime();

        int getHash();

        K getKey();

        ReferenceEntry<K, V> getNext();

        ReferenceEntry<K, V> getNextEvictable();

        ReferenceEntry<K, V> getNextExpirable();

        ReferenceEntry<K, V> getPreviousEvictable();

        ReferenceEntry<K, V> getPreviousExpirable();

        ValueReference<K, V> getValueReference();

        void setExpirationTime(long j);

        void setNextEvictable(ReferenceEntry<K, V> referenceEntry);

        void setNextExpirable(ReferenceEntry<K, V> referenceEntry);

        void setPreviousEvictable(ReferenceEntry<K, V> referenceEntry);

        void setPreviousExpirable(ReferenceEntry<K, V> referenceEntry);

        void setValueReference(ValueReference<K, V> valueReference);
    }

    enum NullEntry implements ReferenceEntry<Object, Object> {
        INSTANCE;

        static {
            INSTANCE = new NullEntry("INSTANCE", 0);
            NullEntry nullEntry = INSTANCE;
        }

        public final long getExpirationTime() {
            return 0;
        }

        public final int getHash() {
            return 0;
        }

        public final Object getKey() {
            return null;
        }

        public final ReferenceEntry<Object, Object> getNext() {
            return null;
        }

        public final ReferenceEntry<Object, Object> getNextEvictable() {
            return this;
        }

        public final ReferenceEntry<Object, Object> getNextExpirable() {
            return this;
        }

        public final ReferenceEntry<Object, Object> getPreviousEvictable() {
            return this;
        }

        public final ReferenceEntry<Object, Object> getPreviousExpirable() {
            return this;
        }

        public final ValueReference<Object, Object> getValueReference() {
            return null;
        }

        public final void setExpirationTime(long j) {
        }

        public final void setNextEvictable(ReferenceEntry<Object, Object> referenceEntry) {
        }

        public final void setNextExpirable(ReferenceEntry<Object, Object> referenceEntry) {
        }

        public final void setPreviousEvictable(ReferenceEntry<Object, Object> referenceEntry) {
        }

        public final void setPreviousExpirable(ReferenceEntry<Object, Object> referenceEntry) {
        }

        public final void setValueReference(ValueReference<Object, Object> valueReference) {
        }
    }

    static final class Segment<K, V> extends ReentrantLock {
        volatile int count;
        @GuardedBy("Segment.this")
        final Queue<ReferenceEntry<K, V>> evictionQueue;
        @GuardedBy("Segment.this")
        final Queue<ReferenceEntry<K, V>> expirationQueue;
        final ReferenceQueue<K> keyReferenceQueue;
        final MapMakerInternalMap<K, V> map;
        private int maxSegmentSize;
        int modCount;
        final AtomicInteger readCount;
        private Queue<ReferenceEntry<K, V>> recencyQueue;
        volatile AtomicReferenceArray<ReferenceEntry<K, V>> table;
        private int threshold;
        final ReferenceQueue<V> valueReferenceQueue;

        @GuardedBy("Segment.this")
        private ReferenceEntry<K, V> copyEntry(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
            if (referenceEntry.getKey() != null) {
                ValueReference valueReference = referenceEntry.getValueReference();
                Object obj = valueReference.get();
                if (obj != null) {
                    ReferenceEntry<K, V> copyEntry = this.map.entryFactory.copyEntry(this, referenceEntry, referenceEntry2);
                    copyEntry.setValueReference(valueReference.copyFor(this.valueReferenceQueue, obj, copyEntry));
                    return copyEntry;
                }
            }
            return null;
        }

        @GuardedBy("Segment.this")
        private void drainRecencyQueue() {
            while (true) {
                ReferenceEntry referenceEntry = (ReferenceEntry) this.recencyQueue.poll();
                if (referenceEntry != null) {
                    if (this.evictionQueue.contains(referenceEntry)) {
                        this.evictionQueue.add(referenceEntry);
                    }
                    if (this.map.expiresAfterAccess() && this.expirationQueue.contains(referenceEntry)) {
                        this.expirationQueue.add(referenceEntry);
                    }
                } else {
                    return;
                }
            }
        }

        @GuardedBy("Segment.this")
        private void drainReferenceQueues() {
            Reference poll;
            int i = 0;
            if (this.map.usesKeyReferences()) {
                int i2 = 0;
                while (true) {
                    poll = this.keyReferenceQueue.poll();
                    if (poll == null) {
                        break;
                    }
                    ReferenceEntry referenceEntry = (ReferenceEntry) poll;
                    MapMakerInternalMap mapMakerInternalMap = this.map;
                    int hash = referenceEntry.getHash();
                    mapMakerInternalMap.segmentFor(hash).reclaimKey(referenceEntry, hash);
                    int i3 = i2 + 1;
                    if (i3 == 16) {
                        break;
                    }
                    i2 = i3;
                }
            }
            if (this.map.usesValueReferences()) {
                do {
                    poll = this.valueReferenceQueue.poll();
                    if (poll != null) {
                        ValueReference valueReference = (ValueReference) poll;
                        MapMakerInternalMap mapMakerInternalMap2 = this.map;
                        ReferenceEntry entry = valueReference.getEntry();
                        hash = entry.getHash();
                        mapMakerInternalMap2.segmentFor(hash).reclaimValue(entry.getKey(), hash, valueReference);
                        i++;
                    } else {
                        return;
                    }
                } while (i != 16);
            }
        }

        private void enqueueNotification$49a52d44(@Nullable K k, @Nullable V v, RemovalCause removalCause) {
            if (this.map.removalNotificationQueue != MapMakerInternalMap.DISCARDING_QUEUE) {
                this.map.removalNotificationQueue.offer(new RemovalNotification(k, v, removalCause));
            }
        }

        @GuardedBy("Segment.this")
        private boolean evictEntries() {
            if (!(this.map.maximumSize != -1) || this.count < this.maxSegmentSize) {
                return false;
            }
            drainRecencyQueue();
            ReferenceEntry referenceEntry = (ReferenceEntry) this.evictionQueue.remove();
            if (removeEntry(referenceEntry, referenceEntry.getHash(), RemovalCause.SIZE)) {
                return true;
            }
            throw new AssertionError();
        }

        @GuardedBy("Segment.this")
        private void expireEntries() {
            drainRecencyQueue();
            if (!this.expirationQueue.isEmpty()) {
                long read = this.map.ticker.read();
                ReferenceEntry referenceEntry;
                do {
                    referenceEntry = (ReferenceEntry) this.expirationQueue.peek();
                    if (referenceEntry == null || !MapMakerInternalMap.isExpired(referenceEntry, read)) {
                        return;
                    }
                } while (removeEntry(referenceEntry, referenceEntry.getHash(), RemovalCause.EXPIRED));
                throw new AssertionError();
            }
        }

        private ReferenceEntry<K, V> getEntry(Object obj, int i) {
            if (this.count != 0) {
                AtomicReferenceArray atomicReferenceArray = this.table;
                for (ReferenceEntry<K, V> referenceEntry = (ReferenceEntry) atomicReferenceArray.get((atomicReferenceArray.length() - 1) & i); referenceEntry != null; referenceEntry = referenceEntry.getNext()) {
                    if (referenceEntry.getHash() == i) {
                        Object key = referenceEntry.getKey();
                        if (key == null) {
                            tryDrainReferenceQueues();
                        } else if (this.map.keyEquivalence.equivalent(obj, key)) {
                            return referenceEntry;
                        }
                    }
                }
            }
            return null;
        }

        private ReferenceEntry<K, V> getLiveEntry(Object obj, int i) {
            ReferenceEntry<K, V> entry = getEntry(obj, i);
            if (entry == null) {
                return null;
            }
            if (!this.map.expires() || !this.map.isExpired(entry)) {
                return entry;
            }
            tryExpireEntries();
            return null;
        }

        private static boolean isCollected(ValueReference<K, V> valueReference) {
            return valueReference.get() == null;
        }

        private void recordExpirationTime(ReferenceEntry<K, V> referenceEntry, long j) {
            referenceEntry.setExpirationTime(this.map.ticker.read() + j);
        }

        @GuardedBy("Segment.this")
        private void recordLockedRead(ReferenceEntry<K, V> referenceEntry) {
            this.evictionQueue.add(referenceEntry);
            if (this.map.expiresAfterAccess()) {
                recordExpirationTime(referenceEntry, this.map.expireAfterAccessNanos);
                this.expirationQueue.add(referenceEntry);
            }
        }

        private void removeCollectedEntry(ReferenceEntry<K, V> referenceEntry) {
            enqueueNotification(referenceEntry, RemovalCause.COLLECTED);
            this.evictionQueue.remove(referenceEntry);
            this.expirationQueue.remove(referenceEntry);
        }

        @GuardedBy("Segment.this")
        private boolean removeEntry(ReferenceEntry<K, V> referenceEntry, int i, RemovalCause removalCause) {
            int i2 = this.count;
            AtomicReferenceArray atomicReferenceArray = this.table;
            int length = i & (atomicReferenceArray.length() - 1);
            ReferenceEntry<K, V> referenceEntry2 = (ReferenceEntry) atomicReferenceArray.get(length);
            for (ReferenceEntry<K, V> referenceEntry3 = referenceEntry2; referenceEntry3 != null; referenceEntry3 = referenceEntry3.getNext()) {
                if (referenceEntry3 == referenceEntry) {
                    this.modCount++;
                    enqueueNotification$49a52d44(referenceEntry3.getKey(), referenceEntry3.getValueReference().get(), removalCause);
                    ReferenceEntry removeFromChain = removeFromChain(referenceEntry2, referenceEntry3);
                    int i3 = this.count;
                    atomicReferenceArray.set(length, removeFromChain);
                    this.count = i3 - 1;
                    return true;
                }
            }
            return false;
        }

        @GuardedBy("Segment.this")
        private ReferenceEntry<K, V> removeFromChain(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
            this.evictionQueue.remove(referenceEntry2);
            this.expirationQueue.remove(referenceEntry2);
            int i = this.count;
            ReferenceEntry<K, V> next = referenceEntry2.getNext();
            while (referenceEntry != referenceEntry2) {
                int i2;
                ReferenceEntry<K, V> copyEntry = copyEntry(referenceEntry, next);
                if (copyEntry != null) {
                    i2 = i;
                } else {
                    removeCollectedEntry(referenceEntry);
                    ReferenceEntry<K, V> referenceEntry3 = next;
                    i2 = i - 1;
                    copyEntry = referenceEntry3;
                }
                referenceEntry = referenceEntry.getNext();
                i = i2;
                next = copyEntry;
            }
            this.count = i;
            return next;
        }

        private void runLockedCleanup() {
            if (tryLock()) {
                try {
                    drainReferenceQueues();
                    expireEntries();
                    this.readCount.set(0);
                } finally {
                    unlock();
                }
            }
        }

        @GuardedBy("Segment.this")
        private void setValue(ReferenceEntry<K, V> referenceEntry, V v) {
            referenceEntry.setValueReference(this.map.valueStrength.referenceValue(this, referenceEntry, v));
            drainRecencyQueue();
            this.evictionQueue.add(referenceEntry);
            if (this.map.expires()) {
                recordExpirationTime(referenceEntry, this.map.expiresAfterAccess() ? this.map.expireAfterAccessNanos : this.map.expireAfterWriteNanos);
                this.expirationQueue.add(referenceEntry);
            }
        }

        final boolean containsKey(Object obj, int i) {
            boolean z = false;
            try {
                if (this.count != 0) {
                    ReferenceEntry liveEntry = getLiveEntry(obj, i);
                    if (liveEntry != null) {
                        if (liveEntry.getValueReference().get() != null) {
                            z = true;
                        }
                        postReadCleanup();
                    }
                } else {
                    postReadCleanup();
                }
                return z;
            } finally {
                postReadCleanup();
            }
        }

        final void enqueueNotification(ReferenceEntry<K, V> referenceEntry, RemovalCause removalCause) {
            enqueueNotification$49a52d44(referenceEntry.getKey(), referenceEntry.getValueReference().get(), removalCause);
        }

        final V get(Object obj, int i) {
            try {
                ReferenceEntry liveEntry = getLiveEntry(obj, i);
                if (liveEntry == null) {
                    return null;
                }
                V v = liveEntry.getValueReference().get();
                if (v != null) {
                    if (this.map.expiresAfterAccess()) {
                        recordExpirationTime(liveEntry, this.map.expireAfterAccessNanos);
                    }
                    this.recencyQueue.add(liveEntry);
                } else {
                    tryDrainReferenceQueues();
                }
                postReadCleanup();
                return v;
            } finally {
                postReadCleanup();
            }
        }

        final void postReadCleanup() {
            if ((this.readCount.incrementAndGet() & 63) == 0) {
                runLockedCleanup();
                runUnlockedCleanup();
            }
        }

        final V put(K k, int i, V v, boolean z) {
            lock();
            try {
                ReferenceEntry referenceEntry;
                int i2;
                ReferenceEntry referenceEntry2;
                runLockedCleanup();
                int i3 = this.count + 1;
                if (i3 > this.threshold) {
                    AtomicReferenceArray atomicReferenceArray = this.table;
                    int length = atomicReferenceArray.length();
                    if (length < 1073741824) {
                        i3 = this.count;
                        AtomicReferenceArray atomicReferenceArray2 = new AtomicReferenceArray(length << 1);
                        this.threshold = (atomicReferenceArray2.length() * 3) / 4;
                        int length2 = atomicReferenceArray2.length() - 1;
                        for (int i4 = 0; i4 < length; i4++) {
                            referenceEntry = (ReferenceEntry) atomicReferenceArray.get(i4);
                            if (referenceEntry != null) {
                                ReferenceEntry next = referenceEntry.getNext();
                                int hash = referenceEntry.getHash() & length2;
                                if (next == null) {
                                    atomicReferenceArray2.set(hash, referenceEntry);
                                } else {
                                    ReferenceEntry referenceEntry3 = referenceEntry;
                                    while (next != null) {
                                        int hash2 = next.getHash() & length2;
                                        if (hash2 != hash) {
                                            i2 = hash2;
                                            referenceEntry2 = next;
                                        } else {
                                            referenceEntry2 = referenceEntry3;
                                            i2 = hash;
                                        }
                                        next = next.getNext();
                                        hash = i2;
                                        referenceEntry3 = referenceEntry2;
                                    }
                                    atomicReferenceArray2.set(hash, referenceEntry3);
                                    for (referenceEntry2 = referenceEntry; referenceEntry2 != referenceEntry3; referenceEntry2 = referenceEntry2.getNext()) {
                                        int hash3 = referenceEntry2.getHash() & length2;
                                        referenceEntry = copyEntry(referenceEntry2, (ReferenceEntry) atomicReferenceArray2.get(hash3));
                                        if (referenceEntry != null) {
                                            atomicReferenceArray2.set(hash3, referenceEntry);
                                        } else {
                                            removeCollectedEntry(referenceEntry2);
                                            i3--;
                                        }
                                    }
                                }
                            }
                            i3 = i3;
                        }
                        this.table = atomicReferenceArray2;
                        this.count = i3;
                    }
                    i3 = this.count + 1;
                }
                AtomicReferenceArray atomicReferenceArray3 = this.table;
                i2 = i & (atomicReferenceArray3.length() - 1);
                referenceEntry = (ReferenceEntry) atomicReferenceArray3.get(i2);
                for (referenceEntry2 = referenceEntry; referenceEntry2 != null; referenceEntry2 = referenceEntry2.getNext()) {
                    Object key = referenceEntry2.getKey();
                    if (referenceEntry2.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        V v2 = referenceEntry2.getValueReference().get();
                        if (v2 == null) {
                            this.modCount++;
                            setValue(referenceEntry2, v);
                            enqueueNotification$49a52d44(k, v2, RemovalCause.COLLECTED);
                            this.count = this.count;
                            return null;
                        } else if (z) {
                            recordLockedRead(referenceEntry2);
                            unlock();
                            runUnlockedCleanup();
                            return v2;
                        } else {
                            this.modCount++;
                            enqueueNotification$49a52d44(k, v2, RemovalCause.REPLACED);
                            setValue(referenceEntry2, v);
                            unlock();
                            runUnlockedCleanup();
                            return v2;
                        }
                    }
                }
                this.modCount++;
                referenceEntry = this.map.entryFactory.newEntry(this, k, i, referenceEntry);
                setValue(referenceEntry, v);
                atomicReferenceArray3.set(i2, referenceEntry);
                this.count = evictEntries() ? this.count + 1 : i3;
                unlock();
                runUnlockedCleanup();
                return null;
            } finally {
                unlock();
                runUnlockedCleanup();
            }
        }

        final boolean reclaimKey(ReferenceEntry<K, V> referenceEntry, int i) {
            lock();
            try {
                int i2 = this.count;
                AtomicReferenceArray atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                ReferenceEntry<K, V> referenceEntry2 = (ReferenceEntry) atomicReferenceArray.get(length);
                for (ReferenceEntry<K, V> referenceEntry3 = referenceEntry2; referenceEntry3 != null; referenceEntry3 = referenceEntry3.getNext()) {
                    if (referenceEntry3 == referenceEntry) {
                        this.modCount++;
                        enqueueNotification$49a52d44(referenceEntry3.getKey(), referenceEntry3.getValueReference().get(), RemovalCause.COLLECTED);
                        ReferenceEntry removeFromChain = removeFromChain(referenceEntry2, referenceEntry3);
                        int i3 = this.count;
                        atomicReferenceArray.set(length, removeFromChain);
                        this.count = i3 - 1;
                        return true;
                    }
                }
                unlock();
                runUnlockedCleanup();
                return false;
            } finally {
                unlock();
                runUnlockedCleanup();
            }
        }

        final boolean reclaimValue(K k, int i, ValueReference<K, V> valueReference) {
            lock();
            try {
                boolean z;
                int i2 = this.count;
                AtomicReferenceArray atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(length);
                ReferenceEntry referenceEntry2 = referenceEntry;
                while (referenceEntry2 != null) {
                    Object key = referenceEntry2.getKey();
                    if (referenceEntry2.getHash() != i || key == null || !this.map.keyEquivalence.equivalent(k, key)) {
                        referenceEntry2 = referenceEntry2.getNext();
                    } else if (referenceEntry2.getValueReference() == valueReference) {
                        this.modCount++;
                        enqueueNotification$49a52d44(k, valueReference.get(), RemovalCause.COLLECTED);
                        referenceEntry = removeFromChain(referenceEntry, referenceEntry2);
                        int i3 = this.count;
                        atomicReferenceArray.set(length, referenceEntry);
                        this.count = i3 - 1;
                        z = true;
                        return z;
                    } else {
                        unlock();
                        if (!isHeldByCurrentThread()) {
                            runUnlockedCleanup();
                            return false;
                        }
                        z = false;
                        return z;
                    }
                }
                unlock();
                if (!isHeldByCurrentThread()) {
                    runUnlockedCleanup();
                    return false;
                }
                z = false;
                return z;
            } finally {
                unlock();
                if (!isHeldByCurrentThread()) {
                    runUnlockedCleanup();
                }
            }
        }

        final V remove(Object obj, int i) {
            lock();
            try {
                runLockedCleanup();
                int i2 = this.count;
                AtomicReferenceArray atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(length);
                for (ReferenceEntry referenceEntry2 = referenceEntry; referenceEntry2 != null; referenceEntry2 = referenceEntry2.getNext()) {
                    Object key = referenceEntry2.getKey();
                    V hash = referenceEntry2.getHash();
                    if (hash == i && key != null) {
                        hash = this.map.keyEquivalence.equivalent(obj, key);
                        if (hash != null) {
                            RemovalCause removalCause;
                            ValueReference valueReference = referenceEntry2.getValueReference();
                            hash = valueReference.get();
                            if (hash != null) {
                                removalCause = RemovalCause.EXPLICIT;
                            } else if (isCollected(valueReference)) {
                                removalCause = RemovalCause.COLLECTED;
                            } else {
                                unlock();
                                runUnlockedCleanup();
                                return null;
                            }
                            this.modCount++;
                            enqueueNotification$49a52d44(key, hash, removalCause);
                            referenceEntry = removeFromChain(referenceEntry, referenceEntry2);
                            int i3 = this.count;
                            atomicReferenceArray.set(length, referenceEntry);
                            this.count = i3 - 1;
                            return hash;
                        }
                    }
                }
                unlock();
                runUnlockedCleanup();
                return null;
            } finally {
                unlock();
                runUnlockedCleanup();
            }
        }

        final boolean remove(Object obj, int i, Object obj2) {
            lock();
            try {
                runLockedCleanup();
                int i2 = this.count;
                AtomicReferenceArray atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(length);
                for (ReferenceEntry referenceEntry2 = referenceEntry; referenceEntry2 != null; referenceEntry2 = referenceEntry2.getNext()) {
                    Object key = referenceEntry2.getKey();
                    if (referenceEntry2.getHash() == i && key != null && this.map.keyEquivalence.equivalent(obj, key)) {
                        RemovalCause removalCause;
                        ValueReference valueReference = referenceEntry2.getValueReference();
                        Object obj3 = valueReference.get();
                        if (this.map.valueEquivalence.equivalent(obj2, obj3)) {
                            removalCause = RemovalCause.EXPLICIT;
                        } else if (isCollected(valueReference)) {
                            removalCause = RemovalCause.COLLECTED;
                        } else {
                            unlock();
                            runUnlockedCleanup();
                            return false;
                        }
                        this.modCount++;
                        enqueueNotification$49a52d44(key, obj3, removalCause);
                        referenceEntry = removeFromChain(referenceEntry, referenceEntry2);
                        int i3 = this.count;
                        atomicReferenceArray.set(length, referenceEntry);
                        this.count = i3 - 1;
                        boolean z = removalCause == RemovalCause.EXPLICIT;
                        unlock();
                        runUnlockedCleanup();
                        return z;
                    }
                }
                unlock();
                runUnlockedCleanup();
                return false;
            } catch (Throwable th) {
                unlock();
                runUnlockedCleanup();
            }
        }

        final V replace(K k, int i, V v) {
            lock();
            try {
                runLockedCleanup();
                AtomicReferenceArray atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(length);
                for (ReferenceEntry referenceEntry2 = referenceEntry; referenceEntry2 != null; referenceEntry2 = referenceEntry2.getNext()) {
                    Object key = referenceEntry2.getKey();
                    if (referenceEntry2.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        ValueReference valueReference = referenceEntry2.getValueReference();
                        V v2 = valueReference.get();
                        if (v2 == null) {
                            if (isCollected(valueReference)) {
                                int i2 = this.count;
                                this.modCount++;
                                enqueueNotification$49a52d44(key, v2, RemovalCause.COLLECTED);
                                referenceEntry = removeFromChain(referenceEntry, referenceEntry2);
                                int i3 = this.count;
                                atomicReferenceArray.set(length, referenceEntry);
                                this.count = i3 - 1;
                            }
                            unlock();
                            runUnlockedCleanup();
                            return null;
                        }
                        this.modCount++;
                        enqueueNotification$49a52d44(k, v2, RemovalCause.REPLACED);
                        setValue(referenceEntry2, v);
                        unlock();
                        runUnlockedCleanup();
                        return v2;
                    }
                }
                unlock();
                runUnlockedCleanup();
                return null;
            } catch (Throwable th) {
                unlock();
                runUnlockedCleanup();
            }
        }

        final boolean replace(K k, int i, V v, V v2) {
            lock();
            try {
                runLockedCleanup();
                AtomicReferenceArray atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(length);
                for (ReferenceEntry referenceEntry2 = referenceEntry; referenceEntry2 != null; referenceEntry2 = referenceEntry2.getNext()) {
                    Object key = referenceEntry2.getKey();
                    if (referenceEntry2.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        ValueReference valueReference = referenceEntry2.getValueReference();
                        Object obj = valueReference.get();
                        if (obj == null) {
                            if (isCollected(valueReference)) {
                                int i2 = this.count;
                                this.modCount++;
                                enqueueNotification$49a52d44(key, obj, RemovalCause.COLLECTED);
                                referenceEntry = removeFromChain(referenceEntry, referenceEntry2);
                                int i3 = this.count;
                                atomicReferenceArray.set(length, referenceEntry);
                                this.count = i3 - 1;
                            }
                            unlock();
                            runUnlockedCleanup();
                            return false;
                        } else if (this.map.valueEquivalence.equivalent(v, obj)) {
                            this.modCount++;
                            enqueueNotification$49a52d44(k, obj, RemovalCause.REPLACED);
                            setValue(referenceEntry2, v2);
                            unlock();
                            runUnlockedCleanup();
                            return true;
                        } else {
                            recordLockedRead(referenceEntry2);
                            unlock();
                            runUnlockedCleanup();
                            return false;
                        }
                    }
                }
                unlock();
                runUnlockedCleanup();
                return false;
            } catch (Throwable th) {
                unlock();
                runUnlockedCleanup();
            }
        }

        final void runUnlockedCleanup() {
            if (!isHeldByCurrentThread()) {
                do {
                } while (((RemovalNotification) this.map.removalNotificationQueue.poll()) != null);
            }
        }

        final void tryDrainReferenceQueues() {
            if (tryLock()) {
                try {
                    drainReferenceQueues();
                } finally {
                    unlock();
                }
            }
        }

        final void tryExpireEntries() {
            if (tryLock()) {
                try {
                    expireEntries();
                } finally {
                    unlock();
                }
            }
        }
    }

    static final class SoftValueReference<K, V> extends SoftReference<V> implements ValueReference<K, V> {
        private ReferenceEntry<K, V> entry;

        SoftValueReference(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            super(v, referenceQueue);
            this.entry = referenceEntry;
        }

        public final void clear$5ca9f1d3() {
            clear();
        }

        public final ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            return new SoftValueReference(referenceQueue, v, referenceEntry);
        }

        public final ReferenceEntry<K, V> getEntry() {
            return this.entry;
        }
    }

    enum Strength {
        STRONG {
            final <K, V> ValueReference<K, V> referenceValue(Segment<K, V> segment, ReferenceEntry<K, V> referenceEntry, V v) {
                return new StrongValueReference(v);
            }
        },
        SOFT {
            final <K, V> ValueReference<K, V> referenceValue(Segment<K, V> segment, ReferenceEntry<K, V> referenceEntry, V v) {
                return new SoftValueReference(segment.valueReferenceQueue, v, referenceEntry);
            }
        },
        WEAK {
            final <K, V> ValueReference<K, V> referenceValue(Segment<K, V> segment, ReferenceEntry<K, V> referenceEntry, V v) {
                return new WeakValueReference(segment.valueReferenceQueue, v, referenceEntry);
            }
        };

        static {
            STRONG = new AnonymousClass1("STRONG", 0);
            SOFT = new AnonymousClass2("SOFT", 1);
            WEAK = new AnonymousClass3("WEAK", 2);
            Strength strength = STRONG;
            strength = SOFT;
            strength = WEAK;
        }

        abstract <K, V> ValueReference<K, V> referenceValue(Segment<K, V> segment, ReferenceEntry<K, V> referenceEntry, V v);
    }

    static class StrongEntry<K, V> implements ReferenceEntry<K, V> {
        private int hash;
        private K key;
        private ReferenceEntry<K, V> next;
        private volatile ValueReference<K, V> valueReference;

        StrongEntry(K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
            this.valueReference = MapMakerInternalMap.unset();
            this.key = k;
            this.hash = i;
            this.next = referenceEntry;
        }

        public long getExpirationTime() {
            throw new UnsupportedOperationException();
        }

        public final int getHash() {
            return this.hash;
        }

        public final K getKey() {
            return this.key;
        }

        public final ReferenceEntry<K, V> getNext() {
            return this.next;
        }

        public ReferenceEntry<K, V> getNextEvictable() {
            throw new UnsupportedOperationException();
        }

        public ReferenceEntry<K, V> getNextExpirable() {
            throw new UnsupportedOperationException();
        }

        public ReferenceEntry<K, V> getPreviousEvictable() {
            throw new UnsupportedOperationException();
        }

        public ReferenceEntry<K, V> getPreviousExpirable() {
            throw new UnsupportedOperationException();
        }

        public final ValueReference<K, V> getValueReference() {
            return this.valueReference;
        }

        public void setExpirationTime(long j) {
            throw new UnsupportedOperationException();
        }

        public void setNextEvictable(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        public void setNextExpirable(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        public void setPreviousEvictable(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        public void setPreviousExpirable(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        public final void setValueReference(ValueReference<K, V> valueReference) {
            ValueReference valueReference2 = this.valueReference;
            this.valueReference = valueReference;
            valueReference2.clear$5ca9f1d3();
        }
    }

    static final class StrongEvictableEntry<K, V> extends StrongEntry<K, V> implements ReferenceEntry<K, V> {
        @GuardedBy("Segment.this")
        private ReferenceEntry<K, V> nextEvictable;
        @GuardedBy("Segment.this")
        private ReferenceEntry<K, V> previousEvictable;

        StrongEvictableEntry(K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
            super(k, i, referenceEntry);
            this.nextEvictable = MapMakerInternalMap.nullEntry();
            this.previousEvictable = MapMakerInternalMap.nullEntry();
        }

        public final ReferenceEntry<K, V> getNextEvictable() {
            return this.nextEvictable;
        }

        public final ReferenceEntry<K, V> getPreviousEvictable() {
            return this.previousEvictable;
        }

        public final void setNextEvictable(ReferenceEntry<K, V> referenceEntry) {
            this.nextEvictable = referenceEntry;
        }

        public final void setPreviousEvictable(ReferenceEntry<K, V> referenceEntry) {
            this.previousEvictable = referenceEntry;
        }
    }

    static final class StrongExpirableEntry<K, V> extends StrongEntry<K, V> implements ReferenceEntry<K, V> {
        @GuardedBy("Segment.this")
        private ReferenceEntry<K, V> nextExpirable;
        @GuardedBy("Segment.this")
        private ReferenceEntry<K, V> previousExpirable;
        private volatile long time;

        StrongExpirableEntry(K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
            super(k, i, referenceEntry);
            this.time = Long.MAX_VALUE;
            this.nextExpirable = MapMakerInternalMap.nullEntry();
            this.previousExpirable = MapMakerInternalMap.nullEntry();
        }

        public final long getExpirationTime() {
            return this.time;
        }

        public final ReferenceEntry<K, V> getNextExpirable() {
            return this.nextExpirable;
        }

        public final ReferenceEntry<K, V> getPreviousExpirable() {
            return this.previousExpirable;
        }

        public final void setExpirationTime(long j) {
            this.time = j;
        }

        public final void setNextExpirable(ReferenceEntry<K, V> referenceEntry) {
            this.nextExpirable = referenceEntry;
        }

        public final void setPreviousExpirable(ReferenceEntry<K, V> referenceEntry) {
            this.previousExpirable = referenceEntry;
        }
    }

    static final class StrongExpirableEvictableEntry<K, V> extends StrongEntry<K, V> implements ReferenceEntry<K, V> {
        @GuardedBy("Segment.this")
        private ReferenceEntry<K, V> nextEvictable;
        @GuardedBy("Segment.this")
        private ReferenceEntry<K, V> nextExpirable;
        @GuardedBy("Segment.this")
        private ReferenceEntry<K, V> previousEvictable;
        @GuardedBy("Segment.this")
        private ReferenceEntry<K, V> previousExpirable;
        private volatile long time;

        StrongExpirableEvictableEntry(K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
            super(k, i, referenceEntry);
            this.time = Long.MAX_VALUE;
            this.nextExpirable = MapMakerInternalMap.nullEntry();
            this.previousExpirable = MapMakerInternalMap.nullEntry();
            this.nextEvictable = MapMakerInternalMap.nullEntry();
            this.previousEvictable = MapMakerInternalMap.nullEntry();
        }

        public final long getExpirationTime() {
            return this.time;
        }

        public final ReferenceEntry<K, V> getNextEvictable() {
            return this.nextEvictable;
        }

        public final ReferenceEntry<K, V> getNextExpirable() {
            return this.nextExpirable;
        }

        public final ReferenceEntry<K, V> getPreviousEvictable() {
            return this.previousEvictable;
        }

        public final ReferenceEntry<K, V> getPreviousExpirable() {
            return this.previousExpirable;
        }

        public final void setExpirationTime(long j) {
            this.time = j;
        }

        public final void setNextEvictable(ReferenceEntry<K, V> referenceEntry) {
            this.nextEvictable = referenceEntry;
        }

        public final void setNextExpirable(ReferenceEntry<K, V> referenceEntry) {
            this.nextExpirable = referenceEntry;
        }

        public final void setPreviousEvictable(ReferenceEntry<K, V> referenceEntry) {
            this.previousEvictable = referenceEntry;
        }

        public final void setPreviousExpirable(ReferenceEntry<K, V> referenceEntry) {
            this.previousExpirable = referenceEntry;
        }
    }

    static final class StrongValueReference<K, V> implements ValueReference<K, V> {
        private V referent;

        StrongValueReference(V v) {
            this.referent = v;
        }

        public final void clear$5ca9f1d3() {
        }

        public final ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            return this;
        }

        public final V get() {
            return this.referent;
        }

        public final ReferenceEntry<K, V> getEntry() {
            return null;
        }
    }

    final class ValueIterator extends HashIterator<V> {
        ValueIterator(MapMakerInternalMap mapMakerInternalMap) {
            super();
        }

        public final V next() {
            return nextEntry().getValue();
        }
    }

    final class Values extends AbstractCollection<V> {
        Values() {
        }

        public final void clear() {
            MapMakerInternalMap.this.clear();
        }

        public final boolean contains(Object obj) {
            return MapMakerInternalMap.this.containsValue(obj);
        }

        public final boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        public final Iterator<V> iterator() {
            return new ValueIterator(MapMakerInternalMap.this);
        }

        public final int size() {
            return MapMakerInternalMap.this.size();
        }
    }

    static class WeakEntry<K, V> extends WeakReference<K> implements ReferenceEntry<K, V> {
        private int hash;
        private ReferenceEntry<K, V> next;
        private volatile ValueReference<K, V> valueReference;

        WeakEntry(ReferenceQueue<K> referenceQueue, K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
            super(k, referenceQueue);
            this.valueReference = MapMakerInternalMap.unset();
            this.hash = i;
            this.next = referenceEntry;
        }

        public long getExpirationTime() {
            throw new UnsupportedOperationException();
        }

        public final int getHash() {
            return this.hash;
        }

        public final K getKey() {
            return get();
        }

        public final ReferenceEntry<K, V> getNext() {
            return this.next;
        }

        public ReferenceEntry<K, V> getNextEvictable() {
            throw new UnsupportedOperationException();
        }

        public ReferenceEntry<K, V> getNextExpirable() {
            throw new UnsupportedOperationException();
        }

        public ReferenceEntry<K, V> getPreviousEvictable() {
            throw new UnsupportedOperationException();
        }

        public ReferenceEntry<K, V> getPreviousExpirable() {
            throw new UnsupportedOperationException();
        }

        public final ValueReference<K, V> getValueReference() {
            return this.valueReference;
        }

        public void setExpirationTime(long j) {
            throw new UnsupportedOperationException();
        }

        public void setNextEvictable(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        public void setNextExpirable(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        public void setPreviousEvictable(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        public void setPreviousExpirable(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        public final void setValueReference(ValueReference<K, V> valueReference) {
            ValueReference valueReference2 = this.valueReference;
            this.valueReference = valueReference;
            valueReference2.clear$5ca9f1d3();
        }
    }

    static final class WeakEvictableEntry<K, V> extends WeakEntry<K, V> implements ReferenceEntry<K, V> {
        @GuardedBy("Segment.this")
        private ReferenceEntry<K, V> nextEvictable;
        @GuardedBy("Segment.this")
        private ReferenceEntry<K, V> previousEvictable;

        WeakEvictableEntry(ReferenceQueue<K> referenceQueue, K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
            super(referenceQueue, k, i, referenceEntry);
            this.nextEvictable = MapMakerInternalMap.nullEntry();
            this.previousEvictable = MapMakerInternalMap.nullEntry();
        }

        public final ReferenceEntry<K, V> getNextEvictable() {
            return this.nextEvictable;
        }

        public final ReferenceEntry<K, V> getPreviousEvictable() {
            return this.previousEvictable;
        }

        public final void setNextEvictable(ReferenceEntry<K, V> referenceEntry) {
            this.nextEvictable = referenceEntry;
        }

        public final void setPreviousEvictable(ReferenceEntry<K, V> referenceEntry) {
            this.previousEvictable = referenceEntry;
        }
    }

    static final class WeakExpirableEntry<K, V> extends WeakEntry<K, V> implements ReferenceEntry<K, V> {
        @GuardedBy("Segment.this")
        private ReferenceEntry<K, V> nextExpirable;
        @GuardedBy("Segment.this")
        private ReferenceEntry<K, V> previousExpirable;
        private volatile long time;

        WeakExpirableEntry(ReferenceQueue<K> referenceQueue, K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
            super(referenceQueue, k, i, referenceEntry);
            this.time = Long.MAX_VALUE;
            this.nextExpirable = MapMakerInternalMap.nullEntry();
            this.previousExpirable = MapMakerInternalMap.nullEntry();
        }

        public final long getExpirationTime() {
            return this.time;
        }

        public final ReferenceEntry<K, V> getNextExpirable() {
            return this.nextExpirable;
        }

        public final ReferenceEntry<K, V> getPreviousExpirable() {
            return this.previousExpirable;
        }

        public final void setExpirationTime(long j) {
            this.time = j;
        }

        public final void setNextExpirable(ReferenceEntry<K, V> referenceEntry) {
            this.nextExpirable = referenceEntry;
        }

        public final void setPreviousExpirable(ReferenceEntry<K, V> referenceEntry) {
            this.previousExpirable = referenceEntry;
        }
    }

    static final class WeakExpirableEvictableEntry<K, V> extends WeakEntry<K, V> implements ReferenceEntry<K, V> {
        @GuardedBy("Segment.this")
        private ReferenceEntry<K, V> nextEvictable;
        @GuardedBy("Segment.this")
        private ReferenceEntry<K, V> nextExpirable;
        @GuardedBy("Segment.this")
        private ReferenceEntry<K, V> previousEvictable;
        @GuardedBy("Segment.this")
        private ReferenceEntry<K, V> previousExpirable;
        private volatile long time;

        WeakExpirableEvictableEntry(ReferenceQueue<K> referenceQueue, K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
            super(referenceQueue, k, i, referenceEntry);
            this.time = Long.MAX_VALUE;
            this.nextExpirable = MapMakerInternalMap.nullEntry();
            this.previousExpirable = MapMakerInternalMap.nullEntry();
            this.nextEvictable = MapMakerInternalMap.nullEntry();
            this.previousEvictable = MapMakerInternalMap.nullEntry();
        }

        public final long getExpirationTime() {
            return this.time;
        }

        public final ReferenceEntry<K, V> getNextEvictable() {
            return this.nextEvictable;
        }

        public final ReferenceEntry<K, V> getNextExpirable() {
            return this.nextExpirable;
        }

        public final ReferenceEntry<K, V> getPreviousEvictable() {
            return this.previousEvictable;
        }

        public final ReferenceEntry<K, V> getPreviousExpirable() {
            return this.previousExpirable;
        }

        public final void setExpirationTime(long j) {
            this.time = j;
        }

        public final void setNextEvictable(ReferenceEntry<K, V> referenceEntry) {
            this.nextEvictable = referenceEntry;
        }

        public final void setNextExpirable(ReferenceEntry<K, V> referenceEntry) {
            this.nextExpirable = referenceEntry;
        }

        public final void setPreviousEvictable(ReferenceEntry<K, V> referenceEntry) {
            this.previousEvictable = referenceEntry;
        }

        public final void setPreviousExpirable(ReferenceEntry<K, V> referenceEntry) {
            this.previousExpirable = referenceEntry;
        }
    }

    static final class WeakValueReference<K, V> extends WeakReference<V> implements ValueReference<K, V> {
        private ReferenceEntry<K, V> entry;

        WeakValueReference(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            super(v, referenceQueue);
            this.entry = referenceEntry;
        }

        public final void clear$5ca9f1d3() {
            clear();
        }

        public final ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            return new WeakValueReference(referenceQueue, v, referenceEntry);
        }

        public final ReferenceEntry<K, V> getEntry() {
            return this.entry;
        }
    }

    final class WriteThroughEntry extends AbstractMapEntry<K, V> {
        private K key;
        private V value;

        WriteThroughEntry(K k, V v) {
            this.key = k;
            this.value = v;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            return this.key.equals(entry.getKey()) && this.value.equals(entry.getValue());
        }

        public final K getKey() {
            return this.key;
        }

        public final V getValue() {
            return this.value;
        }

        public final int hashCode() {
            return this.key.hashCode() ^ this.value.hashCode();
        }

        public final V setValue(V v) {
            V put = MapMakerInternalMap.this.put(this.key, v);
            this.value = v;
            return put;
        }
    }

    static {
        logger = Logger.getLogger(MapMakerInternalMap.class.getName());
        UNSET = new ValueReference<Object, Object>() {
            public final void clear$5ca9f1d3() {
            }

            public final ValueReference<Object, Object> copyFor(ReferenceQueue<Object> referenceQueue, @Nullable Object obj, ReferenceEntry<Object, Object> referenceEntry) {
                return this;
            }

            public final Object get() {
                return null;
            }

            public final ReferenceEntry<Object, Object> getEntry() {
                return null;
            }
        };
        DISCARDING_QUEUE = new AbstractQueue<Object>() {
            public final Iterator<Object> iterator() {
                return Iterators.emptyIterator();
            }

            public final boolean offer(Object obj) {
                return true;
            }

            public final Object peek() {
                return null;
            }

            public final Object poll() {
                return null;
            }

            public final int size() {
                return 0;
            }
        };
    }

    @GuardedBy("Segment.this")
    static <K, V> void connectEvictables(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
        referenceEntry.setNextEvictable(referenceEntry2);
        referenceEntry2.setPreviousEvictable(referenceEntry);
    }

    @GuardedBy("Segment.this")
    static <K, V> void connectExpirables(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
        referenceEntry.setNextExpirable(referenceEntry2);
        referenceEntry2.setPreviousExpirable(referenceEntry);
    }

    private int hash(Object obj) {
        int hash = this.keyEquivalence.hash(obj);
        hash += (hash << 15) ^ -12931;
        hash ^= hash >>> 10;
        hash += hash << 3;
        hash ^= hash >>> 6;
        hash += (hash << 2) + (hash << 14);
        return hash ^ (hash >>> 16);
    }

    static boolean isExpired(ReferenceEntry<K, V> referenceEntry, long j) {
        return j - referenceEntry.getExpirationTime() > 0;
    }

    static <K, V> ReferenceEntry<K, V> nullEntry() {
        return NullEntry.INSTANCE;
    }

    @GuardedBy("Segment.this")
    static <K, V> void nullifyEvictable(ReferenceEntry<K, V> referenceEntry) {
        ReferenceEntry referenceEntry2 = NullEntry.INSTANCE;
        referenceEntry.setNextEvictable(referenceEntry2);
        referenceEntry.setPreviousEvictable(referenceEntry2);
    }

    @GuardedBy("Segment.this")
    static <K, V> void nullifyExpirable(ReferenceEntry<K, V> referenceEntry) {
        ReferenceEntry referenceEntry2 = NullEntry.INSTANCE;
        referenceEntry.setNextExpirable(referenceEntry2);
        referenceEntry.setPreviousExpirable(referenceEntry2);
    }

    static <K, V> ValueReference<K, V> unset() {
        return UNSET;
    }

    public void clear() {
        for (Segment segment : this.segments) {
            if (segment.count != 0) {
                segment.lock();
                try {
                    AtomicReferenceArray atomicReferenceArray = segment.table;
                    if (segment.map.removalNotificationQueue != DISCARDING_QUEUE) {
                        for (int i = 0; i < atomicReferenceArray.length(); i++) {
                            for (ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(i); referenceEntry != null; referenceEntry = referenceEntry.getNext()) {
                                referenceEntry.getValueReference();
                                segment.enqueueNotification(referenceEntry, RemovalCause.EXPLICIT);
                            }
                        }
                    }
                    for (int i2 = 0; i2 < atomicReferenceArray.length(); i2++) {
                        atomicReferenceArray.set(i2, null);
                    }
                    if (segment.map.usesKeyReferences()) {
                        do {
                        } while (segment.keyReferenceQueue.poll() != null);
                    }
                    if (segment.map.usesValueReferences()) {
                        do {
                        } while (segment.valueReferenceQueue.poll() != null);
                    }
                    segment.evictionQueue.clear();
                    segment.expirationQueue.clear();
                    segment.readCount.set(0);
                    segment.modCount++;
                    segment.count = 0;
                } finally {
                    segment.unlock();
                    segment.runUnlockedCleanup();
                }
            }
        }
    }

    public boolean containsKey(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        int hash = hash(obj);
        return segmentFor(hash).containsKey(obj, hash);
    }

    public boolean containsValue(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        Segment[] segmentArr = this.segments;
        long j = -1;
        for (int i = 0; i < 3; i++) {
            long j2 = 0;
            for (Segment segment : segmentArr) {
                int i2 = segment.count;
                AtomicReferenceArray atomicReferenceArray = segment.table;
                for (int i3 = 0; i3 < atomicReferenceArray.length(); i3++) {
                    ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(i3);
                    while (referenceEntry != null) {
                        Object obj2;
                        if (referenceEntry.getKey() == null) {
                            segment.tryDrainReferenceQueues();
                            obj2 = null;
                        } else {
                            obj2 = referenceEntry.getValueReference().get();
                            if (obj2 == null) {
                                segment.tryDrainReferenceQueues();
                                obj2 = null;
                            } else if (segment.map.expires() && segment.map.isExpired(referenceEntry)) {
                                segment.tryExpireEntries();
                                obj2 = null;
                            }
                        }
                        if (obj2 != null && this.valueEquivalence.equivalent(obj, obj2)) {
                            return true;
                        }
                        referenceEntry = referenceEntry.getNext();
                    }
                }
                j2 = ((long) segment.modCount) + j2;
            }
            if (j2 == j) {
                break;
            }
            j = j2;
        }
        return false;
    }

    public Set<Entry<K, V>> entrySet() {
        Set<Entry<K, V>> set = this.entrySet;
        if (set != null) {
            return set;
        }
        set = new EntrySet();
        this.entrySet = set;
        return set;
    }

    final boolean expires() {
        return ((this.expireAfterWriteNanos > 0 ? 1 : (this.expireAfterWriteNanos == 0 ? 0 : -1)) > 0) || expiresAfterAccess();
    }

    final boolean expiresAfterAccess() {
        return this.expireAfterAccessNanos > 0;
    }

    public V get(@Nullable Object obj) {
        if (obj == null) {
            return null;
        }
        int hash = hash(obj);
        return segmentFor(hash).get(obj, hash);
    }

    public boolean isEmpty() {
        int i;
        Segment[] segmentArr = this.segments;
        long j = 0;
        for (i = 0; i < segmentArr.length; i++) {
            if (segmentArr[i].count != 0) {
                return false;
            }
            j += (long) segmentArr[i].modCount;
        }
        if (j != 0) {
            for (i = 0; i < segmentArr.length; i++) {
                if (segmentArr[i].count != 0) {
                    return false;
                }
                j -= (long) segmentArr[i].modCount;
            }
            if (j != 0) {
                return false;
            }
        }
        return true;
    }

    final boolean isExpired(ReferenceEntry<K, V> referenceEntry) {
        return isExpired(referenceEntry, this.ticker.read());
    }

    public Set<K> keySet() {
        Set<K> set = this.keySet;
        if (set != null) {
            return set;
        }
        set = new KeySet();
        this.keySet = set;
        return set;
    }

    public V put(K k, V v) {
        Ascii.checkNotNull(k);
        Ascii.checkNotNull(v);
        int hash = hash(k);
        return segmentFor(hash).put(k, hash, v, false);
    }

    public void putAll(Map<? extends K, ? extends V> map) {
        for (Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public V putIfAbsent(K k, V v) {
        Ascii.checkNotNull(k);
        Ascii.checkNotNull(v);
        int hash = hash(k);
        return segmentFor(hash).put(k, hash, v, true);
    }

    public V remove(@Nullable Object obj) {
        if (obj == null) {
            return null;
        }
        int hash = hash(obj);
        return segmentFor(hash).remove(obj, hash);
    }

    public boolean remove(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        int hash = hash(obj);
        return segmentFor(hash).remove(obj, hash, obj2);
    }

    public V replace(K k, V v) {
        Ascii.checkNotNull(k);
        Ascii.checkNotNull(v);
        int hash = hash(k);
        return segmentFor(hash).replace(k, hash, v);
    }

    public boolean replace(K k, @Nullable V v, V v2) {
        Ascii.checkNotNull(k);
        Ascii.checkNotNull(v2);
        if (v == null) {
            return false;
        }
        int hash = hash(k);
        return segmentFor(hash).replace(k, hash, v, v2);
    }

    final Segment<K, V> segmentFor(int i) {
        return this.segments[(i >>> this.segmentShift) & this.segmentMask];
    }

    public int size() {
        long j = 0;
        for (Segment segment : this.segments) {
            j += (long) segment.count;
        }
        return Ints.saturatedCast(j);
    }

    final boolean usesKeyReferences() {
        return this.keyStrength != Strength.STRONG;
    }

    final boolean usesValueReferences() {
        return this.valueStrength != Strength.STRONG;
    }

    public Collection<V> values() {
        Collection<V> collection = this.values;
        if (collection != null) {
            return collection;
        }
        collection = new Values();
        this.values = collection;
        return collection;
    }
}
