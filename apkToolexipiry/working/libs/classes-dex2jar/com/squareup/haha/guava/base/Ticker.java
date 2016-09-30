package com.squareup.haha.guava.base;

public abstract class Ticker {
    static {
        AnonymousClass1 anonymousClass1 = new Ticker() {
            public final long read() {
                return System.nanoTime();
            }
        };
    }

    protected Ticker() {
    }

    public abstract long read();
}
