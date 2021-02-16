import 'package:auto_size_text/auto_size_text.dart';
import 'package:client1/models/userModel.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:provider/provider.dart';
import 'forgotPasswordScreen.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _phoneNumber=TextEditingController();

  TextEditingController _password=TextEditingController();

  GlobalKey<FormState> _key=GlobalKey<FormState>();

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
              padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 20.0),
              child: Form(
                key: _key,
                child: Column(
                 // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 30.0,
                    ),
                    AutoSizeText(
                      'Lets create your SelfPass account',
                      style: TextStyle(
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w700,
                          fontSize: 30.0),
                      minFontSize: 20.0,
                      maxLines: 2,
                    ),
                    SizedBox(height: 60.0,),
                    TextFormField(
                        validator: MultiValidator([
                          RequiredValidator(errorText: '*You must enter Phone Number'),
                          LengthRangeValidator(min: 12, max: 12, errorText: 'Mobile number must be of 12 digits.')
                        ]),
                      controller: _phoneNumber,
                      cursorColor: Color(0XFF002B44),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Enter your phone number',
                          enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF002B44))),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF002B44)))
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    TextFormField(
                      controller: _password,
                      validator: MultiValidator([
                        RequiredValidator(errorText: '*You must enter Password'),
                        LengthRangeValidator(min: 8, max: 12, errorText: 'password should be in the range of 8-12.')
                      ]),
                      obscureText: true,
                      cursorColor: Color(0XFF002B44),
                      decoration: InputDecoration(
                          hintText: 'Enter your password',
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0XFF002B44))),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0XFF002B44)))
                      ),
                    ),
                    SizedBox(height: 35.0,),
                    AutoSizeText('By signing up you accept the Terms of Service and Privacy Policy ',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      minFontSize: 8.0,
                    ),
                    SizedBox(height: 40.0,),
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
                          Provider.of<UserModel>(context,listen: false).setPassword(_password.text);
                          Provider.of<UserModel>(context,listen: false).setPhoneNumber(_phoneNumber.text);
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotPassword()));
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
