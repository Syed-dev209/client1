import 'package:auto_size_text/auto_size_text.dart';
import 'package:client1/SiginInForgotPassword.dart';
import 'package:client1/forgotPasswordScreen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 280.0,
            decoration: BoxDecoration(
              color: Color(0XFF002B44),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(12.0),bottomLeft:Radius.circular(12.0) )
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: CircleAvatar(
                      backgroundColor: Color(0XFF1BAAA0),
                     child: Image(
                       image: AssetImage('images/camera_pic.png'),
                     ),
                      radius: 50.0,
                    ),
                  ),
                  SizedBox(height: 25.0,),
                  AutoSizeText('Victor Niculici',style: TextStyle(
                    color: Colors.white,
                    fontSize: 32.0,
                    fontWeight: FontWeight.w800
                  ),
                    minFontSize: 20.0,
                    maxLines: 1,
                  ),
                  SizedBox(height: 8.0,),
                  AutoSizeText('Porterville, California',style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                  ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
            child: Column(
              children: [
                customListTile('First Name', 'Victor', (){},true),
                customListTile('Last Name', 'Niculici', (){},true),
                customListTile('Email', 'example@gmail.com', (){},true),
                customListTile('Phone Number', '12445667', (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EnterNewPhoneNumber()));
                },true),
                customListTile('My Work', '1548 N Fake Street', (){}, false)

              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget customListTile(String title,String subtitle,Function onPressed,bool showButton){
  return ListTile(
    title: AutoSizeText(title,
      style: TextStyle(
          fontSize: 12.0,
          color: Color(0XFF707070)
      ),),
    subtitle: AutoSizeText(subtitle,
      style: TextStyle(
          fontSize: 20.0,
          color: Colors.black
      ),),
    trailing: showButton?TextButton(
      child: Text(
          'Edit',
          style: TextStyle(
              color: Color(0XFF1BAAA0),
              fontWeight: FontWeight.w900,
              fontSize: 18.0
          )
      ),
      onPressed: onPressed,
    ):Text('')
  );
}