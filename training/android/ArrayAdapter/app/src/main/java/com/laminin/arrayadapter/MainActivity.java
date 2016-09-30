package com.laminin.arrayadapter;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Toast;


public class MainActivity extends Activity {

    String TAG = "frank";

    String[] nbList = {"AXIS Bank", "YES Bank", "HDFC Bank", "ICICI Bank", "IOB Bank", "INDIAN Bank", "SBI Bank"};

    ListView nbListView;
    Spinner nbSpinner;

    SpinnerAdapter spinnerAdapter;
    ListAdapter listViewAdapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        nbListView = (ListView) findViewById(R.id.nb_list_view);
        nbSpinner = (Spinner) findViewById(R.id.nb_spinner);

        spinnerAdapter = new ArrayAdapter<String>(this, android.R.layout.simple_list_item_1, nbList);
        listViewAdapter = new ArrayAdapter<String>(this, R.layout.nb_list_row, nbList);

        nbListView.setAdapter(listViewAdapter);
        nbSpinner.setAdapter(spinnerAdapter);

        nbListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                Toast.makeText(MainActivity.this, "Position: " + position + " data: " + nbList[position] + " id:" + id, Toast.LENGTH_LONG).show();
            }
        });

        nbSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                Toast.makeText(MainActivity.this, "Position: " + position + " data: " + nbList[position] + " id:" + id, Toast.LENGTH_LONG).show();
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }
        });
    }
}
