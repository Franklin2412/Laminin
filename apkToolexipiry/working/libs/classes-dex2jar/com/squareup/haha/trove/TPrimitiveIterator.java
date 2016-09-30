package com.squareup.haha.trove;

abstract class TPrimitiveIterator extends TIterator {
    private TPrimitiveHash _hash;

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected final int nextIndex() {
        /*
        r4 = this;
        r0 = r4._expectedSize;
        r1 = r4._hash;
        r1 = r1.size();
        if (r0 == r1) goto L_0x0010;
    L_0x000a:
        r0 = new java.util.ConcurrentModificationException;
        r0.<init>();
        throw r0;
    L_0x0010:
        r0 = r4._hash;
        r2 = r0._states;
        r0 = r4._index;
    L_0x0016:
        r1 = r0 + -1;
        if (r0 <= 0) goto L_0x001f;
    L_0x001a:
        r0 = r2[r1];
        r3 = 1;
        if (r0 != r3) goto L_0x0020;
    L_0x001f:
        return r1;
    L_0x0020:
        r0 = r1;
        goto L_0x0016;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.haha.trove.TPrimitiveIterator.nextIndex():int");
    }
}
