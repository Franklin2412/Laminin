package com.laminin.mazegame;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;

public class MainActivity extends AppCompatActivity implements SensorEventListener{

    private static final String TAG = "franklin";
    private SensorManager mSensorManager;
    private Sensor mSensor;

    private Ball ball;

    float horizontalTilt;
    float verticalTilt;

    private int TIME_THRESHOLD = 500;
    private long currentTime;
    private long lastUpdated = 0;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        mSensorManager = (SensorManager) getSystemService(Context.SENSOR_SERVICE);
        mSensor = mSensorManager.getDefaultSensor(Sensor.TYPE_GRAVITY);

        ball = (Ball) findViewById(R.id.ball);

    }


    @Override
    public void onSensorChanged(SensorEvent sensorEvent) {

//        horizontalTilt = sensorEvent.values[0];
//        verticalTilt = sensorEvent.values[1];

        currentTime = System.currentTimeMillis();

        if((currentTime- lastUpdated) > TIME_THRESHOLD || lastUpdated == 0) { // we call move function once in 200 milisec
            ball.move(sensorEvent.values[0], sensorEvent.values[1]);
            lastUpdated = currentTime;
        }
//


//        if (horizontalTilt > 0){
//            Log.d("franklin", "horizontalTilt: " + horizontalTilt);
//        }else{
//            Log.d("franklin", "verticalTilt: " + verticalTilt);
//        }
//
//        if (verticalTilt > 0){
//            Log.d("franklin", "You are tilting vertically towards right");
//
//        }else{
//            Log.d("franklin", "You are tilting vertically towards left");
//        }
    }

    @Override
    public void onAccuracyChanged(Sensor sensor, int i) {

    }

    @Override
    protected void onPause() {
        super.onPause();
        mSensorManager.unregisterListener(this);
    }

    @Override
    protected void onResume() {
        super.onResume();
        mSensorManager.registerListener(this, mSensor, SensorManager.SENSOR_DELAY_FASTEST);
    }
}
