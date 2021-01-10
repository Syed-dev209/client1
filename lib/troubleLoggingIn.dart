import 'package:auto_size_text/auto_size_text.dart';
import 'package:client1/SiginInForgotPassword.dart';
import 'package:client1/enterEmployeeIdScreen.dart';
import 'package:client1/resetPass.dart';
import 'package:flutter/material.dart';

class Troublelogging extends StatelessWidget {
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
          child: Padding(
            padding:EdgeInsets.symmetric(vertical: 16.0,horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText('Trouble logging in?',
                style: TextStyle(
                  color: Color(0xFF002B44),
                fontFamily: "Raleway",
                  fontSize: 30.0
                ),
                  minFontSize: 20.0,
                  maxLines: 1,
                ),
                SizedBox(height: 200.0,),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      OutlineButton(
                        padding: EdgeInsets.symmetric(horizontal: 80.0,vertical: 15.0),
                        borderSide: BorderSide(
                          color:  Color(0xFF1BAAA0),
                        ),
                        highlightedBorderColor:Color(0xFF1BAAA0) ,
                        child: Text('I forgot my password',style: TextStyle(
                          color: Color(0xFF1BAAA0)
                        ),),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPass()));
                        },
                      ),
                      SizedBox(height: 5.0,),
                      OutlineButton(
                        padding: EdgeInsets.symmetric(horizontal: 63.0,vertical: 15.0),
                        borderSide: BorderSide(
                          color:  Color(0xFF1BAAA0),
                        ),
                        highlightedBorderColor:Color(0xFF1BAAA0) ,
                        child: Text('I have a new phone number',style: TextStyle(
                            color: Color(0xFF1BAAA0)
                        ),),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>UpdatePhoneNumber()));
                        },
                      ),
                    ],
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
