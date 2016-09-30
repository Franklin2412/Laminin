package com.payu.custombrowser;

import android.app.Activity;
import android.content.Intent;
import android.support.annotation.NonNull;
import com.payu.custombrowser.bean.CustomBrowserConfig;
import com.payu.custombrowser.bean.CustomBrowserData;
import com.payu.custombrowser.util.CBConstant;
import com.payu.india.Payu.PayuConstants;

public class CustomBrowser {
    public void addCustomBrowser(Activity activity, @NonNull CustomBrowserConfig customBrowserConfig, @NonNull PayUCustomBrowserCallback payUCustomBrowserCallback) {
        CustomBrowserData.SINGLETON.setPayuCustomBrowserCallback(payUCustomBrowserCallback);
        if (customBrowserConfig.getPayuPostData() != null && customBrowserConfig.getEnableSnooze() > 0 && (customBrowserConfig.getPostURL().contentEquals(PayuConstants.PRODUCTION_PAYMENT_URL) || customBrowserConfig.getPostURL().contentEquals(PayuConstants.MOBILE_TEST_PAYMENT_URL))) {
            if (customBrowserConfig.getPayuPostData().trim().endsWith("&")) {
                customBrowserConfig.setPayuPostData(customBrowserConfig.getPayuPostData().substring(0, customBrowserConfig.getPayuPostData().length() - 1));
            }
            customBrowserConfig.setPayuPostData(customBrowserConfig.getPayuPostData() + "&snooze=" + customBrowserConfig.getEnableSnooze());
        }
        Intent intent = new Intent(activity, CBActivity.class);
        intent.putExtra(CBConstant.CB_CONFIG, customBrowserConfig);
        activity.startActivity(intent);
    }
}
