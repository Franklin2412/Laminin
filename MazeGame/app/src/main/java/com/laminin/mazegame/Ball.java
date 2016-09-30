package com.laminin.mazegame;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.nfc.Tag;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;

/**
 * Created by franklin on 23/08/15.
 */
public class Ball extends View{

    private static final String TAG = "franklin";
    private static final String COLOR_HEX = "#0000FF"; // RRGGBB
    private final Paint mPaint;
    private float ballXPosition = 0;
    private float ballYPosition = 0;
    private float xAccelerationDifference = 0;
    private float yAccelerationDifference = 0;
    private float currentXAcceleration = 0;
    private float currentYAcceleration = 0;
    private float lastXAcceleration = 0;
    private float lastYAcceleration = 0;
    private float ballRadius = 20;
    private static final float strokeWidth = 3;

    private static float DEFAULT_X_POSITION = 250;
    private static float DEFAULT_Y_POSITION = 250;

    private static float MAXIMUM_X_POSITION = 0;
    private static float MAXIMUM_Y_POSITION = 0;

    private static float MOVEMENT = 5;

    public Ball(Context context, AttributeSet attrs) {
        super(context, attrs);
        mPaint = new Paint();
        mPaint.setAntiAlias(true);
        mPaint.setColor(Color.parseColor(COLOR_HEX));
        mPaint.setStrokeWidth(strokeWidth);
        mPaint.setStyle(Paint.Style.STROKE);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);

        if(ballXPosition == 0) ballXPosition = DEFAULT_X_POSITION;
        if(ballYPosition == 0) ballYPosition = DEFAULT_Y_POSITION;
        if(MAXIMUM_X_POSITION == 0) MAXIMUM_X_POSITION = getWidth();
        if(MAXIMUM_Y_POSITION == 0) MAXIMUM_Y_POSITION = getHeight();

        canvas.drawCircle(ballXPosition, ballYPosition, ballRadius, mPaint);
    }

    public void move(float xAcceleration, float yAcceleration) {

        Log.d(TAG, "X Acceleration: " + xAcceleration + " Y Acceleration: " + yAcceleration);

//        currentXAcceleration = xAcceleration;
//        currentYAcceleration = yAcceleration;
//
//        xAccelerationDifference = currentXAcceleration - lastXAcceleration;
//        yAccelerationDifference = currentYAcceleration - lastYAcceleration;
//
//        lastXAcceleration = currentXAcceleration;
//        lastYAcceleration = currentYAcceleration;
//
//        Log.d(TAG, "X Acceleration Difference: " + xAccelerationDifference + " Y Acceleration Difference: " + yAccelerationDifference);
//
//        if(ballXPosition > 0 && ballXPosition < MAXIMUM_X_POSITION){
//            if(xAccelerationDifference > 0 ){ // move change the location of ball
//                ballXPosition += MOVEMENT;
//            }else{
//                ballXPosition -= MOVEMENT;
//            }
//        }
//
//        if(ballYPosition > 0 && ballYPosition < MAXIMUM_Y_POSITION) {
//            if (yAccelerationDifference > 0) {
//                ballYPosition += MOVEMENT;
//            } else {
//                ballYPosition -= MOVEMENT;
//            }
//        }
//
//        invalidate();
//        xAccelerationDifference = lastXAcceleration - xAcceleration;
//        yAccelerationDifference = lastYAcceleration - yAcceleration;

//        Log.d(TAG, "X Acceleration Difference: " + xAccelerationDifference + " Y Acceleration Difference: " + yAccelerationDifference);

//        if(ballXPosition < MAXIMUM_X_POSITION) ballXPosition += xAccelerationDifference;
//        if(ballYPosition < MAXIMUM_Y_POSITION) ballYPosition += yAccelerationDifference;

//        lastXAcceleration = xAcceleration;
//        lastYAcceleration = yAcceleration;

//        currentXAcceleration = Math.abs(xAcceleration);
//        currentYAcceleration = Math.abs(yAcceleration);
//
//        if(currentXAcceleration - lastXAcceleration > 0){
//            if(ballXPosition < MAXIMUM_X_POSITION) ballXPosition += 1;
//        }else{
//            if(ballXPosition > 0) ballXPosition -= 1;
//        }
//
//        if(currentYAcceleration - lastYAcceleration > 0) {
//            if(ballYPosition < MAXIMUM_Y_POSITION) ballYPosition += 1;
//        }else{
//            if(ballYPosition > 0 ) ballYPosition -= 1;
//        }
//
//        lastXAcceleration = currentXAcceleration;
//        lastYAcceleration = currentYAcceleration;
//
//        invalidate();

    }
}
