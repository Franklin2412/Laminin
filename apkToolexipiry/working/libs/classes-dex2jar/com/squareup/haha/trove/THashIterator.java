package com.squareup.haha.trove;

import java.util.Iterator;

abstract class THashIterator<V> extends TIterator implements Iterator<V> {
    private TObjectHash _hash;

    public THashIterator(TObjectHash tObjectHash) {
        super(tObjectHash);
        this._hash = tObjectHash;
    }

    public V next() {
        moveToNextIndex();
        return objectAtIndex(this._index);
    }

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
        r2 = r0._set;
        r0 = r4._index;
    L_0x0016:
        r1 = r0 + -1;
        if (r0 <= 0) goto L_0x0024;
    L_0x001a:
        r0 = r2[r1];
        if (r0 == 0) goto L_0x0025;
    L_0x001e:
        r0 = r2[r1];
        r3 = com.squareup.haha.trove.TObjectHash.REMOVED;
        if (r0 == r3) goto L_0x0025;
    L_0x0024:
        return r1;
    L_0x0025:
        r0 = r1;
        goto L_0x0016;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.haha.trove.THashIterator.nextIndex():int");
    }

    protected abstract V objectAtIndex(int i);
}
