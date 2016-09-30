package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.Nullable;
import android.support.annotation.StyleRes;
import android.support.v7.view.menu.ActionMenuItemView;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuBuilder.ItemInvoker;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuPresenter.Callback;
import android.support.v7.view.menu.MenuView;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewDebug.ExportedProperty;
import android.view.accessibility.AccessibilityEvent;

public class ActionMenuView extends LinearLayoutCompat implements ItemInvoker, MenuView {
    static final int GENERATED_ITEM_PADDING = 4;
    static final int MIN_CELL_SIZE = 56;
    private static final String TAG = "ActionMenuView";
    private Callback mActionMenuPresenterCallback;
    private boolean mFormatItems;
    private int mFormatItemsWidth;
    private int mGeneratedItemPadding;
    private MenuBuilder mMenu;
    private MenuBuilder.Callback mMenuBuilderCallback;
    private int mMinCellSize;
    private OnMenuItemClickListener mOnMenuItemClickListener;
    private Context mPopupContext;
    private int mPopupTheme;
    private ActionMenuPresenter mPresenter;
    private boolean mReserveOverflow;

    public interface ActionMenuChildView {
        boolean needsDividerAfter();

        boolean needsDividerBefore();
    }

    private class ActionMenuPresenterCallback implements Callback {
        private ActionMenuPresenterCallback() {
        }

        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        }

        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            return false;
        }
    }

    public static class LayoutParams extends LinearLayoutCompat.LayoutParams {
        @ExportedProperty
        public int cellsUsed;
        @ExportedProperty
        public boolean expandable;
        boolean expanded;
        @ExportedProperty
        public int extraPixels;
        @ExportedProperty
        public boolean isOverflowButton;
        @ExportedProperty
        public boolean preventEdgeOffset;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.isOverflowButton = false;
        }

        LayoutParams(int i, int i2, boolean z) {
            super(i, i2);
            this.isOverflowButton = z;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((android.view.ViewGroup.LayoutParams) layoutParams);
            this.isOverflowButton = layoutParams.isOverflowButton;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    private class MenuBuilderCallback implements MenuBuilder.Callback {
        private MenuBuilderCallback() {
        }

        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            return ActionMenuView.this.mOnMenuItemClickListener != null && ActionMenuView.this.mOnMenuItemClickListener.onMenuItemClick(menuItem);
        }

        public void onMenuModeChange(MenuBuilder menuBuilder) {
            if (ActionMenuView.this.mMenuBuilderCallback != null) {
                ActionMenuView.this.mMenuBuilderCallback.onMenuModeChange(menuBuilder);
            }
        }
    }

    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public ActionMenuView(Context context) {
        this(context, null);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.mMinCellSize = (int) (56.0f * f);
        this.mGeneratedItemPadding = (int) (f * 4.0f);
        this.mPopupContext = context;
        this.mPopupTheme = 0;
    }

    static int measureChildForCells(View view, int i, int i2, int i3, int i4) {
        int i5;
        boolean z = false;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(MeasureSpec.getSize(i3) - i4, MeasureSpec.getMode(i3));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z2 = actionMenuItemView != null && actionMenuItemView.hasText();
        if (i2 <= 0 || (z2 && i2 < 2)) {
            i5 = 0;
        } else {
            view.measure(MeasureSpec.makeMeasureSpec(i * i2, RtlSpacingHelper.UNDEFINED), makeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            i5 = measuredWidth / i;
            if (measuredWidth % i != 0) {
                i5++;
            }
            if (z2 && r1 < 2) {
                i5 = 2;
            }
        }
        if (!layoutParams.isOverflowButton && z2) {
            z = true;
        }
        layoutParams.expandable = z;
        layoutParams.cellsUsed = i5;
        view.measure(MeasureSpec.makeMeasureSpec(i5 * i, 1073741824), makeMeasureSpec);
        return i5;
    }

    private void onMeasureExactFormat(int i, int i2) {
        int mode = MeasureSpec.getMode(i2);
        int size = MeasureSpec.getSize(i);
        int size2 = MeasureSpec.getSize(i2);
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = getChildMeasureSpec(i2, paddingTop, -2);
        int i3 = size - (paddingLeft + paddingRight);
        int i4 = i3 / this.mMinCellSize;
        size = this.mMinCellSize;
        if (i4 == 0) {
            setMeasuredDimension(i3, 0);
            return;
        }
        Object obj;
        int i5;
        int i6;
        LayoutParams layoutParams;
        int i7 = this.mMinCellSize + ((i3 % size) / i4);
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        paddingLeft = 0;
        Object obj2 = null;
        long j = 0;
        int childCount = getChildCount();
        int i11 = 0;
        while (i11 < childCount) {
            long j2;
            int i12;
            int i13;
            int i14;
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() == 8) {
                obj = obj2;
                i5 = i8;
                i6 = paddingLeft;
                j2 = j;
                i12 = i10;
                i13 = i9;
                i9 = i4;
            } else {
                boolean z = childAt instanceof ActionMenuItemView;
                i5 = paddingLeft + 1;
                if (z) {
                    childAt.setPadding(this.mGeneratedItemPadding, 0, this.mGeneratedItemPadding, 0);
                }
                layoutParams = (LayoutParams) childAt.getLayoutParams();
                layoutParams.expanded = false;
                layoutParams.extraPixels = 0;
                layoutParams.cellsUsed = 0;
                layoutParams.expandable = false;
                layoutParams.leftMargin = 0;
                layoutParams.rightMargin = 0;
                boolean z2 = z && ((ActionMenuItemView) childAt).hasText();
                layoutParams.preventEdgeOffset = z2;
                paddingLeft = measureChildForCells(childAt, i7, layoutParams.isOverflowButton ? 1 : i4, childMeasureSpec, paddingTop);
                i9 = Math.max(i9, paddingLeft);
                if (layoutParams.expandable) {
                    i10++;
                }
                if (layoutParams.isOverflowButton) {
                    obj2 = 1;
                }
                i4 -= paddingLeft;
                paddingRight = Math.max(i8, childAt.getMeasuredHeight());
                if (paddingLeft == 1) {
                    j2 = ((long) (1 << i11)) | j;
                    i13 = i9;
                    i12 = i10;
                    i9 = i4;
                    i14 = i5;
                    i5 = paddingRight;
                    obj = obj2;
                    i6 = i14;
                } else {
                    j2 = j;
                    i13 = i9;
                    i12 = i10;
                    i9 = i4;
                    i14 = i5;
                    i5 = paddingRight;
                    obj = obj2;
                    i6 = i14;
                }
            }
            i11++;
            i8 = i5;
            i4 = i9;
            i9 = i13;
            i10 = i12;
            j = j2;
            paddingLeft = i6;
            obj2 = obj;
        }
        obj = (obj2 == null || paddingLeft != 2) ? null : 1;
        Object obj3 = null;
        long j3 = j;
        paddingTop = i4;
        while (i10 > 0 && paddingTop > 0) {
            i5 = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            j = 0;
            i4 = 0;
            int i15 = 0;
            while (i15 < childCount) {
                layoutParams = (LayoutParams) getChildAt(i15).getLayoutParams();
                if (layoutParams.expandable) {
                    int i16 = layoutParams.cellsUsed;
                    if (r0 < i5) {
                        size = layoutParams.cellsUsed;
                        j = (long) (1 << i15);
                        i5 = 1;
                    } else if (layoutParams.cellsUsed == i5) {
                        j |= (long) (1 << i15);
                        i14 = i5;
                        i5 = i4 + 1;
                        size = i14;
                    } else {
                        size = i5;
                        i5 = i4;
                    }
                } else {
                    size = i5;
                    i5 = i4;
                }
                i15++;
                i4 = i5;
                i5 = size;
            }
            j3 |= j;
            if (i4 > paddingTop) {
                break;
            }
            long j4 = j3;
            int i17 = 0;
            while (i17 < childCount) {
                View childAt2 = getChildAt(i17);
                layoutParams = (LayoutParams) childAt2.getLayoutParams();
                if ((((long) (1 << i17)) & j) != 0) {
                    if (obj != null && layoutParams.preventEdgeOffset && paddingTop == 1) {
                        childAt2.setPadding(this.mGeneratedItemPadding + i7, 0, this.mGeneratedItemPadding, 0);
                    }
                    layoutParams.cellsUsed++;
                    layoutParams.expanded = true;
                    size = paddingTop - 1;
                } else if (layoutParams.cellsUsed == i5 + 1) {
                    j4 |= (long) (1 << i17);
                    size = paddingTop;
                } else {
                    size = paddingTop;
                }
                i17++;
                paddingTop = size;
            }
            j3 = j4;
            i11 = 1;
        }
        Object obj4 = (obj2 == null && paddingLeft == 1) ? 1 : null;
        if (paddingTop <= 0 || j3 == 0 || (paddingTop >= paddingLeft - 1 && obj4 == null && i9 <= 1)) {
            obj = obj3;
        } else {
            float f;
            View childAt3;
            float bitCount = (float) Long.bitCount(j3);
            if (obj4 == null) {
                if (!((1 & j3) == 0 || ((LayoutParams) getChildAt(0).getLayoutParams()).preventEdgeOffset)) {
                    bitCount -= 0.5f;
                }
                if (!((((long) (1 << (childCount - 1))) & j3) == 0 || ((LayoutParams) getChildAt(childCount - 1).getLayoutParams()).preventEdgeOffset)) {
                    f = bitCount - 0.5f;
                    paddingLeft = f <= 0.0f ? (int) (((float) (paddingTop * i7)) / f) : 0;
                    i6 = 0;
                    obj = obj3;
                    while (i6 < childCount) {
                        if ((((long) (1 << i6)) & j3) != 0) {
                            obj4 = obj;
                        } else {
                            childAt3 = getChildAt(i6);
                            layoutParams = (LayoutParams) childAt3.getLayoutParams();
                            if (childAt3 instanceof ActionMenuItemView) {
                                layoutParams.extraPixels = paddingLeft;
                                layoutParams.expanded = true;
                                if (i6 == 0 && !layoutParams.preventEdgeOffset) {
                                    layoutParams.leftMargin = (-paddingLeft) / 2;
                                }
                                obj4 = 1;
                            } else if (layoutParams.isOverflowButton) {
                                if (i6 != 0) {
                                    layoutParams.leftMargin = paddingLeft / 2;
                                }
                                if (i6 == childCount - 1) {
                                    layoutParams.rightMargin = paddingLeft / 2;
                                    obj4 = obj;
                                } else {
                                    obj4 = obj;
                                }
                            } else {
                                layoutParams.extraPixels = paddingLeft;
                                layoutParams.expanded = true;
                                layoutParams.rightMargin = (-paddingLeft) / 2;
                                obj4 = 1;
                            }
                        }
                        i6++;
                        obj = obj4;
                    }
                }
            }
            f = bitCount;
            if (f <= 0.0f) {
            }
            i6 = 0;
            obj = obj3;
            while (i6 < childCount) {
                if ((((long) (1 << i6)) & j3) != 0) {
                    childAt3 = getChildAt(i6);
                    layoutParams = (LayoutParams) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        layoutParams.extraPixels = paddingLeft;
                        layoutParams.expanded = true;
                        layoutParams.leftMargin = (-paddingLeft) / 2;
                        obj4 = 1;
                    } else if (layoutParams.isOverflowButton) {
                        if (i6 != 0) {
                            layoutParams.leftMargin = paddingLeft / 2;
                        }
                        if (i6 == childCount - 1) {
                            obj4 = obj;
                        } else {
                            layoutParams.rightMargin = paddingLeft / 2;
                            obj4 = obj;
                        }
                    } else {
                        layoutParams.extraPixels = paddingLeft;
                        layoutParams.expanded = true;
                        layoutParams.rightMargin = (-paddingLeft) / 2;
                        obj4 = 1;
                    }
                } else {
                    obj4 = obj;
                }
                i6++;
                obj = obj4;
            }
        }
        if (obj != null) {
            for (paddingLeft = 0; paddingLeft < childCount; paddingLeft++) {
                childAt = getChildAt(paddingLeft);
                layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.expanded) {
                    childAt.measure(MeasureSpec.makeMeasureSpec(layoutParams.extraPixels + (layoutParams.cellsUsed * i7), 1073741824), childMeasureSpec);
                }
            }
        }
        if (mode == 1073741824) {
            i8 = size2;
        }
        setMeasuredDimension(i3, i8);
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams != null && (layoutParams instanceof LayoutParams);
    }

    public void dismissPopupMenus() {
        if (this.mPresenter != null) {
            this.mPresenter.dismissPopupMenus();
        }
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    protected LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        layoutParams.gravity = 16;
        return layoutParams;
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    protected LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            return generateDefaultLayoutParams();
        }
        LayoutParams layoutParams2 = layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : new LayoutParams(layoutParams);
        if (layoutParams2.gravity > 0) {
            return layoutParams2;
        }
        layoutParams2.gravity = 16;
        return layoutParams2;
    }

    public LayoutParams generateOverflowButtonLayoutParams() {
        LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
        generateDefaultLayoutParams.isOverflowButton = true;
        return generateDefaultLayoutParams;
    }

    public Menu getMenu() {
        if (this.mMenu == null) {
            Context context = getContext();
            this.mMenu = new MenuBuilder(context);
            this.mMenu.setCallback(new MenuBuilderCallback());
            this.mPresenter = new ActionMenuPresenter(context);
            this.mPresenter.setReserveOverflow(true);
            this.mPresenter.setCallback(this.mActionMenuPresenterCallback != null ? this.mActionMenuPresenterCallback : new ActionMenuPresenterCallback());
            this.mMenu.addMenuPresenter(this.mPresenter, this.mPopupContext);
            this.mPresenter.setMenuView(this);
        }
        return this.mMenu;
    }

    @Nullable
    public Drawable getOverflowIcon() {
        getMenu();
        return this.mPresenter.getOverflowIcon();
    }

    public int getPopupTheme() {
        return this.mPopupTheme;
    }

    public int getWindowAnimations() {
        return 0;
    }

    protected boolean hasSupportDividerBeforeChildAt(int i) {
        boolean z = false;
        if (i == 0) {
            return false;
        }
        View childAt = getChildAt(i - 1);
        View childAt2 = getChildAt(i);
        if (i < getChildCount() && (childAt instanceof ActionMenuChildView)) {
            z = ((ActionMenuChildView) childAt).needsDividerAfter() | 0;
        }
        return (i <= 0 || !(childAt2 instanceof ActionMenuChildView)) ? z : ((ActionMenuChildView) childAt2).needsDividerBefore() | z;
    }

    public boolean hideOverflowMenu() {
        return this.mPresenter != null && this.mPresenter.hideOverflowMenu();
    }

    public void initialize(MenuBuilder menuBuilder) {
        this.mMenu = menuBuilder;
    }

    public boolean invokeItem(MenuItemImpl menuItemImpl) {
        return this.mMenu.performItemAction(menuItemImpl, 0);
    }

    public boolean isOverflowMenuShowPending() {
        return this.mPresenter != null && this.mPresenter.isOverflowMenuShowPending();
    }

    public boolean isOverflowMenuShowing() {
        return this.mPresenter != null && this.mPresenter.isOverflowMenuShowing();
    }

    public boolean isOverflowReserved() {
        return this.mReserveOverflow;
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (VERSION.SDK_INT >= 8) {
            super.onConfigurationChanged(configuration);
        }
        if (this.mPresenter != null) {
            this.mPresenter.updateMenuView(false);
            if (this.mPresenter.isOverflowMenuShowing()) {
                this.mPresenter.hideOverflowMenu();
                this.mPresenter.showOverflowMenu();
            }
        }
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        dismissPopupMenus();
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.mFormatItems) {
            int i5;
            LayoutParams layoutParams;
            int paddingLeft;
            int i6;
            int childCount = getChildCount();
            int i7 = (i4 - i2) / 2;
            int dividerWidth = getDividerWidth();
            int i8 = 0;
            int i9 = 0;
            int paddingRight = ((i3 - i) - getPaddingRight()) - getPaddingLeft();
            Object obj = null;
            boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
            int i10 = 0;
            while (i10 < childCount) {
                Object obj2;
                View childAt = getChildAt(i10);
                if (childAt.getVisibility() == 8) {
                    obj2 = obj;
                    i5 = i8;
                    i8 = i9;
                    i9 = paddingRight;
                } else {
                    layoutParams = (LayoutParams) childAt.getLayoutParams();
                    int i11;
                    if (layoutParams.isOverflowButton) {
                        i5 = childAt.getMeasuredWidth();
                        if (hasSupportDividerBeforeChildAt(i10)) {
                            i5 += dividerWidth;
                        }
                        int measuredHeight = childAt.getMeasuredHeight();
                        if (isLayoutRtl) {
                            paddingLeft = getPaddingLeft() + layoutParams.leftMargin;
                            i6 = paddingLeft + i5;
                        } else {
                            i6 = (getWidth() - getPaddingRight()) - layoutParams.rightMargin;
                            paddingLeft = i6 - i5;
                        }
                        int i12 = i7 - (measuredHeight / 2);
                        childAt.layout(paddingLeft, i12, i6, measuredHeight + i12);
                        obj2 = 1;
                        i11 = i8;
                        i8 = i9;
                        i9 = paddingRight - i5;
                        i5 = i11;
                    } else {
                        paddingLeft = (childAt.getMeasuredWidth() + layoutParams.leftMargin) + layoutParams.rightMargin;
                        i6 = i8 + paddingLeft;
                        paddingRight -= paddingLeft;
                        if (hasSupportDividerBeforeChildAt(i10)) {
                            i6 += dividerWidth;
                        }
                        i8 = i9 + 1;
                        i9 = paddingRight;
                        i11 = i6;
                        obj2 = obj;
                        i5 = i11;
                    }
                }
                i10++;
                paddingRight = i9;
                i9 = i8;
                i8 = i5;
                obj = obj2;
            }
            if (childCount == 1 && obj == null) {
                View childAt2 = getChildAt(0);
                i5 = childAt2.getMeasuredWidth();
                i8 = childAt2.getMeasuredHeight();
                i9 = ((i3 - i) / 2) - (i5 / 2);
                paddingRight = i7 - (i8 / 2);
                childAt2.layout(i9, paddingRight, i5 + i9, i8 + paddingRight);
                return;
            }
            i6 = i9 - (obj != null ? 0 : 1);
            i9 = Math.max(0, i6 > 0 ? paddingRight / i6 : 0);
            View childAt3;
            if (isLayoutRtl) {
                i5 = getWidth() - getPaddingRight();
                i8 = 0;
                while (i8 < childCount) {
                    childAt3 = getChildAt(i8);
                    layoutParams = (LayoutParams) childAt3.getLayoutParams();
                    if (childAt3.getVisibility() == 8) {
                        i6 = i5;
                    } else if (layoutParams.isOverflowButton) {
                        i6 = i5;
                    } else {
                        i5 -= layoutParams.rightMargin;
                        paddingLeft = childAt3.getMeasuredWidth();
                        i10 = childAt3.getMeasuredHeight();
                        dividerWidth = i7 - (i10 / 2);
                        childAt3.layout(i5 - paddingLeft, dividerWidth, i5, i10 + dividerWidth);
                        i6 = i5 - ((layoutParams.leftMargin + paddingLeft) + i9);
                    }
                    i8++;
                    i5 = i6;
                }
                return;
            }
            i5 = getPaddingLeft();
            i8 = 0;
            while (i8 < childCount) {
                childAt3 = getChildAt(i8);
                layoutParams = (LayoutParams) childAt3.getLayoutParams();
                if (childAt3.getVisibility() == 8) {
                    i6 = i5;
                } else if (layoutParams.isOverflowButton) {
                    i6 = i5;
                } else {
                    i5 += layoutParams.leftMargin;
                    paddingLeft = childAt3.getMeasuredWidth();
                    i10 = childAt3.getMeasuredHeight();
                    dividerWidth = i7 - (i10 / 2);
                    childAt3.layout(i5, dividerWidth, i5 + paddingLeft, i10 + dividerWidth);
                    i6 = ((layoutParams.rightMargin + paddingLeft) + i9) + i5;
                }
                i8++;
                i5 = i6;
            }
            return;
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    protected void onMeasure(int i, int i2) {
        boolean z = this.mFormatItems;
        this.mFormatItems = MeasureSpec.getMode(i) == 1073741824;
        if (z != this.mFormatItems) {
            this.mFormatItemsWidth = 0;
        }
        int size = MeasureSpec.getSize(i);
        if (!(!this.mFormatItems || this.mMenu == null || size == this.mFormatItemsWidth)) {
            this.mFormatItemsWidth = size;
            this.mMenu.onItemsChanged(true);
        }
        int childCount = getChildCount();
        if (!this.mFormatItems || childCount <= 0) {
            for (int i3 = 0; i3 < childCount; i3++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i3).getLayoutParams();
                layoutParams.rightMargin = 0;
                layoutParams.leftMargin = 0;
            }
            super.onMeasure(i, i2);
            return;
        }
        onMeasureExactFormat(i, i2);
    }

    public MenuBuilder peekMenu() {
        return this.mMenu;
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.mPresenter.setExpandedActionViewsExclusive(z);
    }

    public void setMenuCallbacks(Callback callback, MenuBuilder.Callback callback2) {
        this.mActionMenuPresenterCallback = callback;
        this.mMenuBuilderCallback = callback2;
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.mOnMenuItemClickListener = onMenuItemClickListener;
    }

    public void setOverflowIcon(@Nullable Drawable drawable) {
        getMenu();
        this.mPresenter.setOverflowIcon(drawable);
    }

    public void setOverflowReserved(boolean z) {
        this.mReserveOverflow = z;
    }

    public void setPopupTheme(@StyleRes int i) {
        if (this.mPopupTheme != i) {
            this.mPopupTheme = i;
            if (i == 0) {
                this.mPopupContext = getContext();
            } else {
                this.mPopupContext = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setPresenter(ActionMenuPresenter actionMenuPresenter) {
        this.mPresenter = actionMenuPresenter;
        this.mPresenter.setMenuView(this);
    }

    public boolean showOverflowMenu() {
        return this.mPresenter != null && this.mPresenter.showOverflowMenu();
    }
}
