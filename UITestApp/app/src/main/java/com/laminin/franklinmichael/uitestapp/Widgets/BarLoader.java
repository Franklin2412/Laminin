package com.laminin.franklinmichael.uitestapp.Widgets;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;

import java.util.Timer;
import java.util.TimerTask;

/**
 * Created by franklin.michael on 20/05/16.
 */
public class BarLoader extends View {
    // lets have 5 bar at equal space.

    private final int BAR_SPACE = 20;
    private final int BAR_HEIGHT = 70;
    private final int BAR_WIDTH = 20;
    private int barMaximumTop = 0;
    private int barMaximumBottom = 0;
    int firstBarHeight;

    Activity mActivity;

    Rect firstBar;
    Rect secondBar;
    Rect thirdBar;
    Rect fourthBar;
    Rect fifthBar;

    Paint mPaint;

    int firstBarLeft;
    int firstBarTop;
    int firstBarRight;
    int firstBarBottom;

    public BarLoader(Context context) {
        super(context);
        mActivity = (Activity) context;
        init();
    }

    public BarLoader(Context context, AttributeSet attrs) {
        super(context, attrs);
        mActivity = (Activity) context;
        init();
    }

    public BarLoader(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        mActivity  = (Activity) context;
        init();
    }


    private void init(){
        mPaint = new Paint();
        mPaint.setColor(Color.parseColor("#00adf2"));
        mPaint.setStyle(Paint.Style.FILL);
        firstBarHeight = BAR_HEIGHT;
    }

    @Override
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);

        int centerX = w / 2;
        int centerY = h / 2;

        barMaximumTop = centerY - BAR_HEIGHT / 2 - 5;
        barMaximumBottom = centerY - BAR_HEIGHT / 2 + BAR_HEIGHT + 5;

        int thirdBarLeft = centerX - BAR_WIDTH / 2;
        int thirdBarTop = centerY - BAR_HEIGHT / 2;
        int thirdBarRight = thirdBarLeft + BAR_WIDTH;
        int thirdBarBottom = thirdBarTop + BAR_HEIGHT;

        int secondBarLeft = centerX - BAR_WIDTH / 2 - BAR_SPACE - BAR_WIDTH;
        int secondBarTop = centerY - BAR_HEIGHT / 2;
        int secondBarRight = secondBarLeft + BAR_WIDTH;
        int secondBarBottom = secondBarTop + BAR_HEIGHT;

        firstBarLeft  = centerX - BAR_WIDTH / 2 - BAR_SPACE - BAR_WIDTH - BAR_SPACE - BAR_WIDTH;
        firstBarTop = centerY - BAR_HEIGHT / 2;
        firstBarRight = firstBarLeft + BAR_WIDTH;
        firstBarBottom = firstBarTop + BAR_HEIGHT;


        int fourthBarLeft = centerX + BAR_WIDTH / 2 + BAR_SPACE;
        int fourthBarTop = centerY - BAR_HEIGHT / 2;
        int fourthBarRight = fourthBarLeft + BAR_WIDTH;
        int fourthBarBottom = fourthBarTop + BAR_HEIGHT;

        int fifthBarLeft = centerX + BAR_WIDTH / 2 + BAR_SPACE + BAR_WIDTH + BAR_SPACE;
        int fifthBarTop = centerY - BAR_HEIGHT / 2;
        int fifthBarRight = fifthBarLeft + BAR_WIDTH;
        int fifthBarBottom = fifthBarTop + BAR_HEIGHT;


        secondBar = new Rect(secondBarLeft, secondBarTop, secondBarRight, secondBarBottom);
        thirdBar = new Rect(thirdBarLeft, thirdBarTop, thirdBarRight, thirdBarBottom);
        fourthBar = new Rect(fourthBarLeft, fourthBarTop, fourthBarRight, fourthBarBottom);
        fifthBar = new Rect(fifthBarLeft, fifthBarTop, fifthBarRight, fifthBarBottom);


        updateFirstBar();
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);

        firstBar = new Rect(firstBarLeft, firstBarTop, firstBarRight, firstBarBottom);

        canvas.drawRect(firstBar, mPaint);
//        canvas.drawRect(secondBar, mPaint);
//        canvas.drawRect(thirdBar, mPaint);
//        canvas.drawRect(fourthBar, mPaint);
//        canvas.drawRect(fifthBar, mPaint);
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int maxWidth = (5 * BAR_WIDTH) + (4 * BAR_SPACE) + getPaddingRight() + getPaddingLeft();
        int maxHeight = BAR_HEIGHT + getPaddingTop() + getPaddingBottom();
        setMeasuredDimension(maxWidth, maxHeight);
    }

    private void updateFirstBar(){
        Timer timer = new Timer();
        timer.schedule(new TimerTask() {
            @Override
            public void run() {
                if(firstBarTop > barMaximumTop){
                    firstBarTop -= 1;
                }
                mActivity.runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        invalidate();
                    }
                });
            }
        }, 0, 100);
    }
}
