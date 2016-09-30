package com.laminin.toh.Model;

/**
 * Created by franklin on 17/11/15.
 */
public class Disk {

    public int getDiskType() {
        return diskType;
    }

    public void setDiskType(int diskType) {
        this.diskType = diskType;
    }

    public String getDiskColor() {
        return diskColor;
    }

    public void setDiskColor(String diskColor) {
        this.diskColor = diskColor;
    }

    public int getTotalDiskCount() {
        return totalDiskCount;
    }

    public void setTotalDiskCount(int totalDiskCount) {
        this.totalDiskCount = totalDiskCount;
    }

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public int getTopLeft() {
        return topLeft;
    }

    public void setTopLeft(int topLeft) {
        this.topLeft = topLeft;
    }

    public int getTopRight() {
        return topRight;
    }

    public void setTopRight(int topRight) {
        this.topRight = topRight;
    }

    public int getBottomLeft() {
        return bottomLeft;
    }

    public void setBottomLeft(int bottomLeft) {
        this.bottomLeft = bottomLeft;
    }

    public int getBottomRight() {
        return bottomRight;
    }

    public void setBottomRight(int bottomRight) {
        this.bottomRight = bottomRight;
    }

    int diskType;
    String diskColor;
    int totalDiskCount;
    int width;
    int height;

    int topLeft;
    int topRight;
    int bottomLeft;
    int bottomRight;

}
