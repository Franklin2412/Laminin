package com.laminin.franklinmichael.circlemovesanimation;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {

    Button animateButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        animateButton = (Button) findViewById(R.id.button_animate);
        animateButton.setOnClickListener(this);
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()){
            case R.id.button_animate:
                animateCircles();
                break;
            default:
                break;
        }
    }

    private void animateCircles(){
        View circleOne = findViewById(R.id.circle_one);
        View circleTwo = findViewById(R.id.circle_two);
        View circleThree = findViewById(R.id.circle_three);
        View circleFour = findViewById(R.id.circle_four);
        View circleFive = findViewById(R.id.circle_five);


        //lets animate circle one.
        Animation circleOneTranslateAnimation = AnimationUtils.loadAnimation(this, R.anim.circle_one);
        circleOne.startAnimation(circleOneTranslateAnimation);

    }
}
