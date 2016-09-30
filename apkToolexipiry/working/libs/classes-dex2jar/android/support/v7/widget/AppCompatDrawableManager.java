package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.LayerDrawable;
import android.os.Build.VERSION;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.graphics.drawable.AnimatedVectorDrawableCompat;
import android.support.graphics.drawable.VectorDrawableCompat;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.ColorUtils;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.LongSparseArray;
import android.support.v4.util.LruCache;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.util.Xml;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class AppCompatDrawableManager {
    private static final int[] COLORFILTER_COLOR_BACKGROUND_MULTIPLY;
    private static final int[] COLORFILTER_COLOR_CONTROL_ACTIVATED;
    private static final int[] COLORFILTER_TINT_COLOR_CONTROL_NORMAL;
    private static final ColorFilterLruCache COLOR_FILTER_CACHE;
    private static final boolean DEBUG = false;
    private static final Mode DEFAULT_MODE;
    private static AppCompatDrawableManager INSTANCE = null;
    private static final String PLATFORM_VD_CLAZZ = "android.graphics.drawable.VectorDrawable";
    private static final String SKIP_DRAWABLE_TAG = "appcompat_skip_skip";
    private static final String TAG = "AppCompatDrawableManager";
    private static final int[] TINT_CHECKABLE_BUTTON_LIST;
    private static final int[] TINT_COLOR_CONTROL_NORMAL;
    private static final int[] TINT_COLOR_CONTROL_STATE_LIST;
    private final Object mDelegateDrawableCacheLock;
    private final WeakHashMap<Context, LongSparseArray<WeakReference<ConstantState>>> mDelegateDrawableCaches;
    private ArrayMap<String, InflateDelegate> mDelegates;
    private boolean mHasCheckedVectorDrawableSetup;
    private SparseArray<String> mKnownDrawableIdTags;
    private WeakHashMap<Context, SparseArray<ColorStateList>> mTintLists;
    private TypedValue mTypedValue;

    private interface InflateDelegate {
        Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Theme theme);
    }

    private static class AvdcInflateDelegate implements InflateDelegate {
        private AvdcInflateDelegate() {
        }

        public Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Theme theme) {
            try {
                return AnimatedVectorDrawableCompat.createFromXmlInner(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Throwable e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                return null;
            }
        }
    }

    private static class ColorFilterLruCache extends LruCache<Integer, PorterDuffColorFilter> {
        public ColorFilterLruCache(int i) {
            super(i);
        }

        private static int generateCacheKey(int i, Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }

        PorterDuffColorFilter get(int i, Mode mode) {
            return (PorterDuffColorFilter) get(Integer.valueOf(generateCacheKey(i, mode)));
        }

        PorterDuffColorFilter put(int i, Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return (PorterDuffColorFilter) put(Integer.valueOf(generateCacheKey(i, mode)), porterDuffColorFilter);
        }
    }

    private static class VdcInflateDelegate implements InflateDelegate {
        private VdcInflateDelegate() {
        }

        public Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Theme theme) {
            try {
                return VectorDrawableCompat.createFromXmlInner(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Throwable e) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
                return null;
            }
        }
    }

    static {
        DEFAULT_MODE = Mode.SRC_IN;
        COLOR_FILTER_CACHE = new ColorFilterLruCache(6);
        COLORFILTER_TINT_COLOR_CONTROL_NORMAL = new int[]{R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};
        TINT_COLOR_CONTROL_NORMAL = new int[]{R.drawable.abc_ic_ab_back_mtrl_am_alpha, R.drawable.abc_ic_go_search_api_mtrl_alpha, R.drawable.abc_ic_search_api_mtrl_alpha, R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_ic_clear_mtrl_alpha, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha, R.drawable.abc_ic_menu_moreoverflow_mtrl_alpha, R.drawable.abc_ic_voice_search_api_mtrl_alpha};
        COLORFILTER_COLOR_CONTROL_ACTIVATED = new int[]{R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material};
        COLORFILTER_COLOR_BACKGROUND_MULTIPLY = new int[]{R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};
        TINT_COLOR_CONTROL_STATE_LIST = new int[]{R.drawable.abc_edit_text_material, R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material, R.drawable.abc_spinner_mtrl_am_alpha, R.drawable.abc_spinner_textfield_background_material, R.drawable.abc_ratingbar_full_material, R.drawable.abc_switch_track_mtrl_alpha, R.drawable.abc_switch_thumb_material, R.drawable.abc_btn_default_mtrl_shape, R.drawable.abc_btn_borderless_material};
        TINT_CHECKABLE_BUTTON_LIST = new int[]{R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material};
    }

    public AppCompatDrawableManager() {
        this.mDelegateDrawableCacheLock = new Object();
        this.mDelegateDrawableCaches = new WeakHashMap(0);
    }

    private boolean addCachedDelegateDrawable(@NonNull Context context, long j, @NonNull Drawable drawable) {
        ConstantState constantState = drawable.getConstantState();
        if (constantState == null) {
            return DEBUG;
        }
        synchronized (this.mDelegateDrawableCacheLock) {
            LongSparseArray longSparseArray = (LongSparseArray) this.mDelegateDrawableCaches.get(context);
            if (longSparseArray == null) {
                longSparseArray = new LongSparseArray();
                this.mDelegateDrawableCaches.put(context, longSparseArray);
            }
            longSparseArray.put(j, new WeakReference(constantState));
        }
        return true;
    }

    private void addDelegate(@NonNull String str, @NonNull InflateDelegate inflateDelegate) {
        if (this.mDelegates == null) {
            this.mDelegates = new ArrayMap();
        }
        this.mDelegates.put(str, inflateDelegate);
    }

    private void addTintListToCache(@NonNull Context context, @DrawableRes int i, @NonNull ColorStateList colorStateList) {
        if (this.mTintLists == null) {
            this.mTintLists = new WeakHashMap();
        }
        SparseArray sparseArray = (SparseArray) this.mTintLists.get(context);
        if (sparseArray == null) {
            sparseArray = new SparseArray();
            this.mTintLists.put(context, sparseArray);
        }
        sparseArray.append(i, colorStateList);
    }

    private static boolean arrayContains(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return DEBUG;
    }

    private ColorStateList createButtonColorStateList(Context context, int i) {
        r0 = new int[4][];
        r1 = new int[4];
        int themeAttrColor = ThemeUtils.getThemeAttrColor(context, i);
        int themeAttrColor2 = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlHighlight);
        r0[0] = ThemeUtils.DISABLED_STATE_SET;
        r1[0] = ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorButtonNormal);
        r0[1] = ThemeUtils.PRESSED_STATE_SET;
        r1[1] = ColorUtils.compositeColors(themeAttrColor2, themeAttrColor);
        r0[2] = ThemeUtils.FOCUSED_STATE_SET;
        r1[2] = ColorUtils.compositeColors(themeAttrColor2, themeAttrColor);
        r0[3] = ThemeUtils.EMPTY_STATE_SET;
        r1[3] = themeAttrColor;
        return new ColorStateList(r0, r1);
    }

    private ColorStateList createCheckableButtonColorStateList(Context context) {
        r0 = new int[3][];
        int[] iArr = new int[]{ThemeUtils.DISABLED_STATE_SET, ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorControlNormal), ThemeUtils.CHECKED_STATE_SET};
        iArr[1] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated);
        r0[2] = ThemeUtils.EMPTY_STATE_SET;
        iArr[2] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlNormal);
        return new ColorStateList(r0, iArr);
    }

    private ColorStateList createColoredButtonColorStateList(Context context) {
        return createButtonColorStateList(context, R.attr.colorAccent);
    }

    private ColorStateList createDefaultButtonColorStateList(Context context) {
        return createButtonColorStateList(context, R.attr.colorButtonNormal);
    }

    private ColorStateList createDefaultColorStateList(Context context) {
        int themeAttrColor = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlNormal);
        int themeAttrColor2 = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated);
        r2 = new int[7][];
        int[] iArr = new int[]{ThemeUtils.DISABLED_STATE_SET, ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorControlNormal), ThemeUtils.FOCUSED_STATE_SET, themeAttrColor2, ThemeUtils.ACTIVATED_STATE_SET, themeAttrColor2, ThemeUtils.PRESSED_STATE_SET};
        iArr[3] = themeAttrColor2;
        r2[4] = ThemeUtils.CHECKED_STATE_SET;
        iArr[4] = themeAttrColor2;
        r2[5] = ThemeUtils.SELECTED_STATE_SET;
        iArr[5] = themeAttrColor2;
        r2[6] = ThemeUtils.EMPTY_STATE_SET;
        iArr[6] = themeAttrColor;
        return new ColorStateList(r2, iArr);
    }

    private ColorStateList createEditTextColorStateList(Context context) {
        r0 = new int[3][];
        int[] iArr = new int[]{ThemeUtils.DISABLED_STATE_SET, ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorControlNormal), ThemeUtils.NOT_PRESSED_OR_FOCUSED_STATE_SET};
        iArr[1] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlNormal);
        r0[2] = ThemeUtils.EMPTY_STATE_SET;
        iArr[2] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated);
        return new ColorStateList(r0, iArr);
    }

    private ColorStateList createSeekbarThumbColorStateList(Context context) {
        r0 = new int[2][];
        int[] iArr = new int[]{ThemeUtils.DISABLED_STATE_SET, ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorControlActivated)};
        r0[1] = ThemeUtils.EMPTY_STATE_SET;
        iArr[1] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated);
        return new ColorStateList(r0, iArr);
    }

    private ColorStateList createSpinnerColorStateList(Context context) {
        r0 = new int[3][];
        int[] iArr = new int[]{ThemeUtils.DISABLED_STATE_SET, ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorControlNormal), ThemeUtils.NOT_PRESSED_OR_FOCUSED_STATE_SET};
        iArr[1] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlNormal);
        r0[2] = ThemeUtils.EMPTY_STATE_SET;
        iArr[2] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated);
        return new ColorStateList(r0, iArr);
    }

    private ColorStateList createSwitchThumbColorStateList(Context context) {
        int[][] iArr = new int[3][];
        int[] iArr2 = new int[3];
        ColorStateList themeAttrColorStateList = ThemeUtils.getThemeAttrColorStateList(context, R.attr.colorSwitchThumbNormal);
        if (themeAttrColorStateList == null || !themeAttrColorStateList.isStateful()) {
            iArr[0] = ThemeUtils.DISABLED_STATE_SET;
            iArr2[0] = ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorSwitchThumbNormal);
            iArr[1] = ThemeUtils.CHECKED_STATE_SET;
            iArr2[1] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated);
            iArr[2] = ThemeUtils.EMPTY_STATE_SET;
            iArr2[2] = ThemeUtils.getThemeAttrColor(context, R.attr.colorSwitchThumbNormal);
        } else {
            iArr[0] = ThemeUtils.DISABLED_STATE_SET;
            iArr2[0] = themeAttrColorStateList.getColorForState(iArr[0], 0);
            iArr[1] = ThemeUtils.CHECKED_STATE_SET;
            iArr2[1] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated);
            iArr[2] = ThemeUtils.EMPTY_STATE_SET;
            iArr2[2] = themeAttrColorStateList.getDefaultColor();
        }
        return new ColorStateList(iArr, iArr2);
    }

    private ColorStateList createSwitchTrackColorStateList(Context context) {
        r0 = new int[3][];
        int[] iArr = new int[]{ThemeUtils.DISABLED_STATE_SET, ThemeUtils.getThemeAttrColor(context, 16842800, 0.1f), ThemeUtils.CHECKED_STATE_SET};
        iArr[1] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated, 0.3f);
        r0[2] = ThemeUtils.EMPTY_STATE_SET;
        iArr[2] = ThemeUtils.getThemeAttrColor(context, 16842800, 0.3f);
        return new ColorStateList(r0, iArr);
    }

    private static PorterDuffColorFilter createTintFilter(ColorStateList colorStateList, Mode mode, int[] iArr) {
        return (colorStateList == null || mode == null) ? null : getPorterDuffColorFilter(colorStateList.getColorForState(iArr, 0), mode);
    }

    public static AppCompatDrawableManager get() {
        if (INSTANCE == null) {
            INSTANCE = new AppCompatDrawableManager();
            installDefaultInflateDelegates(INSTANCE);
        }
        return INSTANCE;
    }

    private Drawable getCachedDelegateDrawable(@NonNull Context context, long j) {
        synchronized (this.mDelegateDrawableCacheLock) {
            LongSparseArray longSparseArray = (LongSparseArray) this.mDelegateDrawableCaches.get(context);
            if (longSparseArray == null) {
                return null;
            }
            WeakReference weakReference = (WeakReference) longSparseArray.get(j);
            if (weakReference != null) {
                ConstantState constantState = (ConstantState) weakReference.get();
                if (constantState != null) {
                    Drawable newDrawable = constantState.newDrawable(context.getResources());
                    return newDrawable;
                }
                longSparseArray.delete(j);
            }
            return null;
        }
    }

    public static PorterDuffColorFilter getPorterDuffColorFilter(int i, Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter = COLOR_FILTER_CACHE.get(i, mode);
        if (porterDuffColorFilter != null) {
            return porterDuffColorFilter;
        }
        porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
        COLOR_FILTER_CACHE.put(i, mode, porterDuffColorFilter);
        return porterDuffColorFilter;
    }

    private ColorStateList getTintListFromCache(@NonNull Context context, @DrawableRes int i) {
        if (this.mTintLists != null) {
            SparseArray sparseArray = (SparseArray) this.mTintLists.get(context);
            if (sparseArray != null) {
                return (ColorStateList) sparseArray.get(i);
            }
        }
        return null;
    }

    private static void installDefaultInflateDelegates(@NonNull AppCompatDrawableManager appCompatDrawableManager) {
        int i = VERSION.SDK_INT;
        if (i < 21) {
            appCompatDrawableManager.addDelegate("vector", new VdcInflateDelegate());
            if (i >= 11) {
                appCompatDrawableManager.addDelegate("animated-vector", new AvdcInflateDelegate());
            }
        }
    }

    private static boolean isVectorDrawable(@NonNull Drawable drawable) {
        return ((drawable instanceof VectorDrawableCompat) || PLATFORM_VD_CLAZZ.equals(drawable.getClass().getName())) ? true : DEBUG;
    }

    private Drawable loadDrawableFromDelegates(@NonNull Context context, @DrawableRes int i) {
        if (this.mDelegates == null || this.mDelegates.isEmpty()) {
            return null;
        }
        String str;
        if (this.mKnownDrawableIdTags != null) {
            str = (String) this.mKnownDrawableIdTags.get(i);
            if (SKIP_DRAWABLE_TAG.equals(str) || (str != null && this.mDelegates.get(str) == null)) {
                return null;
            }
        }
        this.mKnownDrawableIdTags = new SparseArray();
        if (this.mTypedValue == null) {
            this.mTypedValue = new TypedValue();
        }
        TypedValue typedValue = this.mTypedValue;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        long j = (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
        Drawable cachedDelegateDrawable = getCachedDelegateDrawable(context, j);
        if (cachedDelegateDrawable != null) {
            return cachedDelegateDrawable;
        }
        Drawable drawable;
        if (typedValue.string != null && typedValue.string.toString().endsWith(".xml")) {
            try {
                int next;
                XmlPullParser xml = resources.getXml(i);
                AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                str = xml.getName();
                this.mKnownDrawableIdTags.append(i, str);
                InflateDelegate inflateDelegate = (InflateDelegate) this.mDelegates.get(str);
                if (inflateDelegate != null) {
                    cachedDelegateDrawable = inflateDelegate.createFromXmlInner(context, xml, asAttributeSet, context.getTheme());
                }
                if (cachedDelegateDrawable != null) {
                    cachedDelegateDrawable.setChangingConfigurations(typedValue.changingConfigurations);
                    if (addCachedDelegateDrawable(context, j, cachedDelegateDrawable)) {
                        drawable = cachedDelegateDrawable;
                        if (drawable == null) {
                            return drawable;
                        }
                        this.mKnownDrawableIdTags.append(i, SKIP_DRAWABLE_TAG);
                        return drawable;
                    }
                }
            } catch (Throwable e) {
                Log.e(TAG, "Exception while inflating drawable", e);
            }
        }
        drawable = cachedDelegateDrawable;
        if (drawable == null) {
            return drawable;
        }
        this.mKnownDrawableIdTags.append(i, SKIP_DRAWABLE_TAG);
        return drawable;
    }

    private void removeDelegate(@NonNull String str, @NonNull InflateDelegate inflateDelegate) {
        if (this.mDelegates != null && this.mDelegates.get(str) == inflateDelegate) {
            this.mDelegates.remove(str);
        }
    }

    private static void setPorterDuffColorFilter(Drawable drawable, int i, Mode mode) {
        if (DrawableUtils.canSafelyMutateDrawable(drawable)) {
            drawable = drawable.mutate();
        }
        if (mode == null) {
            mode = DEFAULT_MODE;
        }
        drawable.setColorFilter(getPorterDuffColorFilter(i, mode));
    }

    private Drawable tintDrawable(@NonNull Context context, @DrawableRes int i, boolean z, @NonNull Drawable drawable) {
        ColorStateList tintList = getTintList(context, i);
        if (tintList != null) {
            if (DrawableUtils.canSafelyMutateDrawable(drawable)) {
                drawable = drawable.mutate();
            }
            drawable = DrawableCompat.wrap(drawable);
            DrawableCompat.setTintList(drawable, tintList);
            Mode tintMode = getTintMode(i);
            if (tintMode == null) {
                return drawable;
            }
            DrawableCompat.setTintMode(drawable, tintMode);
            return drawable;
        } else if (i == R.drawable.abc_cab_background_top_material) {
            return new LayerDrawable(new Drawable[]{getDrawable(context, R.drawable.abc_cab_background_internal_bg), getDrawable(context, R.drawable.abc_cab_background_top_mtrl_alpha)});
        } else if (i == R.drawable.abc_seekbar_track_material) {
            r0 = (LayerDrawable) drawable;
            setPorterDuffColorFilter(r0.findDrawableByLayerId(16908288), ThemeUtils.getThemeAttrColor(context, R.attr.colorControlNormal), DEFAULT_MODE);
            setPorterDuffColorFilter(r0.findDrawableByLayerId(16908303), ThemeUtils.getThemeAttrColor(context, R.attr.colorControlNormal), DEFAULT_MODE);
            setPorterDuffColorFilter(r0.findDrawableByLayerId(16908301), ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated), DEFAULT_MODE);
            return drawable;
        } else if (i != R.drawable.abc_ratingbar_indicator_material && i != R.drawable.abc_ratingbar_small_material) {
            return (tintDrawableUsingColorFilter(context, i, drawable) || !z) ? drawable : null;
        } else {
            r0 = (LayerDrawable) drawable;
            setPorterDuffColorFilter(r0.findDrawableByLayerId(16908288), ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorControlNormal), DEFAULT_MODE);
            setPorterDuffColorFilter(r0.findDrawableByLayerId(16908303), ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated), DEFAULT_MODE);
            setPorterDuffColorFilter(r0.findDrawableByLayerId(16908301), ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated), DEFAULT_MODE);
            return drawable;
        }
    }

    public static void tintDrawable(Drawable drawable, TintInfo tintInfo, int[] iArr) {
        if (!DrawableUtils.canSafelyMutateDrawable(drawable) || drawable.mutate() == drawable) {
            if (tintInfo.mHasTintList || tintInfo.mHasTintMode) {
                drawable.setColorFilter(createTintFilter(tintInfo.mHasTintList ? tintInfo.mTintList : null, tintInfo.mHasTintMode ? tintInfo.mTintMode : DEFAULT_MODE, iArr));
            } else {
                drawable.clearColorFilter();
            }
            if (VERSION.SDK_INT <= 23) {
                drawable.invalidateSelf();
                return;
            }
            return;
        }
        Log.d(TAG, "Mutated drawable is not the same instance as the input.");
    }

    private static boolean tintDrawableUsingColorFilter(@NonNull Context context, @DrawableRes int i, @NonNull Drawable drawable) {
        boolean z;
        int i2;
        int i3;
        Mode mode = DEFAULT_MODE;
        if (arrayContains(COLORFILTER_TINT_COLOR_CONTROL_NORMAL, i)) {
            z = true;
            i2 = R.attr.colorControlNormal;
            i3 = -1;
        } else if (arrayContains(COLORFILTER_COLOR_CONTROL_ACTIVATED, i)) {
            z = true;
            i2 = R.attr.colorControlActivated;
            i3 = -1;
        } else if (arrayContains(COLORFILTER_COLOR_BACKGROUND_MULTIPLY, i)) {
            mode = Mode.MULTIPLY;
            z = true;
            i2 = 16842801;
            i3 = -1;
        } else if (i == R.drawable.abc_list_divider_mtrl_alpha) {
            i3 = Math.round(40.8f);
            i2 = 16842800;
            z = true;
        } else {
            i3 = -1;
            z = false;
            i2 = 0;
        }
        if (!z) {
            return DEBUG;
        }
        if (DrawableUtils.canSafelyMutateDrawable(drawable)) {
            drawable = drawable.mutate();
        }
        drawable.setColorFilter(getPorterDuffColorFilter(ThemeUtils.getThemeAttrColor(context, i2), mode));
        if (i3 == -1) {
            return true;
        }
        drawable.setAlpha(i3);
        return true;
    }

    public Drawable getDrawable(@NonNull Context context, @DrawableRes int i) {
        return getDrawable(context, i, DEBUG);
    }

    public Drawable getDrawable(@NonNull Context context, @DrawableRes int i, boolean z) {
        Drawable loadDrawableFromDelegates = loadDrawableFromDelegates(context, i);
        if (loadDrawableFromDelegates == null) {
            loadDrawableFromDelegates = ContextCompat.getDrawable(context, i);
        }
        if (loadDrawableFromDelegates != null) {
            loadDrawableFromDelegates = tintDrawable(context, i, z, loadDrawableFromDelegates);
        }
        if (loadDrawableFromDelegates != null) {
            DrawableUtils.fixDrawable(loadDrawableFromDelegates);
        }
        return loadDrawableFromDelegates;
    }

    public final ColorStateList getTintList(@NonNull Context context, @DrawableRes int i) {
        ColorStateList tintListFromCache = getTintListFromCache(context, i);
        if (tintListFromCache == null) {
            if (i == R.drawable.abc_edit_text_material) {
                tintListFromCache = createEditTextColorStateList(context);
            } else if (i == R.drawable.abc_switch_track_mtrl_alpha) {
                tintListFromCache = createSwitchTrackColorStateList(context);
            } else if (i == R.drawable.abc_switch_thumb_material) {
                tintListFromCache = createSwitchThumbColorStateList(context);
            } else if (i == R.drawable.abc_btn_default_mtrl_shape || i == R.drawable.abc_btn_borderless_material) {
                tintListFromCache = createDefaultButtonColorStateList(context);
            } else if (i == R.drawable.abc_btn_colored_material) {
                tintListFromCache = createColoredButtonColorStateList(context);
            } else if (i == R.drawable.abc_spinner_mtrl_am_alpha || i == R.drawable.abc_spinner_textfield_background_material) {
                tintListFromCache = createSpinnerColorStateList(context);
            } else if (arrayContains(TINT_COLOR_CONTROL_NORMAL, i)) {
                tintListFromCache = ThemeUtils.getThemeAttrColorStateList(context, R.attr.colorControlNormal);
            } else if (arrayContains(TINT_COLOR_CONTROL_STATE_LIST, i)) {
                tintListFromCache = createDefaultColorStateList(context);
            } else if (arrayContains(TINT_CHECKABLE_BUTTON_LIST, i)) {
                tintListFromCache = createCheckableButtonColorStateList(context);
            } else if (i == R.drawable.abc_seekbar_thumb_material) {
                tintListFromCache = createSeekbarThumbColorStateList(context);
            }
            if (tintListFromCache != null) {
                addTintListToCache(context, i, tintListFromCache);
            }
        }
        return tintListFromCache;
    }

    final Mode getTintMode(int i) {
        return i == R.drawable.abc_switch_thumb_material ? Mode.MULTIPLY : null;
    }

    public final Drawable onDrawableLoadedFromResources(@NonNull Context context, @NonNull TintResources tintResources, @DrawableRes int i) {
        Drawable loadDrawableFromDelegates = loadDrawableFromDelegates(context, i);
        if (loadDrawableFromDelegates == null) {
            loadDrawableFromDelegates = tintResources.superGetDrawable(i);
        }
        return loadDrawableFromDelegates != null ? tintDrawable(context, i, DEBUG, loadDrawableFromDelegates) : null;
    }
}
