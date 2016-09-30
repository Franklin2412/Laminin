package com.squareup.haha.perflib;

public final class HahaSpy {
    private HahaSpy() {
        throw new AssertionError();
    }

    public static Instance allocatingThread(Instance instance) {
        Snapshot snapshot = instance.mHeap.mSnapshot;
        return snapshot.findInstance(snapshot.getThread(instance instanceof RootObj ? ((RootObj) instance).mThread : instance.mStack.mThreadSerialNumber).mId);
    }
}
