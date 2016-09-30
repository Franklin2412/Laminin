package com.squareup.haha.guava.collect;

public abstract class ForwardingObject {
    protected ForwardingObject() {
    }

    protected abstract Object delegate();

    public String toString() {
        return delegate().toString();
    }
}
