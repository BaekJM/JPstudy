import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:japanstudy/app/1year/1years.dart';
import 'package:japanstudy/app/mainpage.dart';
import 'package:japanstudy/app/modul.dart';

class Y5Number1 extends StatefulWidget {
  const Y5Number1({Key? key}) : super(key: key);

  @override
  State<Y5Number1> createState() => _Y5Number1State();
}

class _Y5Number1State extends State<Y5Number1> {


  static List<String> YearsJaJa = [
    '価','可','仮','刊','幹','減','講','個','居','件','検','格','潔','経','境','耕','故','過',
    '慣','鉱','構','句','久','旧','群','券','規','均','禁','寄','基','技','能','団','断','貸',
    '徳','導','独','銅','略','領','留','綿','夢','墓','武','貿','務','迷','防','犯','弁','保',
    '報','復','複','婦','富','仏','比','非','備','肥','貧','師','査','似','飼','舎','謝','酸',
    '状','常','像','序','設','舌','性','勢','税','素','属','損','率','輸','授','修','述','術',
  ];
  static List<String> YearsJaJakr = [
    '값 가','옳을 가','거짓 가','새길 간','줄기 간','덜 감','외울 강','날 개','살 거','물건 건','검사할 검','격식 격','깨끗할 결','지날 경','지경 경','밭갈 경','연고 고','지날 과',
    '익숙할 관','쇳돌 광','얽을 구','글귀 구','오랠 구','옛 구','무리 군','문서 권','법 규','고를 균','금할 금','부칠 기','터 기','재주 기','능할 능','둥글 단','끓을 단','빌릴 대',
    '큰 덕','인도할 도','홀로 독','구리 동','간략할 략','거느릴 령','머무를 류','솜 면','꿈 몽','무덤 묘','호반 무','무역할 무','힘쓸 무','미혹할 미','막을 방','범할 범','고 깔/말씀 변','지킬 보',
    '갚을 보','회복할 복','겹칠 복','며느리 부','부유할 부','부처 불','견줄 비','아닐 비','갖출 비','살찔 비','가난할 빈','스승 사','조사할 사','닮을 사','기를 사','집 사','사례할 사','실 산',
    '형상 상','항상 상','모양 상','차례 서','베풀 설','혀 설','성품 성','형세 세','세금 세','본디 소','무리 속','덜 손','거느릴 솔/비율 률','보낼 수','줄 수','닦을 수','펼 술','재주 술',
  ];
  static List<String> YearsJaJaum = [
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
  ];
  static List<String> YearsJaJaumex = [
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
  ];
  static List<String> YearsJaJahun = [
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
  ];
  static List<String> YearsJaJahunex = [
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
  ];
  static List<String> YearsJaJaex = [
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
  ];

  final List<YearsJa> YearsJaData = List.generate(YearsJaJa.length, (index) =>
      YearsJa(YearsJaJa[index], YearsJaJakr[index], YearsJaJaum[index],YearsJaJaumex[index], YearsJaJahun[index], YearsJaJahunex[index],YearsJaJaex[index]));

  bool changeMenu = false;
  String nData1 = '価';String nData2 = '';String nData3 = '';String nData4 = '';
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
          IconButton(icon: Icon(Icons.chevron_right ,), onPressed: () {Navigator.pushReplacement(context , MaterialPageRoute(builder: (context) => Y5Number2()));}),
        ],
      ),
    );
  }
}

class Y5Number2 extends StatefulWidget {
  const Y5Number2({Key? key}) : super(key: key);

  @override
  State<Y5Number2> createState() => _Y5Number2State();
}

class _Y5Number2State extends State<Y5Number2> {
  static List<String> YearsJaJa = [
    '承','示','識','眼','圧','液','額','桜','余','易','逆','演','燃','永','営','預','往','容',
    '衛','恩','応','義','移','益','因','任','資','雑','張','再','在','財','災','敵','績','適',
    '銭','絶','接','程','情','政','精','際','制','制','提','祖','造','条','罪','準','増','証',
    '枝','志','支','職','織','質','賛','採','責','妻','招','総','築','測','則','快','態','統',
    '退','破','判','版','編','評','布','暴','俵','豊','河','賀','限','解','許','険','現','護',
    '混','効','確','厚','興',
  ];
  static List<String> YearsJaJakr = [
    '이을 승','보일 시','알 식','눈 안','누를 압','진 액','이마 액','앵두 앵','남을 여','바꿀 역/쉬울 이','거스릴 역','펼 연','탈 연','길 영','경영할 영','맡길 예','갈 왕','얼굴 용',
    '지킬 위','은혜 은','응할 응','옳을 의','옮길 이','더할 익','인할 인','맡길 임','재물 자','섞일 잡','베풀 장','두 재','있을 재','재물 재','재앙 재','대적할 적','길쌈할 적','맞을 적',
    '돈 전','끊을 절','이을 접','한도 정','뜻 정','정사 정','정할 정','즈음 제','절제할 제','지을 제','끌 제','할아버지 조','지을 조','가지 조','허물 죄','준할 준','더할 증','증거 증',
    '가지 지','뜻 지','지탱할 지','직분 직','짤 직','바탕 질','도울 찬','캘 채','꾸짖을 책','아내 처','부를 초','다 총','쌓을 축','헤아릴 측','법칙 칙','쾌할 쾌','모습 태','거느릴 통',
    '물러날 퇴','깨뜨릴 파','판단할 판','판목 판','엮을 편','평할 평','베 포','사나울 폭','나누어줄 표','풀년 풍','물 하','하례할 하','한할 한','풀 해','허락할 허','험할 험','나타날 현','도울 호',
    '섞을 혼','본받을 효','굳을 확','두터울 후','일 흥',
  ];
  static List<String> YearsJaJaum = [
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','',
  ];
  static List<String> YearsJaJaumex = [
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','',
  ];
  static List<String> YearsJaJahun = [
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','',
  ];
  static List<String> YearsJaJahunex = [
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','',
  ];
  static List<String> YearsJaJaex = [
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','',
    '','','','','',
  ];

  final List<YearsJa> YearsJaData = List.generate(YearsJaJa.length, (index) =>
      YearsJa(YearsJaJa[index], YearsJaJakr[index], YearsJaJaum[index],YearsJaJaumex[index], YearsJaJahun[index], YearsJaJahunex[index],YearsJaJaex[index]));

  bool changeMenu = false;
  String nData1 = '承';String nData2 = '';String nData3 = '';String nData4 = '';
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
          IconButton(icon: Icon(Icons.chevron_left ,), onPressed: () {Navigator.pushReplacement(context , MaterialPageRoute(builder: (context) => Y5Number1()));}),
          IconButton(icon: Icon(Icons.chevron_right ,), onPressed: null),
        ],
      ),
    );
  }
}
