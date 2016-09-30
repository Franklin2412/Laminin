package com.laminin.franklinmichael.uitestapp;


import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

import com.laminin.franklinmichael.uitestapp.Widgets.SnoozeLoaderView;

public class MainActivity extends AppCompatActivity {

    SnoozeLoaderView snoozeLoaderView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
//        snoozeLoaderView = (SnoozeLoaderView) findViewById(R.id.snooze_loader_view);
    }


}
