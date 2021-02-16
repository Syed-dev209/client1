import 'dart:convert';

import 'package:flutter/cupertino.dart';

class UserModel extends ChangeNotifier{
  String _employeeId,_phoneNumber,_password,_firstName,_lastName,_email,_work;
  setEmployeeId(String empId){
    _employeeId=empId;
    notifyListeners();
  }
  setPhoneNumber(String number){
    _phoneNumber=number;
    notifyListeners();
  }
  setPassword(String pass){
    _password=pass;
    notifyListeners();
  }

  setUserProfile(String fName,String lName,String mail,String work) {
    _firstName=fName;
    _lastName=lName;
    _email=mail;
    _work=work;
    notifyListeners();
  }

  get getEmpId{return _employeeId;}
  get getPhoneNumber{return _phoneNumber;}
  get getPassword{return _password;}
  get getFirstName{return _firstName;}
  get getLastName{return _lastName;}
  get getEmail{return _email;}
  get getWork{return _work;}
}