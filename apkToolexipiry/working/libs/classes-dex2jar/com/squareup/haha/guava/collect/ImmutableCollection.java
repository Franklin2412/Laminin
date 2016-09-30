package com.squareup.haha.guava.collect;

import com.payu.testapp.R;
import com.squareup.haha.guava.base.Ascii;
import com.squareup.haha.perflib.StackFrame;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import javax.annotation.Nullable;

public abstract class ImmutableCollection<E> extends AbstractCollection<E> implements Serializable {
    private transient ImmutableList<E> asList;

    ImmutableCollection() {
    }

    @Deprecated
    public final boolean add(E e) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    public ImmutableList<E> asList() {
        ImmutableList<E> immutableList = this.asList;
        if (immutableList != null) {
            return immutableList;
        }
        immutableList = createAsList();
        this.asList = immutableList;
        return immutableList;
    }

    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean contains(@Nullable Object obj) {
        return obj != null && super.contains(obj);
    }

    int copyIntoArray(Object[] objArr, int i) {
        Iterator it = iterator();
        while (it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
        return i;
    }

    ImmutableList<E> createAsList() {
        switch (size()) {
            case StackFrame.NO_LINE_NUMBER /*0*/:
                return ImmutableList.of();
            case R.styleable.WaitingDots_period /*1*/:
                return ImmutableList.of(iterator().next());
            default:
                return new RegularImmutableAsList(this, toArray());
        }
    }

    abstract boolean isPartialView();

    public abstract UnmodifiableIterator<E> iterator();

    @Deprecated
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    public final Object[] toArray() {
        if (size() == 0) {
            return ObjectArrays.EMPTY_ARRAY;
        }
        Object[] objArr = new Object[size()];
        copyIntoArray(objArr, 0);
        return objArr;
    }

    public final <T> T[] toArray(T[] tArr) {
        Ascii.checkNotNull(tArr);
        int size = size();
        if (tArr.length < size) {
            tArr = ObjectArrays.newArray(tArr, size);
        } else if (tArr.length > size) {
            tArr[size] = null;
        }
        copyIntoArray(tArr, 0);
        return tArr;
    }
}
