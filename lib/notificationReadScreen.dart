import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ReadNotification extends StatelessWidget {
  String heading;
  ReadNotification({this.heading});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0XFF002B44),
        centerTitle: true,
        title: AutoSizeText(
          'Notifications',
          style: TextStyle(
              color: Colors.white, fontFamily: "Raleway", fontSize: 24.0),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 60.0,horizontal: 30.0),
          child: Column(
            children: [
              AutoSizeText(heading,style: TextStyle(
                color: Color(0XFF002B44),
                fontSize: 24.0,
                fontWeight: FontWeight.w600
              ),),
              SizedBox(height: 13.0,),
              AutoSizeText('Hi Victor, I\'ve received your covid test results.\n'
                  'Please quarantine yourself until 1/27/2020. Get Well soon. Thank You.',
              style: TextStyle(
                color: Color(0XFF77838F),
                fontSize: 16.0
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
