import 'package:auto_size_text/auto_size_text.dart';
import 'package:client1/forgotPasswordScreen2.dart';
import 'package:client1/signInScreen.dart';
import 'package:flutter/material.dart';

import 'enterEmployeeIdScreen.dart';

class NewPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Image(
          image: AssetImage('images/selfpass_heart.png'),
        ),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(top: 2.0, left: 2.0),
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
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EmployeeIDInput()));
            },
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.clear,color: Color(0XFF707070),),
            onPressed: (){
              Navigator.pop(context);
            },
            tooltip: 'Go back',
          )
        ],
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
                    'New Password',
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
                    obscureText: true,
                    cursorColor: Color(0XFF002B44),
                    decoration: InputDecoration(
                        hintText: "Enter password",
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
                    cursorColor: Color(0XFF002B44),
                    decoration: InputDecoration(
                        hintText: "Confirm password",
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
                      'Continue',
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
