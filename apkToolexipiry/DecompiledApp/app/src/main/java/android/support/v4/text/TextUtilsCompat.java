package android.support.v4.text;

import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

import com.squareup.leakcanary.watcher.BuildConfig;
import java.util.Locale;

public final class TextUtilsCompat {
    private static String ARAB_SCRIPT_SUBTAG;
    private static String HEBR_SCRIPT_SUBTAG;
    private static final TextUtilsCompatImpl IMPL;
    public static final Locale ROOT;

    private static class TextUtilsCompatImpl {
        private TextUtilsCompatImpl() {
        }

        private static int getLayoutDirectionFromFirstChar(@NonNull Locale locale) {
            switch (Character.getDirectionality(locale.getDisplayName(locale).charAt(0))) {
                case R.styleable.WaitingDots_period /*1*/:
                case R.styleable.WaitingDots_jumpHeight /*2*/:
                    return 1;
                default:
                    return 0;
            }
        }

        public int getLayoutDirectionFromLocale(@Nullable Locale locale) {
            if (!(locale == null || locale.equals(TextUtilsCompat.ROOT))) {
                String maximizeAndGetScript = ICUCompat.maximizeAndGetScript(locale);
                if (maximizeAndGetScript == null) {
                    return getLayoutDirectionFromFirstChar(locale);
                }
                if (maximizeAndGetScript.equalsIgnoreCase(TextUtilsCompat.ARAB_SCRIPT_SUBTAG) || maximizeAndGetScript.equalsIgnoreCase(TextUtilsCompat.HEBR_SCRIPT_SUBTAG)) {
                    return 1;
                }
            }
            return 0;
        }

        @NonNull
        public String htmlEncode(@NonNull String str) {
            StringBuilder stringBuilder = new StringBuilder();
            for (int i = 0; i < str.length(); i++) {
                char charAt = str.charAt(i);
                switch (charAt) {
                    case R.styleable.AppCompatTheme_actionModePasteDrawable /*34*/:
                        stringBuilder.append("&quot;");
                        break;
                    case R.styleable.AppCompatTheme_actionModeWebSearchDrawable /*38*/:
                        stringBuilder.append("&amp;");
                        break;
                    case R.styleable.AppCompatTheme_actionModePopupWindowStyle /*39*/:
                        stringBuilder.append("&#39;");
                        break;
                    case R.styleable.AppCompatTheme_popupMenuStyle /*60*/:
                        stringBuilder.append("&lt;");
                        break;
                    case R.styleable.AppCompatTheme_editTextColor /*62*/:
                        stringBuilder.append("&gt;");
                        break;
                    default:
                        stringBuilder.append(charAt);
                        break;
                }
            }
            return stringBuilder.toString();
        }
    }

    private static class TextUtilsCompatJellybeanMr1Impl extends TextUtilsCompatImpl {
        private TextUtilsCompatJellybeanMr1Impl() {
            super();
        }

        public int getLayoutDirectionFromLocale(@Nullable Locale locale) {
            return TextUtilsCompatJellybeanMr1.getLayoutDirectionFromLocale(locale);
        }

        @NonNull
        public String htmlEncode(@NonNull String str) {
            return TextUtilsCompatJellybeanMr1.htmlEncode(str);
        }
    }

    static {
        if (VERSION.SDK_INT >= 17) {
            IMPL = new TextUtilsCompatJellybeanMr1Impl();
        } else {
            IMPL = new TextUtilsCompatImpl();
        }
        ROOT = new Locale(BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME);
        ARAB_SCRIPT_SUBTAG = "Arab";
        HEBR_SCRIPT_SUBTAG = "Hebr";
    }

    private TextUtilsCompat() {
    }

    public static int getLayoutDirectionFromLocale(@Nullable Locale locale) {
        return IMPL.getLayoutDirectionFromLocale(locale);
    }

    @NonNull
    public static String htmlEncode(@NonNull String str) {
        return IMPL.htmlEncode(str);
    }
}
