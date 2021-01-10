import 'dart:async';
import 'package:client1/dashboard.dart';
import 'package:client1/signInScreen.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  final Widget goto;
  SuccessScreen({this.goto});
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 1),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => goto)));
    return Scaffold(
      backgroundColor: Color(0XFF002B44),
      body: Center(
        child: Image(
          image: AssetImage('images/check.png'),
          height: 100.0,
          width: 100.0,
        ),
      ),
    );
  }
}
