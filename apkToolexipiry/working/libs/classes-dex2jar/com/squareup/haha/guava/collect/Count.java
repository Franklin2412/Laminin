package com.squareup.haha.guava.collect;

import java.io.Serializable;
import javax.annotation.Nullable;

final class Count implements Serializable {
    int value;

    Count(int i) {
        this.value = i;
    }

    public final int addAndGet(int i) {
        int i2 = this.value + i;
        this.value = i2;
        return i2;
    }

    public final boolean equals(@Nullable Object obj) {
        return (obj instanceof Count) && ((Count) obj).value == this.value;
    }

    public final int getAndSet(int i) {
        int i2 = this.value;
        this.value = i;
        return i2;
    }

    public final int hashCode() {
        return this.value;
    }

    public final String toString() {
        return Integer.toString(this.value);
    }
}
