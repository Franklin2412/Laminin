package com.squareup.haha.guava.base;

import javax.annotation.Nullable;

public interface Predicate<T> {
    boolean apply(@Nullable T t);

    boolean equals(@Nullable Object obj);
}
