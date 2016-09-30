package com.laminin.toh;

import android.graphics.Color;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.DragEvent;
import android.view.View;

import com.laminin.toh.Model.Disk;
import com.laminin.toh.widget.DiskView;
import com.laminin.toh.widget.TohView;

public class MainActivity extends AppCompatActivity implements View.OnDragListener{

    private static final int MAXIMUM_NUMBER_OF_DISKS = 8;
    private static final String[] DISK_COLORS = {"#667162", "#32687b", "#bdb6d5", "#7c9c64", "#5a636e", "#FFFFFF", "#FFFFFF", "#FFFFFF"};
    private int numberOfDisks = 5;
    private TohView tohView;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // find toh view.
        tohView = (TohView) findViewById(R.id.toh_view);

        // set toh view to occupy whole screen.
        tohView.setSystemUiVisibility(View.SYSTEM_UI_FLAG_FULLSCREEN);

        // We need to create number of disks, it should be user input.

        initializeDisk(Math.min(numberOfDisks, MAXIMUM_NUMBER_OF_DISKS));
        // now lets consider no of disks are 5;
//        DiskView diskViewOne = new DiskView(this, null, 1);
//        diskViewOne.setTag(DiskView.DiskType.DISK_ONE);
//        diskViewOne.setBackgroundColor(Color.parseColor("#667162"));
//        DiskView diskViewTwo = new DiskView(this, null, 2);
//        diskViewTwo.setTag(DiskView.DiskType.DISK_TWO);
//        diskViewTwo.setBackgroundColor(Color.parseColor("#32687b"));
//        DiskView diskViewThree = new DiskView(this, null, 3);
//        diskViewThree.setTag(DiskView.DiskType.DISK_THREE);
//        diskViewThree.setBackgroundColor(Color.parseColor("#bdb6d5"));
//        DiskView diskViewFour = new DiskView(this, null, 4);
//        diskViewFour.setTag(DiskView.DiskType.DISK_FOUR);
//        diskViewFour.setBackgroundColor(Color.parseColor("#7c9c64"));
//        DiskView diskViewFive = new DiskView(this, null, 5);
//        diskViewFive.setTag(DiskView.DiskType.DISK_FIVE);
//        diskViewFive.setBackgroundColor(Color.parseColor("#5a636e"));
//
//        diskViewOne.setOnDragListener(this);
//        diskViewTwo.setOnDragListener(this);
//        diskViewThree.setOnDragListener(this);
//        diskViewFour.setOnDragListener(this);
//        diskViewFive.setOnDragListener(this);
//
//        tohView.drawDisk(diskViewFive, TohView.SOURCE_TOWER, 0, 5);
//        tohView.drawDisk(diskViewFour, TohView.SOURCE_TOWER, 1, 5);
//        tohView.drawDisk(diskViewThree, TohView.SOURCE_TOWER, 2, 5);
//        tohView.drawDisk(diskViewTwo, TohView.SOURCE_TOWER, 3, 5);
//        tohView.drawDisk(diskViewOne, TohView.SOURCE_TOWER, 4, 5);
    }

    private void initializeDisk(int numberOfDisks){
        for (int i = numberOfDisks; i > 0; i--){
            Disk disk = new Disk();
            disk.setTotalDiskCount(numberOfDisks);
            disk.setDiskType(i);
            disk.setDiskColor(DISK_COLORS[i]);
            tohView.drawDisk(disk, TohView.SOURCE_TOWER, i);
        }
    }

    @Override
    public boolean onDrag(View v, DragEvent event) {
        return false;
    }


}
