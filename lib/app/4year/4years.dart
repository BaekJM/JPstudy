import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:japanstudy/app/1year/1years.dart';
import 'package:japanstudy/app/mainpage.dart';
import 'package:japanstudy/app/modul.dart';

class Y4Number1 extends StatefulWidget {
  const Y4Number1({Key? key}) : super(key: key);

  @override
  State<Y4Number1> createState() => _Y4Number1State();
}

class _Y4Number1State extends State<Y4Number1> {


  static List<String> YearsJaJa = [
    '加','街','各','覚','康','改','挙','建','健','欠','結','景','経','競','鏡','季','械','固','告','功',
    '共','果','課','官','管','関','観','求','救','軍','郡','極','給','紀','器','機','旗','念','努','単',
    '堂','達','隊','帯','徒','毒','働','得','灯','冷','量','良','歴','連','令','例','労','老','録','料',
    '類','陸','輪','利','満','末','望','梅','脈','牧','無','未','民','博','飯','法','辺','変','別','兵',
    '夫','付','府','副','粉','不','飛','費','士','史','司','辞','産','散','殺','象','賞','席','選','説',
  ];
  static List<String> YearsJaJakr = [
    '더할 가','거리 가','각각 각','깨달을 각','편안할 강','고칠 개','들 거','세울 건','굳을 건','어지러질 결','맺을 결','볕 경','지름길 경','다툴 경 ','거울 경','계절 계','기계 계','굳을 고','고할 고','공 공',
    '한가지 공','실과 과','공부할 과','벼슬 관','대롱 관','관계할 관','볼 관','구할 구','구원할 구','군사 군','고을 군','극진할 극','줄 급','벼리 기','그릇 기','베틀 기','기 기','생각 념','힘쓸 노','홑 단',
    '집 당','통달할 달','무리 대','띠 대','무리 도','독 독','일할 동','얻을 득','등불 등','찰 랭','헤아릴 량','어질 량','지낼 력','잇닿을 련','하여금 령','범식 례','일할 로','늙을 로','기록할 록','헤아릴 료',
    '무리 류','뭍 륙','바퀴 륜','이로울 리','찰 만','끝 말','바랄 망','매화 매','줄기 맥','칠 목','없을 무','아닐 미','백성 민','넓을 박','밥 반','법 반','가 변','변할 변','나눌 별','군사 병',
    '지아비 부','줄 부','마을 부','버금 부','가루 분','아닐 불(부)','날 비','쓸 비','선비 사','사기 사','맡을 사','말씀 사','낳을 산','흩을 산','죽일 살','코끼리 상','상줄 상','자리 석','가릴 선','말씀 설/달랠 세',
  ];
  static List<String> YearsJaJaum = [
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
  ];
  static List<String> YearsJaJaumex = [
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
  ];
  static List<String> YearsJaJahun = [
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
  ];
  static List<String> YearsJaJahunex = [
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
  ];
  static List<String> YearsJaJaex = [
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
  ];

  final List<YearsJa> YearsJaData = List.generate(YearsJaJa.length, (index) =>
      YearsJa(YearsJaJa[index], YearsJaJakr[index], YearsJaJaum[index],YearsJaJaumex[index], YearsJaJahun[index], YearsJaJahunex[index],YearsJaJaex[index]));

  bool changeMenu = false;
  String nData1 = '加';String nData2 = '';String nData3 = '';String nData4 = '';
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
      body:  Stack(
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
          IconButton(icon: Icon(Icons.chevron_right ,), onPressed: () {Navigator.pushReplacement(context , MaterialPageRoute(builder: (context) => Y4Number2()));}),
        ],
      ),
    );
  }
}

class Y4Number2 extends StatefulWidget {
  const Y4Number2({Key? key}) : super(key: key);

  @override
  State<Y4Number2> createState() => _Y4Number2State();
}

class _Y4Number2State extends State<Y4Number2> {
  static List<String> YearsJaJa = [
    '成','省','巣','焼','笑','束','続','孫','松','刷','順','試','臣','信','失','氏','芽','児','案','愛',
    '約','養','漁','憶','然','熱','塩','英','栄','芸','完','要','浴','勇','願','位','囲','胃','泣','衣',
    '議','以','印','昨','残','腸','材','争','貯','低','底','積','的','典','戦','伝','折','節','静','停',
    '兆','照','卒','種','周','仲','差','借','札','察','参','唱','倉','菜','浅','清','初','最','祝','側',
    '治','置','特','敗','便','包','票','標','必','航','害','験','協','型','好','貨','候','訓','希','喜',
  ];
  static List<String> YearsJaJakr = [
    '이룰 성','살필 성','새집 소','사를 소','웃을 소','묶을 소','이을 속','손자 손','소나무 송','인쇄할 쇄','순할 순','시험할 시','신하 신','믿을 신','읽을 실','성씨 씨','싹 아','아이 아','책상 안','사랑 애',
    '맺을 약','기를 양','고기잡을 어','억 억','그럴 연','더울 열','소금 염','꽃부리 영','영화 영','재주 예','완전할 완','요긴할 요','목욕할 욕','날랠 용','원할 원','자리 위','에워쌀 위','밥통 위','울 읍','옷의',
    '의논할 의','써 이','도장 인','어제 작','남을 잔','창자 장','재목 재','다툴 쟁','쌓을 저','낮을 저','밑 저','쌓을 적','과녘 적','법 전','싸움 전','전할 전','꺽을 절','마디 절','고요할 정','머무를 정',
    '조 조','바칠 조','마칠 졸','씨 종','두루 주','버금 중','다를 차','빌릴 차','편지 찰','살필 찰','참여할 참','부를 창','곳집 창','나물 채','얕을 천','맑을 청','처음 초','가장 최','빌 축','곁 측',
    '다스릴 치','둘 치','특별할 특','패할 패','편할 편','쌀 포','표 표','표할 표','반드시 필','배 항','해할 해','시험 험','화합할 협','모형 형','좋을 호','재물 화','기후 후','가르칠 훈','바랄 희','기쁠 희',
  ];
  static List<String> YearsJaJaum = [
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
  ];
  static List<String> YearsJaJaumex = [
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
  ];
  static List<String> YearsJaJahun = [
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
  ];
  static List<String> YearsJaJahunex = [
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
  ];
  static List<String> YearsJaJaex = [
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
  ];

  final List<YearsJa> YearsJaData = List.generate(YearsJaJa.length, (index) =>
      YearsJa(YearsJaJa[index], YearsJaJakr[index], YearsJaJaum[index],YearsJaJaumex[index], YearsJaJahun[index], YearsJaJahunex[index],YearsJaJaex[index]));

  bool changeMenu = false;
  String nData1 = '成';String nData2 = '';String nData3 = '';String nData4 = '';
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
      body:  Stack(
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
          IconButton(icon: Icon(Icons.chevron_left ,), onPressed: () {Navigator.pushReplacement(context , MaterialPageRoute(builder: (context) => Y4Number1()));}),
          IconButton(icon: Icon(Icons.chevron_right ,), onPressed: null),
        ],
      ),
    );
  }
}
