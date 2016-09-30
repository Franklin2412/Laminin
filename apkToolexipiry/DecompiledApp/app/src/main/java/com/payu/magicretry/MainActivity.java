package com.payu.magicretry;

import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.AppCompatActivity;
import android.view.Menu;
import android.view.MenuItem;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.payu.magicretry.WebClient.MerchantsWebViewClient;

public class MainActivity extends AppCompatActivity {
    MagicRetryFragment fragment;
    WebView wv;

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.magicretry_main);
        this.wv = (WebView) findViewById(R.id.wv1);
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        this.fragment = new MagicRetryFragment();
        supportFragmentManager.beginTransaction().add(R.id.magic_retry_container, this.fragment, "magicRetry").commit();
        this.wv.setWebChromeClient(new WebChromeClient());
        this.wv.setWebViewClient(new MerchantsWebViewClient(this.fragment));
        this.fragment.setWebView(this.wv);
        this.wv.loadUrl("http://google.com");
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return menuItem.getItemId() == R.id.action_settings ? true : super.onOptionsItemSelected(menuItem);
    }

    public void toggleFragmentVisibility() {
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        if (this.fragment.isVisible()) {
            beginTransaction.hide(this.fragment);
        } else {
            beginTransaction.show(this.fragment);
        }
    }
}
