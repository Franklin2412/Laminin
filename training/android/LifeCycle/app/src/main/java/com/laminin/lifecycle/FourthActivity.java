package com.laminin.lifecycle;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.PersistableBundle;
import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;


public class FourthActivity extends Activity implements View.OnClickListener {

    static String TAG = "frank";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Log.d(TAG, "" + this.getClass() + " :" + " onCreate(Bundle savedInstanceState) called");

        setContentView(R.layout.activity_next);
        ((Button) findViewById(R.id.back)).setOnClickListener(this);

    }

    @Override
    public View onCreateView(View parent, String name, Context context, AttributeSet attrs) {
        Log.d(TAG, "" + this.getClass() + " :" + " onCreateView(View parent, String name, Context context, AttributeSet attrs)" + "view: " + parent + "name: " + name + "context: " + context + "Attribute set: " + attrs);
        return super.onCreateView(parent, name, context, attrs);
    }

    @Override
    public void setContentView(int layoutResID) {
        Log.d(TAG, "" + this.getClass() + " :" + " setContentView(int layoutResID) called");
        super.setContentView(layoutResID);
    }

    @Override
    public void onCreate(Bundle savedInstanceState, PersistableBundle persistentState) {
        super.onCreate(savedInstanceState, persistentState);
        Log.d(TAG, "" + this.getClass() + " :" + " onCreate(Bundle savedInstanceState, PersistableBundle persistentState) called");
    }

    @Override
    protected void onResume() {
        super.onResume();
        Log.d(TAG, "" + this.getClass() + " :" + " onResume() called");
    }

    @Override
    protected void onRestart() {
        super.onRestart();
        Log.d(TAG, "" + this.getClass() + " :" + " onRestart() called");
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        Log.d(TAG, "" + this.getClass() + " :" + " onDestroy() called");
    }

    @Override
    protected void onPause() {
        super.onPause();
        Log.d(TAG, "" + this.getClass() + " :" + " onPause() called");
    }

    @Override
    protected void onStart() {
        super.onStart();
        Log.d(TAG, "" + this.getClass() + " :" + " onStart() called");
    }

    @Override
    protected void onStop() {
        super.onStop();
        Log.d(TAG, "" + this.getClass() + " :" + " onStop() called");
    }

    @Override
    protected void onPostResume() {
        super.onPostResume();
        Log.d(TAG, "" + this.getClass() + " :" + " onPostResume() called");
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()){
            case R.id.back:
//                Intent intent = new Intent(this, MainActivity.class);
//                intent.putExtra("data", "test data");
//                setResult(100, intent);
                finish();
                break;
        }
    }
}
