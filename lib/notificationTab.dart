import 'package:auto_size_text/auto_size_text.dart';
import 'package:client1/notificationReadScreen.dart';
import 'package:flutter/material.dart';

class NotificationTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 75.0,
            color: Color(0XFF002B44),
            child: Center(
              child: AutoSizeText(
                'Notifications',
                style: TextStyle(
                    color: Colors.white, fontFamily: "Raleway", fontSize: 30.0),
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ReadNotification(heading:'Available Health Survey' ,)));
            },
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/brick.jpg'),
              radius: 28.0,
            ),
            title: AutoSizeText(
              'Available Health Survey',
              style: TextStyle(color: Color(0XFF002B44), fontFamily: "Raleway"),
            ),
            subtitle: AutoSizeText('5 August 2020'),
            trailing: AutoSizeText(
              '12.08 Pm',
              style: TextStyle(
                  color: Color(0XFF1BAAA0), fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ReadNotification(heading:'Emplpoyer Updated...')));
            },
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/brick.jpg'),
              radius: 28.0,
            ),
            title: AutoSizeText(
              'Emplpoyer Updated...',
              style: TextStyle(color: Color(0XFF002B44), fontFamily: "Raleway"),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: AutoSizeText('5 August 2020'),
            trailing: AutoSizeText(
              '09.04 Pm',
              style: TextStyle(
                  color: Color(0XFF1BAAA0), fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(height: 60.0,),
          OutlineButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.0)
            ),
            padding: EdgeInsets.symmetric(horizontal: 63.0,vertical: 15.0),
            borderSide: BorderSide(
              width: 2.0,
              color:  Color(0xFF1BAAA0),
            ),
            highlightedBorderColor:Color(0xFF1BAAA0) ,
            child: Text('Load More',style: TextStyle(
                color: Color(0xFF1BAAA0),
              fontSize: 18.0
            ),),
            onPressed: (){
            },
          ),
        ],
      ),
    );
  }
}
