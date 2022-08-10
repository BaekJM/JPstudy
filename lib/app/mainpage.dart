import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:japanstudy/app/1year/1years.dart';
import 'package:japanstudy/app/2year/2years.dart';
import 'package:japanstudy/app/3year/3years.dart';
import 'package:japanstudy/app/4year/4years.dart';
import 'package:japanstudy/app/5year/5years.dart';
import 'package:japanstudy/app/6year/6years.dart';
import 'package:japanstudy/app/modul.dart';
import 'package:japanstudy/main.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {

  static List<String> YearsChoNumber = ['1','2','3','4','5','6'];
  static List<String> YearsChoYears = ['1학년 한자','2학년 한자','3학년 한자','4학년 한자','5학년 한자','6학년 한자'];
  static List<String> YearsChoint = ['00/80','000/160','000/200','000/200','000/185','000/181'];

  final List<YearsCho> YearsChoData = List.generate(YearsChoNumber.length, (index) =>
      YearsCho(YearsChoNumber[index],YearsChoYears[index],YearsChoint[index]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            TextButton( onPressed: () {},child: Text('E S V' , style:TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black,fontFamily: 'main'),),),
            Text('Elementary School Vocabulary',style: TextStyle(fontSize: 10,fontFamily: 'main'),textAlign: TextAlign.center,)
          ],
        ),
        backgroundColor: Colors.brown[500],
      ),
      drawer: MenuBar(),
      body: ListView.builder(
          itemCount: YearsChoData.length,
          itemBuilder: (context,index) {
            return
              Card(
                color: Colors.brown[200],
                child: ListTile(
                    title: Text(YearsChoData[index].years, style:TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black,)),
                    leading: Text(YearsChoData[index].int, style:TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black,)),
                    onTap: () => setState(() {
                      if(YearsChoData[index].number == '1') {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => Y1Number1()));
                      }
                      else if(YearsChoData[index].number == '2') {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => Y2Number1()));
                      }
                      else if(YearsChoData[index].number == '3') {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => Y3Number1()));
                      }
                      else if(YearsChoData[index].number == '4') {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => Y4Number1()));
                      }
                      else if(YearsChoData[index].number == '5') {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => Y5Number1()));
                      }
                      else if(YearsChoData[index].number== '6') {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => Y6Number1()));
                      }})

                ),
              );
          }
      ),
    );
  }
}