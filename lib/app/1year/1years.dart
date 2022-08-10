import 'package:flutter/material.dart';
import 'package:japanstudy/app/mainpage.dart';
import 'package:japanstudy/app/modul.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cupertino_icons/cupertino_icons.dart';



class Y1Number1 extends StatefulWidget {
  const Y1Number1({Key? key}) : super(key: key);

  @override
  State<Y1Number1> createState() => _Y1Number1State();
}

class _Y1Number1State extends State<Y1Number1> {

  static List<String> YearsJaJa = [
    '一', '二', '三', '四', '五', '六', '七', '八', '九', '十', '百', '千', '年', '日', '月', '火',
    '水', '木', '金', '上', '下', '上', '大', '中', '小', '左', '右', '白', '赤', '青', '口', '耳',
    '目','手','足','文','字','先','生','学','校','車','出','入','山','川','天','石',
    '森','林','空','気','雨','夕','男','女','人','名','王','子','力','正','犬','虫',
    '貝','花','草','竹','円','玉','糸','見','音','休','本','立','早','田','町','村',

  ];
  static List<String> YearsJaJakr = [
    '한 일','두 이', '석 삼', '넉 사', '다섯 오', '여섯 육(륙)', '일곱 칠', '여덟 팔', '아홉 구', '열 십', '일백 백', '일천 천', '해 년', '날 일', '달 월', '블 화',
    '물 수', '나무 목', '쇠 금', '흙 토', '윗 상', '아래 하', '큰 대', '가운데 중', '작을 소', '왼 좌', '오른 우', '흰 백', '붉은 적', '푸를 청', '입 구', '귀 이',
    '눈 목','손 수','발 족','글월 문','글자 자','먼저 선','날 생','배울 학','학교 교','수레 차(거)','날 출','들 입','뫼 산','내 천','하늘 천','돌 석',
    '수풀 삼','수풀 림','빌 공','기운 기','비 우','저녁 석','사내 남','여자 녀','사람 인','이름 명','임금 왕','아들 자','힘 력','바를 정','개 견','벌레 충',
    '조개 패','꽃 화','풀 초','대 죽','둥글 원','구슬 옥','실 사','볼 견','소리 음','쉴 휴','근본 본','설 립','이를 조','밭 전','밭두둑 정','마을 촌',
  ];
  static List<String> YearsJaJaum = [
    'いち,　いつ','に', 'さん', 'し', 'ご', 'ろく', 'しち', 'はち', 'く，きゆう', 'じゆう，じっ', 'ひゅく', 'せん', 'ねん', 'にち，じつ', 'げつ，がつ', 'か',
    'すい', 'もく，ぼく', 'きん，こん', 'ど，と', 'じょう', 'か，げ', 'だい，たい', 'ちゅう，じゅう', 'しょう', 'さ', 'う，ゆう', 'はく，びゃく', 'せき，しゃく', 'せい，しょう', 'こう，く', 'じ',
    'もく，ぼく','しゅ','そく','ぶん，もん','じ','せん','せい，しょう','がく','こう','しゃ','しゅつ，すい','にゆう','さん','せん','てん','せき，しゃく，こく',
    'しん','りん','くう','き，け','う','せき','だん，なん','じょ，にょ，にょう','じん，にん','めい，みょう','おう','し，す','りょく，りき','せい，しょう','けん','ちゅう',
    'かい','か','そう','ちく','えん','ぎょく','し','けん','おん，いん','きゅう','ほん','りつ、りゅう','そう、さっ','でん','ちょう','そん',
  ];
  static List<String> YearsJaJaumex = [
    '一年, 一番, 一回','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
  ];
  static List<String> YearsJaJahun = [
    'ひと,ひと(つ)','ふた、ふた（つ）','み、み（つ）、みっ（つ）','よ、よ（つ）、よっ（つ）、よん','いつ、いつ（つ）','む、むい、む（つ）、むっ（つ）','や、や（つ）、やっ（つ）、よう','ここの、ここの（つ）','と、とお','','ち','とし','ひ、か','つき','ひ、ほ','みず',
    'き、こ','かね、かな','つち','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
  ];
  static List<String> YearsJaJahunex = [
    '一人,　一つ','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
  ];
  static List<String> YearsJaJaex = [
    '一年は３６５日です,　一つ、いくらですか','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
  ];

final List<YearsJa> YearsJaData = List.generate(YearsJaJa.length, (index) =>
    YearsJa(YearsJaJa[index], YearsJaJakr[index], YearsJaJaum[index],YearsJaJaumex[index], YearsJaJahun[index], YearsJaJahunex[index],YearsJaJaex[index]));

  bool changeMenu = false;
  String nData1 = '一';String nData2 = '한 일';String nData3 = 'いち';String nData4 = '一年, 一番, 一回';
  String nData5 = 'ひと,　ひと(つ)';String nData6 = '一人,　一つ';String nData7 = '一年は３６５日です,　一つ、いくらですか';
  bool test = true;

