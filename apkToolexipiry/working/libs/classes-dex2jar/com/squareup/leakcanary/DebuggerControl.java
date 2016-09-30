package com.squareup.leakcanary;

public interface DebuggerControl {
    public static final DebuggerControl NONE;

    static {
        NONE = new DebuggerControl() {
            public boolean isDebuggerAttached() {
                return false;
            }
        };
    }

    boolean isDebuggerAttached();
}
