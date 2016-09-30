package com.squareup.haha.guava.base;

import com.payu.testapp.R;
import java.util.Arrays;

public abstract class CharMatcher implements Predicate<Character> {
    private static final String NINES;
    static final int WHITESPACE_SHIFT;
    private String description;

    static abstract class FastMatcher extends CharMatcher {
        FastMatcher(String str) {
            super(str);
        }

        public final /* bridge */ /* synthetic */ boolean apply(Object obj) {
            return super.apply((Character) obj);
        }
    }

    /* renamed from: com.squareup.haha.guava.base.CharMatcher.13 */
    static final class AnonymousClass13 extends FastMatcher {
        private /* synthetic */ char val$endInclusive;
        private /* synthetic */ char val$startInclusive;

        AnonymousClass13(String str, char c, char c2) {
            this.val$startInclusive = c;
            this.val$endInclusive = c2;
            super(str);
        }

        public final boolean matches(char c) {
            return this.val$startInclusive <= c && c <= this.val$endInclusive;
        }
    }

    /* renamed from: com.squareup.haha.guava.base.CharMatcher.15 */
    static final class AnonymousClass15 extends FastMatcher {
        AnonymousClass15(String str) {
            super(str);
        }

        public final boolean matches(char c) {
            return "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001\u202f\u00a0\f\u2009\u3000\u2004\u3000\u3000\u2028\n\u2007\u3000".charAt((1682554634 * c) >>> WHITESPACE_SHIFT) == c;
        }
    }

    /* renamed from: com.squareup.haha.guava.base.CharMatcher.2 */
    static final class AnonymousClass2 extends CharMatcher {
        AnonymousClass2(String str) {
            super(str);
        }

        public final /* bridge */ /* synthetic */ boolean apply(Object obj) {
            return super.apply((Character) obj);
        }

        public final boolean matches(char c) {
            return Character.isDigit(c);
        }
    }

    /* renamed from: com.squareup.haha.guava.base.CharMatcher.3 */
    static final class AnonymousClass3 extends CharMatcher {
        AnonymousClass3(String str) {
            super(str);
        }

        public final /* bridge */ /* synthetic */ boolean apply(Object obj) {
            return super.apply((Character) obj);
        }

        public final boolean matches(char c) {
            return Character.isLetter(c);
        }
    }

    /* renamed from: com.squareup.haha.guava.base.CharMatcher.4 */
    static final class AnonymousClass4 extends CharMatcher {
        AnonymousClass4(String str) {
            super(str);
        }

        public final /* bridge */ /* synthetic */ boolean apply(Object obj) {
            return super.apply((Character) obj);
        }

        public final boolean matches(char c) {
            return Character.isLetterOrDigit(c);
        }
    }

    /* renamed from: com.squareup.haha.guava.base.CharMatcher.5 */
    static final class AnonymousClass5 extends CharMatcher {
        AnonymousClass5(String str) {
            super(str);
        }

        public final /* bridge */ /* synthetic */ boolean apply(Object obj) {
            return super.apply((Character) obj);
        }

        public final boolean matches(char c) {
            return Character.isUpperCase(c);
        }
    }

    /* renamed from: com.squareup.haha.guava.base.CharMatcher.6 */
    static final class AnonymousClass6 extends CharMatcher {
        AnonymousClass6(String str) {
            super(str);
        }

        public final /* bridge */ /* synthetic */ boolean apply(Object obj) {
            return super.apply((Character) obj);
        }

        public final boolean matches(char c) {
            return Character.isLowerCase(c);
        }
    }

    /* renamed from: com.squareup.haha.guava.base.CharMatcher.7 */
    static final class AnonymousClass7 extends FastMatcher {
        AnonymousClass7(String str) {
            super(str);
        }

        public final boolean matches(char c) {
            return true;
        }

        public final CharMatcher or(CharMatcher charMatcher) {
            Ascii.checkNotNull(charMatcher);
            return this;
        }
    }

    /* renamed from: com.squareup.haha.guava.base.CharMatcher.8 */
    static final class AnonymousClass8 extends FastMatcher {
        AnonymousClass8(String str) {
            super(str);
        }

        public final boolean matches(char c) {
            return false;
        }

        public final CharMatcher or(CharMatcher charMatcher) {
            return (CharMatcher) Ascii.checkNotNull(charMatcher);
        }
    }

    static final class Or extends CharMatcher {
        private CharMatcher first;
        private CharMatcher second;

        Or(CharMatcher charMatcher, CharMatcher charMatcher2) {
            this(charMatcher, charMatcher2, "CharMatcher.or(" + charMatcher + ", " + charMatcher2 + ")");
        }

        private Or(CharMatcher charMatcher, CharMatcher charMatcher2, String str) {
            super(str);
            this.first = (CharMatcher) Ascii.checkNotNull(charMatcher);
            this.second = (CharMatcher) Ascii.checkNotNull(charMatcher2);
        }

        public final /* bridge */ /* synthetic */ boolean apply(Object obj) {
            return super.apply((Character) obj);
        }

        public final boolean matches(char c) {
            return this.first.matches(c) || this.second.matches(c);
        }

        final CharMatcher withToString(String str) {
            return new Or(this.first, this.second, str);
        }
    }

    static final class RangesMatcher extends CharMatcher {
        private final char[] rangeEnds;
        private final char[] rangeStarts;

        RangesMatcher(String str, char[] cArr, char[] cArr2) {
            super(str);
            this.rangeStarts = cArr;
            this.rangeEnds = cArr2;
            Ascii.checkArgument(cArr.length == cArr2.length);
            for (int i = 0; i < cArr.length; i++) {
                Ascii.checkArgument(cArr[i] <= cArr2[i]);
                if (i + 1 < cArr.length) {
                    Ascii.checkArgument(cArr2[i] < cArr[i + 1]);
                }
            }
        }

