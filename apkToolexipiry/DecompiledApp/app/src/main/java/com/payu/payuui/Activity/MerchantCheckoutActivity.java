package com.payu.payuui.Activity;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.TextView;
import com.payu.custombrowser.util.CBConstant;

public class MerchantCheckoutActivity extends AppCompatActivity {
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_merchant_checkout);
        ((TextView) findViewById(R.id.text_view_post_params)).setText("Merchant's post data : " + getIntent().getStringExtra(CBConstant.POST_DATA));
    }
}
