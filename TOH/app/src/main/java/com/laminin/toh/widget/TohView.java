package com.laminin.toh.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;

import com.laminin.toh.Model.Disk;
import com.laminin.toh.Model.Tower;

/**
 * Created by franklin on 14/11/15.
 */
public class TohView extends View {

    // LOG
    private static final String TAG = "laminin-log";
    public static final int SOURCE_TOWER = 0;
    public static final int DESTINATION_TOWER = 1;
    public static final int AUXILIARY_TOWER = 2;

    // Context;
    private Context mContext;

    // Canvas
    private Canvas mCanvas;

    // paint object
    private Paint mPaint;

    // screen width;
    private int mScreenWidth;
    // screen height;
    private int mScreenHeight;

    // colors
    private static final String BASE_PLATFORM_COLOR_HEX = "#0000FF"; // RRGGBB - BLUE
    private static final String SOURCE_TOWER_COLOR_HEX = "#00FF00";

    // specifications
    private static final float basePlatformStrokeWidth = 10;
    private static final float sourceTowerStrokeWidth = 8;
    private int basePlatformWidth;
    private int basePlatformHeight;

    private int singleTowerWidth;

    private int towerHeight;
    private int towerWidth;
    private int towerHeightFactor = 10; // should be depend on the number of disks.


    private Tower sourceTower;
    private Tower destinationTower;
    private Tower auxiliaryTower;

    private int sourceTowerXPosition;
    private int destinationTowerXPosition;
    private int auxiliaryTowerXPosition;

    // Rectangles;
    private Rect basePlatform;
    private Rect sourceTowerRect;
    private Rect destinationTowerRect;
    private Rect auxiliaryTowerRect;

    // Disk,
    private DiskView diskView;

    public TohView(Context context, AttributeSet attrs) {
        super(context, attrs);
        mContext = context;

        sourceTower = new Tower();
        sourceTower.setTowerType(SOURCE_TOWER);
        destinationTower = new Tower();
        destinationTower.setTowerType(DESTINATION_TOWER);
        auxiliaryTower = new Tower();
        auxiliaryTower.setTowerType(AUXILIARY_TOWER);

        // initialize diskview;
        diskView = new DiskView(context, attrs);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);

        mCanvas = canvas;

        mScreenHeight = getMeasuredHeight();
        mScreenWidth = getMeasuredWidth();

        // we need to draw the static background here.
        // step 1 - Draw the rectangle base : should take whole width and 1/4 of height.
        // step 2 - Draw three rods (source rod, destination rod, auxiliary rod.) height should be depend on the number of disks.
        // step 3 - Draw the disks. according to the user input.

        // Drawing rec box;
        mPaint = new Paint();
        mPaint.setColor(Color.parseColor(BASE_PLATFORM_COLOR_HEX));
        mPaint.setStrokeWidth(basePlatformStrokeWidth);
        mPaint.setStyle(Paint.Style.STROKE);

        basePlatformHeight = mScreenHeight - (mScreenHeight / 4);
        basePlatformWidth = mScreenWidth;

        Log.d(TAG, "Screen height = " + mScreenHeight + ", Screen width = " + mScreenWidth + ", base platform height =  " + basePlatformHeight + ", base platform width = " + basePlatformWidth);
        //Rect(int left, int top, int right, int bottom)
        basePlatform = new Rect(0, basePlatformHeight, basePlatformWidth, mScreenHeight);
        canvas.drawRect(basePlatform, mPaint);

        towerHeight = basePlatformHeight;
        towerWidth = mScreenWidth / 20;

        // Draw tower.
        mPaint = new Paint();
        mPaint.setColor(Color.parseColor(SOURCE_TOWER_COLOR_HEX));
        mPaint.setStrokeWidth(sourceTowerStrokeWidth);
        mPaint.setStyle(Paint.Style.STROKE);

        // single tower width;
        singleTowerWidth = mScreenWidth / 3;

        // source tower properties
        sourceTower.setTopLeftRange(0);
        sourceTower.setTopRightRange(0);
        sourceTower.setBottomLeftRange(singleTowerWidth);
        sourceTower.setBottomRightRange(towerHeight);
        sourceTower.setWidth(singleTowerWidth);
        sourceTower.setHeight(basePlatformHeight);

        destinationTower.setTopLeftRange(singleTowerWidth);
        destinationTower.setTopRightRange(0);
        destinationTower.setBottomLeftRange(2 * singleTowerWidth);
        destinationTower.setBottomRightRange(towerHeight);
        destinationTower.setWidth(2 * singleTowerWidth);
        destinationTower.setHeight(basePlatformHeight);

        auxiliaryTower.setTopLeftRange(2 * singleTowerWidth);
        auxiliaryTower.setTopRightRange(0);
        auxiliaryTower.setBottomLeftRange(3 * singleTowerWidth);
        auxiliaryTower.setBottomRightRange(towerHeight);
        auxiliaryTower.setWidth(3 * singleTowerWidth);
        auxiliaryTower.setHeight(basePlatformHeight);


        // source tower
        sourceTower.setxPosition(((singleTowerWidth / 2) - (towerWidth / 2)));
//        sourceTowerXPosition = (singleTowerWidth / 2) - (towerWidth / 2);
        sourceTowerRect = new Rect(sourceTower.getxPosition(), towerHeightFactor, sourceTower.getxPosition() + towerWidth, towerHeight);
        canvas.drawRect(sourceTowerRect, mPaint);

        // destination tower
        destinationTower.setxPosition(sourceTower.getxPosition() + singleTowerWidth);
//        destinationTowerXPosition = sourceTowerXPosition + singleTowerWidth;
        destinationTowerRect = new Rect(destinationTower.getxPosition(), towerHeightFactor, destinationTower.getxPosition() + towerWidth, towerHeight);
        canvas.drawRect(destinationTowerRect, mPaint);

        // Auxiliary tower
        auxiliaryTower.setxPosition(destinationTower.getxPosition() + singleTowerWidth);
//        auxiliaryTowerXPosition = destinationTowerXPosition + singleTowerWidth;
        auxiliaryTowerRect = new Rect(auxiliaryTower.getxPosition(), towerHeightFactor, auxiliaryTower.getxPosition()+ towerWidth, towerHeight);
        canvas.drawRect(auxiliaryTowerRect, mPaint);

        // lets draw the border as well;
        mPaint = new Paint();
        mPaint.setColor(Color.GRAY);
        mPaint.setStrokeWidth(2);
        mPaint.setStyle(Paint.Style.FILL);
        canvas.drawLine(singleTowerWidth, 0, singleTowerWidth, mScreenHeight, mPaint);
        canvas.drawLine( 2 * singleTowerWidth, 0, 2 * singleTowerWidth, mScreenHeight, mPaint);

    }

    public void drawDisk(Disk disk, int tower, int position){
        if(null == diskView) diskView = new DiskView(mContext, null);
        switch (tower){
            case SOURCE_TOWER:
                // Calculate the disk width and disk height here.
                // Disk's width (position) will change when we change the tower.
                // Disk's Height (position) will change when we change the tower.
                
                diskView.drawDisk(disk, sourceTower, mCanvas);
                break;
            case DESTINATION_TOWER:
                break;
            case AUXILIARY_TOWER:
                break;
        }
//        disk.draw(mCanvas);
    }

}
