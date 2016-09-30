package com.squareup.leakcanary.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.payu.testapp.R;

public final class DisplayLeakConnectorView extends View {
    private static final Paint clearPaint;
    private static final Paint iconPaint;
    private static final Paint leakPaint;
    private static final Paint rootPaint;
    private Bitmap cache;
    private Type type;

    /* renamed from: com.squareup.leakcanary.internal.DisplayLeakConnectorView.1 */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$squareup$leakcanary$internal$DisplayLeakConnectorView$Type;

        static {
            $SwitchMap$com$squareup$leakcanary$internal$DisplayLeakConnectorView$Type = new int[Type.values().length];
            try {
                $SwitchMap$com$squareup$leakcanary$internal$DisplayLeakConnectorView$Type[Type.NODE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$squareup$leakcanary$internal$DisplayLeakConnectorView$Type[Type.START.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public enum Type {
        START,
        NODE,
        END
    }

    static {
        iconPaint = new Paint(1);
        rootPaint = new Paint(1);
        leakPaint = new Paint(1);
        clearPaint = new Paint(1);
        iconPaint.setColor(-4539718);
        rootPaint.setColor(-8083771);
        leakPaint.setColor(-5155506);
        clearPaint.setColor(0);
        clearPaint.setXfermode(LeakCanaryUi.CLEAR_XFER_MODE);
    }

    public DisplayLeakConnectorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.type = Type.NODE;
    }

    protected void onDraw(Canvas canvas) {
        int width = getWidth();
        int height = getHeight();
        if (!(this.cache == null || (this.cache.getWidth() == width && this.cache.getHeight() == height))) {
            this.cache.recycle();
            this.cache = null;
        }
        if (this.cache == null) {
            this.cache = Bitmap.createBitmap(width, height, Config.ARGB_8888);
            Canvas canvas2 = new Canvas(this.cache);
            float f = ((float) width) / 2.0f;
            float f2 = ((float) height) / 2.0f;
            float f3 = ((float) width) / 3.0f;
            float dpToPixel = LeakCanaryUi.dpToPixel(4.0f, getResources());
            iconPaint.setStrokeWidth(dpToPixel);
            rootPaint.setStrokeWidth(dpToPixel);
            switch (AnonymousClass1.$SwitchMap$com$squareup$leakcanary$internal$DisplayLeakConnectorView$Type[this.type.ordinal()]) {
                case R.styleable.WaitingDots_period /*1*/:
                    canvas2.drawLine(f, 0.0f, f, (float) height, iconPaint);
                    canvas2.drawCircle(f, f2, f, iconPaint);
                    canvas2.drawCircle(f, f2, f3, clearPaint);
                    break;
                case R.styleable.WaitingDots_jumpHeight /*2*/:
                    float f4 = f - (dpToPixel / 2.0f);
                    canvas2.drawRect(0.0f, 0.0f, (float) width, f4, rootPaint);
                    canvas2.drawCircle(0.0f, f4, f4, clearPaint);
                    canvas2.drawCircle((float) width, f4, f4, clearPaint);
                    canvas2.drawLine(f, 0.0f, f, f2, rootPaint);
                    canvas2.drawLine(f, f2, f, (float) height, iconPaint);
                    canvas2.drawCircle(f, f2, f, iconPaint);
                    canvas2.drawCircle(f, f2, f3, clearPaint);
                    break;
                default:
                    canvas2.drawLine(f, 0.0f, f, f2, iconPaint);
                    canvas2.drawCircle(f, f2, f3, leakPaint);
                    break;
            }
        }
        canvas.drawBitmap(this.cache, 0.0f, 0.0f, null);
    }

    public void setType(Type type) {
        if (type != this.type) {
            this.type = type;
            if (this.cache != null) {
                this.cache.recycle();
                this.cache = null;
            }
            invalidate();
        }
    }
}
