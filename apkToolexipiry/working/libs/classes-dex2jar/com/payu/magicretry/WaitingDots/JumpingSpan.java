package com.payu.magicretry.WaitingDots;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.FontMetricsInt;
import android.text.style.ReplacementSpan;

public class JumpingSpan extends ReplacementSpan {
    private float translationX;
    private float translationY;

    public JumpingSpan() {
        this.translationX = 0.0f;
        this.translationY = 0.0f;
    }

    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        canvas.drawText(charSequence, i, i2, f + this.translationX, ((float) i4) + this.translationY, paint);
    }

    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, FontMetricsInt fontMetricsInt) {
        return (int) paint.measureText(charSequence, i, i2);
    }

    public void setTranslationX(float f) {
        this.translationX = f;
    }

    public void setTranslationY(float f) {
        this.translationY = f;
    }
}
