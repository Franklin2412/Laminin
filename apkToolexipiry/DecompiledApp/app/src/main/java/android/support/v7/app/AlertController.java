package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.NestedScrollView;
import android.support.v4.widget.NestedScrollView.OnScrollChangeListener;
import android.support.v7.appcompat.R;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import com.squareup.haha.perflib.StackFrame;
import com.squareup.leakcanary.watcher.BuildConfig;
import java.lang.ref.WeakReference;

class AlertController {
    private ListAdapter mAdapter;
    private int mAlertDialogLayout;
    private final OnClickListener mButtonHandler;
    private Button mButtonNegative;
    private Message mButtonNegativeMessage;
    private CharSequence mButtonNegativeText;
    private Button mButtonNeutral;
    private Message mButtonNeutralMessage;
    private CharSequence mButtonNeutralText;
    private int mButtonPanelLayoutHint;
    private int mButtonPanelSideLayout;
    private Button mButtonPositive;
    private Message mButtonPositiveMessage;
    private CharSequence mButtonPositiveText;
    private int mCheckedItem;
    private final Context mContext;
    private View mCustomTitleView;
    private final AppCompatDialog mDialog;
    private Handler mHandler;
    private Drawable mIcon;
    private int mIconId;
    private ImageView mIconView;
    private int mListItemLayout;
    private int mListLayout;
    private ListView mListView;
    private CharSequence mMessage;
    private TextView mMessageView;
    private int mMultiChoiceItemLayout;
    private NestedScrollView mScrollView;
    private int mSingleChoiceItemLayout;
    private CharSequence mTitle;
    private TextView mTitleView;
    private View mView;
    private int mViewLayoutResId;
    private int mViewSpacingBottom;
    private int mViewSpacingLeft;
    private int mViewSpacingRight;
    private boolean mViewSpacingSpecified;
    private int mViewSpacingTop;
    private final Window mWindow;

    /* renamed from: android.support.v7.app.AlertController.2 */
    class AnonymousClass2 implements OnScrollChangeListener {
        final /* synthetic */ View val$bottom;
        final /* synthetic */ View val$top;

        AnonymousClass2(View view, View view2) {
            this.val$top = view;
            this.val$bottom = view2;
        }

        public void onScrollChange(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
            AlertController.manageScrollIndicators(nestedScrollView, this.val$top, this.val$bottom);
        }
    }

    /* renamed from: android.support.v7.app.AlertController.3 */
    class AnonymousClass3 implements Runnable {
        final /* synthetic */ View val$bottom;
        final /* synthetic */ View val$top;

        AnonymousClass3(View view, View view2) {
            this.val$top = view;
            this.val$bottom = view2;
        }

        public void run() {
            AlertController.manageScrollIndicators(AlertController.this.mScrollView, this.val$top, this.val$bottom);
        }
    }

    /* renamed from: android.support.v7.app.AlertController.4 */
    class AnonymousClass4 implements OnScrollListener {
        final /* synthetic */ View val$bottom;
        final /* synthetic */ View val$top;

        AnonymousClass4(View view, View view2) {
            this.val$top = view;
            this.val$bottom = view2;
        }

        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            AlertController.manageScrollIndicators(absListView, this.val$top, this.val$bottom);
        }

