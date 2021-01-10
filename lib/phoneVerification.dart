import 'package:auto_size_text/auto_size_text.dart';
import 'package:client1/dashboard.dart';
import 'package:client1/signInScreen.dart';
import 'package:client1/successScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhoneVerification extends StatelessWidget {
  final Widget goto;
  PhoneVerification({@required this.goto});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Image(
          image: AssetImage('images/selfpass_heart.png'),
        ),
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_outlined,
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Enter the x-digit code sent to you at',
                style: TextStyle(
                    fontFamily: "Raleway",
                    fontWeight: FontWeight.w700,
                    fontSize: 32),
              ),
              Text(
                '(559) 217-3152',
                style: TextStyle(
                    //fontFamily: "Raleway",
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF26A69A),
                    fontSize: 32),
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: TextFormField(
                    obscureText: true,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    cursorColor: Color(0XFF002B44),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF002B44))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF002B44))),
                    ),
                  )),
                  SizedBox(
                    width: 12.0,
                  ),
                  Expanded(
                      child: TextFormField(
                    obscureText: true,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    cursorColor: Color(0XFF002B44),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF002B44))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF002B44))),
                    ),
                  )),
                  SizedBox(
                    width: 12.0,
                  ),
                  Expanded(
                      child: TextFormField(
                    obscureText: true,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    cursorColor: Color(0XFF002B44),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF002B44))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF002B44))),
                    ),
                  )),
                  SizedBox(
                    width: 12.0,
                  ),
                  Expanded(
                      child: TextFormField(
                    obscureText: true,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    cursorColor: Color(0XFF002B44),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF002B44))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF002B44))),
                    ),
                  )),
                ],
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Center(
                    child: TextButton(
                        child:
                            AutoSizeText('I haven\'t received a code, resend',style: TextStyle(
                              color: Color(0xFF707070)
                            ),),
                      onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>goto));

                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
