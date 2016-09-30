package com.squareup.haha.guava.collect;

import com.payu.testapp.R;
import com.squareup.haha.guava.base.Ascii;
import java.util.NoSuchElementException;

public abstract class AbstractIterator<T> extends UnmodifiableIterator<T> {
    private T next;
    private int state$7fb44498;

    /* renamed from: com.squareup.haha.guava.collect.AbstractIterator.1 */
    static final /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$common$collect$AbstractIterator$State;

        static {
            State.values$a4ba0e2();
            $SwitchMap$com$google$common$collect$AbstractIterator$State = new int[4];
            try {
                int[] iArr = $SwitchMap$com$google$common$collect$AbstractIterator$State;
                int i = State.DONE$7fb44498;
                iArr[2] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr = $SwitchMap$com$google$common$collect$AbstractIterator$State;
                i = State.READY$7fb44498;
                iArr[0] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    enum State {
        ;

        static {
            READY$7fb44498 = 1;
            NOT_READY$7fb44498 = 2;
            DONE$7fb44498 = 3;
            FAILED$7fb44498 = 4;
            $VALUES$2415113d = new int[]{1, 2, 3, 4};
        }

        public static int[] values$a4ba0e2() {
            return (int[]) $VALUES$2415113d.clone();
        }
    }

    protected abstract T computeNext();

    public final boolean hasNext() {
        Ascii.checkState(this.state$7fb44498 != State.FAILED$7fb44498);
        switch (AnonymousClass1.$SwitchMap$com$google$common$collect$AbstractIterator$State[this.state$7fb44498 - 1]) {
            case R.styleable.WaitingDots_period /*1*/:
                return false;
            case R.styleable.WaitingDots_jumpHeight /*2*/:
                return true;
            default:
                this.state$7fb44498 = State.FAILED$7fb44498;
                this.next = computeNext();
                if (this.state$7fb44498 == State.DONE$7fb44498) {
                    return false;
                }
                this.state$7fb44498 = State.READY$7fb44498;
                return true;
        }
    }

    public final T next() {
        if (hasNext()) {
            this.state$7fb44498 = State.NOT_READY$7fb44498;
            T t = this.next;
            this.next = null;
            return t;
        }
        throw new NoSuchElementException();
    }
}
