package com.squareup.leakcanary.internal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;

public final class MoreDetailsView extends View {
    private static final Paint iconPaint;
    private boolean opened;

    static {
        iconPaint = new Paint(1);
        iconPaint.setColor(-8083771);
    }

    public MoreDetailsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        iconPaint.setStrokeWidth(LeakCanaryUi.dpToPixel(2.0f, getResources()));
    }

    protected void onDraw(Canvas canvas) {
        int width = getWidth();
        int height = getHeight();
        int i = height / 2;
        int i2 = width / 2;
        if (this.opened) {
            canvas.drawLine(0.0f, (float) i, (float) width, (float) i, iconPaint);
            return;
        }
        canvas.drawLine(0.0f, (float) i, (float) width, (float) i, iconPaint);
        canvas.drawLine((float) i2, 0.0f, (float) i2, (float) height, iconPaint);
    }

    public void setOpened(boolean z) {
        if (z != this.opened) {
            this.opened = z;
            invalidate();
        }
    }
}