  int _counter = 0;
  bool _boolStatus = true;
  Color _statusColor = Colors.white;

  void _buttnPressed() {
    setState(() {
      if (_boolStatus == true) {
        _boolStatus = false;
        _counter--;
        _statusColor = Colors.pink;
      } else {
        _boolStatus = true;
        _statusColor = Colors.white;
        _counter++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            TextButton( onPressed: () {Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                builder: (BuildContext context) => Main()), (route) => false);},
              child: Text('E S V' , style:TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black,fontFamily: 'main'),),),
            Text('Elementary School Vocabulary',style: TextStyle(fontSize: 10,fontFamily: 'main'),textAlign: TextAlign.center,)
          ],
        ),
        actions: [IconButton(icon:Icon(Icons.change_circle_outlined,size: 34,), onPressed: ()=>setState(() => changeMenu = !changeMenu) ),],
        backgroundColor: Colors.brown[500],
      ),
      drawer: MenuBar(),
      body: Stack(
        children: [
          Visibility(visible: !changeMenu,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                SizedBox(width: 10,),
                Container(
                  height: double.infinity,
                  width: 100,
                  child: GridView.count(
                          crossAxisCount: 1, //1 개의 행에 보여줄 item 개수
                          childAspectRatio: 1 / 1.1, //item 의 가로 1, 세로 2 의 비율
                          mainAxisSpacing: 8, //수평 Padding
                          crossAxisSpacing: 8, //수직 Padding
                          children: List<Widget>.generate(YearsJaJa.length, (index){
                            return Card(
                              color: Colors.brown[200],
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),side: BorderSide(color:Colors.black),),
                              child: ListTile(
                                title: Column(mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                          YearsJaJa[index],
                                          style: TextStyle(fontSize: 45,
                                              fontWeight: FontWeight.bold, color: Colors.black)),
                                      ClickText()
                                    ]
                                ),
                                //leading: , < 왼쪽에 무언가 삽입 하려고 하면 이걸 사용
                                onTap: () => setState((){
                                  nData1 = YearsJaData[index].ja;nData2 = YearsJaData[index].jakr;nData3 = YearsJaData[index].jaum;
                                  nData4 = YearsJaData[index].jaumex;nData5 = YearsJaData[index].jahun;nData6 = YearsJaData[index].jahunex;nData7 = YearsJaData[index].jaex;
                                }
                                ),
                              ),
                            );
                          })
                      ),
                ),
                SizedBox(width: 20,),
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.brown[200],
                          borderRadius:BorderRadius.only(
                        topLeft: Radius.circular(50)
                      ),
                        border: Border.all(color: Colors.black)
                      ),
                      child: Center(
                        child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget> [
                                  SizedBox(height: 10,),
                                  Container(
                                    width: 200,
                                    height: 200,
                                    child: Center(
                                      child: Text( nData1,
                                        style: TextStyle(
                                          fontSize: 100,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(color: Colors.brown[100], borderRadius: BorderRadius.all(Radius.circular(40),),
                                      boxShadow: [
                                        BoxShadow(color: Colors.brown, offset: Offset(4.0, 4.0), blurRadius: 15.0, spreadRadius: 1.0,),
                                        BoxShadow(color: Colors.white, offset: Offset(-4.0, -4.0), blurRadius: 15.0, spreadRadius: 1.0,),],
                                    ),
                                  ),
                                  Visibility(visible:test ,
                                    child: Text(nData2),),
                                  Visibility(visible: test,
                                    child: Column (children: [
                                      Text(nData3),
                                      SizedBox(height: 10,),
                                      Text(nData4),
                                    ]),
                                  ),
                                  Visibility(visible: test,
                                    child: Column(
                                      children: [
                                        Text(nData5),
                                        SizedBox(height: 10,),
                                        Text(nData6),
                                      ],),
                                  ),
                                  Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: _buttnPressed,
                                          style: ElevatedButton.styleFrom(primary: Colors.brown[200], shape: RoundedRectangleBorder(borderRadius:
                                          BorderRadius.circular(8.0), side: BorderSide(color: Colors.brown),),),
                                          child: Icon(Icons.favorite , color: _statusColor ,),
                                        ),
                                        // SizedBox(
                                        //   width: 80,
                                        //   child: ElevatedButton(
                                        //       onPressed: () {},
                                        //       style: ElevatedButton.styleFrom(primary: Colors.brown[200], shape: RoundedRectangleBorder(borderRadius:
                                        //       BorderRadius.circular(8.0), side: BorderSide(color: Colors.brown),),),
                                        //       child: Text('보기',)
                                        //   ),
                                        // ),
                                        ElevatedButton(
                                          onPressed: () => setState(() => test = !test),
                                          style: ElevatedButton.styleFrom(primary: Colors.brown[200], shape: RoundedRectangleBorder(borderRadius:
                                          BorderRadius.circular(8.0), side: BorderSide(color: Colors.brown),),),
                                          child: Icon(Icons.visibility_off),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                ]
                            ),
                      ),
                    ),
                    flex : 1,
                ),
              ],
            ),
          )
          ),
          Visibility(visible: changeMenu,
            child: Padding(padding: EdgeInsets.all(10),
                  child: GridView.count(
                    crossAxisCount: 3, //1 개의 행에 보여줄 item 개수
                    childAspectRatio: 1 / 1, //item 의 가로 1, 세로 2 의 비율
                    mainAxisSpacing: 7, //수평 Padding
                    crossAxisSpacing: 7, //수직 Padding
                    children:
                    List<Widget>.generate(YearsJaJa.length, (index) {  //item 의 반목문 항목 형성
                      return Card(
                        color: Colors.brown[200],
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),side: BorderSide(color:Colors.black),),
                        child: ListTile(
                          title: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                    YearsJaJa[index],
                                    style: TextStyle(fontSize: 45,
                                        fontWeight: FontWeight.bold, color: Colors.black)),
                                ClickText()
                              ]
                          ),
                          //leading: , < 왼쪽에 무언가 삽입 하려고 하면 이걸 사용
                          onTap: () {
                            Navigator.push(context , MaterialPageRoute(builder: (context) => Number1(yearsja: YearsJaData[index])));
                            debugPrint(YearsJaData[index].ja);
                          },

                        ),
                      );
                    }),
                  )
              ),
          ),
        ],
      ),
    );
  }
}



