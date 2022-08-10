import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:japanstudy/app/1year/1years.dart';
import 'package:japanstudy/app/mainpage.dart';
import 'package:japanstudy/app/modul.dart';

class Y3Number1 extends StatefulWidget {
  const Y3Number1({Key? key}) : super(key: key);

  @override
  State<Y3Number1> createState() => _Y3Number1State();
}

class _Y3Number1State extends State<Y3Number1> {


  static List<String> YearsJaJa = [
    '反','対','軽','重','寒','暑','登','落','神','宮','写','真','旅','館','期','待','消','息','終','着',
    '駅','始','発','病','院','流','血','医','者','薬','局','号','全','身','遊','泳','急','速','安','打',
    '練','習','勝','負','投','球','幸','福','感','動','列','島','受','取','物','品','配','送','商','業',
    '鉄','橋','乗','客','住','所','仕','事','進','路','転','向','研','究','相','談','宿','題','詩','集',
    '意','味','委','員','君','主','平','等','追','放','礼','式','使','命','悪','筆','飲','酒','部','屋',

  ];
  static List<String> YearsJaJakr = [
    '돌이킬 반','대할 대','가벼울 경','무거울 중','찰 한','더울 서','오를 등','떨어질 락','귀신 신','집 궁','베낄 사','참 진','나그네 려','집 관','기약할 기','기다릴 대','사라질 소','쉴 식','마칠 종','붙을 착',
    '역 역','비로소 시','필 발','병 병','집 원','흐를 류','피 혈','의원 의','놈 자','약 약','판 국','이름 호','온전할 전','몸 신','놀 유','헤엄칠 영','급할 급','빠를 속','편안 안','칠 타',
    '익힐 련','익힐 습','이길 승','질 부','던질 투','공 구','다행 행','복 복','느낄 감','움직일 동','벌일 렬','섬 도','받을 수','가질 취','물건 물','물건 품','나눌 배','보낼 송','장사 상','업 업',
    '쇠 철','다리 교','탈 승','손 객','살 주','바 소','섬길 사','일 사','나아갈 진','길 로','구를 전','향할 향','갈 연','연구할 구','서로 상','말씀 담','잘 숙','제목 제','시 시','모을 집',
    '뜻 의','맛 미','맡길 위','인원 원','임금 군','주인 주','평평할 평','무리 등','쫓을 추','놓을 방','예도 례','법 식','하여금 사','목숨 명','악할 악/미워할 오','붓 필','마실 음','술 주','떼 부','집 옥',
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
  String nData1 = '反';String nData2 = '';String nData3 = '';String nData4 = '';
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
          IconButton(icon: Icon(Icons.chevron_right ,), onPressed: () {Navigator.pushReplacement(context , MaterialPageRoute(builder: (context) => Y3Number2()));}),
        ],
      ),
    );
  }
}

class Y3Number2 extends StatefulWidget {
  const Y3Number2({Key? key}) : super(key: key);

  @override
  State<Y3Number2> createState() => _Y3Number2State();
}

class _Y3Number2State extends State<Y3Number2> {
  static List<String> YearsJaJa = [
    '指','皮','歯','鼻','有','短','温','暗','去','返','助','拾','持','起','開','湖','岸','化','氷','油',
    '波','庫','荷','箱','曲','次','運','役','苦','美','想','炭','畑','根','深','植','陽','葉','農','緑',
    '予','代','申','央','注','柱','決','坂','皿','豆','具','第','洋','服','階','童','湯','銀','羊','死',
    '世','界','両','由','板','級','表','面','丁','区','州','県','都','庭','他','悲','勉','問','章','漢',
    '族','守','昔','祭','和','係','育','定','昭','秒','調','整','様','度','実','笛','港','横','倍','帳',

  ];
  static List<String> YearsJaJakr = [
    '가릴킬 지','가죽 피','이 치','코 비','있을 유','짧을 단','따뜻할 온','어두울 암','갈 거','돌아킬 반','도울 조','주울 습','가질 지','일어날 기','열 개','호수 호','언덕 안','될 화','얼음 빙','기름 유',
    '물결 파','곳집 고','멜 하','상자 상','굽을 곡','버금 차','옮길 운','부릴 역','쓸 고','아름다울 미','생각 상','숯 탄','화전 전','뿌리 근','깊을 심','심을 식','볕 양','잎 엽','농사 농','푸를 록',
    '미리 예','대신할 대','거듭 신','가운데 앙','부을 주','기둥 주','결정할 결','언덕 판','그릇 명','콩 두','갖출 구','차례 제','큰바다 양','옷 복','섬돌 계','아이 동','끓일 탕','은 은','양 양','죽을 사',
    '인간 세','지경 계','두 량','말미암을 유','널빤지 판','등급 급','겉 표','낯 면','고무래 정','구역 구','고을 주','고을 현','도읍 도','뜰 정','다를 타','슬플 비','힘쓸 면','물을 문','글 장','한나라 한',
    '계레 족','지킬 수','옛 석','제사 제','화할 화','맬 계','기를 육','정할 정','밝을 소','시간단위 초','고를 조','가지런할 정','모양 양','법도 도','열매 실','피리 적','항구 항','가로 횡','곱 배','휘장 장',
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
  String nData1 = '指';String nData2 = '';String nData3 = '';String nData4 = '';
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
      body:Stack(
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
          IconButton(icon: Icon(Icons.chevron_left ,), onPressed: () {Navigator.pushReplacement(context , MaterialPageRoute(builder: (context) => Y3Number1()));}),
          IconButton(icon: Icon(Icons.chevron_right ,), onPressed: null),
        ],
      ),
    );
  }
}
