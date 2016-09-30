package com.payu.payuui.Widget.SwipeTab;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Build.VERSION;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

public class SlidingTabLayout extends HorizontalScrollView {
    private static final int TAB_VIEW_PADDING_DIPS = 16;
    private static final int TAB_VIEW_TEXT_SIZE_SP = 12;
    private static final int TITLE_OFFSET_DIPS = 24;
    private SparseArray<String> mContentDescriptions;
    private boolean mDistributeEvenly;
    private final SlidingTabStrip mTabStrip;
    private int mTabViewLayoutId;
    private int mTabViewTextViewId;
    private int mTitleOffset;
    private ViewPager mViewPager;
    private OnPageChangeListener mViewPagerPageChangeListener;

    public interface TabColorizer {
        int getIndicatorColor(int i);
    }

    private class InternalViewPagerListener implements OnPageChangeListener {
        private int mScrollState;

        private InternalViewPagerListener() {
        }

        public void onPageScrollStateChanged(int i) {
            this.mScrollState = i;
            if (SlidingTabLayout.this.mViewPagerPageChangeListener != null) {
                SlidingTabLayout.this.mViewPagerPageChangeListener.onPageScrollStateChanged(i);
            }
        }

        public void onPageScrolled(int i, float f, int i2) {
            int childCount = SlidingTabLayout.this.mTabStrip.getChildCount();
            if (childCount != 0 && i >= 0 && i < childCount) {
                SlidingTabLayout.this.mTabStrip.onViewPagerPageChanged(i, f);
                View childAt = SlidingTabLayout.this.mTabStrip.getChildAt(i);
                SlidingTabLayout.this.scrollToTab(i, childAt != null ? (int) (((float) childAt.getWidth()) * f) : 0);
                if (SlidingTabLayout.this.mViewPagerPageChangeListener != null) {
                    SlidingTabLayout.this.mViewPagerPageChangeListener.onPageScrolled(i, f, i2);
                }
            }
        }

        public void onPageSelected(int i) {
            if (this.mScrollState == 0) {
                SlidingTabLayout.this.mTabStrip.onViewPagerPageChanged(i, 0.0f);
                SlidingTabLayout.this.scrollToTab(i, 0);
            }
            int i2 = 0;
            while (i2 < SlidingTabLayout.this.mTabStrip.getChildCount()) {
                SlidingTabLayout.this.mTabStrip.getChildAt(i2).setSelected(i == i2);
                i2++;
            }
            if (SlidingTabLayout.this.mViewPagerPageChangeListener != null) {
                SlidingTabLayout.this.mViewPagerPageChangeListener.onPageSelected(i);
            }
        }
    }

    private class TabClickListener implements OnClickListener {
        private TabClickListener() {
        }

        public void onClick(View view) {
            for (int i = 0; i < SlidingTabLayout.this.mTabStrip.getChildCount(); i++) {
                if (view == SlidingTabLayout.this.mTabStrip.getChildAt(i)) {
                    SlidingTabLayout.this.mViewPager.setCurrentItem(i);
                    return;
                }
            }
        }
    }

    public SlidingTabLayout(Context context) {
        this(context, null);
    }

    public SlidingTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingTabLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mContentDescriptions = new SparseArray();
        setHorizontalScrollBarEnabled(true);
        setFillViewport(true);
        this.mTitleOffset = (int) (24.0f * getResources().getDisplayMetrics().density);
        this.mTabStrip = new SlidingTabStrip(context);
        addView(this.mTabStrip, -1, -2);
    }

    private void populateTabStrip() {
        PagerAdapter adapter = this.mViewPager.getAdapter();
        OnClickListener tabClickListener = new TabClickListener();
        for (int i = 0; i < adapter.getCount(); i++) {
            View inflate;
            TextView textView;
            if (this.mTabViewLayoutId != 0) {
                inflate = LayoutInflater.from(getContext()).inflate(this.mTabViewLayoutId, this.mTabStrip, false);
                textView = (TextView) inflate.findViewById(this.mTabViewTextViewId);
            } else {
                inflate = null;
                textView = null;
            }
            if (inflate == null) {
                inflate = createDefaultTabView(getContext());
            }
            TextView textView2 = (textView == null && TextView.class.isInstance(inflate)) ? (TextView) inflate : textView;
            if (this.mDistributeEvenly) {
                LayoutParams layoutParams = (LayoutParams) inflate.getLayoutParams();
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
            }
            textView2.setText(adapter.getPageTitle(i));
            inflate.setOnClickListener(tabClickListener);
            String str = (String) this.mContentDescriptions.get(i, null);
            if (str != null) {
                inflate.setContentDescription(str);
            }
            this.mTabStrip.addView(inflate);
            if (i == this.mViewPager.getCurrentItem()) {
                inflate.setSelected(true);
            }
        }
    }

    private void scrollToTab(int i, int i2) {
        int childCount = this.mTabStrip.getChildCount();
        if (childCount != 0 && i >= 0 && i < childCount) {
            View childAt = this.mTabStrip.getChildAt(i);
            if (childAt != null) {
                childCount = childAt.getLeft() + i2;
                if (i > 0 || i2 > 0) {
                    childCount -= this.mTitleOffset;
                }
                scrollTo(childCount, 0);
            }
        }
    }

    protected TextView createDefaultTabView(Context context) {
        TextView textView = new TextView(context);
        textView.setGravity(17);
        textView.setTextSize(2, 12.0f);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setLayoutParams(new LayoutParams(-2, -2));
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(16843534, typedValue, true);
        textView.setBackgroundResource(typedValue.resourceId);
        if (VERSION.SDK_INT >= 14) {
            textView.setAllCaps(true);
        }
        int i = (int) (16.0f * getResources().getDisplayMetrics().density);
        textView.setPadding(i, i, i, i);
        return textView;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mViewPager != null) {
            scrollToTab(this.mViewPager.getCurrentItem(), 0);
        }
    }

    public void setContentDescription(int i, String str) {
        this.mContentDescriptions.put(i, str);
    }

    public void setCustomTabColorizer(TabColorizer tabColorizer) {
        this.mTabStrip.setCustomTabColorizer(tabColorizer);
    }

    public void setCustomTabView(int i, int i2) {
        this.mTabViewLayoutId = i;
        this.mTabViewTextViewId = i2;
    }

    public void setDistributeEvenly(boolean z) {
        this.mDistributeEvenly = z;
    }

    public void setOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        this.mViewPagerPageChangeListener = onPageChangeListener;
    }

    public void setSelectedIndicatorColors(int... iArr) {
        this.mTabStrip.setSelectedIndicatorColors(iArr);
    }

    public void setViewPager(ViewPager viewPager) {
        this.mTabStrip.removeAllViews();
        this.mViewPager = viewPager;
        if (viewPager != null) {
            viewPager.setOnPageChangeListener(new InternalViewPagerListener());
            populateTabStrip();
        }
    }
}
