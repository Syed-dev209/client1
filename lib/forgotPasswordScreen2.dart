import 'package:client1/dashboard.dart';
import 'package:client1/models/userModel.dart';
import 'package:client1/phoneVerification.dart';
import 'package:client1/successScreen.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:provider/provider.dart';


class EnterNewPhoneNumber extends StatelessWidget {
  TextEditingController _phoneNumber=TextEditingController();
  GlobalKey<FormState> _key= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: GestureDetector(
            onTap: (){
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Form(
              key: _key,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 169, vertical: 10.0),
                    child: Image(
                      image: AssetImage('images/selfpass_heart.png'),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      'Please enter your new phone number',
                      style: TextStyle(
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w800,
                          fontSize: 32.0),
                    ),
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: TextFormField(
                      controller: _phoneNumber,
                      validator: MultiValidator([
                        RequiredValidator(errorText: '*You must enter your Phone Number.'),
                        LengthRangeValidator(min: 12, max: 12, errorText:'Phone number should be of 12 digits')
                      ]),
                      keyboardType: TextInputType.phone,
                      cursorColor: Color(0XFF002B44),
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0XFF002B44))),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0XFF002B44)))

                      ),
                    ),
                  ),

                  SizedBox(
                    height: 140.0,
                  ),
                  Center(
                    child: RaisedButton(
                      padding:
                      EdgeInsets.symmetric(horizontal: 120.0, vertical: 15.0),
                      child: Text(
                        'Continue ',
                        style: TextStyle(
                              letterSpacing: 1.0,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      ),
                      color: Color(0xFF26A69A),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      onPressed: () {
                        if(_key.currentState.validate())
                          {
                            Provider.of<UserModel>(context,listen: false).setPhoneNumber(_phoneNumber.text);
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>PhoneVerification(goto: SuccessScreen(goto: DashBoard(),))));
                          }


                      },
                    ),
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
