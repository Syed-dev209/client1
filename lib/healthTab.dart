import 'package:auto_size_text/auto_size_text.dart';
import 'package:client1/uploadHealthFileScreen.dart';
import 'package:flutter/material.dart';

class HealthTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 250.0,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 23.0,horizontal: 27.0),
            decoration: BoxDecoration(
                color: Color(0XFF002B44),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(14.0),
                    bottomRight: Radius.circular(14.0))),
            child: Column(
              children: [
                AutoSizeText('Feeling sick?',style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w900
                ),
                minFontSize: 16.0,
                  maxLines: 1,
                ),
                SizedBox(height: 15.0,),
                AutoSizeText('If you fell sick or experiencing any '
                    'COVID-19 symptoms please notify us by '
                    'submitting a health survey',textAlign: TextAlign.center,style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
                ),
                minFontSize: 8.0,
                  maxLines: 3,
                ),
                SizedBox(height: 20.0,),
                RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AutoSizeText('I\'m Feeling Sick',style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0
                      ),)
                    ],
                  ),
                  color: Color(0xFFF84E77),
                  onPressed: (){},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.0)
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Card(
              elevation: 4.0,
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image(
                        image: AssetImage('images/group.png'),
                      ),
                    ),
                    AutoSizeText(
                      'Upload COVID-19 Test Results',
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF002B44)),
                      minFontSize: 14.0,
                      maxLines: 1,
                    ),
                    SizedBox(height: 5.0,),
                    AutoSizeText(
                      'If you have received a COVID-19 test, regardless of a positive or negative result, you are expected to inform your workplace of the date of the test, the result of the test,'
                      'date of when symptoms were first experienced.',
                      style: TextStyle(fontSize: 16,color: Color(0xFF77838F),
                      ),
                      minFontSize: 11.0,
                      maxLines: 6,
                    ),
                    SizedBox(height: 20.0,),
                    RaisedButton(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AutoSizeText('Upload Test Results',
                          style: TextStyle(
                            fontSize: 18.0
                          ),
                            minFontSize: 10.0,
                            maxLines: 1,
                          )
                        ],
                      ),
                      textColor: Colors.white,
                      color: Color(0xFF1BAAA0),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>UploadHealthFile()));

                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
