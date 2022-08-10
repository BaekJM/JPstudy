import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:japanstudy/app/1year/1years.dart';
import 'package:japanstudy/app/mainpage.dart';


class YearsJa {
  final String ja;
  final String jakr;
  final String jaum;
  final String jaumex;
  final String jahun;
  final String jahunex;
  final String jaex;


  YearsJa(this.ja,this.jakr,this.jaum,this.jaumex,this.jahun,this.jahunex,this.jaex);
}

class YearsCho {
  final String number;
  final String years;
  final String int;

  YearsCho(this.number,this.years,this.int,);
}

class ClickText extends StatelessWidget {
  const ClickText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Click',
      style:TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.grey,),);
  }
}

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/chiwawa.jpg'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/chiwawa2.jpg'),
                )
              ],
              accountEmail: Text('zaqws159@gmail.com'),
              accountName: Text('JongMin Baek'),
              onDetailsPressed: null,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  )),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      );
  }
}


