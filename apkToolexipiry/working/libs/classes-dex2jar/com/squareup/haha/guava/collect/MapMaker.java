package com.squareup.haha.guava.collect;

import com.squareup.haha.guava.base.Objects$ToStringHelper;
import javax.annotation.Nullable;

public final class MapMaker extends GenericMapMaker<Object, Object> {

    enum RemovalCause {
        EXPLICIT {
        },
        REPLACED {
        },
        COLLECTED {
        },
        EXPIRED {
        },
        SIZE {
        };

        static {
            EXPLICIT = new AnonymousClass1("EXPLICIT", 0);
            REPLACED = new AnonymousClass2("REPLACED", 1);
            COLLECTED = new AnonymousClass3("COLLECTED", 2);
            EXPIRED = new AnonymousClass4("EXPIRED", 3);
            SIZE = new AnonymousClass5("SIZE", 4);
            RemovalCause removalCause = EXPLICIT;
            removalCause = REPLACED;
            removalCause = COLLECTED;
            removalCause = EXPIRED;
            removalCause = SIZE;
        }
    }

    static final class RemovalNotification<K, V> extends ImmutableEntry<K, V> {
        RemovalNotification(@Nullable K k, @Nullable V v, RemovalCause removalCause) {
            super(k, v);
        }
    }

    public final String toString() {
        String replaceAll = getClass().getName().replaceAll("\\$[0-9]+", "\\$");
        int lastIndexOf = replaceAll.lastIndexOf(36);
        if (lastIndexOf == -1) {
            lastIndexOf = replaceAll.lastIndexOf(46);
        }
        Objects$ToStringHelper objects$ToStringHelper = new Objects$ToStringHelper((byte) 0);
        objects$ToStringHelper.add("initialCapacity", 0);
        objects$ToStringHelper.add("concurrencyLevel", 0);
        objects$ToStringHelper.add("maximumSize", 0);
        if (0 != -1) {
            objects$ToStringHelper.addHolder("expireAfterWrite", "0" + "ns");
        }
        if (0 != -1) {
            objects$ToStringHelper.addHolder("expireAfterAccess", "0" + "ns");
        }
        return objects$ToStringHelper.toString();
    }
}
