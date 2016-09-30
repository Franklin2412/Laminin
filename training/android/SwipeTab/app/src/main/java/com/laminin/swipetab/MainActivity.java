package com.laminin.swipetab;

import android.app.ActionBar;
import android.support.v4.app.Fragment;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v7.app.ActionBarActivity;


public class MainActivity extends ActionBarActivity implements android.support.v7.app.ActionBar.TabListener {

    android.support.v7.app.ActionBar actionBar;
    ViewPager viewPager;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        actionBar = getSupportActionBar();
        actionBar.setNavigationMode(ActionBar.NAVIGATION_MODE_TABS);
        viewPager = (ViewPager) findViewById(R.id.view_pager);
        viewPager.setAdapter(new TestPagerAdapter(getSupportFragmentManager()));
        viewPager.setOnPageChangeListener(new ViewPager.OnPageChangeListener() {
            @Override
            public void onPageScrolled(int i, float v, int i1) {

            }

            @Override
            public void onPageSelected(int i) {
                actionBar.setSelectedNavigationItem(i);
            }

            @Override
            public void onPageScrollStateChanged(int i) {

            }
        });

        android.support.v7.app.ActionBar.Tab hpTab = actionBar.newTab();
        hpTab.setText("Harry");
        hpTab.setTabListener(this);

        android.support.v7.app.ActionBar.Tab pirateTab = actionBar.newTab();
        pirateTab.setText("Pirate");
        pirateTab.setTabListener((android.support.v7.app.ActionBar.TabListener) this);

        android.support.v7.app.ActionBar.Tab twilightTab = actionBar.newTab();
        twilightTab.setText("Twilight");
        twilightTab.setTabListener((android.support.v7.app.ActionBar.TabListener) this);

        actionBar.addTab(hpTab);
        actionBar.addTab(pirateTab);
        actionBar.addTab(twilightTab);
    }

    @Override
    public void onTabSelected(android.support.v7.app.ActionBar.Tab tab, android.support.v4.app.FragmentTransaction fragmentTransaction) {
        viewPager.setCurrentItem(tab.getPosition());
    }

    @Override
    public void onTabUnselected(android.support.v7.app.ActionBar.Tab tab, android.support.v4.app.FragmentTransaction fragmentTransaction) {

    }

    @Override
    public void onTabReselected(android.support.v7.app.ActionBar.Tab tab, android.support.v4.app.FragmentTransaction fragmentTransaction) {

    }
}

class TestPagerAdapter extends FragmentStatePagerAdapter {

    public TestPagerAdapter(FragmentManager fm) {
        super(fm);
    }

    @Override
    public Fragment getItem(int i) {
        Fragment fragment = null;
        switch (i){
            case 0:
                fragment = new HPFragment();
                break;
            case 1:
                fragment = new PiratesFragment();
                break;
            case 2:
                fragment = new TwilightFragment();
                break;
            default:
                fragment = new TwilightFragment();
                break;
        }
        return fragment;
    }

    @Override
    public int getCount() {
        return 3; // since we have only three pges
    }
}
