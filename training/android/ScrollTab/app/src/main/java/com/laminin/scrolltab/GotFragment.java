package com.laminin.scrolltab;


import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;


/**
 * A simple {@link Fragment} subclass.
 */
public class GotFragment extends Fragment {

    String TAG = "frank";

    public GotFragment() {
        // Required empty public constructor
    }

    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        Log.d(TAG, " " + this.getId() + " :" + "onAttach called" );
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if(savedInstanceState == null)
            Log.d(TAG, " " + this.getId() + " :" + "onCreate(Bundle savedInstanceState) called first time");
        else
            Log.d(TAG, " " + this.getId() + " :" + "onCreate(Bundle savedInstanceState) called not first time" );
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        Log.d(TAG, " " + this.getId() + " :" + "onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) called");

        return inflater.inflate(R.layout.fragment_got, container, false);
    }

    @Override
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        Log.d(TAG, " " + this.getId() + " :" + "onActivityCreated(Bundle savedInstanceState) called");
    }

    @Override
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        Log.d(TAG, " " + this.getId() + " :" + "onSaveInstanceState(Bundle outState) called");
    }

    @Override
    public void onPause() {
        super.onPause();
        Log.d(TAG, " " + this.getId() + " :" + "onPause() called");

    }

    @Override
    public void onResume() {
        super.onResume();
        Log.d(TAG, " " + this.getId() + " :" + "onSaveInstanceState(Bundle outState) called");

    }

    @Override
    public void onStart() {
        super.onStart();
        Log.d(TAG, " " + this.getId() + " :" + "onStart() called");
    }

        @Override
    public void onStop() {
        super.onStop();
            Log.d(TAG, " " + this.getId() + " :" + "onStop() called");

    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        Log.d(TAG, " " + this.getId() + " :" + "onDestroy() called");
    }

    @Override
    public void onDetach() {
        super.onDetach();
        Log.d(TAG, " " + this.getId() + " :" + "onDetach() called");

    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        Log.d(TAG, " " + this.getId() + " :" + "onDestroyView() called");

    }
}
