import 'package:auto_size_text/auto_size_text.dart';
import 'package:client1/enterEmployeeIdScreen.dart';
import 'package:client1/models/userModel.dart';
import 'package:client1/newPasswordScreen.dart';
import 'package:client1/phoneVerification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:form_field_validator/form_field_validator.dart';

class ResetPass extends StatelessWidget {
  TextEditingController _empId=TextEditingController();
  TextEditingController _phone=TextEditingController();
  GlobalKey<FormState> _key=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Image(
          image: AssetImage('images/selfpass_heart.png'),
        ),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(top: 2.0, left: 2.0),
          child: TextButton(
            child: AutoSizeText(
              'Sign up',
              style: TextStyle(
                fontSize: 20.0,
                color: Color(0xFF707070),
              ),
              textAlign: TextAlign.center,
              minFontSize: 10.0,
              maxLines: 1,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EmployeeIDInput()));
            },
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.clear,color: Color(0XFF707070),),
            onPressed: (){
              Navigator.pop(context);
            },
            tooltip: 'Go back',
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: GestureDetector(
            onTap: (){
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Form(
                key: _key,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      'Reset password',
                      style: TextStyle(fontFamily: "Raleway", fontSize: 40.0),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    TextFormField(
                      controller: _empId,
                      validator: MultiValidator([
                        RequiredValidator(errorText: '*You must enter your Employee ID.')
                      ]),
                      keyboardType: TextInputType.name,
                      cursorColor: Color(0XFF002B44),
                      decoration:
                          InputDecoration(hintText: "Enter your employee ID",
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0XFF002B44))),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0XFF002B44))),),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      controller: _phone,
                      validator: MultiValidator([
                        RequiredValidator(errorText: '*You must enter Phone Number'),
                        LengthRangeValidator(min: 12, max: 12, errorText: 'Mobile number must be of 12 digits.')
                      ]),
                      keyboardType: TextInputType.phone,
                      cursorColor: Color(0XFF002B44),
                      decoration:
                          InputDecoration(hintText: "Enter your phone number",
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0XFF002B44))),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0XFF002B44))),),
                    ),
                    SizedBox(
                      height: 100.0,
                    ),
                    Center(
                      child: RaisedButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: 100.0, vertical: 15.0),
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
                            Provider.of<UserModel>(context,listen: false).setEmployeeId(_empId.text);
                            Provider.of<UserModel>(context,listen: false).setPhoneNumber(_phone.text);

                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) =>
                                    PhoneVerification(goto: NewPassword(),)));
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
      ),
    );
  }
}
