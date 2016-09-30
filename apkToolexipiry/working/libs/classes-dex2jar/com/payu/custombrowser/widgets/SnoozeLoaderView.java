package com.payu.custombrowser.widgets;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import com.payu.custombrowser.R;
import com.squareup.haha.perflib.StackFrame;
import java.util.Timer;
import java.util.TimerTask;

public class SnoozeLoaderView extends View {
    private Paint activeBarPaint;
    private int blinkPosition;
    private Rect firstBar;
    private Paint firstBarPaint;
    private Paint inActiveBarPaint;
    private int mActiveColor;
    Activity mActivity;
    private int mAnimationSpeed;
    private int mBarHeight;
    private int mBarHeightRatio;
    private int mBarSpace;
    private int mBarWidth;
    private int mInActiveColor;
    private Rect secondBar;
    private Paint secondBarPaint;
    private boolean shouldStartAnimation;
    private Rect thirdBar;
    private Paint thirdBarPaint;
    private Timer timer;

    public SnoozeLoaderView(Context context) {
        super(context);
        this.mBarWidth = 40;
        this.mBarHeight = 120;
        this.mBarSpace = 70;
        this.mBarHeightRatio = this.mBarHeight / 3;
        this.shouldStartAnimation = false;
        this.mActiveColor = Color.parseColor("#00adf2");
        this.mInActiveColor = Color.parseColor("#b0eafc");
        this.mAnimationSpeed = 200;
        this.blinkPosition = 0;
        this.mActivity = (Activity) context;
        init();
    }

