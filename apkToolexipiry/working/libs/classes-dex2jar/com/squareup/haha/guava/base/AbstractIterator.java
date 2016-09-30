package com.squareup.haha.guava.base;

import com.payu.testapp.R;
import java.util.Iterator;
import java.util.NoSuchElementException;

abstract class AbstractIterator<T> implements Iterator<T> {
    private T next;
    private int state$74e26051;

    /* renamed from: com.squareup.haha.guava.base.AbstractIterator.1 */
    static final /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$common$base$AbstractIterator$State;

        static {
            State.values$745902e9();
            $SwitchMap$com$google$common$base$AbstractIterator$State = new int[4];
            try {
                int[] iArr = $SwitchMap$com$google$common$base$AbstractIterator$State;
                int i = State.DONE$74e26051;
                iArr[2] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr = $SwitchMap$com$google$common$base$AbstractIterator$State;
                i = State.READY$74e26051;
                iArr[0] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    enum State {
        ;

        static {
            READY$74e26051 = 1;
            NOT_READY$74e26051 = 2;
            DONE$74e26051 = 3;
            FAILED$74e26051 = 4;
            $VALUES$43579d2a = new int[]{1, 2, 3, 4};
        }

        public static int[] values$745902e9() {
            return (int[]) $VALUES$43579d2a.clone();
        }
    }

    protected abstract T computeNext();

    public final boolean hasNext() {
        Ascii.checkState(this.state$74e26051 != State.FAILED$74e26051);
        switch (AnonymousClass1.$SwitchMap$com$google$common$base$AbstractIterator$State[this.state$74e26051 - 1]) {
            case R.styleable.WaitingDots_period /*1*/:
                return false;
            case R.styleable.WaitingDots_jumpHeight /*2*/:
                return true;
            default:
                this.state$74e26051 = State.FAILED$74e26051;
                this.next = computeNext();
                if (this.state$74e26051 == State.DONE$74e26051) {
                    return false;
                }
                this.state$74e26051 = State.READY$74e26051;
                return true;
        }
    }

    public final T next() {
        if (hasNext()) {
            this.state$74e26051 = State.NOT_READY$74e26051;
            T t = this.next;
            this.next = null;
            return t;
        }
        throw new NoSuchElementException();
    }

    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
