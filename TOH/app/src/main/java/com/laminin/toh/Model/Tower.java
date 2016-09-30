package com.laminin.toh.Model;

/**
 * Created by franklin on 15/11/15.
 */
public class Tower {
    public int getLeft() {
        return left;
    }

    public void setLeft(int left) {
        this.left = left;
    }

    public int getTop() {
        return top;
    }

    public void setTop(int top) {
        this.top = top;
    }

    public int getRight() {
        return right;
    }

    public void setRight(int right) {
        this.right = right;
    }

    public int getBottom() {
        return bottom;
    }

    public void setBottom(int bottom) {
        this.bottom = bottom;
    }

    public int getTopLeftRange() {
        return topLeftRange;
    }

    public void setTopLeftRange(int topLeftRange) {
        this.topLeftRange = topLeftRange;
    }

    public int getTopRightRange() {
        return topRightRange;
    }

    public void setTopRightRange(int topRightRange) {
        this.topRightRange = topRightRange;
    }

    public int getBottomLeftRange() {
        return bottomLeftRange;
    }

    public void setBottomLeftRange(int bottomLeftRange) {
        this.bottomLeftRange = bottomLeftRange;
    }

    public int getBottomRightRange() {
        return bottomRightRange;
    }

    public void setBottomRightRange(int bottomRightRange) {
        this.bottomRightRange = bottomRightRange;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public int getxPosition() {
        return xPosition;
    }

    public void setxPosition(int xPosition) {
        this.xPosition = xPosition;
    }

    public int getTowerType() {
        return towerType;
    }

    public void setTowerType(int towerType) {
        this.towerType = towerType;
    }

    int left;
    int top;
    int right;
    int bottom;

    int topLeftRange;
    int topRightRange;
    int bottomLeftRange;
    int bottomRightRange;

    int height;
    int width;

    int xPosition;

    int towerType;

}
