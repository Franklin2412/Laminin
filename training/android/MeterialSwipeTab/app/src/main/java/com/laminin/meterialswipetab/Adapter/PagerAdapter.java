package com.laminin.meterialswipetab.Adapter;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;

import com.laminin.meterialswipetab.Fragments.GotFragment;
import com.laminin.meterialswipetab.Fragments.SherlockFragment;
import com.laminin.meterialswipetab.Fragments.SuitsFragment;

/**
 * Created by franklin on 6/15/15.
 */
public class PagerAdapter extends FragmentPagerAdapter {

    private String[] mTitles;
    private int mTabCount;


    public PagerAdapter(FragmentManager fm, String[] titles, int tabCount) {
        super(fm);
        this.mTitles = titles;
        this.mTabCount = tabCount;
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
                fragment = new SherlockFragment();
                break;
        }
        return fragment;
    }

    @Override
    public int getCount() {
        return mTabCount;
    }

    @Override
    public CharSequence getPageTitle(int position) {
        return mTitles[position];
    }
}
