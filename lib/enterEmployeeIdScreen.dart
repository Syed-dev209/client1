import 'package:client1/models/userModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'SignUp-1.dart';
import 'package:form_field_validator/form_field_validator.dart';
class EmployeeIDInput extends StatefulWidget {
  @override
  _EmployeeIDInputState createState() => _EmployeeIDInputState();
}

class _EmployeeIDInputState extends State<EmployeeIDInput> {
  TextEditingController _empId=TextEditingController();
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
              padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
              child: Form(
                key: _key,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      'Enter your employee ID number',
                      style: TextStyle(
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w700,
                          fontSize: 30.0),
                    ),
                    SizedBox(
                      height: 110.0,
                    ),
                    TextFormField(
                      controller: _empId,
                      validator: MultiValidator([
                        RequiredValidator(errorText: '*You must enter your Employee ID.')
                      ]),
                      cursorColor: Color(0XFF002B44),
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0XFF002B44))),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0XFF002B44)))
                       ),
                    ),
                    Text(
                      'You get this number from your employer',
                      style: TextStyle(fontSize: 13.0),
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
                          Provider.of<UserModel>(context,listen: false).setEmployeeId(_empId.text);
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
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
