import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'package:device_preview/device_preview.dart';

import 'SignupSplashScreen.dart';

void main() => runApp(
    MyApp()
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignupSplash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

