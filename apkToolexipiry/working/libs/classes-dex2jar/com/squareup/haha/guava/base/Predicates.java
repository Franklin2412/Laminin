package com.squareup.haha.guava.base;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import javax.annotation.Nullable;

public final class Predicates {
    private static final Ascii COMMA_JOINER$5f22bbb7;

    static final class AndPredicate<T> implements Predicate<T>, Serializable {
        private final List<? extends Predicate<? super T>> components;

        private AndPredicate(List<? extends Predicate<? super T>> list) {
            this.components = list;
        }

        public final boolean apply(@Nullable T t) {
            for (int i = 0; i < this.components.size(); i++) {
                if (!((Predicate) this.components.get(i)).apply(t)) {
                    return false;
                }
            }
            return true;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof AndPredicate)) {
                return false;
            }
            return this.components.equals(((AndPredicate) obj).components);
        }

        public final int hashCode() {
            return this.components.hashCode() + 306654252;
        }

        public final String toString() {
            return "Predicates.and(" + Predicates.COMMA_JOINER$5f22bbb7.join(this.components) + ")";
        }
    }

    static final class CompositionPredicate<A, B> implements Predicate<A>, Serializable {
        private Function<A, ? extends B> f;
        private Predicate<B> p;

        private CompositionPredicate(Predicate<B> predicate, Function<A, ? extends B> function) {
            this.p = (Predicate) Ascii.checkNotNull(predicate);
            this.f = (Function) Ascii.checkNotNull(function);
        }

        public final boolean apply(@Nullable A a) {
            return this.p.apply(this.f.apply(a));
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof CompositionPredicate)) {
                return false;
            }
            CompositionPredicate compositionPredicate = (CompositionPredicate) obj;
            return this.f.equals(compositionPredicate.f) && this.p.equals(compositionPredicate.p);
        }

        public final int hashCode() {
            return this.f.hashCode() ^ this.p.hashCode();
        }

        public final String toString() {
            return this.p.toString() + "(" + this.f.toString() + ")";
        }
    }

    static final class InPredicate<T> implements Predicate<T>, Serializable {
        private final Collection<?> target;

        private InPredicate(Collection<?> collection) {
            this.target = (Collection) Ascii.checkNotNull(collection);
        }

        public final boolean apply(@Nullable T t) {
            boolean z = false;
            try {
                z = this.target.contains(t);
            } catch (NullPointerException e) {
            } catch (ClassCastException e2) {
            }
            return z;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof InPredicate)) {
                return false;
            }
            return this.target.equals(((InPredicate) obj).target);
        }

        public final int hashCode() {
            return this.target.hashCode();
        }

        public final String toString() {
            return "Predicates.in(" + this.target + ")";
        }
    }

    static final class IsEqualToPredicate<T> implements Predicate<T>, Serializable {
        private final T target;

        private IsEqualToPredicate(T t) {
            this.target = t;
        }

        public final boolean apply(T t) {
            return this.target.equals(t);
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof IsEqualToPredicate)) {
                return false;
            }
            return this.target.equals(((IsEqualToPredicate) obj).target);
        }

        public final int hashCode() {
            return this.target.hashCode();
        }

        public final String toString() {
            return "Predicates.equalTo(" + this.target + ")";
        }
    }

    static final class NotPredicate<T> implements Predicate<T>, Serializable {
        private Predicate<T> predicate;

        NotPredicate(Predicate<T> predicate) {
            this.predicate = (Predicate) Ascii.checkNotNull(predicate);
        }

        public final boolean apply(@Nullable T t) {
            return !this.predicate.apply(t);
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof NotPredicate)) {
                return false;
            }
            return this.predicate.equals(((NotPredicate) obj).predicate);
        }

        public final int hashCode() {
            return this.predicate.hashCode() ^ -1;
        }

        public final String toString() {
            return "Predicates.not(" + this.predicate.toString() + ")";
        }
    }

    enum ObjectPredicate implements Predicate<Object> {
        ALWAYS_TRUE {
            public final boolean apply(@Nullable Object obj) {
                return true;
            }

            public final String toString() {
                return "Predicates.alwaysTrue()";
            }
        },
        ALWAYS_FALSE {
            public final boolean apply(@Nullable Object obj) {
                return false;
            }

            public final String toString() {
                return "Predicates.alwaysFalse()";
            }
        },
        IS_NULL {
            public final boolean apply(@Nullable Object obj) {
                return obj == null;
            }

            public final String toString() {
                return "Predicates.isNull()";
            }
        },
        NOT_NULL {
            public final boolean apply(@Nullable Object obj) {
                return obj != null;
            }

            public final String toString() {
                return "Predicates.notNull()";
            }
        };

        static {
            ALWAYS_TRUE = new AnonymousClass1("ALWAYS_TRUE", 0);
            ALWAYS_FALSE = new AnonymousClass2("ALWAYS_FALSE", 1);
            IS_NULL = new AnonymousClass3("IS_NULL", 2);
            NOT_NULL = new AnonymousClass4("NOT_NULL", 3);
            ObjectPredicate objectPredicate = ALWAYS_TRUE;
            objectPredicate = ALWAYS_FALSE;
            objectPredicate = IS_NULL;
            objectPredicate = NOT_NULL;
        }
    }

    static {
        COMMA_JOINER$5f22bbb7 = new Ascii(",");
    }

    public static <T> Predicate<T> and(Predicate<? super T> predicate, Predicate<? super T> predicate2) {
        return new AndPredicate((byte) 0);
    }

    public static <A, B> Predicate<A> compose(Predicate<B> predicate, Function<A, ? extends B> function) {
        return new CompositionPredicate(function, (byte) 0);
    }

    public static <T> Predicate<T> equalTo(@Nullable T t) {
        return t == null ? ObjectPredicate.IS_NULL : new IsEqualToPredicate((byte) 0);
    }

    public static <T> Predicate<T> in(Collection<? extends T> collection) {
        return new InPredicate((byte) 0);
    }

    public static <T> Predicate<T> not(Predicate<T> predicate) {
        return new NotPredicate(predicate);
    }
}
