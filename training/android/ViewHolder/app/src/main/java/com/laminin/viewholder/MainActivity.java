package com.laminin.viewholder;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.Toast;

import java.util.ArrayList;


public class MainActivity extends Activity implements AdapterView.OnItemClickListener{

    ArrayList<UserCard> userCards;
    CardsAdapter mCardAdapter;
    ListView cardsListView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // lets setup the cards
        userCards = setupCardDetails();
        // lets setup adapter;
        mCardAdapter = new CardsAdapter(this, userCards);
        // lets setup list view
        cardsListView = (ListView) findViewById(R.id.card_list_view);
        cardsListView.setAdapter(mCardAdapter);
        cardsListView.setOnItemClickListener(this);
    }

    private ArrayList<UserCard> setupCardDetails() {

        UserCard frankinCard = new UserCard();
        frankinCard.setCardBin("51234");
        frankinCard.setCardBrand("mast");
        frankinCard.setCardMode("CC");
        frankinCard.setExpiryMonth("12");
        frankinCard.setExpiryYear("2016");
        frankinCard.setNameOnCard("Frankin");
        frankinCard.setMaskedCardNumber("5123456789012346");

        UserCard benjaminCard = new UserCard();
        benjaminCard.setCardBin("411111");
        benjaminCard.setCardBrand("visa");
        benjaminCard.setCardMode("CC");
        benjaminCard.setExpiryMonth("12");
        benjaminCard.setExpiryYear("2016");
        benjaminCard.setNameOnCard("Irin");
        benjaminCard.setMaskedCardNumber("4111111111111111");

        UserCard michaelCard = new UserCard();
        michaelCard.setCardBin("510510");
        michaelCard.setCardBrand("visa");
        michaelCard.setCardMode("CC");
        michaelCard.setExpiryMonth("12");
        michaelCard.setExpiryYear("2016");
        michaelCard.setNameOnCard("Michael");
        michaelCard.setMaskedCardNumber("5105105105105100");

        UserCard irinCard = new UserCard();
        irinCard.setCardBin("371449");
        irinCard.setCardBrand("visa");
        irinCard.setCardMode("CC");
        irinCard.setExpiryMonth("12");
        irinCard.setExpiryYear("2016");
        irinCard.setNameOnCard("Benjamin");
        irinCard.setMaskedCardNumber("371449635398431");

        userCards = new ArrayList<>(4);
        userCards.add(frankinCard);
        userCards.add(benjaminCard);
        userCards.add(michaelCard);
        userCards.add(irinCard);

        return userCards;
    }

    @Override
    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
        if(parent.getId() == R.id.card_list_view){ // okay its our list view
//            UserCard card = userCards.get(position);
            UserCard card = (UserCard) parent.getAdapter().getItem(position);
            Toast.makeText(this, "Name on card:" + card.getNameOnCard() + "card no: " + card.getMaskedCardNumber() + "Expiry Month: " + card.getExpiryMonth() + " Expiry year: " + card.getExpiryYear(), Toast.LENGTH_LONG).show();
        }
    }
}
