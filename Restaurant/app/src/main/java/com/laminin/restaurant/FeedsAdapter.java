package com.laminin.restaurant;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.ArrayList;

/**
 * Created by franklin on 17/10/15.
 */
public class FeedsAdapter extends BaseAdapter {

    Context mContext;
    ArrayList<Feed> mFeeds;
    public FeedsAdapter(Context context, ArrayList<Feed> feeds){
        mContext = context;
        mFeeds = feeds;
    }

    @Override
    public int getCount() {
        if(mFeeds.size() > 0)
            return mFeeds.size();
        return 0;
    }

    @Override
    public Object getItem(int position) {
        return mFeeds.get(position);
    }

    @Override
    public long getItemId(int position) {
        return 0;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        FeedsViewHolder feedsViewHolder = null;
        if(convertView == null){
            LayoutInflater mInflater = (LayoutInflater) mContext.getSystemService(Activity.LAYOUT_INFLATER_SERVICE);
            convertView = mInflater.inflate(R.layout.feed_item, null);
            feedsViewHolder = new FeedsViewHolder(convertView);
            convertView.setTag(feedsViewHolder);
        }else{
            feedsViewHolder = (FeedsViewHolder) convertView.getTag();
        }

        Feed feed = mFeeds.get(position);

        // set text here
        feedsViewHolder.userImageView.setImageDrawable(mContext.getResources().getDrawable(R.drawable.avatar));
        feedsViewHolder.userNameTextView.setText(feed.getUserName());
        feedsViewHolder.userRatingsTextView.setText("Ratings: "+feed.getRating());
        feedsViewHolder.timeStampTextView.setText(feed.getTimeStamp());
        feedsViewHolder.restaurantImageView.setImageDrawable(mContext.getResources().getDrawable(R.drawable.avatar));
        feedsViewHolder.restaurantNameTextView.setText(feed.getRestaurantName());
        feedsViewHolder.restaurantLocationTextView.setText(feed.getRestaurantLocation());
        feedsViewHolder.userCommentsTextView.setText(feed.getUserComments());
        feedsViewHolder.likesCountTextView.setText("Likes: "+feed.getLikesCount());
        feedsViewHolder.commentsCountTextView.setText("Comments: "+feed.getCommentsCount());
        feedsViewHolder.likeImageButton.setImageDrawable(mContext.getResources().getDrawable(R.drawable.like));
        feedsViewHolder.commentsImageButton.setImageDrawable(mContext.getResources().getDrawable(R.drawable.like));
        feedsViewHolder.shareImageButton.setImageDrawable(mContext.getResources().getDrawable(R.drawable.like));

        return convertView;
    }

    class FeedsViewHolder {
        ImageView userImageView;
        TextView userNameTextView;
        TextView userRatingsTextView;
        TextView timeStampTextView;

        ImageView restaurantImageView;
        TextView restaurantNameTextView;
        TextView restaurantLocationTextView;

        TextView userCommentsTextView;

        TextView likesCountTextView;
        TextView commentsCountTextView;

        ImageButton likeImageButton;
        ImageButton commentsImageButton;
        ImageButton shareImageButton;

        FeedsViewHolder(View view) {
            userImageView = (ImageView) view.findViewById(R.id.user_image_view);
            userNameTextView = (TextView) view.findViewById(R.id.user_name_text_view);
            userRatingsTextView = (TextView) view.findViewById(R.id.user_ratings_text_view);
            timeStampTextView = (TextView) view.findViewById(R.id.time_stamp_text_view);

            restaurantImageView = (ImageView) view.findViewById(R.id.restaurant_image_view);
            restaurantNameTextView = (TextView) view.findViewById(R.id.restaurant_name_text_view);
            restaurantLocationTextView = (TextView) view.findViewById(R.id.restaurant_location_text_view);

            userCommentsTextView = (TextView) view.findViewById(R.id.user_comments_text_view);

            likesCountTextView = (TextView) view.findViewById(R.id.likes_count_text_view);
            commentsCountTextView = (TextView) view.findViewById(R.id.comments_count_text_view);

            likeImageButton = (ImageButton) view.findViewById(R.id.like_image_button);
            commentsImageButton = (ImageButton) view.findViewById(R.id.comments_image_button);
            shareImageButton = (ImageButton) view.findViewById(R.id.share_image_button);
        }
    }
}
