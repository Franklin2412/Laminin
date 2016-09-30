package com.laminin.lifecycle;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.PersistableBundle;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;

public class SecondActivity extends AppCompatActivity implements View.OnClickListener{

    static String TAG = "frank";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Log.d(TAG, "" + this.getClass() + " :" + " onCreate(Bundle savedInstanceState) called");
        setContentView(R.layout.activity_second);
        findViewById(R.id.button_go_to_third_activity).setOnClickListener(this);
    }

    @Override
    public View onCreateView(View parent, String name, Context context, AttributeSet attrs) {
        Log.d(TAG, "" + this.getClass() + " :" + " onCreateView(View parent, String name, Context context, AttributeSet attrs)" + "view: " + parent + "name: " + name + "context: " + context + "Attribute set: " + attrs);
        return super.onCreateView(parent, name, context, attrs);
    }

    @Override
    public void setContentView(int layoutResID) {
        Log.d(TAG, "" + this.getClass() + " :" + " setContentView(int layoutResID) called" );
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
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        Log.d(TAG, "" + this.getClass() + " :" + " onActivityResult(int requestCode, int resultCode, Intent data) called "+ "resultCode"+  requestCode + "requestCode " + requestCode + "data " + data.getExtras().getString("data") );

    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        Log.d(TAG, "" + this.getClass() + " :" + " onConfigurationChanged(Configuration newConfig) called");
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        Log.d(TAG, "" + this.getClass() + " :" + " onCreateOptionsMenu(Menu menu) called");
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            return true;
        }

        Log.d(TAG, "" + this.getClass() + " :" + " onOptionsItemSelected(MenuItem item) called");

        return super.onOptionsItemSelected(item);
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()){
            case R.id.button_go_to_third_activity:
//                startActivityForResult(new Intent(this, ThirdActivity.class), 100);
                startActivity(new Intent(this, ThirdActivity.class));
                break;
        }
    }
}
