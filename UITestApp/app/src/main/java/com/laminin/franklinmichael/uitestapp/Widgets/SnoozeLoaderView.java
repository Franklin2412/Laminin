package com.laminin.franklinmichael.uitestapp.Widgets;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;

import com.laminin.franklinmichael.uitestapp.R;

import java.util.Timer;
import java.util.TimerTask;

/**
 * Created by franklin.michael on 18/05/16.
 */
public class SnoozeLoaderView extends View {

    // Required Activity context to run on ui thread.
    Activity mActivity;

    // Paint with active color.
    private Paint activeBarPaint;
    // Pint with inActive color.
    private Paint inActiveBarPaint;

    // dimensions of first rectangle bar.
    private Rect firstBar;
    // dimensions of second rectangle bar.
    private Rect secondBar;
    // dimensions of third rectangle bar.
    private Rect thirdBar;

    // Paint config of first bar.
    private Paint firstBarPaint;
    // paint config of second bar.
    private Paint secondBarPaint;
    // paint config of third bar.
    private Paint thirdBarPaint;

    // default bar width
    private  int mBarWidth = 40;
    // default bar height
    private  int mBarHeight = 120;
    // default bar space
    private  int mBarSpace = 70;
    // bar height ration ie (first bar is 40 + 40 px taller than second bar.)
    private int mBarHeightRatio = mBarHeight / 3;
    // Should animation start automatically?
    private boolean shouldStartAnimation = false;
    // bar color while active
    private int mActiveColor = Color.parseColor("#00adf2");
    // bar color while inActive
    private int mInActiveColor = Color.parseColor("#b0eafc");
    // Default animation speed
    private int mAnimationSpeed = 200;
    // Which bar get active?
    private int blinkPosition = 0;

    public SnoozeLoaderView(Context context) {
        super(context);
        mActivity = (Activity) context;
        init();
    }


    public SnoozeLoaderView(Context context, AttributeSet attrs) {
        super(context, attrs);
        mActivity = (Activity) context;

        // Reading custom attributes.
        TypedArray snoozeLoaderArray = context.getTheme().obtainStyledAttributes(attrs, R.styleable.SnoozeLoaderView, 0, 0);
        try {
            shouldStartAnimation = snoozeLoaderArray.getBoolean(R.styleable.SnoozeLoaderView_startAnimate, this.shouldStartAnimation);
            mActiveColor = snoozeLoaderArray.getColor(R.styleable.SnoozeLoaderView_activeBarColor, this.mActiveColor);
            mInActiveColor = snoozeLoaderArray.getColor(R.styleable.SnoozeLoaderView_inActiveBarColor, this.mInActiveColor);
            mBarWidth = snoozeLoaderArray.getDimensionPixelSize(R.styleable.SnoozeLoaderView_barWidth, this.mBarWidth);
            mBarHeight = snoozeLoaderArray.getDimensionPixelSize(R.styleable.SnoozeLoaderView_barHeight, this.mBarHeight);
            mBarHeightRatio = mBarHeight / 3;
            mBarSpace = snoozeLoaderArray.getDimensionPixelSize(R.styleable.SnoozeLoaderView_barSpace, this.mBarSpace);
            mAnimationSpeed = snoozeLoaderArray.getInt(R.styleable.SnoozeLoaderView_animationSpeed, this.mAnimationSpeed);
            init();
        } finally {
            snoozeLoaderArray.recycle();
        }


    }

    public SnoozeLoaderView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        mActivity = (Activity) context;

