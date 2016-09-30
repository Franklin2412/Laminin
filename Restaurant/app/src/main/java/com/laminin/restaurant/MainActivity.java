package com.laminin.restaurant;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.ListView;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {

    private ListView feedsListView;
    private ArrayList<Feed> mFeeds;
    private FeedsAdapter mFeedsAdapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        feedsListView = (ListView) findViewById(R.id.feeds_list_view);
        // create some Feeds
        mFeeds = getFeeds();
        mFeedsAdapter = new FeedsAdapter(MainActivity.this, mFeeds);

        feedsListView.setAdapter(mFeedsAdapter);

    }

    /**
     * Dummy data
     * @return array list of feeds
     */
    private ArrayList<Feed> getFeeds(){
        ArrayList<Feed> feeds = new ArrayList<>();

        Feed feed0 = new Feed();
        feed0.setUserImage("http://xyz.com");
        feed0.setUserName("User 0");
        feed0.setRating(5);
        feed0.setTimeStamp("1 Day");
        feed0.setRestaurantImage("http://xzy.com");
        feed0.setRestaurantName("Restaurant 0");
        feed0.setRestaurantLocation("Gurgaon");
        feed0.setUserComments("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum");
        feed0.setLikesCount(200);
        feed0.setCommentsCount(100);

        feeds.add(feed0);

        Feed feed1 = new Feed();
        feed1.setUserImage("http://xyz.com");
        feed1.setUserName("User 1");
        feed1.setRating(5);
        feed1.setTimeStamp("2 Day");
        feed1.setRestaurantImage("http://xzy.com");
        feed1.setRestaurantName("Restaurant 1");
        feed1.setRestaurantLocation("Gurgaon");
        feed1.setUserComments("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum");
        feed1.setLikesCount(400);
        feed1.setCommentsCount(200);

        feeds.add(feed1);

        Feed feed2 = new Feed();
        feed2.setUserImage("http://xyz.com");
        feed2.setUserName("User 2");
        feed2.setRating(4);
        feed2.setTimeStamp("1 Day");
        feed2.setRestaurantImage("http://xzy.com");
        feed2.setRestaurantName("Restaurant 2");
        feed2.setRestaurantLocation("Gurgaon");
        feed2.setUserComments("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum");
        feed2.setLikesCount(100);
        feed2.setCommentsCount(50);

        feeds.add(feed2);

        return feeds;
    }
}
