import 'package:auto_size_text/auto_size_text.dart';
import 'package:client1/SiginInForgotPassword.dart';
import 'package:client1/components/alertBox.dart';
import 'package:client1/enterEmployeeIdScreen.dart';
import 'package:client1/models/userModel.dart';
import 'package:client1/noOutBreaksScreen.dart';
import 'package:client1/successScreen.dart';
import 'package:client1/troubleLoggingIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:provider/provider.dart';

class SignIn extends StatelessWidget {
  TextEditingController _empId=TextEditingController();
  TextEditingController _password=TextEditingController();
  GlobalKey<FormState> _key=GlobalKey<FormState>();
  AlertBoxes _alertBoxes;

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
        leading: Padding(
          padding: EdgeInsets.only(top:2.0,left: 2.0),
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
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>EmployeeIDInput()));
            },
          ),
        ),

      ),
      body:ProgressHUD(
        child: Builder(
          builder: (context){
            return  SafeArea(
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
                        SizedBox(height: 30.0,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40.0),
                          child: Text(
                            'Welcome Back!',
                            style: TextStyle(
                                fontFamily: "Raleway",
                                fontSize: 30.0
                            ),
                          ),
                        ),
                        SizedBox(height: 40.0,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40.0),
                          child: TextFormField(
                            controller: _empId,
                            validator: MultiValidator([
                              RequiredValidator(errorText: '*You must enter your Employee ID')
                            ]),
                            keyboardType: TextInputType.name,
                            cursorColor: Color(0XFF002B44),
                            decoration: InputDecoration(
                              hintText: "Enter your employee ID",
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0XFF002B44))),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0XFF002B44))),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40.0),
                          child: TextFormField(
                            controller: _password,
                            validator: MultiValidator([
                              RequiredValidator(errorText: '*Fill you password'),
                              LengthRangeValidator(min: 8, max: 10, errorText: '*Password should be in the range of 8-10.')
                            ]),
                            obscureText: true,
                            keyboardType: TextInputType.name,
                            cursorColor: Color(0XFF002B44),
                            decoration: InputDecoration(
                              hintText: "Enter your password",
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0XFF002B44))),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0XFF002B44))),
                            ),
                          ),
                        ),
                        SizedBox(height: 100.0,),
                        Center(
                          child: RaisedButton(
                            padding:
                            EdgeInsets.symmetric(horizontal: 120.0, vertical: 15.0),
                            child: Text(
                              'Sign In',
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
                              if(_key.currentState.validate())
                              {
                                print(_empId.text);
                                print(_password.text);
                                print(Provider.of<UserModel>(context,listen: false).getEmpId+'provider');
                                print(Provider.of<UserModel>(context,listen: false).getPassword+'provider');
                                final progress= ProgressHUD.of(context);
                                if(_empId.text==Provider.of<UserModel>(context,listen: false).getEmpId&&_password.text==Provider.of<UserModel>(context,listen: false).getPassword){
                                  progress.showWithText('Please wait...');
                                  Future.delayed(Duration(seconds: 1), () {
                                    progress.dismiss();
                                  });
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SuccessScreen(goto: NoOutbreaks())));
                                }
                                else{
                                  _alertBoxes=AlertBoxes();
                                  _alertBoxes.simpleAlertBox(context, Text('Invalid Credentials.'),Text('Please enter correct Employee Id or Password.'), (){
                                    Navigator.pop(context);
                                  });
                                }

                              }
                            },
                          ),
                        ),
                        Center(
                          child: TextButton(
                            child: Text('I\'m having trouble logging in',style: TextStyle(color: Colors.black),),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Troublelogging()));
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
