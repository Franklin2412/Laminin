package android.support.v7.app;

import android.app.UiModeManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v7.view.SupportActionModeWrapper.CallbackWrapper;
import android.util.Log;
import android.view.ActionMode;
import android.view.Window;
import android.view.Window.Callback;
import com.payu.testapp.R;
import com.squareup.haha.perflib.StackFrame;
import com.squareup.leakcanary.watcher.BuildConfig;

class AppCompatDelegateImplV14 extends AppCompatDelegateImplV11 {
    private static final String KEY_LOCAL_NIGHT_MODE = "appcompat:local_night_mode";
    private static TwilightManager sTwilightManager;
    private boolean mApplyDayNightCalled;
    private boolean mHandleNativeActionModes;
    private int mLocalNightMode;

    class AppCompatWindowCallbackV14 extends AppCompatWindowCallbackBase {
        AppCompatWindowCallbackV14(Callback callback) {
            super(callback);
        }

        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            return AppCompatDelegateImplV14.this.isHandleNativeActionModesEnabled() ? startAsSupportActionMode(callback) : super.onWindowStartingActionMode(callback);
        }

        final ActionMode startAsSupportActionMode(ActionMode.Callback callback) {
            Object callbackWrapper = new CallbackWrapper(AppCompatDelegateImplV14.this.mContext, callback);
            android.support.v7.view.ActionMode startSupportActionMode = AppCompatDelegateImplV14.this.startSupportActionMode(callbackWrapper);
            return startSupportActionMode != null ? callbackWrapper.getActionModeWrapper(startSupportActionMode) : null;
        }
    }

    AppCompatDelegateImplV14(Context context, Window window, AppCompatCallback appCompatCallback) {
        super(context, window, appCompatCallback);
        this.mLocalNightMode = -100;
        this.mHandleNativeActionModes = true;
    }

    private int getNightModeToApply() {
        return mapNightModeToYesNo(this.mLocalNightMode == -100 ? AppCompatDelegate.getDefaultNightMode() : this.mLocalNightMode);
    }

    private TwilightManager getTwilightManager() {
        if (sTwilightManager == null) {
            sTwilightManager = new TwilightManager(this.mContext.getApplicationContext());
        }
        return sTwilightManager;
    }

    private int mapNightModeToYesNo(int i) {
        int i2;
        switch (i) {
            case BuildConfig.VERSION_CODE /*-1*/:
                switch (((UiModeManager) this.mContext.getSystemService("uimode")).getNightMode()) {
                    case StackFrame.NO_LINE_NUMBER /*0*/:
                        return 0;
                    case R.styleable.WaitingDots_jumpHeight /*2*/:
                        break;
                    default:
                        return 1;
                }
            case StackFrame.NO_LINE_NUMBER /*0*/:
                if (!getTwilightManager().isNight()) {
                    return 1;
                }
                break;
            case R.styleable.WaitingDots_jumpHeight /*2*/:
                break;
            default:
                i2 = 1;
                break;
        }
        i2 = 2;
        return i2;
    }

    private boolean updateConfigurationForNightMode(int i) {
        int i2;
        Resources resources = this.mContext.getResources();
        Configuration configuration = resources.getConfiguration();
        int i3 = configuration.uiMode;
        switch (i) {
            case R.styleable.WaitingDots_period /*1*/:
                i2 = 16;
                break;
            case R.styleable.WaitingDots_jumpHeight /*2*/:
                i2 = 32;
                break;
            default:
                i2 = 0;
                break;
        }
        if ((i3 & 48) == i2) {
            return false;
        }
        configuration.uiMode = (configuration.uiMode & -49) | i2;
        resources.updateConfiguration(configuration, null);
        return true;
    }

    public boolean applyDayNight() {
        this.mApplyDayNightCalled = true;
        return updateConfigurationForNightMode(getNightModeToApply());
    }

    public boolean isHandleNativeActionModesEnabled() {
        return this.mHandleNativeActionModes;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null && this.mLocalNightMode == -100) {
            this.mLocalNightMode = bundle.getInt(KEY_LOCAL_NIGHT_MODE, -100);
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.mLocalNightMode != -100) {
            bundle.putInt(KEY_LOCAL_NIGHT_MODE, this.mLocalNightMode);
        }
    }

    public void setHandleNativeActionModesEnabled(boolean z) {
        this.mHandleNativeActionModes = z;
    }

    public void setLocalNightMode(int i) {
        switch (i) {
            case BuildConfig.VERSION_CODE /*-1*/:
            case StackFrame.NO_LINE_NUMBER /*0*/:
            case R.styleable.WaitingDots_period /*1*/:
            case R.styleable.WaitingDots_jumpHeight /*2*/:
                if (this.mLocalNightMode != i) {
                    this.mLocalNightMode = i;
                    if (this.mApplyDayNightCalled) {
                        applyDayNight();
                    }
                }
            default:
                Log.d("AppCompatDelegate", "setLocalNightMode() called with an unknown mode");
        }
    }

    Callback wrapWindowCallback(Callback callback) {
        return new AppCompatWindowCallbackV14(callback);
    }
}
