package com.payu.custombrowser.custombar;

import android.view.View;
import com.payu.custombrowser.R;

public class CustomProgressBar {
    private void showProgressDialogNew(View view) {
        DotsProgressBar dotsProgressBar = (DotsProgressBar) view.findViewById(R.id.dotsProgressBar);
        dotsProgressBar.setDotsCount(5);
        dotsProgressBar.start();
    }

    public void removeDialog(View view) {
        view.setVisibility(8);
    }

    public void removeProgressDialog(View view) {
        DotsProgressBar dotsProgressBar = (DotsProgressBar) view.findViewById(R.id.dotsProgressBar);
        view.setVisibility(8);
        dotsProgressBar.stop();
    }

    public void showDialog(View view) {
        view.setVisibility(0);
        showProgressDialogNew(view);
    }
}
