package com.squareup.haha.guava.collect;

import java.util.List;
import java.util.RandomAccess;

public final class Lists$RandomAccessReverseList<T> extends Lists$ReverseList<T> implements RandomAccess {
    public Lists$RandomAccessReverseList(List<T> list) {
        super(list);
    }
}
