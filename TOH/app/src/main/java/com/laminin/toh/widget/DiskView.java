package com.laminin.toh.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;

import com.laminin.toh.Model.Disk;
import com.laminin.toh.Model.Tower;

/**
 * Created by franklin on 15/11/15.
 */
public class DiskView extends View {


    private Rect mOval;
    private int mDiskType;
    private Canvas mCanvas;
    private Paint mPaint;

    private int maximumDiskWidth;
    private int maximumDiskHeight;

    private int singleDiskWidthRatio;
    private int singleDiskHeight;

    private int currentDiskWidth;
    private int currentDiskHeight;

    public DiskView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public DiskView(Context context, AttributeSet attrs, int diskType){
        super(context, null);
        mDiskType = diskType;
    }

    public void drawDisk(Disk disk, Tower tower, Canvas canvas){
        mOval =  new Rect();
        mPaint = new Paint();
        mPaint.setColor(Color.parseColor(disk.getDiskColor()));
        mPaint.setStrokeWidth(5);
        mPaint.setStyle(Paint.Style.FILL);
        switch (tower.getTowerType()){
            case TohView.SOURCE_TOWER:
                // okay new we have to check for the size of the oval

                maximumDiskWidth = tower.getWidth();
                maximumDiskHeight = tower.getHeight();

                singleDiskHeight = tower.getHeight() / disk.getTotalDiskCount();
                singleDiskWidthRatio = tower.getWidth() / disk.getTotalDiskCount();

                switch (disk.getDiskType()){
                    case 1:
                        break;
                    case 2:
                        break;
                    case 3:
                        break;
                    case 4:
                        break;
                    case 5:
                        break;
                    case 6:
                        break;
                    case 7:
                        break;
                    case 8:
                        break;
                }
                break;
            case TohView.DESTINATION_TOWER:
                break;
            case TohView.AUXILIARY_TOWER:
                break;
        }

//        canvas.drawRect(mOval, mPaint);
    }
}
