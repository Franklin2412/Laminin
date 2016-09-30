package com.laminin.chatmaster;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.HashMap;

/**
 * Created by franklin.michael on 08/07/16.
 */

public class IPListViewAdapter extends BaseAdapter {

    private Context mContext;
    private ArrayList<String> mIpList;

    IPListViewAdapter(Context context, ArrayList<String> ipList){
        mContext = context;
        mIpList = ipList;
    }
    @Override
    public int getCount() {
        return mIpList.size();
    }

    @Override
    public Object getItem(int i) {
        return mIpList.get(i);
    }

    @Override
    public long getItemId(int i) {
        return 0;
    }

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        LayoutInflater inflater = (LayoutInflater) mContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        View rowView = inflater.inflate(android.R.layout.simple_list_item_1, viewGroup, false);
        ((TextView) rowView).setText(mIpList.get(i));
        return rowView;
    }
}
