package com.laminin.baseadapter;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
;

import java.util.ArrayList;

/**
 * Created by franklin on 6/11/15.
 */
public class CardsAdapter extends BaseAdapter {
    Context mContext;
    ArrayList<UserCard> mUserCards;
    public CardsAdapter(Context context, ArrayList<UserCard> userCards){
        mContext = context;
        mUserCards = userCards;
    }
    @Override
    public int getCount() {
        return mUserCards.size();
    }

    @Override
    public UserCard getItem(int position) {
        return mUserCards.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        Log.d("frank", "getView :" + position);
//        if(convertView == null){
            LayoutInflater mInflater = (LayoutInflater) mContext.getSystemService(Activity.LAYOUT_INFLATER_SERVICE);
            convertView = mInflater.inflate(R.layout.card_list_row, null);
//        }

        UserCard userCard = mUserCards.get(position);

        // set text here

        ((TextView) convertView.findViewById(R.id.card_number_text_view)).setText(userCard.getMaskedCardNumber());
        ((TextView) convertView.findViewById(R.id.name_on_card_text_view)).setText(userCard.getNameOnCard());

        return convertView;

    }
}
