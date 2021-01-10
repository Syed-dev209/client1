import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Worktab extends StatefulWidget {
  @override
  _WorktabState createState() => _WorktabState();
}

class _WorktabState extends State<Worktab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 28.0),
                height: 250.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0XFF002B44),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(14.0),
                        bottomRight: Radius.circular(14.0))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      'Hello, Victor',
                      style: TextStyle(
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                          color: Colors.white),
                      maxLines: 1,
                      minFontSize: 18.0,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 26.0,
                    ),
                    AutoSizeText(
                      'My Work',
                      style: TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      minFontSize: 12.0,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 130.0, 20.0,0.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                  height: 280.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            child: Image(
                              image: AssetImage('images/construction.jpg'),
                              height: 70.0,
                              width: 75.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(width: 15.0,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText('East Bay Construction',style: TextStyle(
                                fontSize: 17.0
                              ),
                              minFontSize: 10.0,
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              AutoSizeText('Eastlake, Ohio, 44095',style: TextStyle(
                                fontSize: 17.0,
                                color: Color(0xFFFC5C5C5)
                              ),),
                              SizedBox(
                                height: 4.0,
                              ),
                              AutoSizeText('August 24, 2020',style: TextStyle(
                                  fontSize: 13.0,
                                  color: Color(0xFFFC5C5C5)
                              ),)
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 9.0,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 11.0,
                            backgroundColor: Color(0XFF1BAAA0),
                            child: Icon(
                              Icons.check,
                              size: 15.0,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          AutoSizeText(
                            'Today\'s survey: ',
                            style: TextStyle(
                                // fontFamily: "Raleway",
                                fontSize: 18.0,
                                color: Color(0XFF77838F)),
                          ),
                          AutoSizeText(
                            'complete',
                            style: TextStyle(
                              // fontFamily: "Raleway",
                              fontSize: 18.0,
                            ),
                            minFontSize: 11.0,
                            maxLines: 1,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      AutoSizeText(
                        'Current survey streak (coming soon)',
                        style: TextStyle(
                          color: Color(0xFFC5C5C5),
                          fontSize: 18.0,
                        ),
                        minFontSize: 11.0,
                        maxLines: 1,
                      ),
                      SizedBox(height:3.0,),
                      LinearProgressIndicator(
                        backgroundColor: Color(0xFFC5C5C5),
                        valueColor: new AlwaysStoppedAnimation<Color>(Color(0xFFC5C5C5)),
                      ),
                      SizedBox(height:9.0,),
                      AutoSizeText(
                        'Longest Survey streak (coming soon)',
                        style: TextStyle(
                          color: Color(0xFFC5C5C5),
                          fontSize: 18.0,
                        ),
                        minFontSize: 11.0,
                        maxLines: 1,
                      ),
                      SizedBox(height:3.0,),
                      LinearProgressIndicator(
                        backgroundColor: Color(0xFFC5C5C5),
                        valueColor: new AlwaysStoppedAnimation<Color>(Color(0xFFC5C5C5)),
                      ),
                      SizedBox(height: 20.0,),
                      RaisedButton(
                        padding: EdgeInsets.symmetric(vertical: 14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Take Daily Survey',style: TextStyle(
                              fontSize: 18.0
                            ),),
                          ],
                        ),
                        textColor: Colors.white,
                        color: Color(0xFF1BAAA0),
                        onPressed: (){},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        ),

                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.0,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.0),
            child: AutoSizeText(
              'Available Surveys',
              style: TextStyle(
                  fontFamily: "Raleway",
                  fontSize: 24.0,
                  color: Colors.black),
              minFontSize: 12.0,
              maxLines: 1,
            ),
          ),
          SizedBox(height: 15.0,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.0),
            child: SurveyCard(
              title: 'Daily Health',
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.0),
            child: SurveyCard(
              title: 'Work Safety Quiz',
            ),
          )
        ],
      ),
    );
  }
}

class SurveyCard extends StatelessWidget {
  final String title;

  SurveyCard({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 9.0, vertical: 10.0),
      decoration: BoxDecoration(
          color: Color(0XFF84E77), borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('images/clipboardimage.png'),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                title,
                style: TextStyle(
                    fontFamily: "Raleway",
                    fontSize: 19.0,
                    color: Color(0XFF002B44)),
                minFontSize: 11.0,
                maxLines: 1,
              ),
              AutoSizeText(
                'Take Survey',
                style: TextStyle(
                  fontFamily: "Raleway",
                  fontSize: 18.0,
                  color: Color(0XFF77838F),
                ),
                minFontSize: 11.0,
                maxLines: 1,
              ),
            ],
          ),
          SizedBox(
            width: 40.0,
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward_ios_sharp),
            color: Colors.black,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
