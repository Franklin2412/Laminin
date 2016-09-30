package com.laminin.scrolltab;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.support.v4.view.ViewPager;


public class MainActivity extends FragmentActivity {

    private ViewPager viewPager;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        viewPager = (ViewPager) findViewById(R.id.view_pager);
        viewPager.setAdapter(new TestPagerAdapter(getSupportFragmentManager()));
    }

}

/*class TestPagerAdapter extends FragmentPagerAdapter{

    public TestPagerAdapter(FragmentManager fm) {
        super(fm);
    }

    @Override
    public Fragment getItem(int i) {
        Fragment fragment = null;
        switch (i){
            case 0:
                fragment = new GotFragment();
                break;
            case 1:
                fragment = new SherlockFragment();
                break;
            case 2:
                fragment = new SuitsFragment();
                break;
            default:
                fragment = new SuitsFragment();
                break;
        }
        return fragment;
    }

    @Override
    public int getCount() {
        return 3; // since we have only three pges
    }

    @Override
    public CharSequence getPageTitle(int position) {
        switch (position) {
            case 0:
                return "GOT";
            case 1:
                return "SH";
            case 2:
                return "Suits";
            default:
                return "Suits";
        }
    }

   
}*/


class TestPagerAdapter extends FragmentStatePagerAdapter {

    public TestPagerAdapter(FragmentManager fm) {
        super(fm);
    }

    @Override
    public Fragment getItem(int i) {
        Fragment fragment = null;
        switch (i){
            case 0:
                fragment = new GotFragment();
                break;
            case 1:
                fragment = new SherlockFragment();
                break;
            case 2:
                fragment = new SuitsFragment();
                break;
            default:
                fragment = new SuitsFragment();
                break;
        }
        return fragment;
    }

    @Override
    public int getCount() {
        return 3; // since we have only three pges
    }

    @Override
    public CharSequence getPageTitle(int position) {
        switch (position) {
            case 0:
                return "GOT";
            case 1:
                return "SH";
            case 2:
                return "Suits";
            default:
                return "Suits";
        }
    }
}