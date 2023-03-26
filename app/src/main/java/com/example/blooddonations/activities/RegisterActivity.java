package com.example.blooddonations.activities;

import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.example.blooddonations.R;
import com.example.blooddonations.utils.EndPoints;
import com.example.blooddonations.utils.VolleySingleton;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class RegisterActivity extends AppCompatActivity {
    private EditText nameEt, cityEt, bloodGroupEt,passwordEt, mobileEt;
    private Button submitButton;

    //@SuppressLint("MissingInflatedId")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_register);

        nameEt= findViewById(R.id.name);
        cityEt= findViewById(R.id.city);
        bloodGroupEt= findViewById(R.id.blood_group);
        passwordEt= findViewById(R.id.password);
        mobileEt= findViewById(R.id.number);
        submitButton= findViewById(R.id.submit_button);
        submitButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String name, city, blood_group, password, number;
                name= nameEt.getText().toString();
                city= cityEt.getText().toString();
                blood_group= bloodGroupEt.getText().toString();
                number= mobileEt.getText().toString();
                password= passwordEt.getText().toString();
                if(isValid(name, city, password, blood_group, number)){
                    register(name, city, password, blood_group, number);

                }
            }
        });
    }
    private void register(String name,String city,String number, String password, String blood_group){
        StringRequest stringRequest= new StringRequest(Request.Method.POST, EndPoints.register_url, new Response.Listener<String>() {
            @Override
            public void onResponse(String response) {
                if(response.equals("Success")){
                    Toast.makeText(RegisterActivity.this, response, Toast.LENGTH_SHORT).show();
                    startActivity(new Intent(RegisterActivity.this, MainActivity.class));
                    RegisterActivity.this.finish();
                }else{
                    Toast.makeText(RegisterActivity.this, response, Toast.LENGTH_SHORT).show();
                }

            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                Toast.makeText(RegisterActivity.this, "Something went wrong :( ", Toast.LENGTH_SHORT).show();
                Log.d("VOLLEY", error.getMessage());

            }
        }){
            @Override
            protected Map<String, String> getParams() throws AuthFailureError{
                Map<String, String> params= new HashMap<>();
                params.put("name", name);
                params.put("city", city);
                params.put("number", number);
                params.put("password", password);
                params.put("bloodgroup", blood_group);

                return super.getParams();
            }
        };
        VolleySingleton.getInstance(this).addToRequestQueue(stringRequest);
    }
    private boolean isValid(String name, String city, String number,String password, String blood_group ){
        List<String> valid_blood_groups= new ArrayList<>();
        valid_blood_groups.add("A+");
        valid_blood_groups.add("A-");
        valid_blood_groups.add("B+");
        valid_blood_groups.add("B-");
        valid_blood_groups.add("AB+");
        valid_blood_groups.add("AB-");
        valid_blood_groups.add("O+");
        valid_blood_groups.add("O-");
        if(name.isEmpty()){
            showMessage("Name is empty");
            return false;
        }else if(city.isEmpty()){
            showMessage("City name is required");
            return false;
        } /*else if(!valid_blood_groups.contains(valid_blood_groups)){
            showMessage("Invalid blood group. Choose from "+valid_blood_groups);
            return false;
        } else if(number.length() !=  10){
            showMessage("Invalid phone number; number should be 10 digits");
            return false;
        }*/
        return true;
    }

    private void showMessage(String mag){
        Toast.makeText(this, mag, Toast.LENGTH_SHORT).show();

    }
}