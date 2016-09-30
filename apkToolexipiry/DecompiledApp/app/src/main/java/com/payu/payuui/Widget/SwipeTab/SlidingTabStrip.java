package com.payu.payuui.Widget.SwipeTab;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.LinearLayout;
import com.payu.payuui.Widget.SwipeTab.SlidingTabLayout.TabColorizer;

class SlidingTabStrip extends LinearLayout {
    private static final byte DEFAULT_BOTTOM_BORDER_COLOR_ALPHA = (byte) 38;
    private static final int DEFAULT_BOTTOM_BORDER_THICKNESS_DIPS = 0;
    private static final int DEFAULT_SELECTED_INDICATOR_COLOR = -13388315;
    private static final int SELECTED_INDICATOR_THICKNESS_DIPS = 3;
    private final Paint mBottomBorderPaint;
    private final int mBottomBorderThickness;
    private TabColorizer mCustomTabColorizer;
    private final int mDefaultBottomBorderColor;
    private final SimpleTabColorizer mDefaultTabColorizer;
    private final Paint mSelectedIndicatorPaint;
    private final int mSelectedIndicatorThickness;
    private int mSelectedPosition;
    private float mSelectionOffset;

    private static class SimpleTabColorizer implements TabColorizer {
        private int[] mIndicatorColors;

        private SimpleTabColorizer() {
        }

        public final int getIndicatorColor(int i) {
            return this.mIndicatorColors[i % this.mIndicatorColors.length];
        }

        void setIndicatorColors(int... iArr) {
            this.mIndicatorColors = iArr;
        }
    }

    SlidingTabStrip(Context context) {
        this(context, null);
    }

    SlidingTabStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setWillNotDraw(false);
        float f = getResources().getDisplayMetrics().density;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(16842800, typedValue, true);
        this.mDefaultBottomBorderColor = setColorAlpha(typedValue.data, DEFAULT_BOTTOM_BORDER_COLOR_ALPHA);
        this.mDefaultTabColorizer = new SimpleTabColorizer();
        this.mDefaultTabColorizer.setIndicatorColors(DEFAULT_SELECTED_INDICATOR_COLOR);
        this.mBottomBorderThickness = (int) (0.0f * f);
        this.mBottomBorderPaint = new Paint();
        this.mBottomBorderPaint.setColor(this.mDefaultBottomBorderColor);
        this.mSelectedIndicatorThickness = (int) (f * 3.0f);
        this.mSelectedIndicatorPaint = new Paint();
    }

    private static int blendColors(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.rgb((int) ((((float) Color.red(i)) * f) + (((float) Color.red(i2)) * f2)), (int) ((((float) Color.green(i)) * f) + (((float) Color.green(i2)) * f2)), (int) ((f2 * ((float) Color.blue(i2))) + (((float) Color.blue(i)) * f)));
    }

    private static int setColorAlpha(int i, byte b) {
        return Color.argb(b, Color.red(i), Color.green(i), Color.blue(i));
    }

    protected void onDraw(Canvas canvas) {
        int height = getHeight();
        int childCount = getChildCount();
        if (this.mCustomTabColorizer != null) {
            TabColorizer tabColorizer = this.mCustomTabColorizer;
        } else {
            Object obj = this.mDefaultTabColorizer;
        }
        if (childCount > 0) {
            int i;
            View childAt = getChildAt(this.mSelectedPosition);
            int left = childAt.getLeft();
            childCount = childAt.getRight();
            int indicatorColor = tabColorizer.getIndicatorColor(this.mSelectedPosition);
            if (this.mSelectionOffset <= 0.0f || this.mSelectedPosition >= getChildCount() - 1) {
                i = childCount;
                childCount = indicatorColor;
            } else {
                i = tabColorizer.getIndicatorColor(this.mSelectedPosition + 1);
                if (indicatorColor != i) {
                    indicatorColor = blendColors(i, indicatorColor, this.mSelectionOffset);
                }
                View childAt2 = getChildAt(this.mSelectedPosition + 1);
                left = (int) ((((float) left) * (1.0f - this.mSelectionOffset)) + (this.mSelectionOffset * ((float) childAt2.getLeft())));
                i = (int) ((((float) childCount) * (1.0f - this.mSelectionOffset)) + (((float) childAt2.getRight()) * this.mSelectionOffset));
                childCount = indicatorColor;
            }
            this.mSelectedIndicatorPaint.setColor(childCount);
            canvas.drawRect((float) left, (float) (height - this.mSelectedIndicatorThickness), (float) i, (float) height, this.mSelectedIndicatorPaint);
        }
        canvas.drawRect(0.0f, (float) (height - this.mBottomBorderThickness), (float) getWidth(), (float) height, this.mBottomBorderPaint);
    }

    void onViewPagerPageChanged(int i, float f) {
        this.mSelectedPosition = i;
        this.mSelectionOffset = f;
        invalidate();
    }

    void setCustomTabColorizer(TabColorizer tabColorizer) {
        this.mCustomTabColorizer = tabColorizer;
        invalidate();
    }

    void setSelectedIndicatorColors(int... iArr) {
        this.mCustomTabColorizer = null;
        this.mDefaultTabColorizer.setIndicatorColors(iArr);
        invalidate();
    }
}
