package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.InputDeviceCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class LinearLayoutCompat extends ViewGroup {
    public static final int HORIZONTAL = 0;
    private static final int INDEX_BOTTOM = 2;
    private static final int INDEX_CENTER_VERTICAL = 0;
    private static final int INDEX_FILL = 3;
    private static final int INDEX_TOP = 1;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_GRAVITY_COUNT = 4;
    private boolean mBaselineAligned;
    private int mBaselineAlignedChildIndex;
    private int mBaselineChildTop;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;
    private int mGravity;
    private int[] mMaxAscent;
    private int[] mMaxDescent;
    private int mOrientation;
    private int mShowDividers;
    private int mTotalLength;
    private boolean mUseLargestChild;
    private float mWeightSum;

    public static class LayoutParams extends MarginLayoutParams {
        public int gravity;
        public float weight;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.gravity = -1;
            this.weight = 0.0f;
        }

        public LayoutParams(int i, int i2, float f) {
            super(i, i2);
            this.gravity = -1;
            this.weight = f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.LinearLayoutCompat_Layout);
            this.weight = obtainStyledAttributes.getFloat(R.styleable.LinearLayoutCompat_Layout_android_layout_weight, 0.0f);
            this.gravity = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_Layout_android_layout_gravity, -1);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = -1;
            this.weight = layoutParams.weight;
            this.gravity = layoutParams.gravity;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = -1;
        }

        public LayoutParams(MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.gravity = -1;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface DividerMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OrientationMode {
    }

    public LinearLayoutCompat(Context context) {
        this(context, null);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, SHOW_DIVIDER_NONE);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = SHOW_DIVIDER_NONE;
        this.mGravity = 8388659;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.LinearLayoutCompat, i, SHOW_DIVIDER_NONE);
        int i2 = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_orientation, -1);
        if (i2 >= 0) {
            setOrientation(i2);
        }
        i2 = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_gravity, -1);
        if (i2 >= 0) {
            setGravity(i2);
        }
        boolean z = obtainStyledAttributes.getBoolean(R.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!z) {
            setBaselineAligned(z);
        }
        this.mWeightSum = obtainStyledAttributes.getFloat(R.styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.mBaselineAlignedChildIndex = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.mUseLargestChild = obtainStyledAttributes.getBoolean(R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(obtainStyledAttributes.getDrawable(R.styleable.LinearLayoutCompat_divider));
        this.mShowDividers = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_showDividers, SHOW_DIVIDER_NONE);
        this.mDividerPadding = obtainStyledAttributes.getDimensionPixelSize(R.styleable.LinearLayoutCompat_dividerPadding, SHOW_DIVIDER_NONE);
        obtainStyledAttributes.recycle();
    }

    private void forceUniformHeight(int i, int i2) {
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i3 = SHOW_DIVIDER_NONE; i3 < i; i3 += VERTICAL) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (layoutParams.height == -1) {
                    int i4 = layoutParams.width;
                    layoutParams.width = virtualChildAt.getMeasuredWidth();
                    measureChildWithMargins(virtualChildAt, i2, SHOW_DIVIDER_NONE, makeMeasureSpec, SHOW_DIVIDER_NONE);
                    layoutParams.width = i4;
                }
            }
        }
    }

    private void forceUniformWidth(int i, int i2) {
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = SHOW_DIVIDER_NONE; i3 < i; i3 += VERTICAL) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (layoutParams.width == -1) {
                    int i4 = layoutParams.height;
                    layoutParams.height = virtualChildAt.getMeasuredHeight();
                    measureChildWithMargins(virtualChildAt, makeMeasureSpec, SHOW_DIVIDER_NONE, i2, SHOW_DIVIDER_NONE);
                    layoutParams.height = i4;
                }
            }
        }
    }

    private void setChildFrame(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i + i3, i2 + i4);
    }

    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    void drawDividersHorizontal(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        int i = SHOW_DIVIDER_NONE;
        while (i < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(i);
            if (!(virtualChildAt == null || virtualChildAt.getVisibility() == 8 || !hasDividerBeforeChildAt(i))) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                drawVerticalDivider(canvas, isLayoutRtl ? layoutParams.rightMargin + virtualChildAt.getRight() : (virtualChildAt.getLeft() - layoutParams.leftMargin) - this.mDividerWidth);
            }
            i += VERTICAL;
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            int paddingLeft;
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 == null) {
                paddingLeft = isLayoutRtl ? getPaddingLeft() : (getWidth() - getPaddingRight()) - this.mDividerWidth;
            } else {
                layoutParams = (LayoutParams) virtualChildAt2.getLayoutParams();
                paddingLeft = isLayoutRtl ? (virtualChildAt2.getLeft() - layoutParams.leftMargin) - this.mDividerWidth : layoutParams.rightMargin + virtualChildAt2.getRight();
            }
            drawVerticalDivider(canvas, paddingLeft);
        }
    }

    void drawDividersVertical(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        int i = SHOW_DIVIDER_NONE;
        while (i < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(i);
            if (!(virtualChildAt == null || virtualChildAt.getVisibility() == 8 || !hasDividerBeforeChildAt(i))) {
                drawHorizontalDivider(canvas, (virtualChildAt.getTop() - ((LayoutParams) virtualChildAt.getLayoutParams()).topMargin) - this.mDividerHeight);
            }
            i += VERTICAL;
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            int height;
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 == null) {
                height = (getHeight() - getPaddingBottom()) - this.mDividerHeight;
            } else {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt2.getLayoutParams();
                height = layoutParams.bottomMargin + virtualChildAt2.getBottom();
            }
            drawHorizontalDivider(canvas, height);
        }
    }

    void drawHorizontalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, i, (getWidth() - getPaddingRight()) - this.mDividerPadding, this.mDividerHeight + i);
        this.mDivider.draw(canvas);
    }

    void drawVerticalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(i, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + i, (getHeight() - getPaddingBottom()) - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return this.mOrientation == 0 ? new LayoutParams(-2, -2) : this.mOrientation == VERTICAL ? new LayoutParams(-1, -2) : null;
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    protected LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public int getBaseline() {
        if (this.mBaselineAlignedChildIndex < 0) {
            return super.getBaseline();
        }
        if (getChildCount() <= this.mBaselineAlignedChildIndex) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(this.mBaselineAlignedChildIndex);
        int baseline = childAt.getBaseline();
        if (baseline != -1) {
            int i;
            int i2 = this.mBaselineChildTop;
            if (this.mOrientation == VERTICAL) {
                i = this.mGravity & 112;
                if (i != 48) {
                    switch (i) {
                        case com.payu.testapp.R.styleable.Toolbar_titleMarginBottom /*16*/:
                            i = i2 + (((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.mTotalLength) / SHOW_DIVIDER_MIDDLE);
                            break;
                        case com.payu.testapp.R.styleable.AppCompatTheme_panelMenuListTheme /*80*/:
                            i = ((getBottom() - getTop()) - getPaddingBottom()) - this.mTotalLength;
                            break;
                        default:
                            i = i2;
                            break;
                    }
                    return (((LayoutParams) childAt.getLayoutParams()).topMargin + i) + baseline;
                }
            }
            i = i2;
            return (((LayoutParams) childAt.getLayoutParams()).topMargin + i) + baseline;
        } else if (this.mBaselineAlignedChildIndex == 0) {
            return -1;
        } else {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
    }

    public int getBaselineAlignedChildIndex() {
        return this.mBaselineAlignedChildIndex;
    }

    int getChildrenSkipCount(View view, int i) {
        return SHOW_DIVIDER_NONE;
    }

    public Drawable getDividerDrawable() {
        return this.mDivider;
    }

    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    int getLocationOffset(View view) {
        return SHOW_DIVIDER_NONE;
    }

    int getNextLocationOffset(View view) {
        return SHOW_DIVIDER_NONE;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public int getShowDividers() {
        return this.mShowDividers;
    }

    View getVirtualChildAt(int i) {
        return getChildAt(i);
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.mWeightSum;
    }

    protected boolean hasDividerBeforeChildAt(int i) {
        boolean z = true;
        if (i == 0) {
            if ((this.mShowDividers & VERTICAL) == 0) {
                return false;
            }
        } else if (i == getChildCount()) {
            if ((this.mShowDividers & VERTICAL_GRAVITY_COUNT) == 0) {
                return false;
            }
        } else if ((this.mShowDividers & SHOW_DIVIDER_MIDDLE) == 0) {
            return false;
        } else {
            for (int i2 = i - 1; i2 >= 0; i2--) {
                if (getChildAt(i2).getVisibility() != 8) {
                    break;
                }
            }
            z = false;
            return z;
        }
        return true;
    }

    public boolean isBaselineAligned() {
        return this.mBaselineAligned;
    }

    public boolean isMeasureWithLargestChildEnabled() {
        return this.mUseLargestChild;
    }

    void layoutHorizontal(int i, int i2, int i3, int i4) {
        int paddingLeft;
        int i5;
        int i6;
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        int paddingTop = getPaddingTop();
        int i7 = i4 - i2;
        int paddingBottom = getPaddingBottom();
        int paddingBottom2 = getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i8 = this.mGravity;
        int i9 = this.mGravity;
        boolean z = this.mBaselineAligned;
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        switch (GravityCompat.getAbsoluteGravity(i8 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK, ViewCompat.getLayoutDirection(this))) {
            case VERTICAL /*1*/:
                paddingLeft = getPaddingLeft() + (((i3 - i) - this.mTotalLength) / SHOW_DIVIDER_MIDDLE);
                break;
            case com.payu.testapp.R.styleable.ViewPagerIndicator_vpiUnderlinePageIndicatorStyle /*5*/:
                paddingLeft = ((getPaddingLeft() + i3) - i) - this.mTotalLength;
                break;
            default:
                paddingLeft = getPaddingLeft();
                break;
        }
        if (isLayoutRtl) {
            i5 = virtualChildCount - 1;
            i6 = -1;
        } else {
            i5 = SHOW_DIVIDER_NONE;
            i6 = VERTICAL;
        }
        int i10 = SHOW_DIVIDER_NONE;
        while (i10 < virtualChildCount) {
            int measureNullChild;
            int i11 = i5 + (i6 * i10);
            View virtualChildAt = getVirtualChildAt(i11);
            if (virtualChildAt == null) {
                measureNullChild = measureNullChild(i11) + paddingLeft;
                i8 = i10;
            } else if (virtualChildAt.getVisibility() != 8) {
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                int measuredHeight = virtualChildAt.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                i8 = (!z || layoutParams.height == -1) ? -1 : virtualChildAt.getBaseline();
                int i12 = layoutParams.gravity;
                if (i12 < 0) {
                    i12 = i9 & 112;
                }
                switch (i12 & 112) {
                    case com.payu.testapp.R.styleable.Toolbar_titleMarginBottom /*16*/:
                        i12 = ((((((i7 - paddingTop) - paddingBottom2) - measuredHeight) / SHOW_DIVIDER_MIDDLE) + paddingTop) + layoutParams.topMargin) - layoutParams.bottomMargin;
                        break;
                    case com.payu.testapp.R.styleable.AppCompatTheme_homeAsUpIndicator /*48*/:
                        i12 = layoutParams.topMargin + paddingTop;
                        if (i8 != -1) {
                            i12 += iArr[VERTICAL] - i8;
                            break;
                        }
                        break;
                    case com.payu.testapp.R.styleable.AppCompatTheme_panelMenuListTheme /*80*/:
                        i12 = ((i7 - paddingBottom) - measuredHeight) - layoutParams.bottomMargin;
                        if (i8 != -1) {
                            i12 -= iArr2[SHOW_DIVIDER_MIDDLE] - (virtualChildAt.getMeasuredHeight() - i8);
                            break;
                        }
                        break;
                    default:
                        i12 = paddingTop;
                        break;
                }
                if (hasDividerBeforeChildAt(i11)) {
                    paddingLeft += this.mDividerWidth;
                }
                int i13 = paddingLeft + layoutParams.leftMargin;
                setChildFrame(virtualChildAt, i13 + getLocationOffset(virtualChildAt), i12, measuredWidth, measuredHeight);
                i8 = getChildrenSkipCount(virtualChildAt, i11) + i10;
                measureNullChild = i13 + ((layoutParams.rightMargin + measuredWidth) + getNextLocationOffset(virtualChildAt));
            } else {
                i8 = i10;
                measureNullChild = paddingLeft;
            }
            i10 = i8 + VERTICAL;
            paddingLeft = measureNullChild;
        }
    }

    void layoutVertical(int i, int i2, int i3, int i4) {
        int paddingLeft = getPaddingLeft();
        int i5 = i3 - i;
        int paddingRight = getPaddingRight();
        int paddingRight2 = getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        int i6 = this.mGravity;
        int i7 = this.mGravity;
        switch (i6 & 112) {
            case com.payu.testapp.R.styleable.Toolbar_titleMarginBottom /*16*/:
                i6 = getPaddingTop() + (((i4 - i2) - this.mTotalLength) / SHOW_DIVIDER_MIDDLE);
                break;
            case com.payu.testapp.R.styleable.AppCompatTheme_panelMenuListTheme /*80*/:
                i6 = ((getPaddingTop() + i4) - i2) - this.mTotalLength;
                break;
            default:
                i6 = getPaddingTop();
                break;
        }
        int i8 = SHOW_DIVIDER_NONE;
        int i9 = i6;
        while (i8 < virtualChildCount) {
            int measureNullChild;
            View virtualChildAt = getVirtualChildAt(i8);
            if (virtualChildAt == null) {
                measureNullChild = measureNullChild(i8) + i9;
                i6 = i8;
            } else if (virtualChildAt.getVisibility() != 8) {
                int i10;
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                int measuredHeight = virtualChildAt.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                i6 = layoutParams.gravity;
                if (i6 < 0) {
                    i6 = GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK & i7;
                }
                switch (GravityCompat.getAbsoluteGravity(i6, ViewCompat.getLayoutDirection(this)) & 7) {
                    case VERTICAL /*1*/:
                        i10 = ((((((i5 - paddingLeft) - paddingRight2) - measuredWidth) / SHOW_DIVIDER_MIDDLE) + paddingLeft) + layoutParams.leftMargin) - layoutParams.rightMargin;
                        break;
                    case com.payu.testapp.R.styleable.ViewPagerIndicator_vpiUnderlinePageIndicatorStyle /*5*/:
                        i10 = ((i5 - paddingRight) - measuredWidth) - layoutParams.rightMargin;
                        break;
                    default:
                        i10 = paddingLeft + layoutParams.leftMargin;
                        break;
                }
                if (hasDividerBeforeChildAt(i8)) {
                    i9 += this.mDividerHeight;
                }
                int i11 = i9 + layoutParams.topMargin;
                setChildFrame(virtualChildAt, i10, i11 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                i6 = getChildrenSkipCount(virtualChildAt, i8) + i8;
                measureNullChild = i11 + ((layoutParams.bottomMargin + measuredHeight) + getNextLocationOffset(virtualChildAt));
            } else {
                i6 = i8;
                measureNullChild = i9;
            }
            i8 = i6 + VERTICAL;
            i9 = measureNullChild;
        }
    }

    void measureChildBeforeLayout(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    void measureHorizontal(int i, int i2) {
        int i3;
        int i4;
        Object obj;
        int baseline;
        int max;
        int i5;
        LayoutParams layoutParams;
        this.mTotalLength = SHOW_DIVIDER_NONE;
        int i6 = SHOW_DIVIDER_NONE;
        int i7 = SHOW_DIVIDER_NONE;
        int i8 = SHOW_DIVIDER_NONE;
        int i9 = SHOW_DIVIDER_NONE;
        Object obj2 = VERTICAL;
        float f = 0.0f;
        int virtualChildCount = getVirtualChildCount();
        int mode = MeasureSpec.getMode(i);
        int mode2 = MeasureSpec.getMode(i2);
        Object obj3 = null;
        Object obj4 = null;
        if (this.mMaxAscent == null || this.mMaxDescent == null) {
            this.mMaxAscent = new int[VERTICAL_GRAVITY_COUNT];
            this.mMaxDescent = new int[VERTICAL_GRAVITY_COUNT];
        }
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        iArr[INDEX_FILL] = -1;
        iArr[SHOW_DIVIDER_MIDDLE] = -1;
        iArr[VERTICAL] = -1;
        iArr[SHOW_DIVIDER_NONE] = -1;
        iArr2[INDEX_FILL] = -1;
        iArr2[SHOW_DIVIDER_MIDDLE] = -1;
        iArr2[VERTICAL] = -1;
        iArr2[SHOW_DIVIDER_NONE] = -1;
        boolean z = this.mBaselineAligned;
        boolean z2 = this.mUseLargestChild;
        Object obj5 = mode == 1073741824 ? VERTICAL : SHOW_DIVIDER_NONE;
        int i10 = RtlSpacingHelper.UNDEFINED;
        int i11 = SHOW_DIVIDER_NONE;
        while (i11 < virtualChildCount) {
            Object obj6;
            int i12;
            Object obj7;
            float f2;
            int i13;
            int i14;
            View virtualChildAt = getVirtualChildAt(i11);
            if (virtualChildAt == null) {
                this.mTotalLength += measureNullChild(i11);
                i3 = i10;
                obj6 = obj4;
                i4 = i9;
                obj = obj3;
                i12 = i7;
                obj7 = obj2;
                i10 = i8;
                f2 = f;
                i13 = i11;
                i11 = i6;
            } else if (virtualChildAt.getVisibility() == 8) {
                i11 += getChildrenSkipCount(virtualChildAt, i11);
                i3 = i10;
                obj6 = obj4;
                i4 = i9;
                obj = obj3;
                i12 = i7;
                obj7 = obj2;
                i10 = i8;
                f2 = f;
                i13 = i11;
                i11 = i6;
            } else {
                Object obj8;
                int i15;
                Object obj9;
                if (hasDividerBeforeChildAt(i11)) {
                    this.mTotalLength += this.mDividerWidth;
                }
                LayoutParams layoutParams2 = (LayoutParams) virtualChildAt.getLayoutParams();
                float f3 = f + layoutParams2.weight;
                if (mode == 1073741824 && layoutParams2.width == 0 && layoutParams2.weight > 0.0f) {
                    if (obj5 != null) {
                        this.mTotalLength += layoutParams2.leftMargin + layoutParams2.rightMargin;
                    } else {
                        i3 = this.mTotalLength;
                        this.mTotalLength = Math.max(i3, (layoutParams2.leftMargin + i3) + layoutParams2.rightMargin);
                    }
                    if (z) {
                        i3 = MeasureSpec.makeMeasureSpec(SHOW_DIVIDER_NONE, SHOW_DIVIDER_NONE);
                        virtualChildAt.measure(i3, i3);
                        i3 = i10;
                        obj8 = obj4;
                    } else {
                        i3 = i10;
                        obj8 = VERTICAL;
                    }
                } else {
                    i3 = RtlSpacingHelper.UNDEFINED;
                    if (layoutParams2.width == 0 && layoutParams2.weight > 0.0f) {
                        i3 = SHOW_DIVIDER_NONE;
                        layoutParams2.width = -2;
                    }
                    i15 = i3;
                    measureChildBeforeLayout(virtualChildAt, i11, i, f3 == 0.0f ? this.mTotalLength : SHOW_DIVIDER_NONE, i2, SHOW_DIVIDER_NONE);
                    if (i15 != Integer.MIN_VALUE) {
                        layoutParams2.width = i15;
                    }
                    i3 = virtualChildAt.getMeasuredWidth();
                    if (obj5 != null) {
                        this.mTotalLength += ((layoutParams2.leftMargin + i3) + layoutParams2.rightMargin) + getNextLocationOffset(virtualChildAt);
                    } else {
                        i13 = this.mTotalLength;
                        this.mTotalLength = Math.max(i13, (((i13 + i3) + layoutParams2.leftMargin) + layoutParams2.rightMargin) + getNextLocationOffset(virtualChildAt));
                    }
                    if (z2) {
                        i3 = Math.max(i3, i10);
                        obj8 = obj4;
                    } else {
                        i3 = i10;
                        obj8 = obj4;
                    }
                }
                if (mode2 == 1073741824 || layoutParams2.height != -1) {
                    obj = SHOW_DIVIDER_NONE;
                    obj9 = obj3;
                } else {
                    obj = VERTICAL;
                    obj9 = VERTICAL;
                }
                i15 = layoutParams2.topMargin + layoutParams2.bottomMargin;
                int measuredHeight = virtualChildAt.getMeasuredHeight() + i15;
                i10 = ViewUtils.combineMeasuredStates(i7, ViewCompat.getMeasuredState(virtualChildAt));
                if (z) {
                    baseline = virtualChildAt.getBaseline();
                    if (baseline != -1) {
                        i4 = ((((layoutParams2.gravity < 0 ? this.mGravity : layoutParams2.gravity) & 112) >> VERTICAL_GRAVITY_COUNT) & -2) >> VERTICAL;
                        iArr[i4] = Math.max(iArr[i4], baseline);
                        iArr2[i4] = Math.max(iArr2[i4], measuredHeight - baseline);
                    }
                }
                i4 = Math.max(i6, measuredHeight);
                obj4 = (obj2 == null || layoutParams2.height != -1) ? null : VERTICAL;
                if (layoutParams2.weight > 0.0f) {
                    max = Math.max(i9, obj != null ? i15 : measuredHeight);
                    i14 = i8;
                } else {
                    if (obj != null) {
                        measuredHeight = i15;
                    }
                    i14 = Math.max(i8, measuredHeight);
                    max = i9;
                }
                i11 += getChildrenSkipCount(virtualChildAt, i11);
                obj6 = obj8;
                i13 = i11;
                i11 = i4;
                i4 = max;
                obj = obj9;
                i12 = i10;
                i10 = i14;
                obj7 = obj4;
                f2 = f3;
            }
            i6 = i11;
            i9 = i4;
            obj3 = obj;
            i7 = i12;
            obj2 = obj7;
            i8 = i10;
            i11 = i13 + VERTICAL;
            i10 = i3;
            f = f2;
            obj4 = obj6;
        }
        if (this.mTotalLength > 0 && hasDividerBeforeChildAt(virtualChildCount)) {
            this.mTotalLength += this.mDividerWidth;
        }
        i11 = (iArr[VERTICAL] == -1 && iArr[SHOW_DIVIDER_NONE] == -1 && iArr[SHOW_DIVIDER_MIDDLE] == -1 && iArr[INDEX_FILL] == -1) ? i6 : Math.max(i6, Math.max(iArr[INDEX_FILL], Math.max(iArr[SHOW_DIVIDER_NONE], Math.max(iArr[VERTICAL], iArr[SHOW_DIVIDER_MIDDLE]))) + Math.max(iArr2[INDEX_FILL], Math.max(iArr2[SHOW_DIVIDER_NONE], Math.max(iArr2[VERTICAL], iArr2[SHOW_DIVIDER_MIDDLE]))));
        if (z2 && (mode == Integer.MIN_VALUE || mode == 0)) {
            this.mTotalLength = SHOW_DIVIDER_NONE;
            i5 = SHOW_DIVIDER_NONE;
            while (i5 < virtualChildCount) {
                View virtualChildAt2 = getVirtualChildAt(i5);
                if (virtualChildAt2 == null) {
                    this.mTotalLength += measureNullChild(i5);
                    i3 = i5;
                } else if (virtualChildAt2.getVisibility() == 8) {
                    i3 = getChildrenSkipCount(virtualChildAt2, i5) + i5;
                } else {
                    layoutParams = (LayoutParams) virtualChildAt2.getLayoutParams();
                    if (obj5 != null) {
                        this.mTotalLength = ((layoutParams.rightMargin + (layoutParams.leftMargin + i10)) + getNextLocationOffset(virtualChildAt2)) + this.mTotalLength;
                        i3 = i5;
                    } else {
                        max = this.mTotalLength;
                        this.mTotalLength = Math.max(max, (layoutParams.rightMargin + ((max + i10) + layoutParams.leftMargin)) + getNextLocationOffset(virtualChildAt2));
                        i3 = i5;
                    }
                }
                i5 = i3 + VERTICAL;
            }
        }
        this.mTotalLength += getPaddingLeft() + getPaddingRight();
        int resolveSizeAndState = ViewCompat.resolveSizeAndState(Math.max(this.mTotalLength, getSuggestedMinimumWidth()), i, SHOW_DIVIDER_NONE);
        i5 = (ViewCompat.MEASURED_SIZE_MASK & resolveSizeAndState) - this.mTotalLength;
        if (obj4 != null || (i5 != 0 && f > 0.0f)) {
            if (this.mWeightSum > 0.0f) {
                f = this.mWeightSum;
            }
            iArr[INDEX_FILL] = -1;
            iArr[SHOW_DIVIDER_MIDDLE] = -1;
            iArr[VERTICAL] = -1;
            iArr[SHOW_DIVIDER_NONE] = -1;
            iArr2[INDEX_FILL] = -1;
            iArr2[SHOW_DIVIDER_MIDDLE] = -1;
            iArr2[VERTICAL] = -1;
            iArr2[SHOW_DIVIDER_NONE] = -1;
            this.mTotalLength = SHOW_DIVIDER_NONE;
            i6 = SHOW_DIVIDER_NONE;
            i4 = i8;
            obj = obj2;
            float f4 = f;
            i13 = i7;
            i11 = i5;
            i5 = -1;
            while (i6 < virtualChildCount) {
                Object obj10;
                float f5;
                View virtualChildAt3 = getVirtualChildAt(i6);
                if (virtualChildAt3 != null) {
                    if (virtualChildAt3.getVisibility() == 8) {
                        i3 = i5;
                        i5 = i11;
                        i11 = i13;
                        i13 = i4;
                        obj10 = obj;
                        f5 = f4;
                    } else {
                        layoutParams = (LayoutParams) virtualChildAt3.getLayoutParams();
                        float f6 = layoutParams.weight;
                        if (f6 > 0.0f) {
                            i14 = (int) ((((float) i11) * f6) / f4);
                            f6 = f4 - f6;
                            i12 = i11 - i14;
                            baseline = getChildMeasureSpec(i2, ((getPaddingTop() + getPaddingBottom()) + layoutParams.topMargin) + layoutParams.bottomMargin, layoutParams.height);
                            if (layoutParams.width == 0 && mode == 1073741824) {
                                virtualChildAt3.measure(MeasureSpec.makeMeasureSpec(i14 > 0 ? i14 : SHOW_DIVIDER_NONE, 1073741824), baseline);
                            } else {
                                i11 = virtualChildAt3.getMeasuredWidth() + i14;
                                if (i11 < 0) {
                                    i11 = SHOW_DIVIDER_NONE;
                                }
                                virtualChildAt3.measure(MeasureSpec.makeMeasureSpec(i11, 1073741824), baseline);
                            }
                            i13 = ViewUtils.combineMeasuredStates(i13, ViewCompat.getMeasuredState(virtualChildAt3) & ViewCompat.MEASURED_STATE_MASK);
                            i11 = i12;
                            f4 = f6;
                        }
                        if (obj5 != null) {
                            this.mTotalLength += ((virtualChildAt3.getMeasuredWidth() + layoutParams.leftMargin) + layoutParams.rightMargin) + getNextLocationOffset(virtualChildAt3);
                        } else {
                            i14 = this.mTotalLength;
                            this.mTotalLength = Math.max(i14, (((virtualChildAt3.getMeasuredWidth() + i14) + layoutParams.leftMargin) + layoutParams.rightMargin) + getNextLocationOffset(virtualChildAt3));
                        }
                        obj7 = (mode2 == 1073741824 || layoutParams.height != -1) ? null : VERTICAL;
                        i10 = layoutParams.topMargin + layoutParams.bottomMargin;
                        baseline = virtualChildAt3.getMeasuredHeight() + i10;
                        i5 = Math.max(i5, baseline);
                        i4 = Math.max(i4, obj7 != null ? i10 : baseline);
                        obj = (obj == null || layoutParams.height != -1) ? null : VERTICAL;
                        if (z) {
                            i14 = virtualChildAt3.getBaseline();
                            if (i14 != -1) {
                                i3 = ((((layoutParams.gravity < 0 ? this.mGravity : layoutParams.gravity) & 112) >> VERTICAL_GRAVITY_COUNT) & -2) >> VERTICAL;
                                iArr[i3] = Math.max(iArr[i3], i14);
                                iArr2[i3] = Math.max(iArr2[i3], baseline - i14);
                                i3 = i5;
                                i5 = i11;
                                i11 = i13;
                                i13 = i4;
                                obj10 = obj;
                                f5 = f4;
                            }
                        }
                    }
                    i6 += VERTICAL;
                    f4 = f5;
                    obj = obj10;
                    i4 = i13;
                    i13 = i11;
                    i11 = i5;
                    i5 = i3;
                }
                i3 = i5;
                i5 = i11;
                i11 = i13;
                i13 = i4;
                obj10 = obj;
                f5 = f4;
                i6 += VERTICAL;
                f4 = f5;
                obj = obj10;
                i4 = i13;
                i13 = i11;
                i11 = i5;
                i5 = i3;
            }
            this.mTotalLength += getPaddingLeft() + getPaddingRight();
            if (iArr[VERTICAL] == -1 && iArr[SHOW_DIVIDER_NONE] == -1 && iArr[SHOW_DIVIDER_MIDDLE] == -1 && iArr[INDEX_FILL] == -1) {
                obj2 = obj;
                i7 = i13;
                i3 = i4;
            } else {
                i5 = Math.max(i5, Math.max(iArr[INDEX_FILL], Math.max(iArr[SHOW_DIVIDER_NONE], Math.max(iArr[VERTICAL], iArr[SHOW_DIVIDER_MIDDLE]))) + Math.max(iArr2[INDEX_FILL], Math.max(iArr2[SHOW_DIVIDER_NONE], Math.max(iArr2[VERTICAL], iArr2[SHOW_DIVIDER_MIDDLE]))));
                obj2 = obj;
                i7 = i13;
                i3 = i4;
            }
        } else {
            i4 = Math.max(i8, i9);
            if (z2 && mode != 1073741824) {
                for (i5 = SHOW_DIVIDER_NONE; i5 < virtualChildCount; i5 += VERTICAL) {
                    View virtualChildAt4 = getVirtualChildAt(i5);
                    if (!(virtualChildAt4 == null || virtualChildAt4.getVisibility() == 8 || ((LayoutParams) virtualChildAt4.getLayoutParams()).weight <= 0.0f)) {
                        virtualChildAt4.measure(MeasureSpec.makeMeasureSpec(i10, 1073741824), MeasureSpec.makeMeasureSpec(virtualChildAt4.getMeasuredHeight(), 1073741824));
                    }
                }
            }
            i3 = i4;
            i5 = i11;
        }
        if (obj2 != null || mode2 == 1073741824) {
            i3 = i5;
        }
        setMeasuredDimension((ViewCompat.MEASURED_STATE_MASK & i7) | resolveSizeAndState, ViewCompat.resolveSizeAndState(Math.max(i3 + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight()), i2, i7 << 16));
        if (obj3 != null) {
            forceUniformHeight(virtualChildCount, i);
        }
    }

    int measureNullChild(int i) {
        return SHOW_DIVIDER_NONE;
    }

    void measureVertical(int i, int i2) {
        int i3;
        Object obj;
        int i4;
        int i5;
        Object obj2;
        int max;
        int i6;
        int i7;
        View virtualChildAt;
        this.mTotalLength = SHOW_DIVIDER_NONE;
        int i8 = SHOW_DIVIDER_NONE;
        int i9 = SHOW_DIVIDER_NONE;
        int i10 = SHOW_DIVIDER_NONE;
        int i11 = SHOW_DIVIDER_NONE;
        Object obj3 = VERTICAL;
        float f = 0.0f;
        int virtualChildCount = getVirtualChildCount();
        int mode = MeasureSpec.getMode(i);
        int mode2 = MeasureSpec.getMode(i2);
        Object obj4 = null;
        Object obj5 = null;
        int i12 = this.mBaselineAlignedChildIndex;
        boolean z = this.mUseLargestChild;
        int i13 = RtlSpacingHelper.UNDEFINED;
        int i14 = SHOW_DIVIDER_NONE;
        while (i14 < virtualChildCount) {
            Object obj6;
            int i15;
            Object obj7;
            float f2;
            View virtualChildAt2 = getVirtualChildAt(i14);
            if (virtualChildAt2 == null) {
                this.mTotalLength += measureNullChild(i14);
                i3 = i13;
                obj6 = obj5;
                obj = obj4;
                i15 = i8;
                i4 = i9;
                obj7 = obj3;
                i13 = i10;
                f2 = f;
                i5 = i11;
            } else if (virtualChildAt2.getVisibility() == 8) {
                i14 += getChildrenSkipCount(virtualChildAt2, i14);
                i3 = i13;
                obj6 = obj5;
                obj = obj4;
                i15 = i8;
                i4 = i9;
                obj7 = obj3;
                i13 = i10;
                f2 = f;
                i5 = i11;
            } else {
                Object obj8;
                int i16;
                if (hasDividerBeforeChildAt(i14)) {
                    this.mTotalLength += this.mDividerHeight;
                }
                LayoutParams layoutParams = (LayoutParams) virtualChildAt2.getLayoutParams();
                float f3 = f + layoutParams.weight;
                if (mode2 == 1073741824 && layoutParams.height == 0 && layoutParams.weight > 0.0f) {
                    i3 = this.mTotalLength;
                    this.mTotalLength = Math.max(i3, (layoutParams.topMargin + i3) + layoutParams.bottomMargin);
                    i3 = i13;
                    obj8 = VERTICAL;
                } else {
                    i3 = RtlSpacingHelper.UNDEFINED;
                    if (layoutParams.height == 0 && layoutParams.weight > 0.0f) {
                        i3 = SHOW_DIVIDER_NONE;
                        layoutParams.height = -2;
                    }
                    i16 = i3;
                    measureChildBeforeLayout(virtualChildAt2, i14, i, SHOW_DIVIDER_NONE, i2, f3 == 0.0f ? this.mTotalLength : SHOW_DIVIDER_NONE);
                    if (i16 != Integer.MIN_VALUE) {
                        layoutParams.height = i16;
                    }
                    i3 = virtualChildAt2.getMeasuredHeight();
                    i5 = this.mTotalLength;
                    this.mTotalLength = Math.max(i5, (((i5 + i3) + layoutParams.topMargin) + layoutParams.bottomMargin) + getNextLocationOffset(virtualChildAt2));
                    if (z) {
                        i3 = Math.max(i3, i13);
                        obj8 = obj5;
                    } else {
                        i3 = i13;
                        obj8 = obj5;
                    }
                }
                if (i12 >= 0 && i12 == i14 + VERTICAL) {
                    this.mBaselineChildTop = this.mTotalLength;
                }
                if (i14 >= i12 || layoutParams.weight <= 0.0f) {
                    obj = null;
                    if (mode == 1073741824 || layoutParams.width != -1) {
                        obj2 = obj4;
                    } else {
                        obj = VERTICAL;
                        obj2 = VERTICAL;
                    }
                    i16 = layoutParams.leftMargin + layoutParams.rightMargin;
                    int measuredWidth = virtualChildAt2.getMeasuredWidth() + i16;
                    i4 = Math.max(i8, measuredWidth);
                    i13 = ViewUtils.combineMeasuredStates(i9, ViewCompat.getMeasuredState(virtualChildAt2));
                    obj5 = (obj3 == null || layoutParams.width != -1) ? null : VERTICAL;
                    if (layoutParams.weight > 0.0f) {
                        max = Math.max(i11, obj != null ? i16 : measuredWidth);
                        i6 = i10;
                    } else {
                        if (obj != null) {
                            measuredWidth = i16;
                        }
                        i6 = Math.max(i10, measuredWidth);
                        max = i11;
                    }
                    i14 += getChildrenSkipCount(virtualChildAt2, i14);
                    obj6 = obj8;
                    i5 = max;
                    obj = obj2;
                    i15 = i4;
                    i4 = i13;
                    i13 = i6;
                    obj7 = obj5;
                    f2 = f3;
                } else {
                    throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                }
            }
            i14 += VERTICAL;
            i11 = i5;
            obj4 = obj;
            i8 = i15;
            i9 = i4;
            obj3 = obj7;
            i10 = i13;
            i13 = i3;
            f = f2;
            obj5 = obj6;
        }
        if (this.mTotalLength > 0 && hasDividerBeforeChildAt(virtualChildCount)) {
            this.mTotalLength += this.mDividerHeight;
        }
        if (z && (mode2 == Integer.MIN_VALUE || mode2 == 0)) {
            this.mTotalLength = SHOW_DIVIDER_NONE;
            i7 = SHOW_DIVIDER_NONE;
            while (i7 < virtualChildCount) {
                virtualChildAt = getVirtualChildAt(i7);
                if (virtualChildAt == null) {
                    this.mTotalLength += measureNullChild(i7);
                    i3 = i7;
                } else if (virtualChildAt.getVisibility() == 8) {
                    i3 = getChildrenSkipCount(virtualChildAt, i7) + i7;
                } else {
                    LayoutParams layoutParams2 = (LayoutParams) virtualChildAt.getLayoutParams();
                    max = this.mTotalLength;
                    this.mTotalLength = Math.max(max, (layoutParams2.bottomMargin + ((max + i13) + layoutParams2.topMargin)) + getNextLocationOffset(virtualChildAt));
                    i3 = i7;
                }
                i7 = i3 + VERTICAL;
            }
        }
        this.mTotalLength += getPaddingTop() + getPaddingBottom();
        int resolveSizeAndState = ViewCompat.resolveSizeAndState(Math.max(this.mTotalLength, getSuggestedMinimumHeight()), i2, SHOW_DIVIDER_NONE);
        i14 = (ViewCompat.MEASURED_SIZE_MASK & resolveSizeAndState) - this.mTotalLength;
        if (obj5 != null || (i14 != 0 && f > 0.0f)) {
            if (this.mWeightSum > 0.0f) {
                f = this.mWeightSum;
            }
            this.mTotalLength = SHOW_DIVIDER_NONE;
            i11 = SHOW_DIVIDER_NONE;
            i7 = i9;
            obj2 = obj3;
            max = i10;
            float f4 = f;
            i5 = i14;
            i14 = i8;
            while (i11 < virtualChildCount) {
                float f5;
                View virtualChildAt3 = getVirtualChildAt(i11);
                if (virtualChildAt3.getVisibility() == 8) {
                    i3 = i7;
                    i7 = i14;
                    i14 = i5;
                    i5 = max;
                    obj = obj2;
                    f5 = f4;
                } else {
                    layoutParams2 = (LayoutParams) virtualChildAt3.getLayoutParams();
                    float f6 = layoutParams2.weight;
                    if (f6 > 0.0f) {
                        i13 = (int) ((((float) i5) * f6) / f4);
                        f6 = f4 - f6;
                        i4 = i5 - i13;
                        int childMeasureSpec = getChildMeasureSpec(i, ((getPaddingLeft() + getPaddingRight()) + layoutParams2.leftMargin) + layoutParams2.rightMargin, layoutParams2.width);
                        if (layoutParams2.height == 0 && mode2 == 1073741824) {
                            virtualChildAt3.measure(childMeasureSpec, MeasureSpec.makeMeasureSpec(i13 > 0 ? i13 : SHOW_DIVIDER_NONE, 1073741824));
                        } else {
                            i5 = virtualChildAt3.getMeasuredHeight() + i13;
                            if (i5 < 0) {
                                i5 = SHOW_DIVIDER_NONE;
                            }
                            virtualChildAt3.measure(childMeasureSpec, MeasureSpec.makeMeasureSpec(i5, 1073741824));
                        }
                        i7 = ViewUtils.combineMeasuredStates(i7, ViewCompat.getMeasuredState(virtualChildAt3) & InputDeviceCompat.SOURCE_ANY);
                        i5 = i4;
                        f4 = f6;
                    }
                    i6 = layoutParams2.leftMargin + layoutParams2.rightMargin;
                    i13 = virtualChildAt3.getMeasuredWidth() + i6;
                    i14 = Math.max(i14, i13);
                    obj5 = (mode == 1073741824 || layoutParams2.width != -1) ? null : VERTICAL;
                    if (obj5 == null) {
                        i6 = i13;
                    }
                    max = Math.max(max, i6);
                    obj2 = (obj2 == null || layoutParams2.width != -1) ? null : VERTICAL;
                    i6 = this.mTotalLength;
                    this.mTotalLength = Math.max(i6, (layoutParams2.bottomMargin + ((virtualChildAt3.getMeasuredHeight() + i6) + layoutParams2.topMargin)) + getNextLocationOffset(virtualChildAt3));
                    i3 = i7;
                    i7 = i14;
                    i14 = i5;
                    i5 = max;
                    obj = obj2;
                    f5 = f4;
                }
                i11 += VERTICAL;
                f4 = f5;
                obj2 = obj;
                max = i5;
                i5 = i14;
                i14 = i7;
                i7 = i3;
            }
            this.mTotalLength += getPaddingTop() + getPaddingBottom();
            obj3 = obj2;
            i9 = i7;
            i3 = max;
            i7 = i14;
        } else {
            max = Math.max(i10, i11);
            if (z && mode2 != 1073741824) {
                for (i7 = SHOW_DIVIDER_NONE; i7 < virtualChildCount; i7 += VERTICAL) {
                    virtualChildAt = getVirtualChildAt(i7);
                    if (!(virtualChildAt == null || virtualChildAt.getVisibility() == 8 || ((LayoutParams) virtualChildAt.getLayoutParams()).weight <= 0.0f)) {
                        virtualChildAt.measure(MeasureSpec.makeMeasureSpec(virtualChildAt.getMeasuredWidth(), 1073741824), MeasureSpec.makeMeasureSpec(i13, 1073741824));
                    }
                }
            }
            i7 = i8;
            i3 = max;
        }
        if (obj3 != null || mode == 1073741824) {
            i3 = i7;
        }
        setMeasuredDimension(ViewCompat.resolveSizeAndState(Math.max(i3 + (getPaddingLeft() + getPaddingRight()), getSuggestedMinimumWidth()), i, i9), resolveSizeAndState);
        if (obj4 != null) {
            forceUniformWidth(virtualChildCount, i2);
        }
    }

    protected void onDraw(Canvas canvas) {
        if (this.mDivider != null) {
            if (this.mOrientation == VERTICAL) {
                drawDividersVertical(canvas);
            } else {
                drawDividersHorizontal(canvas);
            }
        }
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (VERSION.SDK_INT >= 14) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(LinearLayoutCompat.class.getName());
        }
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        if (VERSION.SDK_INT >= 14) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(LinearLayoutCompat.class.getName());
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.mOrientation == VERTICAL) {
            layoutVertical(i, i2, i3, i4);
        } else {
            layoutHorizontal(i, i2, i3, i4);
        }
    }

    protected void onMeasure(int i, int i2) {
        if (this.mOrientation == VERTICAL) {
            measureVertical(i, i2);
        } else {
            measureHorizontal(i, i2);
        }
    }

    public void setBaselineAligned(boolean z) {
        this.mBaselineAligned = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i < 0 || i >= getChildCount()) {
            throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
        }
        this.mBaselineAlignedChildIndex = i;
    }

    public void setDividerDrawable(Drawable drawable) {
        boolean z = false;
        if (drawable != this.mDivider) {
            this.mDivider = drawable;
            if (drawable != null) {
                this.mDividerWidth = drawable.getIntrinsicWidth();
                this.mDividerHeight = drawable.getIntrinsicHeight();
            } else {
                this.mDividerWidth = SHOW_DIVIDER_NONE;
                this.mDividerHeight = SHOW_DIVIDER_NONE;
            }
            if (drawable == null) {
                z = true;
            }
            setWillNotDraw(z);
            requestLayout();
        }
    }

    public void setDividerPadding(int i) {
        this.mDividerPadding = i;
    }

    public void setGravity(int i) {
        if (this.mGravity != i) {
            int i2 = (GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK & i) == 0 ? GravityCompat.START | i : i;
            if ((i2 & 112) == 0) {
                i2 |= 48;
            }
            this.mGravity = i2;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if ((this.mGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) != i2) {
            this.mGravity = i2 | (this.mGravity & -8388616);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.mUseLargestChild = z;
    }

    public void setOrientation(int i) {
        if (this.mOrientation != i) {
            this.mOrientation = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.mShowDividers) {
            requestLayout();
        }
        this.mShowDividers = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        if ((this.mGravity & 112) != i2) {
            this.mGravity = i2 | (this.mGravity & -113);
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.mWeightSum = Math.max(0.0f, f);
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
