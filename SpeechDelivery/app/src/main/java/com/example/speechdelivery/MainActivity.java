package com.example.speechdelivery;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import org.w3c.dom.Text;

public class MainActivity extends AppCompatActivity {

    Button[] bs = new Button[2];
    TextView textView;

    private View.OnClickListener onClickListener = new View.OnClickListener(){

        @Override
        public void onClick(View v) {
            onClickButton(v);
        }
    };

    private void onClickButton(View v){
        String text = "";

        if(v == bs[0]) text = "뿌링클 치킨";
        else text = "포테이토 피자";

        textView.setText(text);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        textView = (TextView)findViewById(R.id.textView);
        bs[0] = (Button)findViewById(R.id.chicken);
        bs[1] = (Button)findViewById(R.id.pizza);

        for(int i=0; i<bs.length; i++){
            bs[i].setOnClickListener(onClickListener);
        }

    }
}
