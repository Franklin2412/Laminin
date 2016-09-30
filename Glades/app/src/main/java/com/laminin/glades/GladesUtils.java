package com.laminin.glades;

import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;

import java.util.ArrayList;

/**
 * Created by franklin.michael on 03/08/16.
 */

public class GladesUtils {

    public ArrayList<Rect> prepareGrids(Point start, Point end, int gridSize){
        ArrayList<Rect> gridArrayList = new ArrayList<>();
        for(int currentY = start.y; currentY <= end.y - gridSize; currentY += gridSize){ // collecting vertical grid points.
            for(int currentX = start.x; currentX <= end.x - gridSize; currentX += gridSize ){ // collecting horizontal grid points.
                Rect rect = new Rect(currentX, currentY, currentX + gridSize, currentY + gridSize);
                gridArrayList.add(rect);
            }
        }
        return gridArrayList;
    }

    public Path getHomePath(Rect rect, int distance) {
        int homeMargin = distance / 4;
        Rect withMarginRect = new Rect(rect.left + homeMargin, rect.top + homeMargin, rect.right - homeMargin, rect.bottom - homeMargin);

        Path homePath = new Path();
        // Drawing home.
        homePath.moveTo(withMarginRect.right, withMarginRect.bottom);
        homePath.lineTo(withMarginRect.left, withMarginRect.bottom);
        homePath.lineTo(withMarginRect.left, withMarginRect.bottom - homeMargin);
        homePath.lineTo(withMarginRect.left - homeMargin / 2, withMarginRect.bottom - homeMargin);
        homePath.lineTo(withMarginRect.left + homeMargin, withMarginRect.top); // center top of home.

        int centerX = Math.round((withMarginRect.left + homeMargin + withMarginRect.right + homeMargin /2) / 2);
        int centerY = Math.round(withMarginRect.top + withMarginRect.top + homeMargin) / 2;

        homePath.lineTo(centerX - homeMargin / 6, centerY);
        homePath.lineTo(centerX - homeMargin / 6, withMarginRect.top + homeMargin / 6);
        homePath.lineTo(centerX + homeMargin / 6, withMarginRect.top + homeMargin / 6);
        homePath.lineTo(centerX + homeMargin / 6, centerY + homeMargin / 6);
        homePath.lineTo(withMarginRect.right + homeMargin / 2, withMarginRect.top + homeMargin);
        homePath.lineTo(withMarginRect.right, withMarginRect.top + homeMargin);
        homePath.lineTo(withMarginRect.right, withMarginRect.bottom);

        return homePath;
    }

    public Path getTankPath(Rect rect, int distance){
        int margin = distance / 4;
        Rect withMarginRect = new Rect(rect.left + margin, rect.top + margin, rect.right - margin, rect.bottom - margin);
        Path tankPath = new Path();

        tankPath.moveTo(withMarginRect.right, withMarginRect.bottom);
        tankPath.lineTo(withMarginRect.left, withMarginRect.bottom);
        tankPath.lineTo(withMarginRect.left, withMarginRect.top);
        tankPath.lineTo(withMarginRect.left + margin / 4, withMarginRect.top);
        tankPath.lineTo(withMarginRect.left + margin / 4, withMarginRect.top - margin / 4);
        tankPath.lineTo(withMarginRect.right - margin / 4, withMarginRect.top - margin / 4);
        tankPath.lineTo(withMarginRect.right - margin / 4, withMarginRect.top);
        tankPath.lineTo(withMarginRect.right, withMarginRect.top);
        tankPath.lineTo(withMarginRect.right, withMarginRect.bottom);

        return tankPath;
    }
}
