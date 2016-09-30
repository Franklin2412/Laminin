package android.support.v4.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.support.annotation.CallSuper;
import android.support.annotation.DrawableRes;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.support.v4.widget.AutoScrollHelper;
import android.support.v4.widget.EdgeEffectCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import com.payu.testapp.R;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class ViewPager extends ViewGroup {
    private static final int CLOSE_ENOUGH = 2;
    private static final Comparator<ItemInfo> COMPARATOR;
    private static final boolean DEBUG = false;
    private static final int DEFAULT_GUTTER_SIZE = 16;
    private static final int DEFAULT_OFFSCREEN_PAGES = 1;
    private static final int DRAW_ORDER_DEFAULT = 0;
    private static final int DRAW_ORDER_FORWARD = 1;
    private static final int DRAW_ORDER_REVERSE = 2;
    private static final int INVALID_POINTER = -1;
    private static final int[] LAYOUT_ATTRS;
    private static final int MAX_SETTLE_DURATION = 600;
    private static final int MIN_DISTANCE_FOR_FLING = 25;
    private static final int MIN_FLING_VELOCITY = 400;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    private static final String TAG = "ViewPager";
    private static final boolean USE_CACHE = false;
    private static final Interpolator sInterpolator;
    private static final ViewPositionComparator sPositionComparator;
    private int mActivePointerId;
    private PagerAdapter mAdapter;
    private OnAdapterChangeListener mAdapterChangeListener;
    private int mBottomPageBounds;
    private boolean mCalledSuper;
    private int mChildHeightMeasureSpec;
    private int mChildWidthMeasureSpec;
    private int mCloseEnough;
    private int mCurItem;
    private int mDecorChildCount;
    private int mDefaultGutterSize;
    private int mDrawingOrder;
    private ArrayList<View> mDrawingOrderedChildren;
    private final Runnable mEndScrollRunnable;
    private int mExpectedAdapterCount;
    private long mFakeDragBeginTime;
    private boolean mFakeDragging;
    private boolean mFirstLayout;
    private float mFirstOffset;
    private int mFlingDistance;
    private int mGutterSize;
    private boolean mInLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private OnPageChangeListener mInternalPageChangeListener;
    private boolean mIsBeingDragged;
    private boolean mIsScrollStarted;
    private boolean mIsUnableToDrag;
    private final ArrayList<ItemInfo> mItems;
    private float mLastMotionX;
    private float mLastMotionY;
    private float mLastOffset;
    private EdgeEffectCompat mLeftEdge;
    private Drawable mMarginDrawable;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private boolean mNeedCalculatePageOffsets;
    private PagerObserver mObserver;
    private int mOffscreenPageLimit;
    private OnPageChangeListener mOnPageChangeListener;
    private List<OnPageChangeListener> mOnPageChangeListeners;
    private int mPageMargin;
    private PageTransformer mPageTransformer;
    private boolean mPopulatePending;
    private Parcelable mRestoredAdapterState;
    private ClassLoader mRestoredClassLoader;
    private int mRestoredCurItem;
    private EdgeEffectCompat mRightEdge;
    private int mScrollState;
    private Scroller mScroller;
    private boolean mScrollingCacheEnabled;
    private Method mSetChildrenDrawingOrderEnabled;
    private final ItemInfo mTempItem;
    private final Rect mTempRect;
    private int mTopPageBounds;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;

    interface Decor {
    }

    public interface OnPageChangeListener {
        void onPageScrollStateChanged(int i);

        void onPageScrolled(int i, float f, int i2);

        void onPageSelected(int i);
    }

    interface OnAdapterChangeListener {
        void onAdapterChanged(PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2);
    }

    static class ItemInfo {
        Object object;
        float offset;
        int position;
        boolean scrolling;
        float widthFactor;

        ItemInfo() {
        }
    }

    public static class LayoutParams extends android.view.ViewGroup.LayoutParams {
        int childIndex;
        public int gravity;
        public boolean isDecor;
        boolean needsMeasure;
        int position;
        float widthFactor;

        public LayoutParams() {
            super(ViewPager.INVALID_POINTER, ViewPager.INVALID_POINTER);
            this.widthFactor = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.widthFactor = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.LAYOUT_ATTRS);
            this.gravity = obtainStyledAttributes.getInteger(ViewPager.SCROLL_STATE_IDLE, 48);
            obtainStyledAttributes.recycle();
        }
    }

    class MyAccessibilityDelegate extends AccessibilityDelegateCompat {
        MyAccessibilityDelegate() {
        }

        private boolean canScroll() {
            return (ViewPager.this.mAdapter == null || ViewPager.this.mAdapter.getCount() <= ViewPager.SCROLL_STATE_DRAGGING) ? ViewPager.DEBUG : true;
        }

        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            AccessibilityRecordCompat asRecord = AccessibilityEventCompat.asRecord(accessibilityEvent);
            asRecord.setScrollable(canScroll());
            if (accessibilityEvent.getEventType() == AccessibilityNodeInfoCompat.ACTION_SCROLL_FORWARD && ViewPager.this.mAdapter != null) {
                asRecord.setItemCount(ViewPager.this.mAdapter.getCount());
                asRecord.setFromIndex(ViewPager.this.mCurItem);
                asRecord.setToIndex(ViewPager.this.mCurItem);
            }
        }

        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setClassName(ViewPager.class.getName());
            accessibilityNodeInfoCompat.setScrollable(canScroll());
            if (ViewPager.this.canScrollHorizontally(ViewPager.SCROLL_STATE_DRAGGING)) {
                accessibilityNodeInfoCompat.addAction((int) AccessibilityNodeInfoCompat.ACTION_SCROLL_FORWARD);
            }
            if (ViewPager.this.canScrollHorizontally(ViewPager.INVALID_POINTER)) {
                accessibilityNodeInfoCompat.addAction((int) AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD);
            }
        }

        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (super.performAccessibilityAction(view, i, bundle)) {
                return true;
            }
            switch (i) {
                case AccessibilityNodeInfoCompat.ACTION_SCROLL_FORWARD /*4096*/:
                    if (!ViewPager.this.canScrollHorizontally(ViewPager.SCROLL_STATE_DRAGGING)) {
                        return ViewPager.DEBUG;
                    }
                    ViewPager.this.setCurrentItem(ViewPager.this.mCurItem + ViewPager.SCROLL_STATE_DRAGGING);
                    return true;
                case AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD /*8192*/:
                    if (!ViewPager.this.canScrollHorizontally(ViewPager.INVALID_POINTER)) {
                        return ViewPager.DEBUG;
                    }
                    ViewPager.this.setCurrentItem(ViewPager.this.mCurItem + ViewPager.INVALID_POINTER);
                    return true;
                default:
                    return ViewPager.DEBUG;
            }
        }
    }

    public interface PageTransformer {
        void transformPage(View view, float f);
    }

    private class PagerObserver extends DataSetObserver {
        private PagerObserver() {
        }

        public void onChanged() {
            ViewPager.this.dataSetChanged();
        }

        public void onInvalidated() {
            ViewPager.this.dataSetChanged();
        }
    }

    public static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR;
        Parcelable adapterState;
        ClassLoader loader;
        int position;

        static {
            CREATOR = ParcelableCompat.newCreator(new ParcelableCompatCreatorCallbacks<SavedState>() {
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return new SavedState(parcel, classLoader);
                }

                public SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            });
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel);
            if (classLoader == null) {
                classLoader = getClass().getClassLoader();
            }
            this.position = parcel.readInt();
            this.adapterState = parcel.readParcelable(classLoader);
            this.loader = classLoader;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.position + "}";
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.position);
            parcel.writeParcelable(this.adapterState, i);
        }
    }

    public static class SimpleOnPageChangeListener implements OnPageChangeListener {
        public void onPageScrollStateChanged(int i) {
        }

        public void onPageScrolled(int i, float f, int i2) {
        }

        public void onPageSelected(int i) {
        }
    }

    static class ViewPositionComparator implements Comparator<View> {
        ViewPositionComparator() {
        }

        public int compare(View view, View view2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
            return layoutParams.isDecor != layoutParams2.isDecor ? layoutParams.isDecor ? ViewPager.SCROLL_STATE_DRAGGING : ViewPager.INVALID_POINTER : layoutParams.position - layoutParams2.position;
        }
    }

    static {
        int[] iArr = new int[SCROLL_STATE_DRAGGING];
        iArr[SCROLL_STATE_IDLE] = 16842931;
        LAYOUT_ATTRS = iArr;
        COMPARATOR = new Comparator<ItemInfo>() {
            public int compare(ItemInfo itemInfo, ItemInfo itemInfo2) {
                return itemInfo.position - itemInfo2.position;
            }
        };
        sInterpolator = new Interpolator() {
            public float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return (f2 * (((f2 * f2) * f2) * f2)) + 1.0f;
            }
        };
        sPositionComparator = new ViewPositionComparator();
    }

    public ViewPager(Context context) {
        super(context);
        this.mItems = new ArrayList();
        this.mTempItem = new ItemInfo();
        this.mTempRect = new Rect();
        this.mRestoredCurItem = INVALID_POINTER;
        this.mRestoredAdapterState = null;
        this.mRestoredClassLoader = null;
        this.mFirstOffset = -3.4028235E38f;
        this.mLastOffset = AutoScrollHelper.NO_MAX;
        this.mOffscreenPageLimit = SCROLL_STATE_DRAGGING;
        this.mActivePointerId = INVALID_POINTER;
        this.mFirstLayout = true;
        this.mNeedCalculatePageOffsets = DEBUG;
        this.mEndScrollRunnable = new Runnable() {
            public void run() {
                ViewPager.this.setScrollState(ViewPager.SCROLL_STATE_IDLE);
                ViewPager.this.populate();
            }
        };
        this.mScrollState = SCROLL_STATE_IDLE;
        initViewPager();
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mItems = new ArrayList();
        this.mTempItem = new ItemInfo();
        this.mTempRect = new Rect();
        this.mRestoredCurItem = INVALID_POINTER;
        this.mRestoredAdapterState = null;
        this.mRestoredClassLoader = null;
        this.mFirstOffset = -3.4028235E38f;
        this.mLastOffset = AutoScrollHelper.NO_MAX;
        this.mOffscreenPageLimit = SCROLL_STATE_DRAGGING;
        this.mActivePointerId = INVALID_POINTER;
        this.mFirstLayout = true;
        this.mNeedCalculatePageOffsets = DEBUG;
        this.mEndScrollRunnable = new Runnable() {
            public void run() {
                ViewPager.this.setScrollState(ViewPager.SCROLL_STATE_IDLE);
                ViewPager.this.populate();
            }
        };
        this.mScrollState = SCROLL_STATE_IDLE;
        initViewPager();
    }

    private void calculatePageOffsets(ItemInfo itemInfo, int i, ItemInfo itemInfo2) {
        int i2;
        int i3;
        int i4;
        float f;
        int count = this.mAdapter.getCount();
        int clientWidth = getClientWidth();
        float f2 = clientWidth > 0 ? ((float) this.mPageMargin) / ((float) clientWidth) : 0.0f;
        if (itemInfo2 != null) {
            i2 = itemInfo2.position;
            float f3;
            int i5;
            ItemInfo itemInfo3;
            float pageWidth;
            if (i2 < itemInfo.position) {
                i3 = i2 + SCROLL_STATE_DRAGGING;
                f3 = (itemInfo2.offset + itemInfo2.widthFactor) + f2;
                i4 = SCROLL_STATE_IDLE;
                while (i3 <= itemInfo.position && i4 < this.mItems.size()) {
                    i5 = i4;
                    itemInfo3 = (ItemInfo) this.mItems.get(i4);
                    clientWidth = i5;
                    while (i3 > itemInfo3.position && clientWidth < this.mItems.size() + INVALID_POINTER) {
                        i4 = clientWidth + SCROLL_STATE_DRAGGING;
                        i5 = i4;
                        itemInfo3 = (ItemInfo) this.mItems.get(i4);
                        clientWidth = i5;
                    }
                    i5 = i3;
                    f = f3;
                    i2 = i5;
                    while (i2 < itemInfo3.position) {
                        pageWidth = (this.mAdapter.getPageWidth(i2) + f2) + f;
                        i2 += SCROLL_STATE_DRAGGING;
                        f = pageWidth;
                    }
                    itemInfo3.offset = f;
                    f += itemInfo3.widthFactor + f2;
                    i4 = i2 + SCROLL_STATE_DRAGGING;
                    f3 = f;
                    i3 = i4;
                    i4 = clientWidth;
                }
            } else if (i2 > itemInfo.position) {
                clientWidth = this.mItems.size() + INVALID_POINTER;
                i4 = i2 + INVALID_POINTER;
                f3 = itemInfo2.offset;
                i3 = i4;
                i4 = clientWidth;
                while (i3 >= itemInfo.position && i4 >= 0) {
                    i5 = i4;
                    itemInfo3 = (ItemInfo) this.mItems.get(i4);
                    clientWidth = i5;
                    while (i3 < itemInfo3.position && clientWidth > 0) {
                        i4 = clientWidth + INVALID_POINTER;
                        i5 = i4;
                        itemInfo3 = (ItemInfo) this.mItems.get(i4);
                        clientWidth = i5;
                    }
                    i5 = i3;
                    f = f3;
                    i2 = i5;
                    while (i2 > itemInfo3.position) {
                        pageWidth = f - (this.mAdapter.getPageWidth(i2) + f2);
                        i2 += INVALID_POINTER;
                        f = pageWidth;
                    }
                    f -= itemInfo3.widthFactor + f2;
                    itemInfo3.offset = f;
                    i4 = i2 + INVALID_POINTER;
                    f3 = f;
                    i3 = i4;
                    i4 = clientWidth;
                }
            }
        }
        int size = this.mItems.size();
        f = itemInfo.offset;
        i4 = itemInfo.position + INVALID_POINTER;
        this.mFirstOffset = itemInfo.position == 0 ? itemInfo.offset : -3.4028235E38f;
        this.mLastOffset = itemInfo.position == count + INVALID_POINTER ? (itemInfo.offset + itemInfo.widthFactor) - 1.0f : AutoScrollHelper.NO_MAX;
        for (i2 = i + INVALID_POINTER; i2 >= 0; i2 += INVALID_POINTER) {
            ItemInfo itemInfo4 = (ItemInfo) this.mItems.get(i2);
            while (i4 > itemInfo4.position) {
                f -= this.mAdapter.getPageWidth(i4) + f2;
                i4 += INVALID_POINTER;
            }
            f -= itemInfo4.widthFactor + f2;
            itemInfo4.offset = f;
            if (itemInfo4.position == 0) {
                this.mFirstOffset = f;
            }
            i4 += INVALID_POINTER;
        }
        float f4 = (itemInfo.offset + itemInfo.widthFactor) + f2;
        i3 = itemInfo.position + SCROLL_STATE_DRAGGING;
        for (i2 = i + SCROLL_STATE_DRAGGING; i2 < size; i2 += SCROLL_STATE_DRAGGING) {
            itemInfo4 = (ItemInfo) this.mItems.get(i2);
            while (i3 < itemInfo4.position) {
                f4 += this.mAdapter.getPageWidth(i3) + f2;
                i3 += SCROLL_STATE_DRAGGING;
            }
            if (itemInfo4.position == count + INVALID_POINTER) {
                this.mLastOffset = (itemInfo4.widthFactor + f4) - 1.0f;
            }
            itemInfo4.offset = f4;
            f4 += itemInfo4.widthFactor + f2;
            i3 += SCROLL_STATE_DRAGGING;
        }
        this.mNeedCalculatePageOffsets = DEBUG;
    }

    private void completeScroll(boolean z) {
        int scrollY;
        boolean z2 = this.mScrollState == SCROLL_STATE_SETTLING ? SCROLL_STATE_DRAGGING : DEBUG;
        if (z2) {
            setScrollingCacheEnabled(DEBUG);
            if (!this.mScroller.isFinished() ? SCROLL_STATE_DRAGGING : DEBUG) {
                this.mScroller.abortAnimation();
                int scrollX = getScrollX();
                scrollY = getScrollY();
                int currX = this.mScroller.getCurrX();
                int currY = this.mScroller.getCurrY();
                if (!(scrollX == currX && scrollY == currY)) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        pageScrolled(currX);
                    }
                }
            }
        }
        this.mPopulatePending = DEBUG;
        boolean z3 = z2;
        scrollY = SCROLL_STATE_IDLE;
        while (scrollY < this.mItems.size()) {
            ItemInfo itemInfo = (ItemInfo) this.mItems.get(scrollY);
            if (itemInfo.scrolling) {
                itemInfo.scrolling = DEBUG;
                z2 = SCROLL_STATE_DRAGGING;
            } else {
                z2 = z3;
            }
            scrollY += SCROLL_STATE_DRAGGING;
            z3 = z2;
        }
        if (!z3) {
            return;
        }
        if (z) {
            ViewCompat.postOnAnimation(this, this.mEndScrollRunnable);
        } else {
            this.mEndScrollRunnable.run();
        }
    }

    private int determineTargetPage(int i, float f, int i2, int i3) {
        if (Math.abs(i3) <= this.mFlingDistance || Math.abs(i2) <= this.mMinimumVelocity) {
            i = (int) ((i >= this.mCurItem ? 0.4f : 0.6f) + (((float) i) + f));
        } else if (i2 <= 0) {
            i += SCROLL_STATE_DRAGGING;
        }
        if (this.mItems.size() <= 0) {
            return i;
        }
        return Math.max(((ItemInfo) this.mItems.get(SCROLL_STATE_IDLE)).position, Math.min(i, ((ItemInfo) this.mItems.get(this.mItems.size() + INVALID_POINTER)).position));
    }

    private void dispatchOnPageScrolled(int i, float f, int i2) {
        if (this.mOnPageChangeListener != null) {
            this.mOnPageChangeListener.onPageScrolled(i, f, i2);
        }
        if (this.mOnPageChangeListeners != null) {
            int size = this.mOnPageChangeListeners.size();
            for (int i3 = SCROLL_STATE_IDLE; i3 < size; i3 += SCROLL_STATE_DRAGGING) {
                OnPageChangeListener onPageChangeListener = (OnPageChangeListener) this.mOnPageChangeListeners.get(i3);
                if (onPageChangeListener != null) {
                    onPageChangeListener.onPageScrolled(i, f, i2);
                }
            }
        }
        if (this.mInternalPageChangeListener != null) {
            this.mInternalPageChangeListener.onPageScrolled(i, f, i2);
        }
    }

    private void dispatchOnPageSelected(int i) {
        if (this.mOnPageChangeListener != null) {
            this.mOnPageChangeListener.onPageSelected(i);
        }
        if (this.mOnPageChangeListeners != null) {
            int size = this.mOnPageChangeListeners.size();
            for (int i2 = SCROLL_STATE_IDLE; i2 < size; i2 += SCROLL_STATE_DRAGGING) {
                OnPageChangeListener onPageChangeListener = (OnPageChangeListener) this.mOnPageChangeListeners.get(i2);
                if (onPageChangeListener != null) {
                    onPageChangeListener.onPageSelected(i);
                }
            }
        }
        if (this.mInternalPageChangeListener != null) {
            this.mInternalPageChangeListener.onPageSelected(i);
        }
    }

    private void dispatchOnScrollStateChanged(int i) {
        if (this.mOnPageChangeListener != null) {
            this.mOnPageChangeListener.onPageScrollStateChanged(i);
        }
        if (this.mOnPageChangeListeners != null) {
            int size = this.mOnPageChangeListeners.size();
            for (int i2 = SCROLL_STATE_IDLE; i2 < size; i2 += SCROLL_STATE_DRAGGING) {
                OnPageChangeListener onPageChangeListener = (OnPageChangeListener) this.mOnPageChangeListeners.get(i2);
                if (onPageChangeListener != null) {
                    onPageChangeListener.onPageScrollStateChanged(i);
                }
            }
        }
        if (this.mInternalPageChangeListener != null) {
            this.mInternalPageChangeListener.onPageScrollStateChanged(i);
        }
    }

    private void enableLayers(boolean z) {
        int childCount = getChildCount();
        for (int i = SCROLL_STATE_IDLE; i < childCount; i += SCROLL_STATE_DRAGGING) {
            ViewCompat.setLayerType(getChildAt(i), z ? SCROLL_STATE_SETTLING : SCROLL_STATE_IDLE, null);
        }
    }

    private void endDrag() {
        this.mIsBeingDragged = DEBUG;
        this.mIsUnableToDrag = DEBUG;
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private Rect getChildRectInPagerCoordinates(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(SCROLL_STATE_IDLE, SCROLL_STATE_IDLE, SCROLL_STATE_IDLE, SCROLL_STATE_IDLE);
        } else {
            rect.left = view.getLeft();
            rect.right = view.getRight();
            rect.top = view.getTop();
            rect.bottom = view.getBottom();
            ViewPager parent = view.getParent();
            while ((parent instanceof ViewGroup) && parent != this) {
                ViewGroup viewGroup = parent;
                rect.left += viewGroup.getLeft();
                rect.right += viewGroup.getRight();
                rect.top += viewGroup.getTop();
                rect.bottom += viewGroup.getBottom();
                parent = viewGroup.getParent();
            }
        }
        return rect;
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private ItemInfo infoForCurrentScrollPosition() {
        int clientWidth = getClientWidth();
        float scrollX = clientWidth > 0 ? ((float) getScrollX()) / ((float) clientWidth) : 0.0f;
        float f = clientWidth > 0 ? ((float) this.mPageMargin) / ((float) clientWidth) : 0.0f;
        int i = INVALID_POINTER;
        Object obj = SCROLL_STATE_DRAGGING;
        int i2 = SCROLL_STATE_IDLE;
        float f2 = 0.0f;
        float f3 = 0.0f;
        ItemInfo itemInfo = null;
        while (i2 < this.mItems.size()) {
            ItemInfo itemInfo2 = (ItemInfo) this.mItems.get(i2);
            if (obj != null || itemInfo2.position == i + SCROLL_STATE_DRAGGING) {
                i = i2;
            } else {
                itemInfo2 = this.mTempItem;
                itemInfo2.offset = (f2 + f3) + f;
                itemInfo2.position = i + SCROLL_STATE_DRAGGING;
                itemInfo2.widthFactor = this.mAdapter.getPageWidth(itemInfo2.position);
                i = i2 + INVALID_POINTER;
            }
            float f4 = itemInfo2.offset;
            f2 = itemInfo2.widthFactor;
            if (obj == null && scrollX < f4) {
                return itemInfo;
            }
            if (scrollX < (f2 + f4) + f || i == this.mItems.size() + INVALID_POINTER) {
                return itemInfo2;
            }
            int i3 = itemInfo2.position;
            f2 = itemInfo2.widthFactor;
            f3 = f4;
            obj = SCROLL_STATE_IDLE;
            i2 = i + SCROLL_STATE_DRAGGING;
            i = i3;
            itemInfo = itemInfo2;
        }
        return itemInfo;
    }

    private boolean isGutterDrag(float f, float f2) {
        return ((f >= ((float) this.mGutterSize) || f2 <= 0.0f) && (f <= ((float) (getWidth() - this.mGutterSize)) || f2 >= 0.0f)) ? DEBUG : true;
    }

    private void onSecondaryPointerUp(MotionEvent motionEvent) {
        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
        if (MotionEventCompat.getPointerId(motionEvent, actionIndex) == this.mActivePointerId) {
            actionIndex = actionIndex == 0 ? SCROLL_STATE_DRAGGING : SCROLL_STATE_IDLE;
            this.mLastMotionX = MotionEventCompat.getX(motionEvent, actionIndex);
            this.mActivePointerId = MotionEventCompat.getPointerId(motionEvent, actionIndex);
            if (this.mVelocityTracker != null) {
                this.mVelocityTracker.clear();
            }
        }
    }

    private boolean pageScrolled(int i) {
        if (this.mItems.size() == 0) {
            this.mCalledSuper = DEBUG;
            onPageScrolled(SCROLL_STATE_IDLE, 0.0f, SCROLL_STATE_IDLE);
            if (this.mCalledSuper) {
                return DEBUG;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        ItemInfo infoForCurrentScrollPosition = infoForCurrentScrollPosition();
        int clientWidth = getClientWidth();
        int i2 = this.mPageMargin;
        float f = ((float) this.mPageMargin) / ((float) clientWidth);
        int i3 = infoForCurrentScrollPosition.position;
        float f2 = ((((float) i) / ((float) clientWidth)) - infoForCurrentScrollPosition.offset) / (infoForCurrentScrollPosition.widthFactor + f);
        clientWidth = (int) (((float) (clientWidth + i2)) * f2);
        this.mCalledSuper = DEBUG;
        onPageScrolled(i3, f2, clientWidth);
        if (this.mCalledSuper) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    private boolean performDrag(float f) {
        boolean z;
        float f2;
        boolean z2 = true;
        boolean z3 = DEBUG;
        float f3 = this.mLastMotionX;
        this.mLastMotionX = f;
        float scrollX = ((float) getScrollX()) + (f3 - f);
        int clientWidth = getClientWidth();
        float f4 = ((float) clientWidth) * this.mFirstOffset;
        float f5 = ((float) clientWidth) * this.mLastOffset;
        ItemInfo itemInfo = (ItemInfo) this.mItems.get(SCROLL_STATE_IDLE);
        ItemInfo itemInfo2 = (ItemInfo) this.mItems.get(this.mItems.size() + INVALID_POINTER);
        if (itemInfo.position != 0) {
            f4 = itemInfo.offset * ((float) clientWidth);
            z = DEBUG;
        } else {
            z = SCROLL_STATE_DRAGGING;
        }
        if (itemInfo2.position != this.mAdapter.getCount() + INVALID_POINTER) {
            f2 = itemInfo2.offset * ((float) clientWidth);
            z2 = DEBUG;
        } else {
            f2 = f5;
        }
        if (scrollX < f4) {
            if (z) {
                z3 = this.mLeftEdge.onPull(Math.abs(f4 - scrollX) / ((float) clientWidth));
            }
        } else if (scrollX > f2) {
            if (z2) {
                z3 = this.mRightEdge.onPull(Math.abs(scrollX - f2) / ((float) clientWidth));
            }
            f4 = f2;
        } else {
            f4 = scrollX;
        }
        this.mLastMotionX += f4 - ((float) ((int) f4));
        scrollTo((int) f4, getScrollY());
        pageScrolled((int) f4);
        return z3;
    }

    private void recomputeScrollPosition(int i, int i2, int i3, int i4) {
        int min;
        if (i2 <= 0 || this.mItems.isEmpty()) {
            ItemInfo infoForPosition = infoForPosition(this.mCurItem);
            min = (int) ((infoForPosition != null ? Math.min(infoForPosition.offset, this.mLastOffset) : 0.0f) * ((float) ((i - getPaddingLeft()) - getPaddingRight())));
            if (min != getScrollX()) {
                completeScroll(DEBUG);
                scrollTo(min, getScrollY());
            }
        } else if (this.mScroller.isFinished()) {
            min = getPaddingLeft();
            int paddingRight = getPaddingRight();
            float f = (float) (((i - min) - paddingRight) + i3);
            scrollTo((int) (f * (((float) getScrollX()) / ((float) (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)))), getScrollY());
        } else {
            this.mScroller.setFinalX(getCurrentItem() * getClientWidth());
        }
    }

    private void removeNonDecorViews() {
        int i = SCROLL_STATE_IDLE;
        while (i < getChildCount()) {
            if (!((LayoutParams) getChildAt(i).getLayoutParams()).isDecor) {
                removeViewAt(i);
                i += INVALID_POINTER;
            }
            i += SCROLL_STATE_DRAGGING;
        }
    }

    private void requestParentDisallowInterceptTouchEvent(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    private boolean resetTouch() {
        this.mActivePointerId = INVALID_POINTER;
        endDrag();
        return this.mLeftEdge.onRelease() | this.mRightEdge.onRelease();
    }

    private void scrollToItem(int i, boolean z, int i2, boolean z2) {
        int max;
        ItemInfo infoForPosition = infoForPosition(i);
        if (infoForPosition != null) {
            max = (int) (Math.max(this.mFirstOffset, Math.min(infoForPosition.offset, this.mLastOffset)) * ((float) getClientWidth()));
        } else {
            max = SCROLL_STATE_IDLE;
        }
        if (z) {
            smoothScrollTo(max, SCROLL_STATE_IDLE, i2);
            if (z2) {
                dispatchOnPageSelected(i);
                return;
            }
            return;
        }
        if (z2) {
            dispatchOnPageSelected(i);
        }
        completeScroll(DEBUG);
        scrollTo(max, SCROLL_STATE_IDLE);
        pageScrolled(max);
    }

    private void setScrollState(int i) {
        if (this.mScrollState != i) {
            this.mScrollState = i;
            if (this.mPageTransformer != null) {
                enableLayers(i != 0 ? true : DEBUG);
            }
            dispatchOnScrollStateChanged(i);
        }
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.mScrollingCacheEnabled != z) {
            this.mScrollingCacheEnabled = z;
        }
    }

    private void sortChildDrawingOrder() {
        if (this.mDrawingOrder != 0) {
            if (this.mDrawingOrderedChildren == null) {
                this.mDrawingOrderedChildren = new ArrayList();
            } else {
                this.mDrawingOrderedChildren.clear();
            }
            int childCount = getChildCount();
            for (int i = SCROLL_STATE_IDLE; i < childCount; i += SCROLL_STATE_DRAGGING) {
                this.mDrawingOrderedChildren.add(getChildAt(i));
            }
            Collections.sort(this.mDrawingOrderedChildren, sPositionComparator);
        }
    }

    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = SCROLL_STATE_IDLE; i3 < getChildCount(); i3 += SCROLL_STATE_DRAGGING) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0) {
                    ItemInfo infoForChild = infoForChild(childAt);
                    if (infoForChild != null && infoForChild.position == this.mCurItem) {
                        childAt.addFocusables(arrayList, i, i2);
                    }
                }
            }
        }
        if ((descendantFocusability == AccessibilityNodeInfoCompat.ACTION_EXPAND && size != arrayList.size()) || !isFocusable()) {
            return;
        }
        if (((i2 & SCROLL_STATE_DRAGGING) != SCROLL_STATE_DRAGGING || !isInTouchMode() || isFocusableInTouchMode()) && arrayList != null) {
            arrayList.add(this);
        }
    }

    ItemInfo addNewItem(int i, int i2) {
        ItemInfo itemInfo = new ItemInfo();
        itemInfo.position = i;
        itemInfo.object = this.mAdapter.instantiateItem((ViewGroup) this, i);
        itemInfo.widthFactor = this.mAdapter.getPageWidth(i);
        if (i2 < 0 || i2 >= this.mItems.size()) {
            this.mItems.add(itemInfo);
        } else {
            this.mItems.add(i2, itemInfo);
        }
        return itemInfo;
    }

    public void addOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        if (this.mOnPageChangeListeners == null) {
            this.mOnPageChangeListeners = new ArrayList();
        }
        this.mOnPageChangeListeners.add(onPageChangeListener);
    }

    public void addTouchables(ArrayList<View> arrayList) {
        for (int i = SCROLL_STATE_IDLE; i < getChildCount(); i += SCROLL_STATE_DRAGGING) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0) {
                ItemInfo infoForChild = infoForChild(childAt);
                if (infoForChild != null && infoForChild.position == this.mCurItem) {
                    childAt.addTouchables(arrayList);
                }
            }
        }
    }

    public void addView(View view, int i, android.view.ViewGroup.LayoutParams layoutParams) {
        android.view.ViewGroup.LayoutParams generateLayoutParams = !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : layoutParams;
        LayoutParams layoutParams2 = (LayoutParams) generateLayoutParams;
        layoutParams2.isDecor |= view instanceof Decor;
        if (!this.mInLayout) {
            super.addView(view, i, generateLayoutParams);
        } else if (layoutParams2 == null || !layoutParams2.isDecor) {
            layoutParams2.needsMeasure = true;
            addViewInLayout(view, i, generateLayoutParams);
        } else {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        }
    }

    public boolean arrowScroll(int i) {
        boolean pageLeft;
        View view = null;
        View findFocus = findFocus();
        if (findFocus != this) {
            if (findFocus != null) {
                Object obj;
                for (ViewPager parent = findFocus.getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
                    if (parent == this) {
                        obj = SCROLL_STATE_DRAGGING;
                        break;
                    }
                }
                obj = SCROLL_STATE_IDLE;
                if (obj == null) {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(findFocus.getClass().getSimpleName());
                    for (ViewParent parent2 = findFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                        stringBuilder.append(" => ").append(parent2.getClass().getSimpleName());
                    }
                    Log.e(TAG, "arrowScroll tried to find focus based on non-child current focused view " + stringBuilder.toString());
                }
            }
            view = findFocus;
        }
        findFocus = FocusFinder.getInstance().findNextFocus(this, view, i);
        if (findFocus == null || findFocus == view) {
            if (i == 17 || i == SCROLL_STATE_DRAGGING) {
                pageLeft = pageLeft();
            } else {
                if (i == 66 || i == SCROLL_STATE_SETTLING) {
                    pageLeft = pageRight();
                }
                pageLeft = DEBUG;
            }
        } else if (i == 17) {
            pageLeft = (view == null || getChildRectInPagerCoordinates(this.mTempRect, findFocus).left < getChildRectInPagerCoordinates(this.mTempRect, view).left) ? findFocus.requestFocus() : pageLeft();
        } else {
            if (i == 66) {
                pageLeft = (view == null || getChildRectInPagerCoordinates(this.mTempRect, findFocus).left > getChildRectInPagerCoordinates(this.mTempRect, view).left) ? findFocus.requestFocus() : pageRight();
            }
            pageLeft = DEBUG;
        }
        if (pageLeft) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
        }
        return pageLeft;
    }

    public boolean beginFakeDrag() {
        if (this.mIsBeingDragged) {
            return DEBUG;
        }
        this.mFakeDragging = true;
        setScrollState(SCROLL_STATE_DRAGGING);
        this.mLastMotionX = 0.0f;
        this.mInitialMotionX = 0.0f;
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        } else {
            this.mVelocityTracker.clear();
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, SCROLL_STATE_IDLE, 0.0f, 0.0f, SCROLL_STATE_IDLE);
        this.mVelocityTracker.addMovement(obtain);
        obtain.recycle();
        this.mFakeDragBeginTime = uptimeMillis;
        return true;
    }

    protected boolean canScroll(View view, boolean z, int i, int i2, int i3) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() + INVALID_POINTER; childCount >= 0; childCount += INVALID_POINTER) {
                View childAt = viewGroup.getChildAt(childCount);
                if (i2 + scrollX >= childAt.getLeft() && i2 + scrollX < childAt.getRight() && i3 + scrollY >= childAt.getTop() && i3 + scrollY < childAt.getBottom()) {
                    if (canScroll(childAt, true, i, (i2 + scrollX) - childAt.getLeft(), (i3 + scrollY) - childAt.getTop())) {
                        return true;
                    }
                }
            }
        }
        return (z && ViewCompat.canScrollHorizontally(view, -i)) ? true : DEBUG;
    }

    public boolean canScrollHorizontally(int i) {
        boolean z = true;
        if (this.mAdapter == null) {
            return DEBUG;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i < 0) {
            return scrollX > ((int) (((float) clientWidth) * this.mFirstOffset)) ? true : DEBUG;
        } else {
            if (i <= 0) {
                return DEBUG;
            }
            if (scrollX >= ((int) (((float) clientWidth) * this.mLastOffset))) {
                z = DEBUG;
            }
            return z;
        }
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return ((layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams)) ? true : DEBUG;
    }

    public void clearOnPageChangeListeners() {
        if (this.mOnPageChangeListeners != null) {
            this.mOnPageChangeListeners.clear();
        }
    }

    public void computeScroll() {
        this.mIsScrollStarted = true;
        if (this.mScroller.isFinished() || !this.mScroller.computeScrollOffset()) {
            completeScroll(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.mScroller.getCurrX();
        int currY = this.mScroller.getCurrY();
        if (!(scrollX == currX && scrollY == currY)) {
            scrollTo(currX, currY);
            if (!pageScrolled(currX)) {
                this.mScroller.abortAnimation();
                scrollTo(SCROLL_STATE_IDLE, currY);
            }
        }
        ViewCompat.postInvalidateOnAnimation(this);
    }

    void dataSetChanged() {
        int count = this.mAdapter.getCount();
        this.mExpectedAdapterCount = count;
        boolean z = (this.mItems.size() >= (this.mOffscreenPageLimit * SCROLL_STATE_SETTLING) + SCROLL_STATE_DRAGGING || this.mItems.size() >= count) ? DEBUG : true;
        boolean z2 = DEBUG;
        int i = this.mCurItem;
        boolean z3 = z;
        int i2 = SCROLL_STATE_IDLE;
        while (i2 < this.mItems.size()) {
            int i3;
            boolean z4;
            int i4;
            boolean z5;
            ItemInfo itemInfo = (ItemInfo) this.mItems.get(i2);
            int itemPosition = this.mAdapter.getItemPosition(itemInfo.object);
            if (itemPosition == INVALID_POINTER) {
                i3 = i2;
                z4 = z2;
                i4 = i;
                z5 = z3;
            } else if (itemPosition == -2) {
                this.mItems.remove(i2);
                i2 += INVALID_POINTER;
                if (!z2) {
                    this.mAdapter.startUpdate((ViewGroup) this);
                    z2 = true;
                }
                this.mAdapter.destroyItem((ViewGroup) this, itemInfo.position, itemInfo.object);
                if (this.mCurItem == itemInfo.position) {
                    i3 = i2;
                    z4 = z2;
                    i4 = Math.max(SCROLL_STATE_IDLE, Math.min(this.mCurItem, count + INVALID_POINTER));
                    z5 = true;
                } else {
                    i3 = i2;
                    z4 = z2;
                    i4 = i;
                    z5 = true;
                }
            } else if (itemInfo.position != itemPosition) {
                if (itemInfo.position == this.mCurItem) {
                    i = itemPosition;
                }
                itemInfo.position = itemPosition;
                i3 = i2;
                z4 = z2;
                i4 = i;
                z5 = true;
            } else {
                i3 = i2;
                z4 = z2;
                i4 = i;
                z5 = z3;
            }
            z3 = z5;
            i = i4;
            z2 = z4;
            i2 = i3 + SCROLL_STATE_DRAGGING;
        }
        if (z2) {
            this.mAdapter.finishUpdate((ViewGroup) this);
        }
        Collections.sort(this.mItems, COMPARATOR);
        if (z3) {
            i4 = getChildCount();
            for (i2 = SCROLL_STATE_IDLE; i2 < i4; i2 += SCROLL_STATE_DRAGGING) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i2).getLayoutParams();
                if (!layoutParams.isDecor) {
                    layoutParams.widthFactor = 0.0f;
                }
            }
            setCurrentItemInternal(i, DEBUG, true);
            requestLayout();
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return (super.dispatchKeyEvent(keyEvent) || executeKeyEvent(keyEvent)) ? true : DEBUG;
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() == AccessibilityNodeInfoCompat.ACTION_SCROLL_FORWARD) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i = SCROLL_STATE_IDLE; i < childCount; i += SCROLL_STATE_DRAGGING) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0) {
                ItemInfo infoForChild = infoForChild(childAt);
                if (infoForChild != null && infoForChild.position == this.mCurItem && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                    return true;
                }
            }
        }
        return DEBUG;
    }

    float distanceInfluenceForSnapDuration(float f) {
        return (float) Math.sin((double) ((float) (((double) (f - 0.5f)) * 0.4712389167638204d)));
    }

    public void draw(Canvas canvas) {
        int i = SCROLL_STATE_IDLE;
        super.draw(canvas);
        int overScrollMode = ViewCompat.getOverScrollMode(this);
        if (overScrollMode == 0 || (overScrollMode == SCROLL_STATE_DRAGGING && this.mAdapter != null && this.mAdapter.getCount() > SCROLL_STATE_DRAGGING)) {
            int width;
            if (!this.mLeftEdge.isFinished()) {
                overScrollMode = canvas.save();
                i = (getHeight() - getPaddingTop()) - getPaddingBottom();
                width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((float) ((-i) + getPaddingTop()), this.mFirstOffset * ((float) width));
                this.mLeftEdge.setSize(i, width);
                i = this.mLeftEdge.draw(canvas) | SCROLL_STATE_IDLE;
                canvas.restoreToCount(overScrollMode);
            }
            if (!this.mRightEdge.isFinished()) {
                overScrollMode = canvas.save();
                width = getWidth();
                int height = getHeight();
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate((float) (-getPaddingTop()), (-(this.mLastOffset + 1.0f)) * ((float) width));
                this.mRightEdge.setSize((height - paddingTop) - paddingBottom, width);
                i |= this.mRightEdge.draw(canvas);
                canvas.restoreToCount(overScrollMode);
            }
        } else {
            this.mLeftEdge.finish();
            this.mRightEdge.finish();
        }
        if (i != 0) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.mMarginDrawable;
        if (drawable != null && drawable.isStateful()) {
            drawable.setState(getDrawableState());
        }
    }

    public void endFakeDrag() {
        if (this.mFakeDragging) {
            if (this.mAdapter != null) {
                VelocityTracker velocityTracker = this.mVelocityTracker;
                velocityTracker.computeCurrentVelocity(1000, (float) this.mMaximumVelocity);
                int xVelocity = (int) VelocityTrackerCompat.getXVelocity(velocityTracker, this.mActivePointerId);
                this.mPopulatePending = true;
                int clientWidth = getClientWidth();
                int scrollX = getScrollX();
                ItemInfo infoForCurrentScrollPosition = infoForCurrentScrollPosition();
                setCurrentItemInternal(determineTargetPage(infoForCurrentScrollPosition.position, ((((float) scrollX) / ((float) clientWidth)) - infoForCurrentScrollPosition.offset) / infoForCurrentScrollPosition.widthFactor, xVelocity, (int) (this.mLastMotionX - this.mInitialMotionX)), true, true, xVelocity);
            }
            endDrag();
            this.mFakeDragging = DEBUG;
            return;
        }
        throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    }

    public boolean executeKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            switch (keyEvent.getKeyCode()) {
                case R.styleable.Toolbar_navigationContentDescription /*21*/:
                    return arrowScroll(17);
                case R.styleable.Toolbar_logoDescription /*22*/:
                    return arrowScroll(66);
                case R.styleable.AppCompatTheme_popupWindowStyle /*61*/:
                    if (VERSION.SDK_INT >= 11) {
                        if (KeyEventCompat.hasNoModifiers(keyEvent)) {
                            return arrowScroll(SCROLL_STATE_SETTLING);
                        }
                        if (KeyEventCompat.hasModifiers(keyEvent, SCROLL_STATE_DRAGGING)) {
                            return arrowScroll(SCROLL_STATE_DRAGGING);
                        }
                    }
                    break;
            }
        }
        return DEBUG;
    }

    public void fakeDragBy(float f) {
        if (!this.mFakeDragging) {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        } else if (this.mAdapter != null) {
            this.mLastMotionX += f;
            float scrollX = ((float) getScrollX()) - f;
            int clientWidth = getClientWidth();
            float f2 = ((float) clientWidth) * this.mLastOffset;
            ItemInfo itemInfo = (ItemInfo) this.mItems.get(SCROLL_STATE_IDLE);
            ItemInfo itemInfo2 = (ItemInfo) this.mItems.get(this.mItems.size() + INVALID_POINTER);
            float f3 = itemInfo.position != 0 ? itemInfo.offset * ((float) clientWidth) : ((float) clientWidth) * this.mFirstOffset;
            float f4 = itemInfo2.position != this.mAdapter.getCount() + INVALID_POINTER ? itemInfo2.offset * ((float) clientWidth) : f2;
            if (scrollX >= f3) {
                f3 = scrollX > f4 ? f4 : scrollX;
            }
            this.mLastMotionX += f3 - ((float) ((int) f3));
            scrollTo((int) f3, getScrollY());
            pageScrolled((int) f3);
            MotionEvent obtain = MotionEvent.obtain(this.mFakeDragBeginTime, SystemClock.uptimeMillis(), SCROLL_STATE_SETTLING, this.mLastMotionX, 0.0f, SCROLL_STATE_IDLE);
            this.mVelocityTracker.addMovement(obtain);
            obtain.recycle();
        }
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public PagerAdapter getAdapter() {
        return this.mAdapter;
    }

    protected int getChildDrawingOrder(int i, int i2) {
        if (this.mDrawingOrder == SCROLL_STATE_SETTLING) {
            i2 = (i + INVALID_POINTER) - i2;
        }
        return ((LayoutParams) ((View) this.mDrawingOrderedChildren.get(i2)).getLayoutParams()).childIndex;
    }

    public int getCurrentItem() {
        return this.mCurItem;
    }

    public int getOffscreenPageLimit() {
        return this.mOffscreenPageLimit;
    }

    public int getPageMargin() {
        return this.mPageMargin;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    android.support.v4.view.ViewPager.ItemInfo infoForAnyChild(android.view.View r3) {
        /*
        r2 = this;
    L_0x0000:
        r0 = r3.getParent();
        if (r0 == r2) goto L_0x0012;
    L_0x0006:
        if (r0 == 0) goto L_0x000c;
    L_0x0008:
        r1 = r0 instanceof android.view.View;
        if (r1 != 0) goto L_0x000e;
    L_0x000c:
        r0 = 0;
    L_0x000d:
        return r0;
    L_0x000e:
        r0 = (android.view.View) r0;
        r3 = r0;
        goto L_0x0000;
    L_0x0012:
        r0 = r2.infoForChild(r3);
        goto L_0x000d;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.view.ViewPager.infoForAnyChild(android.view.View):android.support.v4.view.ViewPager$ItemInfo");
    }

    ItemInfo infoForChild(View view) {
        for (int i = SCROLL_STATE_IDLE; i < this.mItems.size(); i += SCROLL_STATE_DRAGGING) {
            ItemInfo itemInfo = (ItemInfo) this.mItems.get(i);
            if (this.mAdapter.isViewFromObject(view, itemInfo.object)) {
                return itemInfo;
            }
        }
        return null;
    }

    ItemInfo infoForPosition(int i) {
        for (int i2 = SCROLL_STATE_IDLE; i2 < this.mItems.size(); i2 += SCROLL_STATE_DRAGGING) {
            ItemInfo itemInfo = (ItemInfo) this.mItems.get(i2);
            if (itemInfo.position == i) {
                return itemInfo;
            }
        }
        return null;
    }

    void initViewPager() {
        setWillNotDraw(DEBUG);
        setDescendantFocusability(AccessibilityNodeInfoCompat.ACTION_EXPAND);
        setFocusable(true);
        Context context = getContext();
        this.mScroller = new Scroller(context, sInterpolator);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.mTouchSlop = ViewConfigurationCompat.getScaledPagingTouchSlop(viewConfiguration);
        this.mMinimumVelocity = (int) (400.0f * f);
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mLeftEdge = new EdgeEffectCompat(context);
        this.mRightEdge = new EdgeEffectCompat(context);
        this.mFlingDistance = (int) (25.0f * f);
        this.mCloseEnough = (int) (2.0f * f);
        this.mDefaultGutterSize = (int) (16.0f * f);
        ViewCompat.setAccessibilityDelegate(this, new MyAccessibilityDelegate());
        if (ViewCompat.getImportantForAccessibility(this) == 0) {
            ViewCompat.setImportantForAccessibility(this, SCROLL_STATE_DRAGGING);
        }
        ViewCompat.setOnApplyWindowInsetsListener(this, new OnApplyWindowInsetsListener() {
            private final Rect mTempRect;

            {
                this.mTempRect = new Rect();
            }

            public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                WindowInsetsCompat onApplyWindowInsets = ViewCompat.onApplyWindowInsets(view, windowInsetsCompat);
                if (onApplyWindowInsets.isConsumed()) {
                    return onApplyWindowInsets;
                }
                Rect rect = this.mTempRect;
                rect.left = onApplyWindowInsets.getSystemWindowInsetLeft();
                rect.top = onApplyWindowInsets.getSystemWindowInsetTop();
                rect.right = onApplyWindowInsets.getSystemWindowInsetRight();
                rect.bottom = onApplyWindowInsets.getSystemWindowInsetBottom();
                int childCount = ViewPager.this.getChildCount();
                for (int i = ViewPager.SCROLL_STATE_IDLE; i < childCount; i += ViewPager.SCROLL_STATE_DRAGGING) {
                    WindowInsetsCompat dispatchApplyWindowInsets = ViewCompat.dispatchApplyWindowInsets(ViewPager.this.getChildAt(i), onApplyWindowInsets);
                    rect.left = Math.min(dispatchApplyWindowInsets.getSystemWindowInsetLeft(), rect.left);
                    rect.top = Math.min(dispatchApplyWindowInsets.getSystemWindowInsetTop(), rect.top);
                    rect.right = Math.min(dispatchApplyWindowInsets.getSystemWindowInsetRight(), rect.right);
                    rect.bottom = Math.min(dispatchApplyWindowInsets.getSystemWindowInsetBottom(), rect.bottom);
                }
                return onApplyWindowInsets.replaceSystemWindowInsets(rect.left, rect.top, rect.right, rect.bottom);
            }
        });
    }

    public boolean isFakeDragging() {
        return this.mFakeDragging;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    protected void onDetachedFromWindow() {
        removeCallbacks(this.mEndScrollRunnable);
        if (!(this.mScroller == null || this.mScroller.isFinished())) {
            this.mScroller.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mPageMargin > 0 && this.mMarginDrawable != null && this.mItems.size() > 0 && this.mAdapter != null) {
            int scrollX = getScrollX();
            int width = getWidth();
            float f = ((float) this.mPageMargin) / ((float) width);
            ItemInfo itemInfo = (ItemInfo) this.mItems.get(SCROLL_STATE_IDLE);
            float f2 = itemInfo.offset;
            int size = this.mItems.size();
            int i = itemInfo.position;
            int i2 = ((ItemInfo) this.mItems.get(size + INVALID_POINTER)).position;
            int i3 = SCROLL_STATE_IDLE;
            int i4 = i;
            float f3 = f2;
            int i5 = i4;
            while (i5 < i2) {
                float f4;
                while (i5 > itemInfo.position && i3 < size) {
                    i3 += SCROLL_STATE_DRAGGING;
                    itemInfo = (ItemInfo) this.mItems.get(i3);
                }
                if (i5 == itemInfo.position) {
                    f4 = (itemInfo.offset + itemInfo.widthFactor) * ((float) width);
                    f3 = (itemInfo.offset + itemInfo.widthFactor) + f;
                } else {
                    float pageWidth = this.mAdapter.getPageWidth(i5);
                    f4 = (f3 + pageWidth) * ((float) width);
                    f3 += pageWidth + f;
                }
                if (((float) this.mPageMargin) + f4 > ((float) scrollX)) {
                    this.mMarginDrawable.setBounds((int) f4, this.mTopPageBounds, (int) ((((float) this.mPageMargin) + f4) + 0.5f), this.mBottomPageBounds);
                    this.mMarginDrawable.draw(canvas);
                }
                if (f4 <= ((float) (scrollX + width))) {
                    i5 += SCROLL_STATE_DRAGGING;
                } else {
                    return;
                }
            }
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & MotionEventCompat.ACTION_MASK;
        if (action == 3 || action == SCROLL_STATE_DRAGGING) {
            resetTouch();
            return DEBUG;
        }
        if (action != 0) {
            if (this.mIsBeingDragged) {
                return true;
            }
            if (this.mIsUnableToDrag) {
                return DEBUG;
            }
        }
        switch (action) {
            case SCROLL_STATE_IDLE /*0*/:
                float x = motionEvent.getX();
                this.mInitialMotionX = x;
                this.mLastMotionX = x;
                x = motionEvent.getY();
                this.mInitialMotionY = x;
                this.mLastMotionY = x;
                this.mActivePointerId = MotionEventCompat.getPointerId(motionEvent, SCROLL_STATE_IDLE);
                this.mIsUnableToDrag = DEBUG;
                this.mIsScrollStarted = true;
                this.mScroller.computeScrollOffset();
                if (this.mScrollState == SCROLL_STATE_SETTLING && Math.abs(this.mScroller.getFinalX() - this.mScroller.getCurrX()) > this.mCloseEnough) {
                    this.mScroller.abortAnimation();
                    this.mPopulatePending = DEBUG;
                    populate();
                    this.mIsBeingDragged = true;
                    requestParentDisallowInterceptTouchEvent(true);
                    setScrollState(SCROLL_STATE_DRAGGING);
                    break;
                }
                completeScroll(DEBUG);
                this.mIsBeingDragged = DEBUG;
                break;
            case SCROLL_STATE_SETTLING /*2*/:
                action = this.mActivePointerId;
                if (action != INVALID_POINTER) {
                    action = MotionEventCompat.findPointerIndex(motionEvent, action);
                    float x2 = MotionEventCompat.getX(motionEvent, action);
                    float f = x2 - this.mLastMotionX;
                    float abs = Math.abs(f);
                    float y = MotionEventCompat.getY(motionEvent, action);
                    float abs2 = Math.abs(y - this.mInitialMotionY);
                    if (f == 0.0f || isGutterDrag(this.mLastMotionX, f) || !canScroll(this, DEBUG, (int) f, (int) x2, (int) y)) {
                        if (abs > ((float) this.mTouchSlop) && 0.5f * abs > abs2) {
                            this.mIsBeingDragged = true;
                            requestParentDisallowInterceptTouchEvent(true);
                            setScrollState(SCROLL_STATE_DRAGGING);
                            this.mLastMotionX = f > 0.0f ? this.mInitialMotionX + ((float) this.mTouchSlop) : this.mInitialMotionX - ((float) this.mTouchSlop);
                            this.mLastMotionY = y;
                            setScrollingCacheEnabled(true);
                        } else if (abs2 > ((float) this.mTouchSlop)) {
                            this.mIsUnableToDrag = true;
                        }
                        if (this.mIsBeingDragged && performDrag(x2)) {
                            ViewCompat.postInvalidateOnAnimation(this);
                            break;
                        }
                    }
                    this.mLastMotionX = x2;
                    this.mLastMotionY = y;
                    this.mIsUnableToDrag = true;
                    return DEBUG;
                }
                break;
            case R.styleable.Toolbar_contentInsetEnd /*6*/:
                onSecondaryPointerUp(motionEvent);
                break;
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        return this.mIsBeingDragged;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        LayoutParams layoutParams;
        int i5;
        int childCount = getChildCount();
        int i6 = i3 - i;
        int i7 = i4 - i2;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i8 = SCROLL_STATE_IDLE;
        int i9 = SCROLL_STATE_IDLE;
        while (i9 < childCount) {
            int measuredWidth;
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.isDecor) {
                    int max;
                    int i10;
                    i5 = layoutParams.gravity;
                    int i11 = layoutParams.gravity;
                    switch (i5 & 7) {
                        case SCROLL_STATE_DRAGGING /*1*/:
                            i5 = paddingLeft;
                            max = Math.max((i6 - childAt.getMeasuredWidth()) / SCROLL_STATE_SETTLING, paddingLeft);
                            paddingLeft = paddingRight;
                            break;
                        case R.styleable.WaitingDots_autoplay /*3*/:
                            i5 = paddingLeft + childAt.getMeasuredWidth();
                            max = paddingLeft;
                            paddingLeft = paddingRight;
                            break;
                        case R.styleable.ViewPagerIndicator_vpiUnderlinePageIndicatorStyle /*5*/:
                            measuredWidth = (i6 - paddingRight) - childAt.getMeasuredWidth();
                            i5 = paddingLeft;
                            max = measuredWidth;
                            paddingLeft = paddingRight + childAt.getMeasuredWidth();
                            break;
                        default:
                            i5 = paddingLeft;
                            max = paddingLeft;
                            paddingLeft = paddingRight;
                            break;
                    }
                    switch (i11 & 112) {
                        case DEFAULT_GUTTER_SIZE /*16*/:
                            i10 = paddingBottom;
                            paddingBottom = Math.max((i7 - childAt.getMeasuredHeight()) / SCROLL_STATE_SETTLING, paddingTop);
                            measuredWidth = i10;
                            break;
                        case R.styleable.AppCompatTheme_homeAsUpIndicator /*48*/:
                            i10 = paddingBottom;
                            paddingBottom = paddingTop;
                            paddingTop = childAt.getMeasuredHeight() + paddingTop;
                            measuredWidth = i10;
                            break;
                        case R.styleable.AppCompatTheme_panelMenuListTheme /*80*/:
                            measuredWidth = childAt.getMeasuredHeight() + paddingBottom;
                            paddingBottom = (i7 - paddingBottom) - childAt.getMeasuredHeight();
                            break;
                        default:
                            measuredWidth = paddingBottom;
                            paddingBottom = paddingTop;
                            break;
                    }
                    paddingRight = max + scrollX;
                    childAt.layout(paddingRight, paddingBottom, childAt.getMeasuredWidth() + paddingRight, childAt.getMeasuredHeight() + paddingBottom);
                    paddingBottom = i8 + SCROLL_STATE_DRAGGING;
                    paddingRight = i5;
                    i8 = paddingTop;
                    paddingTop = paddingLeft;
                    i10 = paddingBottom;
                    paddingBottom = measuredWidth;
                    measuredWidth = i10;
                    i9 += SCROLL_STATE_DRAGGING;
                    paddingLeft = paddingRight;
                    paddingRight = paddingTop;
                    paddingTop = i8;
                    i8 = measuredWidth;
                }
            }
            measuredWidth = i8;
            i8 = paddingTop;
            paddingTop = paddingRight;
            paddingRight = paddingLeft;
            i9 += SCROLL_STATE_DRAGGING;
            paddingLeft = paddingRight;
            paddingRight = paddingTop;
            paddingTop = i8;
            i8 = measuredWidth;
        }
        i5 = (i6 - paddingLeft) - paddingRight;
        for (paddingRight = SCROLL_STATE_IDLE; paddingRight < childCount; paddingRight += SCROLL_STATE_DRAGGING) {
            View childAt2 = getChildAt(paddingRight);
            if (childAt2.getVisibility() != 8) {
                layoutParams = (LayoutParams) childAt2.getLayoutParams();
                if (!layoutParams.isDecor) {
                    ItemInfo infoForChild = infoForChild(childAt2);
                    if (infoForChild != null) {
                        i9 = ((int) (infoForChild.offset * ((float) i5))) + paddingLeft;
                        if (layoutParams.needsMeasure) {
                            layoutParams.needsMeasure = DEBUG;
                            childAt2.measure(MeasureSpec.makeMeasureSpec((int) (layoutParams.widthFactor * ((float) i5)), 1073741824), MeasureSpec.makeMeasureSpec((i7 - paddingTop) - paddingBottom, 1073741824));
                        }
                        childAt2.layout(i9, paddingTop, childAt2.getMeasuredWidth() + i9, childAt2.getMeasuredHeight() + paddingTop);
                    }
                }
            }
        }
        this.mTopPageBounds = paddingTop;
        this.mBottomPageBounds = i7 - paddingBottom;
        this.mDecorChildCount = i8;
        if (this.mFirstLayout) {
            scrollToItem(this.mCurItem, DEBUG, SCROLL_STATE_IDLE, DEBUG);
        }
        this.mFirstLayout = DEBUG;
    }

    protected void onMeasure(int i, int i2) {
        LayoutParams layoutParams;
        int i3;
        setMeasuredDimension(getDefaultSize(SCROLL_STATE_IDLE, i), getDefaultSize(SCROLL_STATE_IDLE, i2));
        int measuredWidth = getMeasuredWidth();
        this.mGutterSize = Math.min(measuredWidth / 10, this.mDefaultGutterSize);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        for (int i4 = SCROLL_STATE_IDLE; i4 < childCount; i4 += SCROLL_STATE_DRAGGING) {
            int i5;
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams != null && layoutParams.isDecor) {
                    int i6 = layoutParams.gravity & 7;
                    int i7 = layoutParams.gravity & 112;
                    i5 = RtlSpacingHelper.UNDEFINED;
                    i3 = RtlSpacingHelper.UNDEFINED;
                    Object obj = (i7 == 48 || i7 == 80) ? SCROLL_STATE_DRAGGING : SCROLL_STATE_IDLE;
                    Object obj2 = (i6 == 3 || i6 == 5) ? SCROLL_STATE_DRAGGING : SCROLL_STATE_IDLE;
                    if (obj != null) {
                        i5 = 1073741824;
                    } else if (obj2 != null) {
                        i3 = 1073741824;
                    }
                    if (layoutParams.width != -2) {
                        i7 = 1073741824;
                        i5 = layoutParams.width != INVALID_POINTER ? layoutParams.width : paddingLeft;
                    } else {
                        i7 = i5;
                        i5 = paddingLeft;
                    }
                    if (layoutParams.height != -2) {
                        i3 = 1073741824;
                        if (layoutParams.height != INVALID_POINTER) {
                            measuredWidth = layoutParams.height;
                            childAt.measure(MeasureSpec.makeMeasureSpec(i5, i7), MeasureSpec.makeMeasureSpec(measuredWidth, i3));
                            if (obj != null) {
                                measuredHeight -= childAt.getMeasuredHeight();
                            } else if (obj2 != null) {
                                paddingLeft -= childAt.getMeasuredWidth();
                            }
                        }
                    }
                    measuredWidth = measuredHeight;
                    childAt.measure(MeasureSpec.makeMeasureSpec(i5, i7), MeasureSpec.makeMeasureSpec(measuredWidth, i3));
                    if (obj != null) {
                        measuredHeight -= childAt.getMeasuredHeight();
                    } else if (obj2 != null) {
                        paddingLeft -= childAt.getMeasuredWidth();
                    }
                }
            }
        }
        this.mChildWidthMeasureSpec = MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        this.mChildHeightMeasureSpec = MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.mInLayout = true;
        populate();
        this.mInLayout = DEBUG;
        i3 = getChildCount();
        for (i5 = SCROLL_STATE_IDLE; i5 < i3; i5 += SCROLL_STATE_DRAGGING) {
            View childAt2 = getChildAt(i5);
            if (childAt2.getVisibility() != 8) {
                layoutParams = (LayoutParams) childAt2.getLayoutParams();
                if (layoutParams == null || !layoutParams.isDecor) {
                    childAt2.measure(MeasureSpec.makeMeasureSpec((int) (layoutParams.widthFactor * ((float) paddingLeft)), 1073741824), this.mChildHeightMeasureSpec);
                }
            }
        }
    }

    @CallSuper
    protected void onPageScrolled(int i, float f, int i2) {
        int paddingLeft;
        int paddingRight;
        int i3;
        if (this.mDecorChildCount > 0) {
            int scrollX = getScrollX();
            paddingLeft = getPaddingLeft();
            paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            i3 = SCROLL_STATE_IDLE;
            while (i3 < childCount) {
                int i4;
                View childAt = getChildAt(i3);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.isDecor) {
                    int i5;
                    switch (layoutParams.gravity & 7) {
                        case SCROLL_STATE_DRAGGING /*1*/:
                            i5 = paddingRight;
                            paddingRight = Math.max((width - childAt.getMeasuredWidth()) / SCROLL_STATE_SETTLING, paddingLeft);
                            i4 = paddingLeft;
                            paddingLeft = i5;
                            break;
                        case R.styleable.WaitingDots_autoplay /*3*/:
                            i4 = childAt.getWidth() + paddingLeft;
                            i5 = paddingRight;
                            paddingRight = paddingLeft;
                            paddingLeft = i5;
                            break;
                        case R.styleable.ViewPagerIndicator_vpiUnderlinePageIndicatorStyle /*5*/:
                            i5 = paddingRight + childAt.getMeasuredWidth();
                            paddingRight = (width - paddingRight) - childAt.getMeasuredWidth();
                            i4 = paddingLeft;
                            paddingLeft = i5;
                            break;
                        default:
                            i4 = paddingLeft;
                            i5 = paddingLeft;
                            paddingLeft = paddingRight;
                            paddingRight = i5;
                            break;
                    }
                    paddingRight = (paddingRight + scrollX) - childAt.getLeft();
                    if (paddingRight != 0) {
                        childAt.offsetLeftAndRight(paddingRight);
                    }
                } else {
                    i4 = paddingLeft;
                    paddingLeft = paddingRight;
                }
                i3 += SCROLL_STATE_DRAGGING;
                paddingRight = paddingLeft;
                paddingLeft = i4;
            }
        }
        dispatchOnPageScrolled(i, f, i2);
        if (this.mPageTransformer != null) {
            paddingRight = getScrollX();
            i3 = getChildCount();
            for (paddingLeft = SCROLL_STATE_IDLE; paddingLeft < i3; paddingLeft += SCROLL_STATE_DRAGGING) {
                View childAt2 = getChildAt(paddingLeft);
                if (!((LayoutParams) childAt2.getLayoutParams()).isDecor) {
                    this.mPageTransformer.transformPage(childAt2, ((float) (childAt2.getLeft() - paddingRight)) / ((float) getClientWidth()));
                }
            }
        }
        this.mCalledSuper = true;
    }

    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3 = INVALID_POINTER;
        int childCount = getChildCount();
        if ((i & SCROLL_STATE_SETTLING) != 0) {
            i3 = SCROLL_STATE_DRAGGING;
            i2 = SCROLL_STATE_IDLE;
        } else {
            i2 = childCount + INVALID_POINTER;
            childCount = INVALID_POINTER;
        }
        while (i2 != childCount) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0) {
                ItemInfo infoForChild = infoForChild(childAt);
                if (infoForChild != null && infoForChild.position == this.mCurItem && childAt.requestFocus(i, rect)) {
                    return true;
                }
            }
            i2 += i3;
        }
        return DEBUG;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(savedState.getSuperState());
            if (this.mAdapter != null) {
                this.mAdapter.restoreState(savedState.adapterState, savedState.loader);
                setCurrentItemInternal(savedState.position, DEBUG, true);
                return;
            }
            this.mRestoredCurItem = savedState.position;
            this.mRestoredAdapterState = savedState.adapterState;
            this.mRestoredClassLoader = savedState.loader;
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    public Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.position = this.mCurItem;
        if (this.mAdapter != null) {
            savedState.adapterState = this.mAdapter.saveState();
        }
        return savedState;
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            recomputeScrollPosition(i, i3, this.mPageMargin, this.mPageMargin);
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = DEBUG;
        if (this.mFakeDragging) {
            return true;
        }
        if (motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) {
            return DEBUG;
        }
        if (this.mAdapter == null || this.mAdapter.getCount() == 0) {
            return DEBUG;
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        float x;
        int xVelocity;
        switch (motionEvent.getAction() & MotionEventCompat.ACTION_MASK) {
            case SCROLL_STATE_IDLE /*0*/:
                this.mScroller.abortAnimation();
                this.mPopulatePending = DEBUG;
                populate();
                x = motionEvent.getX();
                this.mInitialMotionX = x;
                this.mLastMotionX = x;
                x = motionEvent.getY();
                this.mInitialMotionY = x;
                this.mLastMotionY = x;
                this.mActivePointerId = MotionEventCompat.getPointerId(motionEvent, SCROLL_STATE_IDLE);
                break;
            case SCROLL_STATE_DRAGGING /*1*/:
                if (this.mIsBeingDragged) {
                    VelocityTracker velocityTracker = this.mVelocityTracker;
                    velocityTracker.computeCurrentVelocity(1000, (float) this.mMaximumVelocity);
                    xVelocity = (int) VelocityTrackerCompat.getXVelocity(velocityTracker, this.mActivePointerId);
                    this.mPopulatePending = true;
                    int clientWidth = getClientWidth();
                    int scrollX = getScrollX();
                    ItemInfo infoForCurrentScrollPosition = infoForCurrentScrollPosition();
                    setCurrentItemInternal(determineTargetPage(infoForCurrentScrollPosition.position, ((((float) scrollX) / ((float) clientWidth)) - infoForCurrentScrollPosition.offset) / infoForCurrentScrollPosition.widthFactor, xVelocity, (int) (MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.mActivePointerId)) - this.mInitialMotionX)), true, true, xVelocity);
                    z = resetTouch();
                    break;
                }
                break;
            case SCROLL_STATE_SETTLING /*2*/:
                if (!this.mIsBeingDragged) {
                    xVelocity = MotionEventCompat.findPointerIndex(motionEvent, this.mActivePointerId);
                    if (xVelocity == INVALID_POINTER) {
                        z = resetTouch();
                        break;
                    }
                    float x2 = MotionEventCompat.getX(motionEvent, xVelocity);
                    float abs = Math.abs(x2 - this.mLastMotionX);
                    float y = MotionEventCompat.getY(motionEvent, xVelocity);
                    x = Math.abs(y - this.mLastMotionY);
                    if (abs > ((float) this.mTouchSlop) && abs > x) {
                        this.mIsBeingDragged = true;
                        requestParentDisallowInterceptTouchEvent(true);
                        this.mLastMotionX = x2 - this.mInitialMotionX > 0.0f ? this.mInitialMotionX + ((float) this.mTouchSlop) : this.mInitialMotionX - ((float) this.mTouchSlop);
                        this.mLastMotionY = y;
                        setScrollState(SCROLL_STATE_DRAGGING);
                        setScrollingCacheEnabled(true);
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                }
                if (this.mIsBeingDragged) {
                    z = performDrag(MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.mActivePointerId))) | SCROLL_STATE_IDLE;
                    break;
                }
                break;
            case R.styleable.WaitingDots_autoplay /*3*/:
                if (this.mIsBeingDragged) {
                    scrollToItem(this.mCurItem, true, SCROLL_STATE_IDLE, DEBUG);
                    z = resetTouch();
                    break;
                }
                break;
            case R.styleable.ViewPagerIndicator_vpiUnderlinePageIndicatorStyle /*5*/:
                xVelocity = MotionEventCompat.getActionIndex(motionEvent);
                this.mLastMotionX = MotionEventCompat.getX(motionEvent, xVelocity);
                this.mActivePointerId = MotionEventCompat.getPointerId(motionEvent, xVelocity);
                break;
            case R.styleable.Toolbar_contentInsetEnd /*6*/:
                onSecondaryPointerUp(motionEvent);
                this.mLastMotionX = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.mActivePointerId));
                break;
        }
        if (z) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
        return true;
    }

    boolean pageLeft() {
        if (this.mCurItem <= 0) {
            return DEBUG;
        }
        setCurrentItem(this.mCurItem + INVALID_POINTER, true);
        return true;
    }

    boolean pageRight() {
        if (this.mAdapter == null || this.mCurItem >= this.mAdapter.getCount() + INVALID_POINTER) {
            return DEBUG;
        }
        setCurrentItem(this.mCurItem + SCROLL_STATE_DRAGGING, true);
        return true;
    }

    void populate() {
        populate(this.mCurItem);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    void populate(int r15) {
        /*
        r14 = this;
        r0 = 0;
        r1 = r14.mCurItem;
        if (r1 == r15) goto L_0x029b;
    L_0x0005:
        r0 = r14.mCurItem;
        r0 = r14.infoForPosition(r0);
        r14.mCurItem = r15;
        r1 = r0;
    L_0x000e:
        r0 = r14.mAdapter;
        if (r0 != 0) goto L_0x0016;
    L_0x0012:
        r14.sortChildDrawingOrder();
    L_0x0015:
        return;
    L_0x0016:
        r0 = r14.mPopulatePending;
        if (r0 == 0) goto L_0x001e;
    L_0x001a:
        r14.sortChildDrawingOrder();
        goto L_0x0015;
    L_0x001e:
        r0 = r14.getWindowToken();
        if (r0 == 0) goto L_0x0015;
    L_0x0024:
        r0 = r14.mAdapter;
        r0.startUpdate(r14);
        r0 = r14.mOffscreenPageLimit;
        r2 = 0;
        r3 = r14.mCurItem;
        r3 = r3 - r0;
        r8 = java.lang.Math.max(r2, r3);
        r2 = r14.mAdapter;
        r9 = r2.getCount();
        r2 = r9 + -1;
        r3 = r14.mCurItem;
        r0 = r0 + r3;
        r10 = java.lang.Math.min(r2, r0);
        r0 = r14.mExpectedAdapterCount;
        if (r9 == r0) goto L_0x00a9;
    L_0x0046:
        r0 = r14.getResources();	 Catch:{ NotFoundException -> 0x009f }
        r1 = r14.getId();	 Catch:{ NotFoundException -> 0x009f }
        r0 = r0.getResourceName(r1);	 Catch:{ NotFoundException -> 0x009f }
    L_0x0052:
        r1 = new java.lang.IllegalStateException;
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: ";
        r2 = r2.append(r3);
        r3 = r14.mExpectedAdapterCount;
        r2 = r2.append(r3);
        r3 = ", found: ";
        r2 = r2.append(r3);
        r2 = r2.append(r9);
        r3 = " Pager id: ";
        r2 = r2.append(r3);
        r0 = r2.append(r0);
        r2 = " Pager class: ";
        r0 = r0.append(r2);
        r2 = r14.getClass();
        r0 = r0.append(r2);
        r2 = " Problematic adapter: ";
        r0 = r0.append(r2);
        r2 = r14.mAdapter;
        r2 = r2.getClass();
        r0 = r0.append(r2);
        r0 = r0.toString();
        r1.<init>(r0);
        throw r1;
    L_0x009f:
        r0 = move-exception;
        r0 = r14.getId();
        r0 = java.lang.Integer.toHexString(r0);
        goto L_0x0052;
    L_0x00a9:
        r3 = 0;
        r0 = 0;
        r2 = r0;
    L_0x00ac:
        r0 = r14.mItems;
        r0 = r0.size();
        if (r2 >= r0) goto L_0x0298;
    L_0x00b4:
        r0 = r14.mItems;
        r0 = r0.get(r2);
        r0 = (android.support.v4.view.ViewPager.ItemInfo) r0;
        r4 = r0.position;
        r5 = r14.mCurItem;
        if (r4 < r5) goto L_0x0171;
    L_0x00c2:
        r4 = r0.position;
        r5 = r14.mCurItem;
        if (r4 != r5) goto L_0x0298;
    L_0x00c8:
        if (r0 != 0) goto L_0x0295;
    L_0x00ca:
        if (r9 <= 0) goto L_0x0295;
    L_0x00cc:
        r0 = r14.mCurItem;
        r0 = r14.addNewItem(r0, r2);
        r7 = r0;
    L_0x00d3:
        if (r7 == 0) goto L_0x0130;
    L_0x00d5:
        r6 = 0;
        r4 = r2 + -1;
        if (r4 < 0) goto L_0x0176;
    L_0x00da:
        r0 = r14.mItems;
        r0 = r0.get(r4);
        r0 = (android.support.v4.view.ViewPager.ItemInfo) r0;
    L_0x00e2:
        r11 = r14.getClientWidth();
        if (r11 > 0) goto L_0x0179;
    L_0x00e8:
        r3 = 0;
    L_0x00e9:
        r5 = r14.mCurItem;
        r5 = r5 + -1;
        r13 = r4;
        r4 = r6;
        r6 = r5;
        r5 = r2;
        r2 = r13;
    L_0x00f2:
        if (r6 < 0) goto L_0x00fc;
    L_0x00f4:
        r12 = (r4 > r3 ? 1 : (r4 == r3 ? 0 : -1));
        if (r12 < 0) goto L_0x01b0;
    L_0x00f8:
        if (r6 >= r8) goto L_0x01b0;
    L_0x00fa:
        if (r0 != 0) goto L_0x0188;
    L_0x00fc:
        r6 = r7.widthFactor;
        r4 = r5 + 1;
        r0 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r0 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1));
        if (r0 >= 0) goto L_0x012d;
    L_0x0106:
        r0 = r14.mItems;
        r0 = r0.size();
        if (r4 >= r0) goto L_0x01e0;
    L_0x010e:
        r0 = r14.mItems;
        r0 = r0.get(r4);
        r0 = (android.support.v4.view.ViewPager.ItemInfo) r0;
        r3 = r0;
    L_0x0117:
        if (r11 > 0) goto L_0x01e3;
    L_0x0119:
        r0 = 0;
        r2 = r0;
    L_0x011b:
        r0 = r14.mCurItem;
        r0 = r0 + 1;
        r13 = r3;
        r3 = r6;
        r6 = r0;
        r0 = r13;
    L_0x0123:
        if (r6 >= r9) goto L_0x012d;
    L_0x0125:
        r8 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1));
        if (r8 < 0) goto L_0x021a;
    L_0x0129:
        if (r6 <= r10) goto L_0x021a;
    L_0x012b:
        if (r0 != 0) goto L_0x01f0;
    L_0x012d:
        r14.calculatePageOffsets(r7, r5, r1);
    L_0x0130:
        r1 = r14.mAdapter;
        r2 = r14.mCurItem;
        if (r7 == 0) goto L_0x0254;
    L_0x0136:
        r0 = r7.object;
    L_0x0138:
        r1.setPrimaryItem(r14, r2, r0);
        r0 = r14.mAdapter;
        r0.finishUpdate(r14);
        r2 = r14.getChildCount();
        r0 = 0;
        r1 = r0;
    L_0x0146:
        if (r1 >= r2) goto L_0x0257;
    L_0x0148:
        r3 = r14.getChildAt(r1);
        r0 = r3.getLayoutParams();
        r0 = (android.support.v4.view.ViewPager.LayoutParams) r0;
        r0.childIndex = r1;
        r4 = r0.isDecor;
        if (r4 != 0) goto L_0x016d;
    L_0x0158:
        r4 = r0.widthFactor;
        r5 = 0;
        r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1));
        if (r4 != 0) goto L_0x016d;
    L_0x015f:
        r3 = r14.infoForChild(r3);
        if (r3 == 0) goto L_0x016d;
    L_0x0165:
        r4 = r3.widthFactor;
        r0.widthFactor = r4;
        r3 = r3.position;
        r0.position = r3;
    L_0x016d:
        r0 = r1 + 1;
        r1 = r0;
        goto L_0x0146;
    L_0x0171:
        r0 = r2 + 1;
        r2 = r0;
        goto L_0x00ac;
    L_0x0176:
        r0 = 0;
        goto L_0x00e2;
    L_0x0179:
        r3 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r5 = r7.widthFactor;
        r3 = r3 - r5;
        r5 = r14.getPaddingLeft();
        r5 = (float) r5;
        r12 = (float) r11;
        r5 = r5 / r12;
        r3 = r3 + r5;
        goto L_0x00e9;
    L_0x0188:
        r12 = r0.position;
        if (r6 != r12) goto L_0x01aa;
    L_0x018c:
        r12 = r0.scrolling;
        if (r12 != 0) goto L_0x01aa;
    L_0x0190:
        r12 = r14.mItems;
        r12.remove(r2);
        r12 = r14.mAdapter;
        r0 = r0.object;
        r12.destroyItem(r14, r6, r0);
        r2 = r2 + -1;
        r5 = r5 + -1;
        if (r2 < 0) goto L_0x01ae;
    L_0x01a2:
        r0 = r14.mItems;
        r0 = r0.get(r2);
        r0 = (android.support.v4.view.ViewPager.ItemInfo) r0;
    L_0x01aa:
        r6 = r6 + -1;
        goto L_0x00f2;
    L_0x01ae:
        r0 = 0;
        goto L_0x01aa;
    L_0x01b0:
        if (r0 == 0) goto L_0x01c8;
    L_0x01b2:
        r12 = r0.position;
        if (r6 != r12) goto L_0x01c8;
    L_0x01b6:
        r0 = r0.widthFactor;
        r4 = r4 + r0;
        r2 = r2 + -1;
        if (r2 < 0) goto L_0x01c6;
    L_0x01bd:
        r0 = r14.mItems;
        r0 = r0.get(r2);
        r0 = (android.support.v4.view.ViewPager.ItemInfo) r0;
        goto L_0x01aa;
    L_0x01c6:
        r0 = 0;
        goto L_0x01aa;
    L_0x01c8:
        r0 = r2 + 1;
        r0 = r14.addNewItem(r6, r0);
        r0 = r0.widthFactor;
        r4 = r4 + r0;
        r5 = r5 + 1;
        if (r2 < 0) goto L_0x01de;
    L_0x01d5:
        r0 = r14.mItems;
        r0 = r0.get(r2);
        r0 = (android.support.v4.view.ViewPager.ItemInfo) r0;
        goto L_0x01aa;
    L_0x01de:
        r0 = 0;
        goto L_0x01aa;
    L_0x01e0:
        r3 = 0;
        goto L_0x0117;
    L_0x01e3:
        r0 = r14.getPaddingRight();
        r0 = (float) r0;
        r2 = (float) r11;
        r0 = r0 / r2;
        r2 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r0 = r0 + r2;
        r2 = r0;
        goto L_0x011b;
    L_0x01f0:
        r8 = r0.position;
        if (r6 != r8) goto L_0x0214;
    L_0x01f4:
        r8 = r0.scrolling;
        if (r8 != 0) goto L_0x0214;
    L_0x01f8:
        r8 = r14.mItems;
        r8.remove(r4);
        r8 = r14.mAdapter;
        r0 = r0.object;
        r8.destroyItem(r14, r6, r0);
        r0 = r14.mItems;
        r0 = r0.size();
        if (r4 >= r0) goto L_0x0218;
    L_0x020c:
        r0 = r14.mItems;
        r0 = r0.get(r4);
        r0 = (android.support.v4.view.ViewPager.ItemInfo) r0;
    L_0x0214:
        r6 = r6 + 1;
        goto L_0x0123;
    L_0x0218:
        r0 = 0;
        goto L_0x0214;
    L_0x021a:
        if (r0 == 0) goto L_0x0238;
    L_0x021c:
        r8 = r0.position;
        if (r6 != r8) goto L_0x0238;
    L_0x0220:
        r0 = r0.widthFactor;
        r3 = r3 + r0;
        r4 = r4 + 1;
        r0 = r14.mItems;
        r0 = r0.size();
        if (r4 >= r0) goto L_0x0236;
    L_0x022d:
        r0 = r14.mItems;
        r0 = r0.get(r4);
        r0 = (android.support.v4.view.ViewPager.ItemInfo) r0;
        goto L_0x0214;
    L_0x0236:
        r0 = 0;
        goto L_0x0214;
    L_0x0238:
        r0 = r14.addNewItem(r6, r4);
        r4 = r4 + 1;
        r0 = r0.widthFactor;
        r3 = r3 + r0;
        r0 = r14.mItems;
        r0 = r0.size();
        if (r4 >= r0) goto L_0x0252;
    L_0x0249:
        r0 = r14.mItems;
        r0 = r0.get(r4);
        r0 = (android.support.v4.view.ViewPager.ItemInfo) r0;
        goto L_0x0214;
    L_0x0252:
        r0 = 0;
        goto L_0x0214;
    L_0x0254:
        r0 = 0;
        goto L_0x0138;
    L_0x0257:
        r14.sortChildDrawingOrder();
        r0 = r14.hasFocus();
        if (r0 == 0) goto L_0x0015;
    L_0x0260:
        r0 = r14.findFocus();
        if (r0 == 0) goto L_0x0293;
    L_0x0266:
        r0 = r14.infoForAnyChild(r0);
    L_0x026a:
        if (r0 == 0) goto L_0x0272;
    L_0x026c:
        r0 = r0.position;
        r1 = r14.mCurItem;
        if (r0 == r1) goto L_0x0015;
    L_0x0272:
        r0 = 0;
    L_0x0273:
        r1 = r14.getChildCount();
        if (r0 >= r1) goto L_0x0015;
    L_0x0279:
        r1 = r14.getChildAt(r0);
        r2 = r14.infoForChild(r1);
        if (r2 == 0) goto L_0x0290;
    L_0x0283:
        r2 = r2.position;
        r3 = r14.mCurItem;
        if (r2 != r3) goto L_0x0290;
    L_0x0289:
        r2 = 2;
        r1 = r1.requestFocus(r2);
        if (r1 != 0) goto L_0x0015;
    L_0x0290:
        r0 = r0 + 1;
        goto L_0x0273;
    L_0x0293:
        r0 = 0;
        goto L_0x026a;
    L_0x0295:
        r7 = r0;
        goto L_0x00d3;
    L_0x0298:
        r0 = r3;
        goto L_0x00c8;
    L_0x029b:
        r1 = r0;
        goto L_0x000e;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.view.ViewPager.populate(int):void");
    }

    public void removeOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        if (this.mOnPageChangeListeners != null) {
            this.mOnPageChangeListeners.remove(onPageChangeListener);
        }
    }

    public void removeView(View view) {
        if (this.mInLayout) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public void setAdapter(PagerAdapter pagerAdapter) {
        if (this.mAdapter != null) {
            this.mAdapter.setViewPagerObserver(null);
            this.mAdapter.startUpdate((ViewGroup) this);
            for (int i = SCROLL_STATE_IDLE; i < this.mItems.size(); i += SCROLL_STATE_DRAGGING) {
                ItemInfo itemInfo = (ItemInfo) this.mItems.get(i);
                this.mAdapter.destroyItem((ViewGroup) this, itemInfo.position, itemInfo.object);
            }
            this.mAdapter.finishUpdate((ViewGroup) this);
            this.mItems.clear();
            removeNonDecorViews();
            this.mCurItem = SCROLL_STATE_IDLE;
            scrollTo(SCROLL_STATE_IDLE, SCROLL_STATE_IDLE);
        }
        PagerAdapter pagerAdapter2 = this.mAdapter;
        this.mAdapter = pagerAdapter;
        this.mExpectedAdapterCount = SCROLL_STATE_IDLE;
        if (this.mAdapter != null) {
            if (this.mObserver == null) {
                this.mObserver = new PagerObserver();
            }
            this.mAdapter.setViewPagerObserver(this.mObserver);
            this.mPopulatePending = DEBUG;
            boolean z = this.mFirstLayout;
            this.mFirstLayout = true;
            this.mExpectedAdapterCount = this.mAdapter.getCount();
            if (this.mRestoredCurItem >= 0) {
                this.mAdapter.restoreState(this.mRestoredAdapterState, this.mRestoredClassLoader);
                setCurrentItemInternal(this.mRestoredCurItem, DEBUG, true);
                this.mRestoredCurItem = INVALID_POINTER;
                this.mRestoredAdapterState = null;
                this.mRestoredClassLoader = null;
            } else if (z) {
                requestLayout();
            } else {
                populate();
            }
        }
        if (this.mAdapterChangeListener != null && pagerAdapter2 != pagerAdapter) {
            this.mAdapterChangeListener.onAdapterChanged(pagerAdapter2, pagerAdapter);
        }
    }

    void setChildrenDrawingOrderEnabledCompat(boolean z) {
        if (VERSION.SDK_INT >= 7) {
            if (this.mSetChildrenDrawingOrderEnabled == null) {
                try {
                    Class[] clsArr = new Class[SCROLL_STATE_DRAGGING];
                    clsArr[SCROLL_STATE_IDLE] = Boolean.TYPE;
                    this.mSetChildrenDrawingOrderEnabled = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", clsArr);
                } catch (Throwable e) {
                    Log.e(TAG, "Can't find setChildrenDrawingOrderEnabled", e);
                }
            }
            try {
                Method method = this.mSetChildrenDrawingOrderEnabled;
                Object[] objArr = new Object[SCROLL_STATE_DRAGGING];
                objArr[SCROLL_STATE_IDLE] = Boolean.valueOf(z);
                method.invoke(this, objArr);
            } catch (Throwable e2) {
                Log.e(TAG, "Error changing children drawing order", e2);
            }
        }
    }

    public void setCurrentItem(int i) {
        this.mPopulatePending = DEBUG;
        setCurrentItemInternal(i, !this.mFirstLayout ? true : DEBUG, DEBUG);
    }

    public void setCurrentItem(int i, boolean z) {
        this.mPopulatePending = DEBUG;
        setCurrentItemInternal(i, z, DEBUG);
    }

    void setCurrentItemInternal(int i, boolean z, boolean z2) {
        setCurrentItemInternal(i, z, z2, SCROLL_STATE_IDLE);
    }

    void setCurrentItemInternal(int i, boolean z, boolean z2, int i2) {
        boolean z3 = DEBUG;
        if (this.mAdapter == null || this.mAdapter.getCount() <= 0) {
            setScrollingCacheEnabled(DEBUG);
        } else if (z2 || this.mCurItem != i || this.mItems.size() == 0) {
            if (i < 0) {
                i = SCROLL_STATE_IDLE;
            } else if (i >= this.mAdapter.getCount()) {
                i = this.mAdapter.getCount() + INVALID_POINTER;
            }
            int i3 = this.mOffscreenPageLimit;
            if (i > this.mCurItem + i3 || i < this.mCurItem - i3) {
                for (int i4 = SCROLL_STATE_IDLE; i4 < this.mItems.size(); i4 += SCROLL_STATE_DRAGGING) {
                    ((ItemInfo) this.mItems.get(i4)).scrolling = true;
                }
            }
            if (this.mCurItem != i) {
                z3 = true;
            }
            if (this.mFirstLayout) {
                this.mCurItem = i;
                if (z3) {
                    dispatchOnPageSelected(i);
                }
                requestLayout();
                return;
            }
            populate(i);
            scrollToItem(i, z, i2, z3);
        } else {
            setScrollingCacheEnabled(DEBUG);
        }
    }

    OnPageChangeListener setInternalPageChangeListener(OnPageChangeListener onPageChangeListener) {
        OnPageChangeListener onPageChangeListener2 = this.mInternalPageChangeListener;
        this.mInternalPageChangeListener = onPageChangeListener;
        return onPageChangeListener2;
    }

    public void setOffscreenPageLimit(int i) {
        if (i < SCROLL_STATE_DRAGGING) {
            Log.w(TAG, "Requested offscreen page limit " + i + " too small; defaulting to " + SCROLL_STATE_DRAGGING);
            i = SCROLL_STATE_DRAGGING;
        }
        if (i != this.mOffscreenPageLimit) {
            this.mOffscreenPageLimit = i;
            populate();
        }
    }

    void setOnAdapterChangeListener(OnAdapterChangeListener onAdapterChangeListener) {
        this.mAdapterChangeListener = onAdapterChangeListener;
    }

    @Deprecated
    public void setOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        this.mOnPageChangeListener = onPageChangeListener;
    }

    public void setPageMargin(int i) {
        int i2 = this.mPageMargin;
        this.mPageMargin = i;
        int width = getWidth();
        recomputeScrollPosition(width, width, i, i2);
        requestLayout();
    }

    public void setPageMarginDrawable(@DrawableRes int i) {
        setPageMarginDrawable(getContext().getResources().getDrawable(i));
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.mMarginDrawable = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null ? true : DEBUG);
        invalidate();
    }

    public void setPageTransformer(boolean z, PageTransformer pageTransformer) {
        int i = SCROLL_STATE_DRAGGING;
        if (VERSION.SDK_INT >= 11) {
            boolean z2 = pageTransformer != null ? true : DEBUG;
            int i2 = z2 != (this.mPageTransformer != null ? SCROLL_STATE_DRAGGING : SCROLL_STATE_IDLE) ? SCROLL_STATE_DRAGGING : SCROLL_STATE_IDLE;
            this.mPageTransformer = pageTransformer;
            setChildrenDrawingOrderEnabledCompat(z2);
            if (z2) {
                if (z) {
                    i = SCROLL_STATE_SETTLING;
                }
                this.mDrawingOrder = i;
            } else {
                this.mDrawingOrder = SCROLL_STATE_IDLE;
            }
            if (i2 != 0) {
                populate();
            }
        }
    }

    void smoothScrollTo(int i, int i2) {
        smoothScrollTo(i, i2, SCROLL_STATE_IDLE);
    }

    void smoothScrollTo(int i, int i2, int i3) {
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(DEBUG);
            return;
        }
        int i4;
        boolean z = (this.mScroller == null || this.mScroller.isFinished()) ? DEBUG : true;
        if (z) {
            int currX = this.mIsScrollStarted ? this.mScroller.getCurrX() : this.mScroller.getStartX();
            this.mScroller.abortAnimation();
            setScrollingCacheEnabled(DEBUG);
            i4 = currX;
        } else {
            i4 = getScrollX();
        }
        int scrollY = getScrollY();
        int i5 = i - i4;
        int i6 = i2 - scrollY;
        if (i5 == 0 && i6 == 0) {
            completeScroll(DEBUG);
            populate();
            setScrollState(SCROLL_STATE_IDLE);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(SCROLL_STATE_SETTLING);
        currX = getClientWidth();
        int i7 = currX / SCROLL_STATE_SETTLING;
        float f = (float) i7;
        float f2 = (float) i7;
        float distanceInfluenceForSnapDuration = distanceInfluenceForSnapDuration(Math.min(1.0f, (((float) Math.abs(i5)) * 1.0f) / ((float) currX)));
        int abs = Math.abs(i3);
        i7 = Math.min(abs > 0 ? Math.round(1000.0f * Math.abs(((f2 * distanceInfluenceForSnapDuration) + f) / ((float) abs))) * 4 : (int) (((((float) Math.abs(i5)) / ((((float) currX) * this.mAdapter.getPageWidth(this.mCurItem)) + ((float) this.mPageMargin))) + 1.0f) * 100.0f), MAX_SETTLE_DURATION);
        this.mIsScrollStarted = DEBUG;
        this.mScroller.startScroll(i4, scrollY, i5, i6, i7);
        ViewCompat.postInvalidateOnAnimation(this);
    }

    protected boolean verifyDrawable(Drawable drawable) {
        return (super.verifyDrawable(drawable) || drawable == this.mMarginDrawable) ? true : DEBUG;
    }
}
