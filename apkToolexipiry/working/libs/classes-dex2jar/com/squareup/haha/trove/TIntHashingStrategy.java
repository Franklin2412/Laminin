package com.squareup.haha.trove;

import java.io.Serializable;

public interface TIntHashingStrategy extends Serializable {
    int computeHashCode(int i);
}