        public void onScrollStateChanged(AbsListView absListView, int i) {
        }
    }

    /* renamed from: android.support.v7.app.AlertController.5 */
    class AnonymousClass5 implements Runnable {
        final /* synthetic */ View val$bottom;
        final /* synthetic */ View val$top;

        AnonymousClass5(View view, View view2) {
            this.val$top = view;
            this.val$bottom = view2;
        }

        public void run() {
            AlertController.manageScrollIndicators(AlertController.this.mListView, this.val$top, this.val$bottom);
        }
    }

    public static class AlertParams {
        public ListAdapter mAdapter;
        public boolean mCancelable;
        public int mCheckedItem;
        public boolean[] mCheckedItems;
        public final Context mContext;
        public Cursor mCursor;
        public View mCustomTitleView;
        public boolean mForceInverseBackground;
        public Drawable mIcon;
        public int mIconAttrId;
        public int mIconId;
        public final LayoutInflater mInflater;
        public String mIsCheckedColumn;
        public boolean mIsMultiChoice;
        public boolean mIsSingleChoice;
        public CharSequence[] mItems;
        public String mLabelColumn;
        public CharSequence mMessage;
        public DialogInterface.OnClickListener mNegativeButtonListener;
        public CharSequence mNegativeButtonText;
        public DialogInterface.OnClickListener mNeutralButtonListener;
        public CharSequence mNeutralButtonText;
        public OnCancelListener mOnCancelListener;
        public OnMultiChoiceClickListener mOnCheckboxClickListener;
        public DialogInterface.OnClickListener mOnClickListener;
        public OnDismissListener mOnDismissListener;
        public OnItemSelectedListener mOnItemSelectedListener;
        public OnKeyListener mOnKeyListener;
        public OnPrepareListViewListener mOnPrepareListViewListener;
        public DialogInterface.OnClickListener mPositiveButtonListener;
        public CharSequence mPositiveButtonText;
        public boolean mRecycleOnMeasure;
        public CharSequence mTitle;
        public View mView;
        public int mViewLayoutResId;
        public int mViewSpacingBottom;
        public int mViewSpacingLeft;
        public int mViewSpacingRight;
        public boolean mViewSpacingSpecified;
        public int mViewSpacingTop;

        /* renamed from: android.support.v7.app.AlertController.AlertParams.1 */
        class AnonymousClass1 extends ArrayAdapter<CharSequence> {
            final /* synthetic */ ListView val$listView;

            AnonymousClass1(Context context, int i, int i2, CharSequence[] charSequenceArr, ListView listView) {
                this.val$listView = listView;
                super(context, i, i2, charSequenceArr);
            }

            public View getView(int i, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i, view, viewGroup);
                if (AlertParams.this.mCheckedItems != null && AlertParams.this.mCheckedItems[i]) {
                    this.val$listView.setItemChecked(i, true);
                }
                return view2;
            }
        }

        /* renamed from: android.support.v7.app.AlertController.AlertParams.2 */
        class AnonymousClass2 extends CursorAdapter {
            private final int mIsCheckedIndex;
            private final int mLabelIndex;
            final /* synthetic */ AlertController val$dialog;
            final /* synthetic */ ListView val$listView;

            AnonymousClass2(Context context, Cursor cursor, boolean z, ListView listView, AlertController alertController) {
                this.val$listView = listView;
                this.val$dialog = alertController;
                super(context, cursor, z);
                Cursor cursor2 = getCursor();
                this.mLabelIndex = cursor2.getColumnIndexOrThrow(AlertParams.this.mLabelColumn);
                this.mIsCheckedIndex = cursor2.getColumnIndexOrThrow(AlertParams.this.mIsCheckedColumn);
            }

            public void bindView(View view, Context context, Cursor cursor) {
                ((CheckedTextView) view.findViewById(16908308)).setText(cursor.getString(this.mLabelIndex));
                this.val$listView.setItemChecked(cursor.getPosition(), cursor.getInt(this.mIsCheckedIndex) == 1);
            }

            public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                return AlertParams.this.mInflater.inflate(this.val$dialog.mMultiChoiceItemLayout, viewGroup, false);
            }
        }

        /* renamed from: android.support.v7.app.AlertController.AlertParams.3 */
        class AnonymousClass3 implements OnItemClickListener {
            final /* synthetic */ AlertController val$dialog;

            AnonymousClass3(AlertController alertController) {
                this.val$dialog = alertController;
            }

            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                AlertParams.this.mOnClickListener.onClick(this.val$dialog.mDialog, i);
                if (!AlertParams.this.mIsSingleChoice) {
                    this.val$dialog.mDialog.dismiss();
                }
            }
        }

        /* renamed from: android.support.v7.app.AlertController.AlertParams.4 */
        class AnonymousClass4 implements OnItemClickListener {
            final /* synthetic */ AlertController val$dialog;
            final /* synthetic */ ListView val$listView;

            AnonymousClass4(ListView listView, AlertController alertController) {
                this.val$listView = listView;
                this.val$dialog = alertController;
            }

            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (AlertParams.this.mCheckedItems != null) {
                    AlertParams.this.mCheckedItems[i] = this.val$listView.isItemChecked(i);
                }
                AlertParams.this.mOnCheckboxClickListener.onClick(this.val$dialog.mDialog, i, this.val$listView.isItemChecked(i));
            }
        }

        public interface OnPrepareListViewListener {
            void onPrepareListView(ListView listView);
        }

        public AlertParams(Context context) {
            this.mIconId = 0;
            this.mIconAttrId = 0;
            this.mViewSpacingSpecified = false;
            this.mCheckedItem = -1;
            this.mRecycleOnMeasure = true;
            this.mContext = context;
            this.mCancelable = true;
            this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        private void createListView(AlertController alertController) {
            ListAdapter simpleCursorAdapter;
            ListView listView = (ListView) this.mInflater.inflate(alertController.mListLayout, null);
            if (!this.mIsMultiChoice) {
                int access$1300 = this.mIsSingleChoice ? alertController.mSingleChoiceItemLayout : alertController.mListItemLayout;
                simpleCursorAdapter = this.mCursor != null ? new SimpleCursorAdapter(this.mContext, access$1300, this.mCursor, new String[]{this.mLabelColumn}, new int[]{16908308}) : this.mAdapter != null ? this.mAdapter : new CheckedItemAdapter(this.mContext, access$1300, 16908308, this.mItems);
            } else if (this.mCursor == null) {
                simpleCursorAdapter = new AnonymousClass1(this.mContext, alertController.mMultiChoiceItemLayout, 16908308, this.mItems, listView);
            } else {
                Object anonymousClass2 = new AnonymousClass2(this.mContext, this.mCursor, false, listView, alertController);
            }
            if (this.mOnPrepareListViewListener != null) {
                this.mOnPrepareListViewListener.onPrepareListView(listView);
            }
            alertController.mAdapter = simpleCursorAdapter;
            alertController.mCheckedItem = this.mCheckedItem;
            if (this.mOnClickListener != null) {
                listView.setOnItemClickListener(new AnonymousClass3(alertController));
            } else if (this.mOnCheckboxClickListener != null) {
                listView.setOnItemClickListener(new AnonymousClass4(listView, alertController));
            }
            if (this.mOnItemSelectedListener != null) {
                listView.setOnItemSelectedListener(this.mOnItemSelectedListener);
            }
            if (this.mIsSingleChoice) {
                listView.setChoiceMode(1);
            } else if (this.mIsMultiChoice) {
                listView.setChoiceMode(2);
            }
            alertController.mListView = listView;
        }

        public void apply(AlertController alertController) {
            if (this.mCustomTitleView != null) {
                alertController.setCustomTitle(this.mCustomTitleView);
            } else {
                if (this.mTitle != null) {
                    alertController.setTitle(this.mTitle);
                }
                if (this.mIcon != null) {
                    alertController.setIcon(this.mIcon);
                }
                if (this.mIconId != 0) {
                    alertController.setIcon(this.mIconId);
                }
                if (this.mIconAttrId != 0) {
                    alertController.setIcon(alertController.getIconAttributeResId(this.mIconAttrId));
                }
            }
            if (this.mMessage != null) {
                alertController.setMessage(this.mMessage);
            }
            if (this.mPositiveButtonText != null) {
                alertController.setButton(-1, this.mPositiveButtonText, this.mPositiveButtonListener, null);
            }
            if (this.mNegativeButtonText != null) {
                alertController.setButton(-2, this.mNegativeButtonText, this.mNegativeButtonListener, null);
            }
            if (this.mNeutralButtonText != null) {
                alertController.setButton(-3, this.mNeutralButtonText, this.mNeutralButtonListener, null);
            }
            if (!(this.mItems == null && this.mCursor == null && this.mAdapter == null)) {
                createListView(alertController);
            }
            if (this.mView != null) {
                if (this.mViewSpacingSpecified) {
                    alertController.setView(this.mView, this.mViewSpacingLeft, this.mViewSpacingTop, this.mViewSpacingRight, this.mViewSpacingBottom);
                    return;
                }
                alertController.setView(this.mView);
            } else if (this.mViewLayoutResId != 0) {
                alertController.setView(this.mViewLayoutResId);
            }
        }
    }

    private static final class ButtonHandler extends Handler {
        private static final int MSG_DISMISS_DIALOG = 1;
        private WeakReference<DialogInterface> mDialog;

        public ButtonHandler(DialogInterface dialogInterface) {
            this.mDialog = new WeakReference(dialogInterface);
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case StackFrame.NATIVE_METHOD /*-3*/:
                case StackFrame.COMPILED_METHOD /*-2*/:
                case BuildConfig.VERSION_CODE /*-1*/:
                    ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) this.mDialog.get(), message.what);
                case MSG_DISMISS_DIALOG /*1*/:
                    ((DialogInterface) message.obj).dismiss();
                default:
            }
        }
    }

    private static class CheckedItemAdapter extends ArrayAdapter<CharSequence> {
        public CheckedItemAdapter(Context context, int i, int i2, CharSequence[] charSequenceArr) {
            super(context, i, i2, charSequenceArr);
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public boolean hasStableIds() {
            return true;
        }
    }

    public AlertController(Context context, AppCompatDialog appCompatDialog, Window window) {
        this.mViewSpacingSpecified = false;
        this.mIconId = 0;
        this.mCheckedItem = -1;
        this.mButtonPanelLayoutHint = 0;
        this.mButtonHandler = new OnClickListener() {
            public void onClick(View view) {
                Message obtain = (view != AlertController.this.mButtonPositive || AlertController.this.mButtonPositiveMessage == null) ? (view != AlertController.this.mButtonNegative || AlertController.this.mButtonNegativeMessage == null) ? (view != AlertController.this.mButtonNeutral || AlertController.this.mButtonNeutralMessage == null) ? null : Message.obtain(AlertController.this.mButtonNeutralMessage) : Message.obtain(AlertController.this.mButtonNegativeMessage) : Message.obtain(AlertController.this.mButtonPositiveMessage);
                if (obtain != null) {
                    obtain.sendToTarget();
                }
                AlertController.this.mHandler.obtainMessage(1, AlertController.this.mDialog).sendToTarget();
            }
        };
        this.mContext = context;
        this.mDialog = appCompatDialog;
        this.mWindow = window;
        this.mHandler = new ButtonHandler(appCompatDialog);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.AlertDialog, R.attr.alertDialogStyle, 0);
        this.mAlertDialogLayout = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_android_layout, 0);
        this.mButtonPanelSideLayout = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_buttonPanelSideLayout, 0);
        this.mListLayout = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_listLayout, 0);
        this.mMultiChoiceItemLayout = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_multiChoiceItemLayout, 0);
        this.mSingleChoiceItemLayout = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_singleChoiceItemLayout, 0);
        this.mListItemLayout = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_listItemLayout, 0);
        obtainStyledAttributes.recycle();
    }

    static boolean canTextInput(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (canTextInput(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    private static void manageScrollIndicators(View view, View view2, View view3) {
        int i = 0;
        if (view2 != null) {
            view2.setVisibility(ViewCompat.canScrollVertically(view, -1) ? 0 : 4);
        }
        if (view3 != null) {
            if (!ViewCompat.canScrollVertically(view, 1)) {
                i = 4;
            }
            view3.setVisibility(i);
        }
    }

    @Nullable
    private ViewGroup resolvePanel(@Nullable View view, @Nullable View view2) {
        if (view == null) {
            return (ViewGroup) (view2 instanceof ViewStub ? ((ViewStub) view2).inflate() : view2);
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        return (ViewGroup) (view instanceof ViewStub ? ((ViewStub) view).inflate() : view);
    }

    private int selectContentView() {
        return this.mButtonPanelSideLayout == 0 ? this.mAlertDialogLayout : this.mButtonPanelLayoutHint == 1 ? this.mButtonPanelSideLayout : this.mAlertDialogLayout;
    }

    private void setScrollIndicators(ViewGroup viewGroup, View view, int i, int i2) {
        View view2 = null;
        View findViewById = this.mWindow.findViewById(R.id.scrollIndicatorUp);
        View findViewById2 = this.mWindow.findViewById(R.id.scrollIndicatorDown);
        if (VERSION.SDK_INT >= 23) {
            ViewCompat.setScrollIndicators(view, i, i2);
            if (findViewById != null) {
                viewGroup.removeView(findViewById);
            }
            if (findViewById2 != null) {
                viewGroup.removeView(findViewById2);
                return;
            }
            return;
        }
        if (findViewById != null && (i & 1) == 0) {
            viewGroup.removeView(findViewById);
            findViewById = null;
        }
        if (findViewById2 == null || (i & 2) != 0) {
            view2 = findViewById2;
        } else {
            viewGroup.removeView(findViewById2);
        }
        if (findViewById != null || view2 != null) {
            if (this.mMessage != null) {
                this.mScrollView.setOnScrollChangeListener(new AnonymousClass2(findViewById, view2));
                this.mScrollView.post(new AnonymousClass3(findViewById, view2));
            } else if (this.mListView != null) {
                this.mListView.setOnScrollListener(new AnonymousClass4(findViewById, view2));
                this.mListView.post(new AnonymousClass5(findViewById, view2));
            } else {
                if (findViewById != null) {
                    viewGroup.removeView(findViewById);
                }
                if (view2 != null) {
                    viewGroup.removeView(view2);
                }
            }
        }
    }

    private void setupButtons(ViewGroup viewGroup) {
        int i;
        int i2 = 1;
        this.mButtonPositive = (Button) viewGroup.findViewById(16908313);
        this.mButtonPositive.setOnClickListener(this.mButtonHandler);
        if (TextUtils.isEmpty(this.mButtonPositiveText)) {
            this.mButtonPositive.setVisibility(8);
            i = 0;
        } else {
            this.mButtonPositive.setText(this.mButtonPositiveText);
            this.mButtonPositive.setVisibility(0);
            i = 1;
        }
        this.mButtonNegative = (Button) viewGroup.findViewById(16908314);
        this.mButtonNegative.setOnClickListener(this.mButtonHandler);
        if (TextUtils.isEmpty(this.mButtonNegativeText)) {
            this.mButtonNegative.setVisibility(8);
        } else {
            this.mButtonNegative.setText(this.mButtonNegativeText);
            this.mButtonNegative.setVisibility(0);
            i |= 2;
        }
        this.mButtonNeutral = (Button) viewGroup.findViewById(16908315);
        this.mButtonNeutral.setOnClickListener(this.mButtonHandler);
        if (TextUtils.isEmpty(this.mButtonNeutralText)) {
            this.mButtonNeutral.setVisibility(8);
        } else {
            this.mButtonNeutral.setText(this.mButtonNeutralText);
            this.mButtonNeutral.setVisibility(0);
            i |= 4;
        }
        if (i == 0) {
            i2 = 0;
        }
        if (i2 == 0) {
            viewGroup.setVisibility(8);
        }
    }

    private void setupContent(ViewGroup viewGroup) {
        this.mScrollView = (NestedScrollView) this.mWindow.findViewById(R.id.scrollView);
        this.mScrollView.setFocusable(false);
        this.mScrollView.setNestedScrollingEnabled(false);
        this.mMessageView = (TextView) viewGroup.findViewById(16908299);
        if (this.mMessageView != null) {
            if (this.mMessage != null) {
                this.mMessageView.setText(this.mMessage);
                return;
            }
            this.mMessageView.setVisibility(8);
            this.mScrollView.removeView(this.mMessageView);
            if (this.mListView != null) {
                ViewGroup viewGroup2 = (ViewGroup) this.mScrollView.getParent();
                int indexOfChild = viewGroup2.indexOfChild(this.mScrollView);
                viewGroup2.removeViewAt(indexOfChild);
                viewGroup2.addView(this.mListView, indexOfChild, new LayoutParams(-1, -1));
                return;
            }
            viewGroup.setVisibility(8);
        }
    }

    private void setupCustomContent(ViewGroup viewGroup) {
        boolean z = false;
        View inflate = this.mView != null ? this.mView : this.mViewLayoutResId != 0 ? LayoutInflater.from(this.mContext).inflate(this.mViewLayoutResId, viewGroup, false) : null;
        if (inflate != null) {
            z = true;
        }
        if (!(z && canTextInput(inflate))) {
            this.mWindow.setFlags(AccessibilityNodeInfoCompat.ACTION_SET_SELECTION, AccessibilityNodeInfoCompat.ACTION_SET_SELECTION);
        }
        if (z) {
            FrameLayout frameLayout = (FrameLayout) this.mWindow.findViewById(R.id.custom);
            frameLayout.addView(inflate, new LayoutParams(-1, -1));
            if (this.mViewSpacingSpecified) {
                frameLayout.setPadding(this.mViewSpacingLeft, this.mViewSpacingTop, this.mViewSpacingRight, this.mViewSpacingBottom);
            }
            if (this.mListView != null) {
                ((LinearLayout.LayoutParams) viewGroup.getLayoutParams()).weight = 0.0f;
                return;
            }
            return;
        }
        viewGroup.setVisibility(8);
    }

    private void setupTitle(ViewGroup viewGroup) {
        if (this.mCustomTitleView != null) {
            viewGroup.addView(this.mCustomTitleView, 0, new LayoutParams(-1, -2));
            this.mWindow.findViewById(R.id.title_template).setVisibility(8);
            return;
        }
        this.mIconView = (ImageView) this.mWindow.findViewById(16908294);
        if ((!TextUtils.isEmpty(this.mTitle) ? 1 : 0) != 0) {
            this.mTitleView = (TextView) this.mWindow.findViewById(R.id.alertTitle);
            this.mTitleView.setText(this.mTitle);
            if (this.mIconId != 0) {
                this.mIconView.setImageResource(this.mIconId);
                return;
            } else if (this.mIcon != null) {
                this.mIconView.setImageDrawable(this.mIcon);
                return;
            } else {
                this.mTitleView.setPadding(this.mIconView.getPaddingLeft(), this.mIconView.getPaddingTop(), this.mIconView.getPaddingRight(), this.mIconView.getPaddingBottom());
                this.mIconView.setVisibility(8);
                return;
            }
        }
        this.mWindow.findViewById(R.id.title_template).setVisibility(8);
        this.mIconView.setVisibility(8);
        viewGroup.setVisibility(8);
    }

    private void setupView() {
        View findViewById = this.mWindow.findViewById(R.id.parentPanel);
        View findViewById2 = findViewById.findViewById(R.id.topPanel);
        View findViewById3 = findViewById.findViewById(R.id.contentPanel);
        View findViewById4 = findViewById.findViewById(R.id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) findViewById.findViewById(R.id.customPanel);
        setupCustomContent(viewGroup);
        View findViewById5 = viewGroup.findViewById(R.id.topPanel);
        View findViewById6 = viewGroup.findViewById(R.id.contentPanel);
        View findViewById7 = viewGroup.findViewById(R.id.buttonPanel);
        ViewGroup resolvePanel = resolvePanel(findViewById5, findViewById2);
        ViewGroup resolvePanel2 = resolvePanel(findViewById6, findViewById3);
        ViewGroup resolvePanel3 = resolvePanel(findViewById7, findViewById4);
        setupContent(resolvePanel2);
        setupButtons(resolvePanel3);
        setupTitle(resolvePanel);
        boolean z = (viewGroup == null || viewGroup.getVisibility() == 8) ? false : true;
        boolean z2 = (resolvePanel == null || resolvePanel.getVisibility() == 8) ? false : true;
        boolean z3 = (resolvePanel3 == null || resolvePanel3.getVisibility() == 8) ? false : true;
        if (!(z3 || resolvePanel2 == null)) {
            findViewById3 = resolvePanel2.findViewById(R.id.textSpacerNoButtons);
            if (findViewById3 != null) {
                findViewById3.setVisibility(0);
            }
        }
        if (z2 && this.mScrollView != null) {
            this.mScrollView.setClipToPadding(true);
        }
        if (!z) {
            findViewById3 = this.mListView != null ? this.mListView : this.mScrollView;
            if (findViewById3 != null) {
                setScrollIndicators(resolvePanel2, findViewById3, (z3 ? 2 : 0) | (z2 ? 1 : 0), 3);
            }
        }
        ListView listView = this.mListView;
        if (listView != null && this.mAdapter != null) {
            listView.setAdapter(this.mAdapter);
            int i = this.mCheckedItem;
            if (i > -1) {
                listView.setItemChecked(i, true);
                listView.setSelection(i);
            }
        }
    }

    public Button getButton(int i) {
        switch (i) {
            case StackFrame.NATIVE_METHOD /*-3*/:
                return this.mButtonNeutral;
            case StackFrame.COMPILED_METHOD /*-2*/:
                return this.mButtonNegative;
            case BuildConfig.VERSION_CODE /*-1*/:
                return this.mButtonPositive;
            default:
                return null;
        }
    }

    public int getIconAttributeResId(int i) {
        TypedValue typedValue = new TypedValue();
        this.mContext.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }

    public ListView getListView() {
        return this.mListView;
    }

    public void installContent() {
        this.mDialog.supportRequestWindowFeature(1);
        this.mDialog.setContentView(selectContentView());
        setupView();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return this.mScrollView != null && this.mScrollView.executeKeyEvent(keyEvent);
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return this.mScrollView != null && this.mScrollView.executeKeyEvent(keyEvent);
    }

    public void setButton(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message) {
        if (message == null && onClickListener != null) {
            message = this.mHandler.obtainMessage(i, onClickListener);
        }
        switch (i) {
            case StackFrame.NATIVE_METHOD /*-3*/:
                this.mButtonNeutralText = charSequence;
                this.mButtonNeutralMessage = message;
            case StackFrame.COMPILED_METHOD /*-2*/:
                this.mButtonNegativeText = charSequence;
                this.mButtonNegativeMessage = message;
            case BuildConfig.VERSION_CODE /*-1*/:
                this.mButtonPositiveText = charSequence;
                this.mButtonPositiveMessage = message;
            default:
                throw new IllegalArgumentException("Button does not exist");
        }
    }

    public void setButtonPanelLayoutHint(int i) {
        this.mButtonPanelLayoutHint = i;
    }

    public void setCustomTitle(View view) {
        this.mCustomTitleView = view;
    }

    public void setIcon(int i) {
        this.mIcon = null;
        this.mIconId = i;
        if (this.mIconView == null) {
            return;
        }
        if (i != 0) {
            this.mIconView.setVisibility(0);
            this.mIconView.setImageResource(this.mIconId);
            return;
        }
        this.mIconView.setVisibility(8);
    }

    public void setIcon(Drawable drawable) {
        this.mIcon = drawable;
        this.mIconId = 0;
        if (this.mIconView == null) {
            return;
        }
        if (drawable != null) {
            this.mIconView.setVisibility(0);
            this.mIconView.setImageDrawable(drawable);
            return;
        }
        this.mIconView.setVisibility(8);
    }

    public void setMessage(CharSequence charSequence) {
        this.mMessage = charSequence;
        if (this.mMessageView != null) {
            this.mMessageView.setText(charSequence);
        }
    }

    public void setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        if (this.mTitleView != null) {
            this.mTitleView.setText(charSequence);
        }
    }

    public void setView(int i) {
        this.mView = null;
        this.mViewLayoutResId = i;
        this.mViewSpacingSpecified = false;
    }

    public void setView(View view) {
        this.mView = view;
        this.mViewLayoutResId = 0;
        this.mViewSpacingSpecified = false;
    }

    public void setView(View view, int i, int i2, int i3, int i4) {
        this.mView = view;
        this.mViewLayoutResId = 0;
        this.mViewSpacingSpecified = true;
        this.mViewSpacingLeft = i;
        this.mViewSpacingTop = i2;
        this.mViewSpacingRight = i3;
        this.mViewSpacingBottom = i4;
    }
}
