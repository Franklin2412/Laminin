package com.squareup.leakcanary;

public interface GcTrigger {
    public static final GcTrigger DEFAULT;

    static {
        DEFAULT = new GcTrigger() {
            private void enqueueReferences() {
                try {
                    Thread.sleep(100);
                } catch (InterruptedException e) {
                    throw new AssertionError();
                }
            }

            public void runGc() {
                Runtime.getRuntime().gc();
                enqueueReferences();
                System.runFinalization();
            }
        };
    }

    void runGc();
}
