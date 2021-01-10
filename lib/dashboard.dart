import 'package:client1/worklScreen.dart';
import 'package:client1/healthTab.dart';
import 'package:client1/notificationTab.dart';
import 'package:client1/profileTab.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectedIndex=0;
  Widget pageSelector;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageSelector= Worktab();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDFCFA),
      appBar: AppBar(
        title: Image(
          image: AssetImage('images/whiteBg.png'),
          width: 146.0,
          height: 24.0,
        ),
        centerTitle: true,
        backgroundColor: Color(0XFF002B44),
      ),
      body: pageSelector,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0))
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            currentIndex:_selectedIndex ,
            elevation: 10.0,
            unselectedItemColor: Color(0xFF000000),
            selectedItemColor: Color(0XFF1BAAA0),
            unselectedLabelStyle: TextStyle(
                color: Color(0xFF00000)
            ),
            onTap:(value){
              print(value);
              setState(() {
                if(value==0)
                  {
                    pageSelector=Worktab();
                  }
                else if(value==1)
                  {
                    pageSelector=HealthTab();
                  }
                else if(value==2)
                  {
                    pageSelector=NotificationTab();
                  }
                else{
                  pageSelector=ProfileTab();
                }
                _selectedIndex=value;
              });
            },
            items: < BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.work_outline_sharp),
                label: 'Work',
              ),
              BottomNavigationBarItem(
                icon:  FaIcon(FontAwesomeIcons.heart),
                label: 'Health',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none_outlined),
                label: 'Notifications',
              ),
              BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.user),
                label: 'Profile',
              )
            ],
          )
        ),
      ),
    );
  }
}
