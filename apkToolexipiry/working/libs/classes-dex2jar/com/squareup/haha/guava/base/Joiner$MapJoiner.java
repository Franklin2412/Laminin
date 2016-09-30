package com.squareup.haha.guava.base;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map.Entry;

public final class Joiner$MapJoiner {
    private final Ascii joiner$5f22bbb7;
    private final String keyValueSeparator;

    private Joiner$MapJoiner(Ascii ascii, String str) {
        this.joiner$5f22bbb7 = ascii;
        this.keyValueSeparator = (String) Ascii.checkNotNull(str);
    }

    public final StringBuilder appendTo(StringBuilder stringBuilder, Iterator<? extends Entry<?, ?>> it) {
        try {
            Ascii.checkNotNull(stringBuilder);
            if (it.hasNext()) {
                Entry entry = (Entry) it.next();
                stringBuilder.append(this.joiner$5f22bbb7.toString(entry.getKey()));
                stringBuilder.append(this.keyValueSeparator);
                stringBuilder.append(this.joiner$5f22bbb7.toString(entry.getValue()));
                while (it.hasNext()) {
                    stringBuilder.append(this.joiner$5f22bbb7.separator);
                    entry = (Entry) it.next();
                    stringBuilder.append(this.joiner$5f22bbb7.toString(entry.getKey()));
                    stringBuilder.append(this.keyValueSeparator);
                    stringBuilder.append(this.joiner$5f22bbb7.toString(entry.getValue()));
                }
            }
            return stringBuilder;
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
