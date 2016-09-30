package com.squareup.haha.guava.base;

import com.squareup.haha.guava.collect.ImmutableList;
import com.squareup.haha.guava.collect.Iterators;
import com.squareup.haha.guava.collect.Lists$RandomAccessReverseList;
import com.squareup.haha.guava.collect.Lists$ReverseList;
import com.squareup.haha.guava.collect.Multiset;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import java.util.Set;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

public class Ascii {
    final String separator;

    Ascii(Ascii ascii) {
        this.separator = ascii.separator;
    }

    public Ascii(String str) {
        this.separator = (String) checkNotNull(str);
    }

    static String badPositionIndex(int i, int i2, String str) {
        if (i < 0) {
            return format("%s (%s) must not be negative", str, Integer.valueOf(i));
        } else if (i2 < 0) {
            throw new IllegalArgumentException("negative size: " + i2);
        } else {
            return format("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
    }

    public static void checkArgument(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static void checkArgument(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(format(str, objArr));
        }
    }

    public static int checkElementIndex(int i, int i2) {
        if (i >= 0 && i < i2) {
            return i;
        }
        String format;
        if (i < 0) {
            format = format("%s (%s) must not be negative", "index", Integer.valueOf(i));
        } else if (i2 < 0) {
            throw new IllegalArgumentException("negative size: " + i2);
        } else {
            format = format("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IndexOutOfBoundsException(format);
    }

    public static int checkNonnegative(int i, String str) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException(str + " cannot be negative but was: " + i);
    }

    public static <T> T checkNotNull(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    public static int checkPositionIndex(int i, int i2) {
        if (i >= 0 && i <= i2) {
            return i;
        }
        throw new IndexOutOfBoundsException(badPositionIndex(i, i2, "index"));
    }

    public static void checkPositionIndexes(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            String badPositionIndex;
            if (i < 0 || i > i3) {
                badPositionIndex = badPositionIndex(i, i3, "start index");
            } else if (i2 < 0 || i2 > i3) {
                badPositionIndex = badPositionIndex(i2, i3, "end index");
            } else {
                badPositionIndex = format("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i));
            }
            throw new IndexOutOfBoundsException(badPositionIndex);
        }
    }

    public static void checkRemove(boolean z) {
        if (!z) {
            throw new IllegalStateException(String.valueOf("no calls to next() since the last call to remove()"));
        }
    }

    public static void checkState(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    @CheckReturnValue
    public static boolean equal(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static boolean equalsImpl(Set<?> set, Object obj) {
        if (set != obj) {
            if (!(obj instanceof Set)) {
                return false;
            }
            Set set2 = (Set) obj;
            try {
                if (set.size() != set2.size()) {
                    return false;
                }
                if (!set.containsAll(set2)) {
                    return false;
                }
            } catch (NullPointerException e) {
                return false;
            } catch (ClassCastException e2) {
                return false;
            }
        }
        return true;
    }

    static String format(String str, Object... objArr) {
        int i = 0;
        String valueOf = String.valueOf(str);
        StringBuilder stringBuilder = new StringBuilder(valueOf.length() + (objArr.length * 16));
        int i2 = 0;
        while (i2 < objArr.length) {
            int indexOf = valueOf.indexOf("%s", i);
            if (indexOf == -1) {
                break;
            }
            stringBuilder.append(valueOf.substring(i, indexOf));
            stringBuilder.append(objArr[i2]);
            i = indexOf + 2;
            i2++;
        }
        stringBuilder.append(valueOf.substring(i));
        if (i2 < objArr.length) {
            stringBuilder.append(" [");
            stringBuilder.append(objArr[i2]);
            for (i = i2 + 1; i < objArr.length; i++) {
                stringBuilder.append(", ");
                stringBuilder.append(objArr[i]);
            }
            stringBuilder.append(']');
        }
        return stringBuilder.toString();
    }

    @Nullable
    public static <T> T getFirst(Iterable<? extends T> iterable, T t) {
        return Iterators.getNext(iterable.iterator(), null);
    }

    public static int hash(Object obj) {
        return obj == null ? 0 : obj.hashCode();
    }

    public static int hashCodeImpl(Set<?> set) {
        int i = 0;
        for (Object next : set) {
            i = ((i + (next != null ? next.hashCode() : 0)) ^ -1) ^ -1;
        }
        return i;
    }

    public static <E> ArrayList<E> newArrayList(Iterator<? extends E> it) {
        Object arrayList = new ArrayList();
        Iterators.addAll(arrayList, it);
        return arrayList;
    }

    public static boolean removeAllImpl(Set<?> set, Collection<?> collection) {
        Collection elementSet;
        checkNotNull(collection);
        if (collection instanceof Multiset) {
            elementSet = ((Multiset) collection).elementSet();
        }
        return (!(elementSet instanceof Set) || elementSet.size() <= set.size()) ? removeAllImpl((Set) set, elementSet.iterator()) : Iterators.removeAll(set.iterator(), elementSet);
    }

    public static boolean removeAllImpl(Set<?> set, Iterator<?> it) {
        boolean z = false;
        while (it.hasNext()) {
            z |= set.remove(it.next());
        }
        return z;
    }

    public static <T> boolean removeIfFromRandomAccessList(List<T> list, Predicate<? super T> predicate) {
        int i = 0;
        int i2 = 0;
        while (i < list.size()) {
            Object obj = list.get(i);
            if (!predicate.apply(obj)) {
                if (i > i2) {
                    try {
                        list.set(i2, obj);
                    } catch (UnsupportedOperationException e) {
                        for (int size = list.size() - 1; size > i; size--) {
                            if (predicate.apply(list.get(size))) {
                                list.remove(size);
                            }
                        }
                        for (i--; i >= i2; i--) {
                            list.remove(i);
                        }
                    }
                }
                i2++;
            }
            i++;
        }
        list.subList(i2, list.size()).clear();
        if (i == i2) {
            return false;
        }
        return true;
    }

    public static <T> List<T> reverse(List<T> list) {
        return list instanceof ImmutableList ? ((ImmutableList) list).reverse() : list instanceof Lists$ReverseList ? ((Lists$ReverseList) list).forwardList : list instanceof RandomAccess ? new Lists$RandomAccessReverseList(list) : new Lists$ReverseList(list);
    }

    public <A extends Appendable> A appendTo(A a, Iterator<?> it) throws IOException {
        checkNotNull(a);
        if (it.hasNext()) {
            a.append(toString(it.next()));
            while (it.hasNext()) {
                a.append(this.separator);
                a.append(toString(it.next()));
            }
        }
        return a;
    }

    public StringBuilder appendTo(StringBuilder stringBuilder, Iterator<?> it) {
        try {
            appendTo((Appendable) stringBuilder, (Iterator) it);
            return stringBuilder;
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    public String join(Iterable<?> iterable) {
        return join(iterable.iterator());
    }

    public String join(Iterator<?> it) {
        return appendTo(new StringBuilder(), (Iterator) it).toString();
    }

    CharSequence toString(Object obj) {
        checkNotNull(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    @CheckReturnValue
    public Ascii useForNull$5f7c8ce0(String str) {
        checkNotNull(str);
        return new Joiner$1(this, this, str);
    }

    @CheckReturnValue
    public Joiner$MapJoiner withKeyValueSeparator(String str) {
        return new Joiner$MapJoiner(str, (byte) 0);
    }
}
