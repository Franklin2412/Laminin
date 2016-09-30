package android.support.v7.widget;

import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.DrawableContainer.DrawableContainerState;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.graphics.drawable.DrawableWrapper;
import android.util.Log;

import com.squareup.haha.perflib.StackFrame;
import java.lang.reflect.Field;

class DrawableUtils {
    public static final Rect INSETS_NONE;
    private static final String TAG = "DrawableUtils";
    private static final String VECTOR_DRAWABLE_CLAZZ_NAME = "android.graphics.drawable.VectorDrawable";
    private static Class<?> sInsetsClazz;

    static {
        INSETS_NONE = new Rect();
        if (VERSION.SDK_INT >= 18) {
            try {
                sInsetsClazz = Class.forName("android.graphics.Insets");
            } catch (ClassNotFoundException e) {
            }
        }
    }

    private DrawableUtils() {
    }

    static boolean canSafelyMutateDrawable(@NonNull Drawable drawable) {
        if (drawable instanceof LayerDrawable) {
            if (VERSION.SDK_INT < 16) {
                return false;
            }
        } else if (drawable instanceof InsetDrawable) {
            if (VERSION.SDK_INT < 14) {
                return false;
            }
        } else if (drawable instanceof StateListDrawable) {
            if (VERSION.SDK_INT < 8) {
                return false;
            }
        } else if (drawable instanceof GradientDrawable) {
            if (VERSION.SDK_INT < 14) {
                return false;
            }
        } else if (drawable instanceof DrawableContainer) {
            ConstantState constantState = drawable.getConstantState();
            if (constantState instanceof DrawableContainerState) {
                for (Drawable canSafelyMutateDrawable : ((DrawableContainerState) constantState).getChildren()) {
                    if (!canSafelyMutateDrawable(canSafelyMutateDrawable)) {
                        return false;
                    }
                }
            }
        } else if (drawable instanceof DrawableWrapper) {
            return canSafelyMutateDrawable(((DrawableWrapper) drawable).getWrappedDrawable());
        } else {
            if (drawable instanceof android.support.v7.graphics.drawable.DrawableWrapper) {
                return canSafelyMutateDrawable(((android.support.v7.graphics.drawable.DrawableWrapper) drawable).getWrappedDrawable());
            }
        }
        return true;
    }

    static void fixDrawable(@NonNull Drawable drawable) {
        if (VERSION.SDK_INT == 21 && VECTOR_DRAWABLE_CLAZZ_NAME.equals(drawable.getClass().getName())) {
            fixVectorDrawableTinting(drawable);
        }
    }

    private static void fixVectorDrawableTinting(Drawable drawable) {
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(ThemeUtils.CHECKED_STATE_SET);
        } else {
            drawable.setState(ThemeUtils.EMPTY_STATE_SET);
        }
        drawable.setState(state);
    }

    public static Rect getOpticalBounds(Drawable drawable) {
        if (sInsetsClazz != null) {
            Drawable unwrap = DrawableCompat.unwrap(drawable);
            Object invoke = unwrap.getClass().getMethod("getOpticalInsets", new Class[0]).invoke(unwrap, new Object[0]);
            if (invoke != null) {
                Rect rect = new Rect();
                Field[] fields = sInsetsClazz.getFields();
                int length = fields.length;
                int i = 0;
                while (i < length) {
                    Field field = fields[i];
                    try {
                        String name = field.getName();
                        Object obj = -1;
                        switch (name.hashCode()) {
                            case -1383228885:
                                if (name.equals("bottom")) {
                                    obj = 3;
                                    break;
                                }
                                break;
                            case 115029:
                                if (name.equals("top")) {
                                    obj = 1;
                                    break;
                                }
                                break;
                            case 3317767:
                                if (name.equals("left")) {
                                    obj = null;
                                    break;
                                }
                                break;
                            case 108511772:
                                if (name.equals("right")) {
                                    obj = 2;
                                    break;
                                }
                                break;
                        }
                        switch (obj) {
                            case StackFrame.NO_LINE_NUMBER /*0*/:
                                rect.left = field.getInt(invoke);
                                break;
                            case R.styleable.WaitingDots_period /*1*/:
                                rect.top = field.getInt(invoke);
                                break;
                            case R.styleable.WaitingDots_jumpHeight /*2*/:
                                rect.right = field.getInt(invoke);
                                break;
                            case R.styleable.WaitingDots_autoplay /*3*/:
                                rect.bottom = field.getInt(invoke);
                                break;
                            default:
                                break;
                        }
                        i++;
                    } catch (Exception e) {
                        Log.e(TAG, "Couldn't obtain the optical insets. Ignoring.");
                    }
                }
                return rect;
            }
        }
        return INSETS_NONE;
    }

    static Mode parseTintMode(int i, Mode mode) {
        switch (i) {
            case R.styleable.WaitingDots_autoplay /*3*/:
                return Mode.SRC_OVER;
            case R.styleable.ViewPagerIndicator_vpiUnderlinePageIndicatorStyle /*5*/:
                return Mode.SRC_IN;
            case R.styleable.Toolbar_popupTheme /*9*/:
                return Mode.SRC_ATOP;
            case R.styleable.Toolbar_titleMarginEnd /*14*/:
                return Mode.MULTIPLY;
            case R.styleable.Toolbar_titleMarginTop /*15*/:
                return Mode.SCREEN;
            case R.styleable.Toolbar_titleMarginBottom /*16*/:
                return VERSION.SDK_INT >= 11 ? Mode.valueOf("ADD") : mode;
            default:
                return mode;
        }
    }
}
