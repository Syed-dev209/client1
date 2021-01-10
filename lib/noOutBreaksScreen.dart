import 'package:auto_size_text/auto_size_text.dart';
import 'package:client1/dashboard.dart';
import 'package:client1/outbreakNotiff.dart';
import 'package:flutter/material.dart';

class NoOutbreaks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 60),
              child: Image(
                image: AssetImage('images/treeBg.png'),
                // fit: BoxFit.cover,
              ),
            ),
            AutoSizeText(
              '(your employee), is reporting',
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18,color: Color(0xFF002B44)),
              minFontSize: 12.0,
              maxLines: 1,
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'Now new positive ',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontFamily: "Raleway",
                    fontSize: 30),
              ),
            ),
            Text(
              'cases at your worksite ',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontFamily: "Raleway",
                  fontSize: 30),
            ),
            SizedBox(
              height: 100.0,
            ),
            RaisedButton(
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OutBreakNottif()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
