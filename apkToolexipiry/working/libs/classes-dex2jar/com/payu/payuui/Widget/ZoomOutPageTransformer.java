package com.payu.payuui.Widget;

import android.support.v4.view.ViewPager.PageTransformer;
import android.view.View;

public class ZoomOutPageTransformer implements PageTransformer {
    private static final float MIN_ALPHA = 0.5f;
    private static final float MIN_SCALE = 0.0f;

    public void transformPage(View view, float f) {
        int width = view.getWidth();
        int height = view.getHeight();
        if (f < -1.0f) {
            view.setAlpha(0.0f);
        } else if (f <= 1.0f) {
            float max = Math.max(0.0f, 1.0f - Math.abs(f));
            float f2 = (((float) height) * (1.0f - max)) / 2.0f;
            float f3 = (((float) width) * (1.0f - max)) / 2.0f;
            if (f < 0.0f) {
                view.setTranslationX(f3 - (f2 / 2.0f));
            } else {
                view.setTranslationX((-f3) + (f2 / 2.0f));
            }
            view.setScaleX(max);
            view.setScaleY(max);
            view.setAlpha((((max - 0.0f) / 1.0f) * MIN_ALPHA) + MIN_ALPHA);
        } else {
            view.setAlpha(0.0f);
        }
    }
}
