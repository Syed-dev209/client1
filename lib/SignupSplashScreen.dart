import 'package:client1/enterEmployeeIdScreen.dart';
import 'package:client1/signInScreen.dart';
import 'package:flutter/material.dart';

class SignupSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 10.0,),
              Image(
                image: AssetImage(
                  'images/selfpass_heart.png',
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Image(
                image: AssetImage('images/Image.png'),
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                'Welcome to SelfPass',
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: "Raleway",
                  fontWeight: FontWeight.w900,

                ),
              ),
              SizedBox(

                height: 25.0,
              ),
              Text(
                'Communicate your current health status to your employer in a safe and secure way!',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 100.0,
              ),
              RaisedButton(
                padding:
                EdgeInsets.symmetric(horizontal: 120.0, vertical: 15.0),
                child: Text(
                  'Sign in',
                  style: TextStyle(
                      fontFamily: "Raleway",
                      fontWeight: FontWeight.w300,
                      fontSize: 15),
                ),
                color: Color(0xFF26A69A),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute (builder: (context)=> SignIn()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                padding:  EdgeInsets.symmetric(horizontal: 120.0, vertical: 15.0),
                child: Text(
                  'Sign up',
                  style: TextStyle(
                      fontFamily: "Raleway",
                      fontWeight: FontWeight.w300,
                      fontSize: 15),
                ),
                // textColor: Colors.white,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute (builder: (context)=> EmployeeIDInput()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
