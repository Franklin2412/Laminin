package com.squareup.haha.trove;

import java.io.Serializable;

public interface TLongHashingStrategy extends Serializable {
    int computeHashCode(long j);
}
