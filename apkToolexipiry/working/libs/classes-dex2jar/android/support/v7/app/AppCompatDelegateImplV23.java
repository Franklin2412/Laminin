package android.support.v7.app;

import android.content.Context;
import android.view.ActionMode;
import android.view.Window;
import android.view.Window.Callback;
import com.squareup.haha.perflib.StackFrame;

class AppCompatDelegateImplV23 extends AppCompatDelegateImplV14 {

    class AppCompatWindowCallbackV23 extends AppCompatWindowCallbackV14 {
        AppCompatWindowCallbackV23(Callback callback) {
            super(callback);
        }

        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            return null;
        }

        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            if (AppCompatDelegateImplV23.this.isHandleNativeActionModesEnabled()) {
                switch (i) {
                    case StackFrame.NO_LINE_NUMBER /*0*/:
                        return startAsSupportActionMode(callback);
                }
            }
            return super.onWindowStartingActionMode(callback, i);
        }
    }

    AppCompatDelegateImplV23(Context context, Window window, AppCompatCallback appCompatCallback) {
        super(context, window, appCompatCallback);
    }

    Callback wrapWindowCallback(Callback callback) {
        return new AppCompatWindowCallbackV23(callback);
    }
}
