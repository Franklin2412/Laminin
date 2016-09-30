package android.support.v7.app;

import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;

public class AppCompatDialogFragment extends DialogFragment {
    public Dialog onCreateDialog(Bundle bundle) {
        return new AppCompatDialog(getActivity(), getTheme());
    }

    public void setupDialog(Dialog dialog, int i) {
        if (dialog instanceof AppCompatDialog) {
            AppCompatDialog appCompatDialog = (AppCompatDialog) dialog;
            switch (i) {
                case R.styleable.WaitingDots_period /*1*/:
                case R.styleable.WaitingDots_jumpHeight /*2*/:
                    break;
                case R.styleable.WaitingDots_autoplay /*3*/:
                    dialog.getWindow().addFlags(24);
                    break;
                default:
                    return;
            }
            appCompatDialog.supportRequestWindowFeature(1);
            return;
        }
        super.setupDialog(dialog, i);
    }
}
