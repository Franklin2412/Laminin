package com.laminin.franklinmichael.uitestapp.Widgets;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;

import com.laminin.franklinmichael.uitestapp.R;

/**
 * Created by franklin.michael on 02/06/16.
 */

public class CurvedLineView extends View {

    // Required Activity context to run on ui thread.
    Activity mActivity;

    // paint object for drawing the curved area.
    Paint linePaint;
    // paint object for background of the curved area.
    Paint fillPaint;
    // paint object for background of the area above curve.
    Paint upperPathPaint;
    // paint object for background of the area below curve.
    Paint lowerPathPaint;

    // Default fill curved area fill color is blue. #00adf2
    private int fillColor = Color.parseColor("#00adf2");
    // Default upper and lower fill color is white . will update it if any input come from xml in constructor.
    private int upperFillColor = Color.WHITE;
    private int lowerFillColor = Color.WHITE;

    //destination point of the curved area. (both upper line and bottom line meets at the same point.)
    private Point destinationPoint;
    // mid point of curved area's  upper line.
    private Point lineOneMidPoint;
    // source point of curved area's bottom line.
    private Point lineTwoSourcePoint;
    // mid point of curved area's upper part.
    private Point lineTwoMidPoint;

    // the distance from the top to the destination point of destination point of the (upper or lower) lines of the curved area.
    private int DESTINATION_POINT_HEIGHT_DISTANCE = 100;
    // scree width and screen height.
    int width, height;

    public CurvedLineView(Context context) {
        super(context);
        mActivity = (Activity) context;
        init();
    }

    public CurvedLineView(Context context, AttributeSet attrs) {
        super(context, attrs);
        mActivity = (Activity) context;
        // Reading custom attributes.
        TypedArray snoozeLoaderArray = context.getTheme().obtainStyledAttributes(attrs, R.styleable.CurvedLineView, 0, 0);
        try {
            fillColor = snoozeLoaderArray.getColor(R.styleable.CurvedLineView_fillColor, fillColor);
            upperFillColor = snoozeLoaderArray.getColor(R.styleable.CurvedLineView_upperColor, upperFillColor);
            lowerFillColor = snoozeLoaderArray.getColor(R.styleable.CurvedLineView_lowerColor, lowerFillColor);
        } finally {
            snoozeLoaderArray.recycle();
        }
        init();
    }

    public CurvedLineView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        mActivity = (Activity) context;
        TypedArray snoozeLoaderArray = context.getTheme().obtainStyledAttributes(attrs, R.styleable.CurvedLineView, 0, 0);
        try {
            fillColor = snoozeLoaderArray.getColor(R.styleable.CurvedLineView_fillColor, fillColor);
            upperFillColor = snoozeLoaderArray.getColor(R.styleable.CurvedLineView_upperColor, upperFillColor);
            lowerFillColor = snoozeLoaderArray.getColor(R.styleable.CurvedLineView_lowerColor, lowerFillColor);
        } finally {
            snoozeLoaderArray.recycle();
        }
        init();
    }

    private void init(){
        // paint object to draw the upper and lower lines of the curved area.
        linePaint = new Paint();
        linePaint.setColor(fillColor);
        linePaint.setStyle(Paint.Style.STROKE);
        linePaint.setStrokeWidth(5);
        linePaint.setAntiAlias(true);

        // paint object to fill the curved area.
        fillPaint = new Paint();
        fillPaint.setColor(fillColor);
        fillPaint.setStyle(Paint.Style.FILL);

        // paint object to fill the area above curved area.
        upperPathPaint = new Paint();
        upperPathPaint.setColor(upperFillColor);
        upperPathPaint.setStyle(Paint.Style.FILL);

        // pint object to fill the lower area of the curved area.
        lowerPathPaint = new Paint();
        lowerPathPaint.setColor(lowerFillColor);
        lowerPathPaint.setStyle(Paint.Style.FILL);

    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);

        Point lineOneSourcePoint = new Point(0, 0);

        //source point of curved area's bottom line.
        lineTwoSourcePoint = new Point(0, DESTINATION_POINT_HEIGHT_DISTANCE + DESTINATION_POINT_HEIGHT_DISTANCE / 2);

        // path to draw the curved area
        Path linePath = new Path();
        // path from curved area's upper line source(0,0) to upper area's
        linePath.cubicTo(lineOneSourcePoint.x, lineOneSourcePoint.y, lineOneMidPoint.x, lineOneMidPoint.y,  destinationPoint.x, destinationPoint.y);
        linePath.cubicTo(destinationPoint.x, destinationPoint.y, lineTwoMidPoint.x, lineTwoMidPoint.y, lineTwoSourcePoint.x, lineTwoSourcePoint.y);

        canvas.drawPath(linePath, fillPaint);

        // We need to fill the upper part
        Path upperPath = new Path();
        upperPath.cubicTo(lineOneSourcePoint.x, lineOneSourcePoint.y, lineTwoMidPoint.x, lineOneMidPoint.y, destinationPoint.x, destinationPoint.y);
        upperPath.lineTo(destinationPoint.x, 0);
        upperPath.lineTo(0, 0);
        canvas.drawPath(upperPath, upperPathPaint);

        // We need to fill the lower part
        Path lowerPath = new Path();
        lowerPath.moveTo(destinationPoint.x, destinationPoint.y);
        lowerPath.cubicTo(destinationPoint.x, destinationPoint.y, lineTwoMidPoint.x, lineTwoMidPoint.y, lineTwoSourcePoint.x, lineTwoSourcePoint.y);
        lowerPath.lineTo(0, lineTwoMidPoint.y);
        lowerPath.lineTo(destinationPoint.x, lineTwoMidPoint.y);
        canvas.drawPath(lowerPath, lowerPathPaint);

    }


    @Override
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);

        this.width = w;
        this.height = h;

        lineOneMidPoint = new Point(w/2, (DESTINATION_POINT_HEIGHT_DISTANCE / 2) + DESTINATION_POINT_HEIGHT_DISTANCE);
        lineTwoMidPoint = new Point(w/2, (DESTINATION_POINT_HEIGHT_DISTANCE / 2) + DESTINATION_POINT_HEIGHT_DISTANCE + DESTINATION_POINT_HEIGHT_DISTANCE);
        destinationPoint = new Point(w, DESTINATION_POINT_HEIGHT_DISTANCE);
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        setMeasuredDimension(MeasureSpec.getSize(widthMeasureSpec), DESTINATION_POINT_HEIGHT_DISTANCE + (int)(DESTINATION_POINT_HEIGHT_DISTANCE * .87f));
    }
}
