package com.squareup.haha.trove;

import java.io.Serializable;

public interface TObjectHashingStrategy<T> extends Serializable {
    static {
        TObjectIdentityHashingStrategy tObjectIdentityHashingStrategy = new TObjectIdentityHashingStrategy();
        TObjectCanonicalHashingStrategy tObjectCanonicalHashingStrategy = new TObjectCanonicalHashingStrategy();
    }

    int computeHashCode(T t);

    boolean equals(T t, T t2);
}
