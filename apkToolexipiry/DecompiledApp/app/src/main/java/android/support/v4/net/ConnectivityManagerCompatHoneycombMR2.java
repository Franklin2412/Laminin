package android.support.v4.net;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;

import com.squareup.haha.perflib.StackFrame;

class ConnectivityManagerCompatHoneycombMR2 {
    ConnectivityManagerCompatHoneycombMR2() {
    }

    public static boolean isActiveNetworkMetered(ConnectivityManager connectivityManager) {
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return true;
        }
        switch (activeNetworkInfo.getType()) {
            case StackFrame.NO_LINE_NUMBER /*0*/:
            case R.styleable.WaitingDots_jumpHeight /*2*/:
            case R.styleable.WaitingDots_autoplay /*3*/:
            case R.styleable.View_theme /*4*/:
            case R.styleable.ViewPagerIndicator_vpiUnderlinePageIndicatorStyle /*5*/:
            case R.styleable.Toolbar_contentInsetEnd /*6*/:
                return true;
            case R.styleable.WaitingDots_period /*1*/:
            case R.styleable.Toolbar_contentInsetLeft /*7*/:
            case R.styleable.Toolbar_popupTheme /*9*/:
                return false;
            default:
                return true;
        }
    }
}