    public SnoozeLoaderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mBarWidth = 40;
        this.mBarHeight = 120;
        this.mBarSpace = 70;
        this.mBarHeightRatio = this.mBarHeight / 3;
        this.shouldStartAnimation = false;
        this.mActiveColor = Color.parseColor("#00adf2");
        this.mInActiveColor = Color.parseColor("#b0eafc");
        this.mAnimationSpeed = 200;
        this.blinkPosition = 0;
        this.mActivity = (Activity) context;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.SnoozeLoaderView, 0, 0);
        try {
            this.shouldStartAnimation = obtainStyledAttributes.getBoolean(R.styleable.SnoozeLoaderView_startAnimate, this.shouldStartAnimation);
            this.mActiveColor = obtainStyledAttributes.getColor(R.styleable.SnoozeLoaderView_activeBarColor, this.mActiveColor);
            this.mInActiveColor = obtainStyledAttributes.getColor(R.styleable.SnoozeLoaderView_inActiveBarColor, this.mInActiveColor);
            this.mBarWidth = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SnoozeLoaderView_barWidth, this.mBarWidth);
            this.mBarHeight = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SnoozeLoaderView_barHeight, this.mBarHeight);
            this.mBarHeightRatio = this.mBarHeight / 3;
            this.mBarSpace = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SnoozeLoaderView_barSpace, this.mBarSpace);
            this.mAnimationSpeed = obtainStyledAttributes.getInt(R.styleable.SnoozeLoaderView_animationSpeed, this.mAnimationSpeed);
            init();
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public SnoozeLoaderView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mBarWidth = 40;
        this.mBarHeight = 120;
        this.mBarSpace = 70;
        this.mBarHeightRatio = this.mBarHeight / 3;
        this.shouldStartAnimation = false;
        this.mActiveColor = Color.parseColor("#00adf2");
        this.mInActiveColor = Color.parseColor("#b0eafc");
        this.mAnimationSpeed = 200;
        this.blinkPosition = 0;
        this.mActivity = (Activity) context;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.SnoozeLoaderView, 0, 0);
        try {
            this.shouldStartAnimation = obtainStyledAttributes.getBoolean(R.styleable.SnoozeLoaderView_startAnimate, this.shouldStartAnimation);
            this.mActiveColor = obtainStyledAttributes.getColor(R.styleable.SnoozeLoaderView_activeBarColor, this.mActiveColor);
            this.mInActiveColor = obtainStyledAttributes.getColor(R.styleable.SnoozeLoaderView_inActiveBarColor, this.mInActiveColor);
            this.mBarWidth = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SnoozeLoaderView_barWidth, this.mBarWidth);
            this.mBarHeight = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SnoozeLoaderView_barHeight, this.mBarHeight);
            this.mBarHeightRatio = this.mBarHeight / 3;
            this.mBarSpace = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SnoozeLoaderView_barSpace, this.mBarSpace);
            init();
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    private void init() {
        this.activeBarPaint = new Paint();
        this.activeBarPaint.setColor(this.mActiveColor);
        this.activeBarPaint.setStyle(Style.FILL);
        this.inActiveBarPaint = new Paint();
        this.inActiveBarPaint.setColor(this.mInActiveColor);
        this.inActiveBarPaint.setStyle(Style.FILL);
        this.firstBarPaint = this.inActiveBarPaint;
        this.secondBarPaint = this.inActiveBarPaint;
        this.thirdBarPaint = this.inActiveBarPaint;
    }

    public void cancelAnimation() {
        this.shouldStartAnimation = false;
        if (this.timer != null) {
            this.timer.cancel();
            this.timer.purge();
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.shouldStartAnimation = false;
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawRect(this.firstBar, this.firstBarPaint);
        canvas.drawRect(this.secondBar, this.secondBarPaint);
        canvas.drawRect(this.thirdBar, this.thirdBarPaint);
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension((((this.mBarWidth * 3) + (this.mBarSpace * 2)) + getPaddingLeft()) + getPaddingRight(), ((this.mBarHeight + (this.mBarHeightRatio * 2)) + getPaddingTop()) + getPaddingBottom());
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        int i5 = i / 2;
        int i6 = i2 / 2;
        int i7 = i5 - (this.mBarWidth / 2);
        int i8 = i6 - (this.mBarHeight / 2);
        int i9 = this.mBarWidth;
        int i10 = this.mBarHeight;
        int i11 = ((i5 - this.mBarWidth) - this.mBarSpace) - (this.mBarWidth / 2);
        int i12 = (i6 - (this.mBarHeight / 2)) - this.mBarHeightRatio;
        int i13 = this.mBarWidth;
        int i14 = this.mBarHeight;
        int i15 = this.mBarHeightRatio;
        int i16 = this.mBarHeightRatio;
        i5 = (i5 + (this.mBarWidth / 2)) + this.mBarSpace;
        i6 = (i6 - (this.mBarHeight / 2)) + this.mBarHeightRatio;
        int i17 = this.mBarWidth;
        int i18 = this.mBarHeight;
        int i19 = this.mBarHeightRatio;
        int i20 = this.mBarHeightRatio;
        this.secondBar = new Rect(i7, i8, i9 + i7, i10 + i8);
        this.firstBar = new Rect(i11, i12, i11 + i13, ((i14 + i12) + i15) + i16);
        this.thirdBar = new Rect(i5, i6, i5 + i17, ((i18 + i6) - i19) - i20);
        if (this.shouldStartAnimation) {
            startAnimation();
        }
    }

    public void startAnimation() {
        this.shouldStartAnimation = true;
        this.timer = new Timer();
        this.timer.schedule(new TimerTask() {
            public void run() {
                if (SnoozeLoaderView.this.blinkPosition == 4) {
                    SnoozeLoaderView.this.blinkPosition = 0;
                } else {
                    SnoozeLoaderView.this.blinkPosition = SnoozeLoaderView.this.blinkPosition + 1;
                }
                if (SnoozeLoaderView.this.shouldStartAnimation) {
                    SnoozeLoaderView.this.updateBar(SnoozeLoaderView.this.blinkPosition);
                } else {
                    cancel();
                }
            }
        }, 0, (long) this.mAnimationSpeed);
    }

    public void updateBar(int i) {
        switch (i) {
            case StackFrame.NO_LINE_NUMBER /*0*/:
                this.firstBarPaint = this.inActiveBarPaint;
                this.secondBarPaint = this.inActiveBarPaint;
                this.thirdBarPaint = this.inActiveBarPaint;
                break;
            case com.payu.testapp.R.styleable.WaitingDots_period /*1*/:
                this.firstBarPaint = this.activeBarPaint;
                this.secondBarPaint = this.inActiveBarPaint;
                this.thirdBarPaint = this.inActiveBarPaint;
                break;
            case com.payu.testapp.R.styleable.WaitingDots_jumpHeight /*2*/:
                this.firstBarPaint = this.activeBarPaint;
                this.secondBarPaint = this.activeBarPaint;
                this.thirdBarPaint = this.inActiveBarPaint;
                break;
            case com.payu.testapp.R.styleable.WaitingDots_autoplay /*3*/:
                this.firstBarPaint = this.activeBarPaint;
                this.secondBarPaint = this.activeBarPaint;
                this.thirdBarPaint = this.activeBarPaint;
                break;
            default:
                this.firstBarPaint = this.inActiveBarPaint;
                this.secondBarPaint = this.inActiveBarPaint;
                this.thirdBarPaint = this.inActiveBarPaint;
                break;
        }
        this.mActivity.runOnUiThread(new Runnable() {
            public void run() {
                SnoozeLoaderView.this.invalidate();
            }
        });
    }
}
