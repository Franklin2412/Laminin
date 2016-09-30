package com.squareup.haha.guava.base;

import com.squareup.leakcanary.watcher.BuildConfig;
import javax.annotation.Nullable;

public final class Objects$ToStringHelper {
    private final String className;
    private ValueHolder holderHead;
    private ValueHolder holderTail;
    private boolean omitNullValues;

    static final class ValueHolder {
        String name;
        ValueHolder next;
        Object value;

        private ValueHolder() {
        }
    }

    private Objects$ToStringHelper(String str) {
        this.holderHead = new ValueHolder();
        this.holderTail = this.holderHead;
        this.omitNullValues = false;
        this.className = (String) Ascii.checkNotNull(str);
    }

    private ValueHolder addHolder() {
        ValueHolder valueHolder = new ValueHolder();
        this.holderTail.next = valueHolder;
        this.holderTail = valueHolder;
        return valueHolder;
    }

    public final Objects$ToStringHelper add(String str, int i) {
        return addHolder(str, String.valueOf(i));
    }

    public Objects$ToStringHelper addHolder(String str, @Nullable Object obj) {
        ValueHolder addHolder = addHolder();
        addHolder.value = obj;
        addHolder.name = (String) Ascii.checkNotNull(str);
        return this;
    }

    public final String toString() {
        String str = BuildConfig.VERSION_NAME;
        StringBuilder append = new StringBuilder(32).append(this.className).append('{');
        for (ValueHolder valueHolder = this.holderHead.next; valueHolder != null; valueHolder = valueHolder.next) {
            append.append(str);
            str = ", ";
            if (valueHolder.name != null) {
                append.append(valueHolder.name).append('=');
            }
            append.append(valueHolder.value);
        }
        return append.append('}').toString();
    }
}
