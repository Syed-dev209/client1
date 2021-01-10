import 'package:auto_size_text/auto_size_text.dart';
import 'package:client1/dashboard.dart';
import 'package:flutter/material.dart';

class OutBreakNottif extends StatefulWidget {
  @override
  _OutBreakNottifState createState() => _OutBreakNottifState();
}

class _OutBreakNottifState extends State<OutBreakNottif> {
  bool safetyPlan=false;
  bool benefits=false;
  bool terms=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100.0,
                  ),
                  Image(
                    image: AssetImage('images/alertNotiff.png'),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  AutoSizeText(
                    '(your employee), is reporting',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 18,
                        color: Color(0xFF002B44)),
                    maxLines: 1,
                    minFontSize: 12.0,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  AutoSizeText(
                    'X new positive \nCovid-19 cases at your \nworksite',
                    style: TextStyle(
                        color: Color(0XFF002B44),
                        fontFamily: "Raleway",
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900),
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    minFontSize: 20.0,
                  ),
                  SizedBox(height: 40.0,),
                  Container(
                    height: 48.0,
                    width: 170.0,
                    decoration: BoxDecoration(
                      color:Color(0XFFFFEFF3),
                      borderRadius: BorderRadius.circular(8.0)
                    ),
                    child:  CheckboxListTile(
                      //contentPadding: EdgeInsets.symmetric(horizontal: 7.0,vertical: 2.0),
                      activeColor: Color(0xFFF84E77),
                      title: Text("Safety Plan",style: TextStyle(
                          color: Color(0xFFF84E77),
                        decoration: TextDecoration.underline
                      ),),
                      value: safetyPlan,
                      onChanged: (newValue) {
                        setState(() {
                          safetyPlan = newValue;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                    ),
                  ),
                  SizedBox(height: 8.0,),
                  Container(
                    height: 48.0,
                    width: 170.0,
                    decoration: BoxDecoration(
                        color:Color(0XFFFFEFF3),
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                    child:  CheckboxListTile(
                      //contentPadding: EdgeInsets.symmetric(horizontal: 7.0,vertical: 2.0),
                      activeColor: Color(0xFFF84E77),
                      title: Text("Benefits",style: TextStyle(
                          color: Color(0xFFF84E77),
                          decoration: TextDecoration.underline
                      ),),
                      value:benefits,
                      onChanged: (newValue) {
                        setState(() {
                          benefits = newValue;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  CheckboxListTile(
                    //contentPadding: EdgeInsets.symmetric(horizontal: 7.0,vertical: 2.0),
                    activeColor: Color(0XFF002B44),
                    title: Text("I have read and understood the links above provided by employer",style: TextStyle(
                        color: Color(0XFF77838F),
                    ),),
                    value:terms,
                    onChanged: (newValue) {
                      setState(() {
                        terms = newValue;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                  ),
                  SizedBox(height: 15.0,),
                  OutlineButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 73.0,vertical: 15.0),
                    borderSide: BorderSide(
                      color:  Color(0xFFF84E77),
                    ),
                    highlightedBorderColor:Color(0xFFF84E77) ,
                    child: Text('Continue',style: TextStyle(
                        color: Color(0xFFF84E77)
                    ),),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
