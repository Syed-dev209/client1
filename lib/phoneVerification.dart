import 'package:auto_size_text/auto_size_text.dart';
import 'package:client1/components/alertBox.dart';
import 'package:client1/dashboard.dart';
import 'package:client1/models/userModel.dart';
import 'package:client1/signInScreen.dart';
import 'package:client1/successScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:provider/provider.dart';

class PhoneVerification extends StatelessWidget {
  final Widget goto;
  PhoneVerification({@required this.goto});
  TextEditingController one=TextEditingController();
  TextEditingController two=TextEditingController();
  TextEditingController three=TextEditingController();
  TextEditingController four=TextEditingController();
  AlertBoxes _alertBoxes;
  GlobalKey<FormState> _key=GlobalKey<FormState>();
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
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        // leading: Icon(
        //   Icons.arrow_back_outlined,
        //   color: Colors.black,
        // ),
      ),
      body: ProgressHUD(
        child: Builder(
          builder: (context){
            return SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
                child: Form(
                  key: _key,
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
                        Provider.of<UserModel>(context,listen: false).getPhoneNumber,
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
                                onChanged: (_) => FocusScope.of(context).nextFocus(),
                                controller: one,
                                maxLength: 1,
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
                                onChanged: (_) => FocusScope.of(context).nextFocus(),
                                controller: two,
                                maxLength: 1,
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
                                onChanged: (_) => FocusScope.of(context).nextFocus(),
                                controller: three,
                                maxLength: 1,
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
                                onChanged: (value){
                                  String code= one.text+two.text+three.text+four.text;
                                  final progress= ProgressHUD.of(context);
                                  if(code=='1234')
                                  {
                                    Provider.of<UserModel>(context,listen: false).setUserProfile('Ilhan','Shah','ilhan@gmail.com', 'Model Colony, Karachi');
                                    progress.showWithText('Please wait...');
                                    Future.delayed(Duration(seconds: 1), () {
                                      progress.dismiss();
                                    });
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>goto));
                                  }
                                  else{
                                    _alertBoxes=AlertBoxes();
                                    _alertBoxes.simpleAlertBox(context, Text('Invalid Code.'),Text('Please enter correct code.'), (){
                                      Navigator.pop(context);
                                    });
                                  }
                                },
                                controller: four,
                                maxLength: 1,
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
          },
        )
      ),
    );
  }
}
