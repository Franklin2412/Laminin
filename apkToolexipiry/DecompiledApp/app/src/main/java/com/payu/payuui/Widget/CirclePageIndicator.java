package com.payu.payuui.Widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewConfigurationCompat;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

import com.squareup.haha.perflib.StackFrame;

public class CirclePageIndicator extends View implements PageIndicator {
    private static final int INVALID_POINTER = -1;
    private int mActivePointerId;
    private boolean mCentered;
    private int mCurrentPage;
    private boolean mIsDragging;
    private float mLastMotionX;
    private OnPageChangeListener mListener;
    private int mOrientation;
    private float mPageOffset;
    private final Paint mPaintFill;
    private final Paint mPaintPageFill;
    private final Paint mPaintStroke;
    private float mRadius;
    private int mScrollState;
    private boolean mSnap;
    private int mSnapPage;
    private int mTouchSlop;
    private ViewPager mViewPager;

    static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR;
        int currentPage;

        static {
            CREATOR = new Creator<SavedState>() {
                public SavedState createFromParcel(Parcel parcel) {
                    return new SavedState(null);
                }

                public SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            };
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.currentPage = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.currentPage);
        }
    }

    public CirclePageIndicator(Context context) {
        this(context, null);
    }

    public CirclePageIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.vpiCirclePageIndicatorStyle);
    }

    public CirclePageIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mPaintPageFill = new Paint(1);
        this.mPaintStroke = new Paint(1);
        this.mPaintFill = new Paint(1);
        this.mLastMotionX = -1.0f;
        this.mActivePointerId = INVALID_POINTER;
        if (!isInEditMode()) {
            Resources resources = getResources();
            int color = resources.getColor(R.color.default_circle_indicator_page_color);
            int color2 = resources.getColor(R.color.default_circle_indicator_fill_color);
            int integer = resources.getInteger(R.integer.default_circle_indicator_orientation);
            int color3 = resources.getColor(R.color.default_circle_indicator_stroke_color);
            float dimension = resources.getDimension(R.dimen.default_circle_indicator_stroke_width);
            float dimension2 = resources.getDimension(R.dimen.default_circle_indicator_radius);
            boolean z = resources.getBoolean(R.bool.default_circle_indicator_centered);
            boolean z2 = resources.getBoolean(R.bool.default_circle_indicator_snap);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CirclePageIndicator, i, 0);
            this.mCentered = obtainStyledAttributes.getBoolean(R.styleable.CirclePageIndicator_centered, z);
            this.mOrientation = obtainStyledAttributes.getInt(R.styleable.CirclePageIndicator_android_orientation, integer);
            this.mPaintPageFill.setStyle(Style.FILL);
            this.mPaintPageFill.setColor(obtainStyledAttributes.getColor(R.styleable.CirclePageIndicator_pageColor, color));
            this.mPaintStroke.setStyle(Style.STROKE);
            this.mPaintStroke.setColor(obtainStyledAttributes.getColor(R.styleable.CirclePageIndicator_strokeColor, color3));
            this.mPaintStroke.setStrokeWidth(obtainStyledAttributes.getDimension(R.styleable.CirclePageIndicator_strokeWidth, dimension));
            this.mPaintFill.setStyle(Style.FILL);
            this.mPaintFill.setColor(obtainStyledAttributes.getColor(R.styleable.CirclePageIndicator_fillColor, color2));
            this.mRadius = obtainStyledAttributes.getDimension(R.styleable.CirclePageIndicator_radius, dimension2);
            this.mSnap = obtainStyledAttributes.getBoolean(R.styleable.CirclePageIndicator_snap, z2);
            Drawable drawable = obtainStyledAttributes.getDrawable(R.styleable.CirclePageIndicator_android_background);
            if (drawable != null) {
                setBackgroundDrawable(drawable);
            }
            obtainStyledAttributes.recycle();
            this.mTouchSlop = ViewConfigurationCompat.getScaledPagingTouchSlop(ViewConfiguration.get(context));
        }
    }

    private int measureLong(int i) {
        int mode = MeasureSpec.getMode(i);
        int size = MeasureSpec.getSize(i);
        if (mode == 1073741824 || this.mViewPager == null) {
            return size;
        }
        int count = this.mViewPager.getAdapter().getCount();
        count = (int) (((((float) (count + INVALID_POINTER)) * this.mRadius) + (((float) (getPaddingLeft() + getPaddingRight())) + (((float) (count * 2)) * this.mRadius))) + 1.0f);
        return mode == RtlSpacingHelper.UNDEFINED ? Math.min(count, size) : count;
    }

    private int measureShort(int i) {
        int mode = MeasureSpec.getMode(i);
        int size = MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            return size;
        }
        int paddingTop = (int) ((((2.0f * this.mRadius) + ((float) getPaddingTop())) + ((float) getPaddingBottom())) + 1.0f);
        return mode == RtlSpacingHelper.UNDEFINED ? Math.min(paddingTop, size) : paddingTop;
    }

    public int getFillColor() {
        return this.mPaintFill.getColor();
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public int getPageColor() {
        return this.mPaintPageFill.getColor();
    }

    public float getRadius() {
        return this.mRadius;
    }

    public int getStrokeColor() {
        return this.mPaintStroke.getColor();
    }

    public float getStrokeWidth() {
        return this.mPaintStroke.getStrokeWidth();
    }

    public boolean isCentered() {
        return this.mCentered;
    }

    public boolean isSnap() {
        return this.mSnap;
    }

    public void notifyDataSetChanged() {
        invalidate();
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mViewPager != null) {
            int count = this.mViewPager.getAdapter().getCount();
            if (count == 0) {
                return;
            }
            if (this.mCurrentPage >= count) {
                setCurrentItem(count + INVALID_POINTER);
                return;
            }
            int width;
            int paddingLeft;
            int paddingRight;
            int paddingTop;
            if (this.mOrientation == 0) {
                width = getWidth();
                paddingLeft = getPaddingLeft();
                paddingRight = getPaddingRight();
                paddingTop = getPaddingTop();
            } else {
                width = getHeight();
                paddingLeft = getPaddingTop();
                paddingRight = getPaddingBottom();
                paddingTop = getPaddingLeft();
            }
            float f = this.mRadius * 3.0f;
            float f2 = this.mRadius + ((float) paddingTop);
            float f3 = ((float) paddingLeft) + this.mRadius;
            if (this.mCentered) {
                f3 += (((float) ((width - paddingLeft) - paddingRight)) / 2.0f) - ((((float) count) * f) / 2.0f);
            }
            float f4 = this.mRadius;
            if (this.mPaintStroke.getStrokeWidth() > 0.0f) {
                f4 -= this.mPaintStroke.getStrokeWidth() / 2.0f;
            }
            for (int i = 0; i < count; i++) {
                float f5;
                float f6 = (((float) i) * f) + f3;
                if (this.mOrientation == 0) {
                    f5 = f6;
                    f6 = f2;
                } else {
                    f5 = f2;
                }
                if (this.mPaintPageFill.getAlpha() > 0) {
                    canvas.drawCircle(f5, f6, f4, this.mPaintPageFill);
                }
                if (f4 != this.mRadius) {
                    canvas.drawCircle(f5, f6, this.mRadius, this.mPaintStroke);
                }
            }
            f4 = ((float) (this.mSnap ? this.mSnapPage : this.mCurrentPage)) * f;
            if (!this.mSnap) {
                f4 += this.mPageOffset * f;
            }
            if (this.mOrientation == 0) {
                f3 += f4;
            } else {
                float f7 = f3 + f4;
                f3 = f2;
                f2 = f7;
            }
            canvas.drawCircle(f3, f2, this.mRadius, this.mPaintFill);
        }
    }

    protected void onMeasure(int i, int i2) {
        if (this.mOrientation == 0) {
            setMeasuredDimension(measureLong(i), measureShort(i2));
        } else {
            setMeasuredDimension(measureShort(i), measureLong(i2));
        }
    }

    public void onPageScrollStateChanged(int i) {
        this.mScrollState = i;
        if (this.mListener != null) {
            this.mListener.onPageScrollStateChanged(i);
        }
    }

    public void onPageScrolled(int i, float f, int i2) {
        this.mCurrentPage = i;
        this.mPageOffset = f;
        invalidate();
        if (this.mListener != null) {
            this.mListener.onPageScrolled(i, f, i2);
        }
    }

    public void onPageSelected(int i) {
        if (this.mSnap || this.mScrollState == 0) {
            this.mCurrentPage = i;
            this.mSnapPage = i;
            invalidate();
        }
        if (this.mListener != null) {
            this.mListener.onPageSelected(i);
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.mCurrentPage = savedState.currentPage;
        this.mSnapPage = savedState.currentPage;
        requestLayout();
    }

    public Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.currentPage = this.mCurrentPage;
        return savedState;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i = 0;
        if (super.onTouchEvent(motionEvent)) {
            return true;
        }
        if (this.mViewPager == null || this.mViewPager.getAdapter().getCount() == 0) {
            return false;
        }
        int action = motionEvent.getAction() & MotionEventCompat.ACTION_MASK;
        switch (action) {
            case StackFrame.NO_LINE_NUMBER /*0*/:
                this.mActivePointerId = MotionEventCompat.getPointerId(motionEvent, 0);
                this.mLastMotionX = motionEvent.getX();
                return true;
            case com.payu.testapp.R.styleable.WaitingDots_period /*1*/:
            case com.payu.testapp.R.styleable.WaitingDots_autoplay /*3*/:
                if (!this.mIsDragging) {
                    int count = this.mViewPager.getAdapter().getCount();
                    int width = getWidth();
                    float f = ((float) width) / 2.0f;
                    float f2 = ((float) width) / 6.0f;
                    if (this.mCurrentPage <= 0 || motionEvent.getX() >= f - f2) {
                        if (this.mCurrentPage < count + INVALID_POINTER && motionEvent.getX() > f2 + f) {
                            if (action == 3) {
                                return true;
                            }
                            this.mViewPager.setCurrentItem(this.mCurrentPage + 1);
                            return true;
                        }
                    } else if (action == 3) {
                        return true;
                    } else {
                        this.mViewPager.setCurrentItem(this.mCurrentPage + INVALID_POINTER);
                        return true;
                    }
                }
                this.mIsDragging = false;
                this.mActivePointerId = INVALID_POINTER;
                if (!this.mViewPager.isFakeDragging()) {
                    return true;
                }
                this.mViewPager.endFakeDrag();
                return true;
            case com.payu.testapp.R.styleable.WaitingDots_jumpHeight /*2*/:
                float x = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.mActivePointerId));
                float f3 = x - this.mLastMotionX;
                if (!this.mIsDragging && Math.abs(f3) > ((float) this.mTouchSlop)) {
                    this.mIsDragging = true;
                }
                if (!this.mIsDragging) {
                    return true;
                }
                this.mLastMotionX = x;
                if (!this.mViewPager.isFakeDragging() && !this.mViewPager.beginFakeDrag()) {
                    return true;
                }
                this.mViewPager.fakeDragBy(f3);
                return true;
            case com.payu.testapp.R.styleable.ViewPagerIndicator_vpiUnderlinePageIndicatorStyle /*5*/:
                i = MotionEventCompat.getActionIndex(motionEvent);
                this.mLastMotionX = MotionEventCompat.getX(motionEvent, i);
                this.mActivePointerId = MotionEventCompat.getPointerId(motionEvent, i);
                return true;
            case com.payu.testapp.R.styleable.Toolbar_contentInsetEnd /*6*/:
                action = MotionEventCompat.getActionIndex(motionEvent);
                if (MotionEventCompat.getPointerId(motionEvent, action) == this.mActivePointerId) {
                    if (action == 0) {
                        i = 1;
                    }
                    this.mActivePointerId = MotionEventCompat.getPointerId(motionEvent, i);
                }
                this.mLastMotionX = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.mActivePointerId));
                return true;
            default:
                return true;
        }
    }

    public void setCentered(boolean z) {
        this.mCentered = z;
        invalidate();
    }

    public void setCurrentItem(int i) {
        if (this.mViewPager == null) {
            throw new IllegalStateException("ViewPager has not been bound.");
        }
        this.mViewPager.setCurrentItem(i);
        this.mCurrentPage = i;
        invalidate();
    }

    public void setFillColor(int i) {
        this.mPaintFill.setColor(i);
        invalidate();
    }

    public void setOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        this.mListener = onPageChangeListener;
    }

    public void setOrientation(int i) {
        switch (i) {
            case StackFrame.NO_LINE_NUMBER /*0*/:
            case com.payu.testapp.R.styleable.WaitingDots_period /*1*/:
                this.mOrientation = i;
                requestLayout();
            default:
                throw new IllegalArgumentException("Orientation must be either HORIZONTAL or VERTICAL.");
        }
    }

    public void setPageColor(int i) {
        this.mPaintPageFill.setColor(i);
        invalidate();
    }

    public void setRadius(float f) {
        this.mRadius = f;
        invalidate();
    }

    public void setSnap(boolean z) {
        this.mSnap = z;
        invalidate();
    }

    public void setStrokeColor(int i) {
        this.mPaintStroke.setColor(i);
        invalidate();
    }

    public void setStrokeWidth(float f) {
        this.mPaintStroke.setStrokeWidth(f);
        invalidate();
    }

    public void setViewPager(ViewPager viewPager) {
        if (this.mViewPager != viewPager) {
            if (this.mViewPager != null) {
                this.mViewPager.setOnPageChangeListener(null);
            }
            if (viewPager.getAdapter() == null) {
                throw new IllegalStateException("ViewPager does not have adapter instance.");
            }
            this.mViewPager = viewPager;
            this.mViewPager.setOnPageChangeListener(this);
            invalidate();
        }
    }

    public void setViewPager(ViewPager viewPager, int i) {
        setViewPager(viewPager);
        setCurrentItem(i);
    }
}
