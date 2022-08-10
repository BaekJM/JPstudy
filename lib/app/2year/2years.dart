import 'package:flutter/material.dart';
import 'package:japanstudy/app/1year/1years.dart';
import 'package:japanstudy/app/mainpage.dart';
import 'package:japanstudy/app/modul.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Y2Number1 extends StatefulWidget {
  const Y2Number1({Key? key}) : super(key: key);

  @override
  State<Y2Number1> createState() => _Y2Number1State();
}

class _Y2Number1State extends State<Y2Number1> {

  static List<String> YearsJaJa = [
    '東','西','南','北','春','夏','秋','冬','父','母','兄','弟','姉','妹','親','友',
    '自','分','古','今','内','外','前','後','多','少','強','弱','遠','近','万','牛',
    '馬','魚','鳥','鳴','米','麦','肉','食','茶','道','毎','週','朝','昼','夜','時',
    '曜','半','京','里','会','社','公','園','寺','交','絵','画','言','語','教','室',
    '工','作','計','算','点','数','読','書','記','新','聞','番','組','歌','声','楽',
  ];
  static List<String> YearsJaJakr = [
    '동녘 동','서녘 서','남녘 남','북녘 북','봄 춘','여름 하','가을 추','겨울 동','아버지 부','어머니 모','형 형','아우제','손위 누이 자','누이 매','친할 친','벗 우',
    '스스로 자','나눌 분','옛 고','이제 금','안 내','바깥 외','앞 전','뒤 후','많을 다','적을 소','강할 강','약할 약','멀 원','가까울 근','일만 만','소 우',
    '말 마','물고기 어','새 조','울 명','쌀 미','보리 맥','고기 육','밥 식','차 다(차)','길 도','매양 매','돌 주','아침 조','낮 주','밤 야','때 시',
    '빛날 요','반 반','서울 경','마을 리','모일 회','모일 사','공평할 공','동산 원','절 사','사귈 교','그림 회','그림 화','말씀 언','말씀 어','가를칠 교','집 실',
    '장인 공','지을 작','설 계','셈 산','점 점','셈 수','읽을 독','글 서','기록할 기','새 신','들을 문','차례 번','짤 조','노래 가','소리 성','노래 악/즐거울 락',
  ];
  static List<String> YearsJaJaum = [
    'とう','せい、さい','なん、な','ほく','しゅん','か、げ','しゅう','どう','ふ','ぼ','きょう、けい','てい、だい、で','し','まい','しん','ゆう',
    'じ、し','ぶん、ふん、ぶ','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
  ];
  static List<String> YearsJaJaumex = [
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
  ];
  static List<String> YearsJaJahun = [
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
  ];
  static List<String> YearsJaJahunex = [
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
  ];
  static List<String> YearsJaJaex = [
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
  ];

  final List<YearsJa> YearsJaData = List.generate(YearsJaJa.length, (index) =>
      YearsJa(YearsJaJa[index], YearsJaJakr[index], YearsJaJaum[index],YearsJaJaumex[index], YearsJaJahun[index], YearsJaJahunex[index],YearsJaJaex[index]));

  bool changeMenu = false;
  String nData1 = '東';String nData2 = '';String nData3 = '';String nData4 = '';
  String nData5 = '';String nData6 = '';String nData7 = '';
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
                  childAspectRatio: 1 / 0.8, //item 의 가로 1, 세로 2 의 비율
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
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(icon: Icon(Icons.chevron_left ,), onPressed: null),
          IconButton(icon: Icon(Icons.chevron_right ,), onPressed: () {
            Navigator.pushReplacement(context , MaterialPageRoute(builder: (context) => Y2Number2()));} ),
        ],
      ),
    );
  }
}



class Y2Number2 extends StatefulWidget {
  const Y2Number2({Key? key}) : super(key: key);

  @override
  State<Y2Number2> createState() => _Y2Number2State();
}

class _Y2Number2State extends State<Y2Number2> {

  static List<String> YearsJaJa = [
    '売','買','門','戸','行','来','歩','走','止','方','角','市','場','心','体','頭',
    '首','顔','色','羽','毛','丸','形','刀','店','長','用','才','科','答','引','線',
    '弓','矢','汽','船','台','光','紙','午','元','広','太','池','谷','岩','星','風',
    '海','高','原','雪','野','黄','黒','雲','地','図','電','話','国','家','思','考',
    '活','切','合','同','回','帰','何','明','当','直','間','理','通','知','晴','細',
  ];
  static List<String> YearsJaJakr = [
    '팔 매','살 매','문 문','집 호','다닐 행','올 래','걸음 보','달릴 주','그칠 지','모 방','뿔 각','저자 시','마당 장','마음 심','몸 체','머리 두',
    '머리 수','얼굴 안','빛 색','깃 우','털 모','둘글 한','모양 형','칼 도','가게 점','길 장','쓸 용','재주 재','과목 과','대답할 답','끌 인','줄 선',
    '활 궁','화살 시','물끓는김 기','배 선','토대 대/별 태','빛 광','종이 지','낮 오','으뜸 원','넓을 광','클 태','못 지','골짜기 곡','바위 암','별 성','바람 풍',
    '바다 해','높을 고','근원 원','눈 설','들 야','누를 황','검을 흑','구름 운','땅 지','그림 도','번개 전','말씀 화','나라 국','집 가','생각 사','생갈할 고',
    '살 활','끊을 절/모두 체','합할 합','한가지 동','돌아올 회','돌아갈 귀','어찌 하','밝을 명','마땅할 당','곧을 직','사이 간','다스릴 리','통할 통','알 지','맑을 청','가늘 새',
  ];
  static List<String> YearsJaJaum = [
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
  ];
  static List<String> YearsJaJaumex = [
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
  ];
  static List<String> YearsJaJahun = [
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
  ];
  static List<String> YearsJaJahunex = [
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
  ];
  static List<String> YearsJaJaex = [
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','',
  ];

  final List<YearsJa> YearsJaData = List.generate(YearsJaJa.length, (index) =>
      YearsJa(YearsJaJa[index], YearsJaJakr[index], YearsJaJaum[index],YearsJaJaumex[index], YearsJaJahun[index], YearsJaJahunex[index],YearsJaJaex[index]));

  bool changeMenu = false;
  String nData1 = '売';String nData2 = '';String nData3 = '';String nData4 = '';
  String nData5 = '';String nData6 = '';String nData7 = '';
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
                  childAspectRatio: 1 / 0.8, //item 의 가로 1, 세로 2 의 비율
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
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(icon: Icon(Icons.chevron_left ,), onPressed: () {Navigator.pushReplacement(context , MaterialPageRoute(builder: (context) => Y2Number1()));}),
          IconButton(icon: Icon(Icons.chevron_right ,), onPressed: null),
        ],
      ),
    );
  }
}
