import 'package:auto_size_text/auto_size_text.dart';
import 'package:client1/dashboard.dart';
import 'package:flutter/material.dart';

class ThankYou extends StatelessWidget {
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
        actions: [
          IconButton(
            icon: Icon(Icons.clear,color: Color(0XFF707070),),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard()));
            },
            tooltip: 'Go back',
          )
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 80.0,horizontal: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('images/message.png'),
                  ),
                  AutoSizeText('Thank you',style: TextStyle(
                    color: Color(0XFF002B44),
                    fontSize: 33.0,
                    fontFamily: "Raleway"
                  ),
                    minFontSize: 20.0,
                    maxLines: 1,
                  ),
                  SizedBox(height: 10.0,),
                  AutoSizeText('We\'ve have sent your COVID-19 Test Form to your'
                      ' employer. You should hear back from them shortly. \n \n'
                      ' In the meantime, please self-isolate if you have tested positive. '
                      'Our other SelfPAss users in your area you were near over the past '
                      '14 days may be notified of exposure. Your name will not be shared '
                      'with any app users.',
                  style: TextStyle(
                    fontSize: 19.0,
                    color: Color(0XFF707070)
                  ),
                    textAlign: TextAlign.center,
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
