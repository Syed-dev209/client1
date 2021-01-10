import 'package:auto_size_text/auto_size_text.dart';
import 'package:client1/SiginInForgotPassword.dart';
import 'package:client1/enterEmployeeIdScreen.dart';
import 'package:client1/noOutBreaksScreen.dart';
import 'package:client1/successScreen.dart';
import 'package:client1/troubleLoggingIn.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Image(
          image: AssetImage(
              'images/selfpass_heart.png'
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(top:2.0,left: 2.0),
          child: TextButton(
            child: AutoSizeText(
              'Sign up',
              style: TextStyle(
                  fontSize: 20.0,
                color: Color(0xFF707070),
              ),
              textAlign: TextAlign.center,
              minFontSize: 10.0,
              maxLines: 1,
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>EmployeeIDInput()));
            },
          ),
        ),

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: GestureDetector(
            onTap: (){
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 30.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Text(
                    'Welcome Back!',
                    style: TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 30.0
                    ),
                  ),
                ),
                SizedBox(height: 40.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    cursorColor: Color(0XFF002B44),
                    decoration: InputDecoration(
                        hintText: "Enter your employee ID",
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF002B44))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF002B44))),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.name,
                    cursorColor: Color(0XFF002B44),
                    decoration: InputDecoration(
                        hintText: "Enter your password",
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF002B44))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF002B44))),
                    ),
                  ),
                ),
                SizedBox(height: 100.0,),
                Center(
                  child: RaisedButton(
                    padding:
                    EdgeInsets.symmetric(horizontal: 120.0, vertical: 15.0),
                    child: Text(
                      'Sign In',
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SuccessScreen(goto: NoOutbreaks())));
                    },
                  ),
                ),
                Center(
                  child: TextButton(
                    child: Text('I\'m having trouble logging in',style: TextStyle(color: Colors.black),),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Troublelogging()));
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}