        // Reading custom attributes.
        TypedArray snoozeLoaderArray = context.getTheme().obtainStyledAttributes(attrs, R.styleable.SnoozeLoaderView, 0, 0);
        try {
            shouldStartAnimation = snoozeLoaderArray.getBoolean(R.styleable.SnoozeLoaderView_startAnimate, this.shouldStartAnimation);
            mActiveColor = snoozeLoaderArray.getColor(R.styleable.SnoozeLoaderView_activeBarColor, this.mActiveColor);
            mInActiveColor = snoozeLoaderArray.getColor(R.styleable.SnoozeLoaderView_inActiveBarColor, this.mInActiveColor);
            mBarWidth = snoozeLoaderArray.getDimensionPixelSize(R.styleable.SnoozeLoaderView_barWidth, this.mBarWidth);
            mBarHeight = snoozeLoaderArray.getDimensionPixelSize(R.styleable.SnoozeLoaderView_barHeight, this.mBarHeight);
            mBarHeightRatio = mBarHeight / 3;
            mBarSpace = snoozeLoaderArray.getDimensionPixelSize(R.styleable.SnoozeLoaderView_barSpace, this.mBarSpace);
            init();
        } finally {
            snoozeLoaderArray.recycle();
        }
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);

        // Drawing three rectangle bars.
        canvas.drawRect(firstBar, firstBarPaint); // Left side one - big
        canvas.drawRect(secondBar, secondBarPaint); // Middle one - normal
        canvas.drawRect(thirdBar, thirdBarPaint); // right side one. - small
    }


    /**
     * Depends on the position we update the paint and redraw
     * @param position position of the rect bar to change color.
     */
    public void updateBar(int position){
        switch (position){
            case 0: // All bars in normal color
                firstBarPaint = inActiveBarPaint;
                secondBarPaint = inActiveBarPaint;
                thirdBarPaint = inActiveBarPaint;
                break;
            case 1: // fill first bar
                firstBarPaint = activeBarPaint;
                secondBarPaint = inActiveBarPaint;
                thirdBarPaint = inActiveBarPaint;
                break;
            case 2: // fill second bar
                firstBarPaint = activeBarPaint;
                secondBarPaint = activeBarPaint;
                thirdBarPaint = inActiveBarPaint;
                break;
            case 3: // fill third bar
                firstBarPaint = activeBarPaint;
                secondBarPaint = activeBarPaint;
                thirdBarPaint = activeBarPaint;
                break;
            default: // back to normal.
                firstBarPaint = inActiveBarPaint;
                secondBarPaint = inActiveBarPaint;
                thirdBarPaint = inActiveBarPaint;
                break;
        }

        mActivity.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                //calling on Draw method : should run on ui thread.
                invalidate();
            }
        });

    }

    private void init(){
        activeBarPaint = new Paint();
        activeBarPaint.setColor(mActiveColor);
        activeBarPaint.setStyle(Paint.Style.FILL);

        inActiveBarPaint = new Paint();
        inActiveBarPaint.setColor(mInActiveColor);
        inActiveBarPaint.setStyle(Paint.Style.FILL);

        firstBarPaint = inActiveBarPaint;
        secondBarPaint = inActiveBarPaint;
        thirdBarPaint = inActiveBarPaint;

    }

    @Override
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);

        // p(centerX, centerY) is the center point of the view
        int centerX = w / 2;
        int centerY = h / 2;

//        void drawRect(float left, float top, float right, float bottom, Paint paint)

        // Lets draw the second bar at center
        int secondBarLeft = centerX - mBarWidth /2;
        int secondBarTop = centerY - mBarHeight / 2;
        int secondBarRight = secondBarLeft + mBarWidth;
        int secondBarBottom = secondBarTop + mBarHeight;

        // First bar is drawn just left side of Second bar with mBarSpace
        int firstBarLeft = centerX - mBarWidth - mBarSpace - mBarWidth / 2;
        int firstBarTop = centerY - (mBarHeight / 2) - mBarHeightRatio;
        int firstBarRight = firstBarLeft + mBarWidth;
        int firstBarBottom = firstBarTop + mBarHeight + mBarHeightRatio + mBarHeightRatio;

        // Third bar is drawn just right side of the second bar with mBarSpace
        int thirdBarLeft = centerX +  mBarWidth / 2 + mBarSpace;
        int thirdBarTop = centerY - (mBarHeight / 2) + mBarHeightRatio;
        int thirdBarRight = thirdBarLeft + mBarWidth;
        int thirdBarBottom = thirdBarTop + mBarHeight - mBarHeightRatio - mBarHeightRatio;

        secondBar = new Rect(secondBarLeft, secondBarTop, secondBarRight, secondBarBottom);
        firstBar = new Rect(firstBarLeft, firstBarTop, firstBarRight, firstBarBottom);
        thirdBar = new Rect(thirdBarLeft, thirdBarTop, thirdBarRight, thirdBarBottom);

        // if startAnimate flag has true value start animation.
        if(shouldStartAnimation){
            startAnimation();
        }
    }

    /**
     * Start animation
     * Can be called from java
     * if startAnimation attr is set to true call it.
     */
    public void startAnimation() {
        shouldStartAnimation = true; // this value is for calling startAnimation from java class.
        Timer timer = new Timer();
        timer.schedule(new TimerTask() {
            @Override
            public void run() {
                if (blinkPosition == 4) { // We have only 4 cases.
                    blinkPosition = 0;
                } else {
                    blinkPosition += 1;
                }
                if(shouldStartAnimation) {
                    updateBar(blinkPosition);
                }else{
                    this.cancel();
                }
            }
        }, 0, mAnimationSpeed); // defines how fast it should animate.
    }

    /**
     * Cancel animation.
     * On destr
     */

    public void cancelAnimation() {
        shouldStartAnimation = false;
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int totalWidth = 3 * mBarWidth + 2 * mBarSpace + getPaddingLeft() + getPaddingRight();
        int totalHeight = mBarHeight + 2 * mBarHeightRatio + getPaddingTop() + getPaddingBottom();
        setMeasuredDimension(totalWidth, totalHeight);
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        shouldStartAnimation = false;
    }
}
