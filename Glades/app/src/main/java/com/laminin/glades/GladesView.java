package com.laminin.glades;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.support.annotation.RequiresApi;
import android.util.AttributeSet;
import android.view.View;

import java.util.ArrayList;

/**
 * Created by franklin.michael on 03/08/16.
 */

public class GladesView extends View {

    // screen maximum width
    private int screenWidth;
    // screen maximum height
    private int screenHeight;

    // default grid line paint
    private Paint gridLinePaint;

    // default start position of the grid
    private Point mGridStartPoint;
    private Point mGridEndPoint;

    // screen density
    private float screenDensity;
    // screnn density factor
    private float densityMultiplicationFactor;
    // distance between grid lines
    private int distanceBetweenGridLines;
    // grid start point
    private int gridStartX;
    // grid end point.
    private int gridStartY;
    // Glades Utils
    private GladesUtils gladesUtils;
    // All grid positions.
    private ArrayList<Rect> gladesGridList;
    // Paint for home.
    private Paint homePaint;


    public GladesView(Context context) {
        super(context);
        init();
    }

    public GladesView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public GladesView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }


    @RequiresApi(api = GladesConstants.LOLLIPOP_VERSION)
    public GladesView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        init();
    }

    private void init(){
        screenDensity = getResources().getDisplayMetrics().density;
        densityMultiplicationFactor = screenDensity / GladesConstants.DEFAULT_SCREEN_DENSITY;
        distanceBetweenGridLines = Math.round(GladesConstants.DISTANCE_BETWEEN_GRID_LINES * densityMultiplicationFactor);
        gridStartX = Math.round(GladesConstants.GRID_START_X * densityMultiplicationFactor);
        gridStartY = Math.round(GladesConstants.GRID_START_Y * densityMultiplicationFactor);

        mGridStartPoint = new Point(gridStartX, gridStartY);
        gridLinePaint = new Paint();
        gridLinePaint.setColor(GladesConstants.GLADE_GRID_COLOR);
        gridLinePaint.setStyle(Paint.Style.STROKE);
        gridLinePaint.setStrokeWidth(Math.round(GladesConstants.GRID_LINE_WIDTH * densityMultiplicationFactor));
        mGridEndPoint = new Point(0, 0);
        gladesUtils = new GladesUtils();

        homePaint = new Paint();
        homePaint.setColor(GladesConstants.GLADE_HOME_COLOR);
        homePaint.setStyle(Paint.Style.STROKE);
    }

    @Override
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        screenWidth = w;
        screenHeight = h;
        setGridMaximumPoint(screenWidth, screenHeight);
        gladesGridList = gladesUtils.prepareGrids(mGridStartPoint, mGridEndPoint, distanceBetweenGridLines);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);

        for(Rect rect: gladesGridList){
            canvas.drawRect(rect, gridLinePaint);
        }

        // draw home inside a rect

//        canvas.drawPath(gladesUtils.getHomePath(gladesGridList.get(0), distanceBetweenGridLines), homePaint);

//        canvas.drawPath(gladesUtils.getTankPath(gladesGridList.get(14), distanceBetweenGridLines), homePaint);

        canvas.drawPath(gladesUtils.getPipePath(gladesGridList.get(2), distanceBetweenGridLines), homePaint);

    }

    private void setGridMaximumPoint(int screenWidth, int screenHeight){
        int maximumWidth = 0;
        int maximumHeight = 0;
        mGridEndPoint = new Point();
        for(int i = gridStartX; i <= screenWidth; i += distanceBetweenGridLines){
            maximumWidth = i;
        }
        for(int i = gridStartY; i <= screenHeight; i+= distanceBetweenGridLines){
            maximumHeight = i;
        }
        mGridEndPoint.set(maximumWidth, maximumHeight);
    }

}
