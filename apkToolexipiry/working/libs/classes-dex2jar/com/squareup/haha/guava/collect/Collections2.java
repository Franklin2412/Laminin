package com.squareup.haha.guava.collect;

import com.squareup.haha.guava.base.Ascii;
import java.util.Collection;
import javax.annotation.Nullable;

public final class Collections2 {
    static final Ascii STANDARD_JOINER$5f22bbb7;

    static {
        STANDARD_JOINER$5f22bbb7 = new Ascii(", ").useForNull$5f7c8ce0("null");
    }

    static StringBuilder newStringBuilderForCollection(int i) {
        Ascii.checkNonnegative(i, "size");
        return new StringBuilder((int) Math.min(((long) i) << 3, 1073741824));
    }

    static boolean safeContains(Collection<?> collection, @Nullable Object obj) {
        boolean z = false;
        Ascii.checkNotNull(collection);
        try {
            z = collection.contains(obj);
        } catch (ClassCastException e) {
        } catch (NullPointerException e2) {
        }
        return z;
    }
}
