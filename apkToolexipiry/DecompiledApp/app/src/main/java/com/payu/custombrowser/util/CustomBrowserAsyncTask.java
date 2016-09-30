package com.payu.custombrowser.util;

import android.os.AsyncTask;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.payu.custombrowser.bean.CustomBrowserAsyncTaskData;
import com.payu.custombrowser.cbinterface.CustomBrowserAsyncTaskInterface;
import com.squareup.leakcanary.watcher.BuildConfig;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public class CustomBrowserAsyncTask extends AsyncTask<CustomBrowserAsyncTaskData, String, String> {
    private CustomBrowserAsyncTaskInterface mCustomBrowserAsyncTaskInterface;

    private CustomBrowserAsyncTask() {
    }

    public CustomBrowserAsyncTask(CustomBrowserAsyncTaskInterface customBrowserAsyncTaskInterface) {
        this.mCustomBrowserAsyncTaskInterface = customBrowserAsyncTaskInterface;
    }

    protected String doInBackground(CustomBrowserAsyncTaskData... customBrowserAsyncTaskDataArr) {
        int i = 0;
        CustomBrowserAsyncTaskData customBrowserAsyncTaskData = customBrowserAsyncTaskDataArr[0];
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(customBrowserAsyncTaskData.getUrl()).openConnection();
            httpURLConnection.setRequestMethod(customBrowserAsyncTaskData.getHttpMethod());
            httpURLConnection.setRequestProperty("Content-Type", customBrowserAsyncTaskData.getContentType());
            StringBuilder append = new StringBuilder().append(BuildConfig.VERSION_NAME);
            if (customBrowserAsyncTaskData.getPostData() != null) {
                i = customBrowserAsyncTaskData.getPostData().length();
            }
            httpURLConnection.setRequestProperty("Content-Length", append.append(i).toString());
            httpURLConnection.getOutputStream().write(customBrowserAsyncTaskData.getPostData().getBytes());
            InputStream inputStream = httpURLConnection.getInputStream();
            StringBuffer stringBuffer = new StringBuffer();
            byte[] bArr = new byte[AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    return stringBuffer.toString();
                }
                stringBuffer.append(new String(bArr, 0, read));
            }
        } catch (Exception e) {
            e.printStackTrace();
            return e.getMessage().toString();
        }
    }

    protected void onPostExecute(String str) {
        super.onPostExecute(str);
        this.mCustomBrowserAsyncTaskInterface.onCustomBrowserAsyncTaskResponse(str);
    }

    protected void onPreExecute() {
        super.onPreExecute();
    }
}
