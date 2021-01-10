import 'dart:async';

import 'package:client1/thankyouScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:percent_indicator/percent_indicator.dart';

class UploadHealthFile extends StatefulWidget {
  @override
  _UploadHealthFileState createState() => _UploadHealthFileState();
}

class _UploadHealthFileState extends State<UploadHealthFile> {
  bool checkedValue=false;
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF002B44),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
            child: GestureDetector(
                onTap: (){
                  FocusScope.of(context).requestFocus(FocusNode());
                },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 25.0,
                      ),
                      AutoSizeText(
                        'Upload Health Documentation',
                        style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0XFF002B44)),
                        minFontSize: 12.0,
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      AutoSizeText(
                          'Uplaod your COVID-19 test results or \n any other health documentation to your employers',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0XFF606C83)
                      ),
                        minFontSize: 8.0,
                        maxLines: 3,
                      ),

                      SizedBox(height: 60.0,),
                      Text('Full Name',style: TextStyle(
                        color: Color(0XFF606C83)
                      ),),
                      SizedBox(height: 7.0,),
                      TextFormField(
                        keyboardType: TextInputType.name,
                        cursorColor: Color(0XFF002B44),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Color(0XFF002B44),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Color(0XFFD7E1EA),
                            ),
                        ),
                        )
                      ),
                      SizedBox(height: 30.0,),
                      Text('Today\'s Date',style: TextStyle(
                          color: Color(0XFF606C83)
                      ),),
                      Container(
                        width: 130.0,
                        child: RaisedButton(
                          padding: EdgeInsets.symmetric(vertical: 7.0,),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.calendar_today_outlined,color: Color(0XFF72809D),),
                              SizedBox(width: 10.0,),
                              Text("${selectedDate.toLocal()}".split(' ')[0],style: TextStyle(
                                color: Color(0XFF72809D)
                              ),)
                            ],
                          ),
                          color: Color(0XFFD7E1EA),
                          onPressed: ()=>_selectDate(context),
                        ),
                      ),
                      SizedBox(height: 30.0,),
                      Text('Upload File',style: TextStyle(
                          fontSize: 16.0
                      ),),
                      SizedBox(
                        height: 7.0,
                      ),
                      SizedBox(
                        child: Divider(
                          color: Colors.black26,
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 20.0),
                        child: DottedBorder(
                          color: Color(0XFFCED6DC),
                          borderType: BorderType.RRect,
                          radius: Radius.circular(12),
                          padding: EdgeInsets.all(6),
                          child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 30.0,),
                                  Center(
                                    child: Image(
                                      image: AssetImage('images/folder.PNG'),
                                      height: 40.0,
                                      width: 40.0,
                                    ),
                                  ),
                                  TextButton(
                                    child: Text('Upload Your Image Here',style: TextStyle(
                                        color:Color(0XFFCED6DC),
                                        decoration: TextDecoration.underline,
                                        fontSize: 14.0
                                    ),),
                                    onPressed: (){

                                    },
                                  ),
                                  SizedBox(height: 30.0,)
                                ],
                              )
                          ),
                        )
                      ),
                      CheckboxListTile(
                       activeColor: Color(0XFF1BAAA0),
                        title: Text("I acknowledge",style: TextStyle(
                            color: Color(0XFF606C83)
                        ),),
                        value: checkedValue,
                        onChanged: (newValue) {
                          setState(() {
                            checkedValue = newValue;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                      ),
                      SizedBox(
                        child: Divider(
                          color: Colors.black26,
                        ),
                      ),
                      RaisedButton(
                        padding: EdgeInsets.symmetric(vertical: 14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Upload',style: TextStyle(
                                fontSize: 18.0
                            ),),
                          ],
                        ),
                        textColor: Colors.white,
                        color: Color(0xFF1BAAA0),
                        onPressed: (){
                          UploadDialogBox(context);
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                        ),

                      )

                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
Future<Widget> UploadDialogBox(context){
  Timer(
      Duration(seconds: 3),
          () =>
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) =>ThankYou())));
  return showDialog(
    context: context,
    builder: (context)=>SimpleDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Upload File ',
          style: TextStyle(
            color: Color(0xFF1BAAA0),
            fontSize: 16.0
          ),
          ),
          Text('August 24,2020',
            style: TextStyle(
                fontSize: 13.0,
              color: Color(0XFFB8BFCE)
            ),)
        ],
      ),
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(child: Divider(color: Colors.black26,),),
              DottedBorder(
                color: Color(0XFFCED6DC),
                borderType: BorderType.RRect,
                radius: Radius.circular(12),
                padding: EdgeInsets.all(6),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircularPercentIndicator(
                            radius: 120.0,
                            lineWidth: 13.0,
                            animation: true,
                            percent: 0.78,
                            center: new Text(
                              "78%",
                              style:
                              new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,color:Color(0xFF1BAAA0)),
                            ),
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: Color(0xFF1BAAA0),
                          ),
                          Text('Upload 15 Files'),
                          Text.rich(
                            TextSpan(
                              text: '1 gb from ',
                              children: <InlineSpan>[
                                TextSpan(
                                  text: '4 GB uploaded',
                                  style: TextStyle(
                                    color: Color(0xFF1BAAA0)
                                  )
                                )
                              ]
                            )
                          ),
                          SizedBox(height: 10.0,),
                          OutlineButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Cancel',style: TextStyle(
                                   color: Color(0xFF1BAAA0)
                                ),),
                              ],
                            ),
                            borderSide: BorderSide(color: Color(0xFF1BAAA0)),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0)
                            ),
                            onPressed: (){
                              Navigator.pop(context);
                            },
                          )
                        ],
                      ),
                    )
                ),
              ),
            ],
          ),
        )
      ],
    )
  );
}