class Number1 extends StatefulWidget {
  const Number1({Key? key, required this.yearsja,}) : super(key: key);

  final YearsJa yearsja;


  @override
  State<Number1> createState() => _Number1State();
}

class _Number1State extends State<Number1> {
  bool test = true;
  bool isLiked = false;

  int _counter = 0;
  bool _boolStatus = true;
  Color _statusColor = Colors.white;

  void _buttnPressed() {
    setState(() {
      if(_boolStatus == true) {
        _boolStatus = false;
        _counter--;
        _statusColor = Colors.pink;
      } else {
        _boolStatus = true;
        _statusColor = Colors.white;
        _counter++;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            TextButton( onPressed: () {Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                builder: (BuildContext context) => Main()), (route) => false);},
              child: Text('E S V' , style:TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black,fontFamily: 'main'),),),
            Text('Elementary School Vocabulary',style: TextStyle(fontSize: 10,fontFamily: 'main'),textAlign: TextAlign.center,)
          ],
        ),
        backgroundColor: Colors.brown[500],
      ),
      drawer: MenuBar(),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget> [
              SizedBox(height: 10,),
              Container(
                width: 300,
                height: 300,
                child: Center(
                  child: Text(widget.yearsja.ja,
                    style: TextStyle(
                      fontSize: 120,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(color: Colors.brown[100], borderRadius: BorderRadius.all(Radius.circular(40),),
                  boxShadow: [
                    BoxShadow(color: Colors.brown, offset: Offset(4.0, 4.0), blurRadius: 15.0, spreadRadius: 1.0,),
                    BoxShadow(color: Colors.white, offset: Offset(-4.0, -4.0), blurRadius: 15.0, spreadRadius: 1.0,),],
                ),
              ),
              Visibility(visible:test ,
                  child: Text(widget.yearsja.jakr),),
              Visibility(visible: test,
                child: Column (children: [
                  Text(widget.yearsja.jaum),
                  SizedBox(height: 10,),
                  Text(widget.yearsja.jaumex),
                ]),
              ),
              Visibility(visible: test,
                child: Column(
                  children: [
                    Text(widget.yearsja.jahun),
                    SizedBox(height: 10,),
                    Text(widget.yearsja.jahunex),
                  ],),
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: _buttnPressed,
                      style: ElevatedButton.styleFrom(primary: Colors.brown[200], shape: RoundedRectangleBorder(borderRadius:
                      BorderRadius.circular(8.0), side: BorderSide(color: Colors.brown),),),
                      child: Icon(Icons.favorite , color: _statusColor ,),
                    ),
                    // SizedBox(
                    //   width: 170,
                    //   child: ElevatedButton(
                    //       onPressed: () {},
                    //       style: ElevatedButton.styleFrom(primary: Colors.brown[200], shape: RoundedRectangleBorder(borderRadius:
                    //       BorderRadius.circular(8.0), side: BorderSide(color: Colors.brown),),),
                    //       child: Text('보기',)
                    //   ),
                    // ),
                    ElevatedButton(
                      onPressed: () => setState(() => test = !test),
                      style: ElevatedButton.styleFrom(primary: Colors.brown[200], shape: RoundedRectangleBorder(borderRadius:
                      BorderRadius.circular(8.0), side: BorderSide(color: Colors.brown),),),
                      child: Icon(Icons.visibility_off),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
            ]
        ),
      ),
    );
  }
}

