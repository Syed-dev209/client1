import 'package:auto_size_text/auto_size_text.dart';
import 'package:client1/components/alertBox.dart';
import 'package:client1/dashboard.dart';
import 'package:client1/models/userModel.dart';
import 'package:client1/phoneVerification.dart';
import 'package:client1/signInScreen.dart';
import 'package:client1/successScreen.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:provider/provider.dart';

class ForgotPassword extends StatelessWidget {
  TextEditingController _password=TextEditingController();
  GlobalKey<FormState> _key=GlobalKey<FormState>();
  AlertBoxes _alertBoxes=AlertBoxes();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image(
          image: AssetImage('images/selfpass_heart.png'),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
            color: Colors.black
        ),

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: GestureDetector(
            onTap: (){
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Padding(
              padding:   EdgeInsets.symmetric(horizontal: 30.0,vertical: 20.0),
              child: Form(
                key: _key,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    AutoSizeText(
                      'Please confirm your phone number',
                      style: TextStyle(
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w700,
                          fontSize: 30.0),
                      minFontSize: 18.0,
                      maxLines: 2,
                    ),
                    SizedBox(
                      height: 110.0,
                    ),
                    TextFormField(
                      controller: _password,
                      validator: MultiValidator([
                        RequiredValidator(errorText: '*You must enter Phone Number'),
                        LengthRangeValidator(min: 12, max: 12, errorText: 'Mobile number must be of 12 digits.')
                      ]),
                      keyboardType: TextInputType.number,
                      cursorColor: Color(0XFF002B44),
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0XFF002B44))),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0XFF002B44)))),
                    ),

                    SizedBox(
                      height: 120.0,
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
                        if(_key.currentState.validate()) {
                          if(_password.text==Provider.of<UserModel>(context,listen: false).getPhoneNumber)
                            {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>
                                      PhoneVerification(
                                          goto: SuccessScreen(goto: SignIn()))));
                            }
                          else{
                            _alertBoxes.simpleAlertBox(context, Text('Invalid Number'), Text('You must enter the same mobile number you entered before.'),(){
                              Navigator.pop(context);
                            });
                          }

                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