        public final /* bridge */ /* synthetic */ boolean apply(Object obj) {
            return super.apply((Character) obj);
        }

        public final boolean matches(char c) {
            int binarySearch = Arrays.binarySearch(this.rangeStarts, c);
            if (binarySearch < 0) {
                binarySearch = (binarySearch ^ -1) - 1;
                if (binarySearch < 0 || c > this.rangeEnds[binarySearch]) {
                    return false;
                }
            }
            return true;
        }
    }

    static {
        AnonymousClass1 anonymousClass1 = new CharMatcher() {
            public final /* bridge */ /* synthetic */ boolean apply(Object obj) {
                return super.apply((Character) obj);
            }

            public final boolean matches(char c) {
                switch (c) {
                    case R.styleable.Toolbar_popupTheme /*9*/:
                    case R.styleable.Toolbar_titleTextAppearance /*10*/:
                    case R.styleable.Toolbar_subtitleTextAppearance /*11*/:
                    case R.styleable.Toolbar_titleMargins /*12*/:
                    case R.styleable.Toolbar_titleMarginStart /*13*/:
                    case R.styleable.AppCompatTheme_actionModeCutDrawable /*32*/:
                    case '\u0085':
                    case '\u1680':
                    case '\u2028':
                    case '\u2029':
                    case '\u205f':
                    case '\u3000':
                        break;
                    case '\u2007':
                        return false;
                    default:
                        if (c < '\u2000' || c > '\u200a') {
                            return false;
                        }
                }
                return true;
            }

            public final String toString() {
                return "CharMatcher.BREAKING_WHITESPACE";
            }
        };
        inRange('\u0000', '\u007f', "CharMatcher.ASCII");
        StringBuilder stringBuilder = new StringBuilder(31);
        for (int i = 0; i < 31; i++) {
            stringBuilder.append((char) ("0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10".charAt(i) + 9));
        }
        NINES = stringBuilder.toString();
        RangesMatcher rangesMatcher = new RangesMatcher("CharMatcher.DIGIT", "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10".toCharArray(), NINES.toCharArray());
        AnonymousClass2 anonymousClass2 = new AnonymousClass2("CharMatcher.JAVA_DIGIT");
        AnonymousClass3 anonymousClass3 = new AnonymousClass3("CharMatcher.JAVA_LETTER");
        AnonymousClass4 anonymousClass4 = new AnonymousClass4("CharMatcher.JAVA_LETTER_OR_DIGIT");
        AnonymousClass5 anonymousClass5 = new AnonymousClass5("CharMatcher.JAVA_UPPER_CASE");
        AnonymousClass6 anonymousClass6 = new AnonymousClass6("CharMatcher.JAVA_LOWER_CASE");
        inRange('\u0000', '\u001f').or(inRange('\u007f', '\u009f')).withToString("CharMatcher.JAVA_ISO_CONTROL");
        rangesMatcher = new RangesMatcher("CharMatcher.INVISIBLE", "\u0000\u007f\u00ad\u0600\u061c\u06dd\u070f\u1680\u180e\u2000\u2028\u205f\u2066\u2067\u2068\u2069\u206a\u3000\ud800\ufeff\ufff9\ufffa".toCharArray(), " \u00a0\u00ad\u0604\u061c\u06dd\u070f\u1680\u180e\u200f\u202f\u2064\u2066\u2067\u2068\u2069\u206f\u3000\uf8ff\ufeff\ufff9\ufffb".toCharArray());
        rangesMatcher = new RangesMatcher("CharMatcher.SINGLE_WIDTH", "\u0000\u05be\u05d0\u05f3\u0600\u0750\u0e00\u1e00\u2100\ufb50\ufe70\uff61".toCharArray(), "\u04f9\u05be\u05ea\u05f4\u06ff\u077f\u0e7f\u20af\u213a\ufdff\ufeff\uffdc".toCharArray());
        AnonymousClass7 anonymousClass7 = new AnonymousClass7("CharMatcher.ANY");
        AnonymousClass8 anonymousClass8 = new AnonymousClass8("CharMatcher.NONE");
        WHITESPACE_SHIFT = Integer.numberOfLeadingZeros(31);
        AnonymousClass15 anonymousClass15 = new AnonymousClass15("WHITESPACE");
    }

    protected CharMatcher() {
        this.description = super.toString();
    }

    CharMatcher(String str) {
        this.description = str;
    }

    private static CharMatcher inRange(char c, char c2) {
        Ascii.checkArgument(c2 >= c);
        return inRange(c, c2, "CharMatcher.inRange('" + showCharacter(c) + "', '" + showCharacter(c2) + "')");
    }

    private static CharMatcher inRange(char c, char c2, String str) {
        return new AnonymousClass13(str, c, c2);
    }

    private static String showCharacter(char c) {
        int i = 0;
        char[] cArr = new char[]{'\\', 'u', '\u0000', '\u0000', '\u0000', '\u0000'};
        while (i < 4) {
            cArr[5 - i] = "0123456789ABCDEF".charAt(r6 & 15);
            int i2 = (char) (i2 >> 4);
            i++;
        }
        return String.copyValueOf(cArr);
    }

    @Deprecated
    public final boolean apply(Character ch) {
        return matches(ch.charValue());
    }

    public abstract boolean matches(char c);

    public CharMatcher or(CharMatcher charMatcher) {
        return new Or(this, (CharMatcher) Ascii.checkNotNull(charMatcher));
    }

    public String toString() {
        return this.description;
    }

    CharMatcher withToString(String str) {
        throw new UnsupportedOperationException();
    }
}
