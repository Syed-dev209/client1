import 'package:client1/models/userModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'package:provider/provider.dart';
import 'SignupSplashScreen.dart';

void main() => runApp(
    MyApp()
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>UserModel())
      ],
      child: MaterialApp(
        home: SignupSplash(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

