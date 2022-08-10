import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:japanstudy/app/1year/1years.dart';
import 'package:japanstudy/app/mainpage.dart';
import 'package:japanstudy/app/modul.dart';

class Y6Number1 extends StatefulWidget {
  const Y6Number1({Key? key}) : super(key: key);

  @override
  State<Y6Number1> createState() => _Y6Number1State();
}

class _Y6Number1State extends State<Y6Number1> {


  static List<String> YearsJaJa = [
    '刻','閣','干','看','簡','鋼','降','激','絹','敬','警','届','系','穀','困','骨','供','権',
    '巻','机','貴','劇','勤','筋','己','暖','難','納','脳','段','担','党','糖','乱','覧','卵',
    '朗','論','律','裏','臨','幕','晩','亡','忘','枚','盟','暮','模','密','班','訪','拝','背',
    '俳','並','補','宝','腹','棒','否','奮','秘','批','私','砂','詞','捨','射','傷','署','善',
    '宣','城','盛','聖','誠','洗','垂','収','樹','熟','純','視','我','若','厳','域','訳','延',
  ];
  static List<String> YearsJaJakr = [
    '새길 각','집 각','방패 간','볼 간','대쪽 간','강철 강','내릴 강','격할 격','비단 견','공경 경','경계할 경','이를 계','맬 계','곡식 곡','곤할 곤','뼈 골','이바지할 공','권세 권',
    '책 권','책상 궤','귀할 귀','심할 극','부지런할 근','힘줄 근','몸 기','따뜻할 난','어려울 난','들입 납','골 뇌','층계 단','멜 담','무리 당','엿 당','어지러울 란','볼 람','알 란',
    '밝을 랑','논할 론','법칙 률','속 리','임할 림','장막 막','늦을 만','망할 망','잊을 망','낱 매','맹세 맹','저물 모','본뜰 모','빽빽할 밀','나눌 반','찾을 방','절 배','등 배',
    '배우 배','나란히 병','기울 보','보배 보','배 복','막대 봉','아닐 부','떨칠 분','숨길 비','비평할 비','사사 사','모래 사','말 사','버릴 사','쏠 사','다칠 상','마을 서','착할 선',
    '베풀 선','재 성','성할 성','성인 성','정성 성','씻을 세','드리울 수','거둘 수','나무 수','익을 숙','순수할 순','볼 시','나 아','같을 약','엄할 엄','지경 역','번역할 역','늘일 연',
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
  String nData1 = '刻';String nData2 = '';String nData3 = '';String nData4 = '';
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
          IconButton(icon: Icon(Icons.chevron_right ,), onPressed: () {Navigator.pushReplacement(context , MaterialPageRoute(builder: (context) => Y6Number2()));}),
        ],
      ),
    );
  }
}

class Y6Number2 extends StatefulWidget {
  const Y6Number2({Key? key}) : super(key: key);

  @override
  State<Y6Number2> createState() => _Y6Number2State();
}

class _Y6Number2State extends State<Y6Number2> {
  static List<String> YearsJaJa = [
    '沿','映','染','誤','欲','宇','郵','優','源','危','乳','幼','遺','疑','異','翌','認','仁','賃','姿',
    '磁','蚕','将','装','蔵','臓','障','裁','著','専','展','頂','済','諸','除','操','潮','存','尊','宗',
    '従','縦','座','宙','株','奏','衆','蒸','誌','至','窓','創','冊','策','処','尺','泉','庁','寸','推',
    '縮','忠','就','層','値','針','宅','誕','探','討','痛','派','片','肺','陛','閉','割','郷','憲','革',
    '穴','呼','紅','拡','皇','灰','孝','后','揮','胸','吸'
  ];
  static List<String> YearsJaJakr = [
    '물따라갈 연','비칠 영','물들 염','그르칠 오','하고자할 욕','집 우','우편 우','넉넉할 우','근원 원','위태할 위','젖 유','어릴 유','남길 유','의심할 의','다를 이','다음날 익','알 인','어질 인','품삯 임','모양 자',
    '자석 자','누에 잠','장수 장','꾸밀 장','감출 장','오장 장','막을 장','마를 재','나타날 저','오로지 전','펼 전','정수리 정','건널 제','모두 제','덜 제','잡을 조','밀물 조','있을 존','높을 존','마루 종',
    '좇을 종','세로 종','자리 좌','집 주','그루 주','아뢸 주','무리 중','찔 증','기록할 지','이를 지','창 창','비롯할 창','책 책','꾀 책','곳 처','자 척','샘 천','관청 청','마디 촌','밀 추',
    '줄일 축','충성 충','나아갈 취','층 층','값 치','바늘 침','집 택/댁 댁','낳을 탄','찾을 탐','칠 토','아플 통','갈래 파','조각 편','허파 폐','대궐섬돌 폐','닫을 폐','벨 할','시골 향','법 헌','가죽 혁',
    '구멍 혈','부를 호','붉을 홍','넓힐 확','임금 황','재 회','효도 효','임금 후','휘두를 휘','가슴 흉','마실 흡',
  ];
  static List<String> YearsJaJaum = [
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','',
  ];
  static List<String> YearsJaJaumex = [
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','',
  ];
  static List<String> YearsJaJahun = [
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','',
  ];
  static List<String> YearsJaJahunex = [
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','',
  ];
  static List<String> YearsJaJaex = [
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','','','','','','','','','','',
    '','','','','','','','','','','',
  ];

  final List<YearsJa> YearsJaData = List.generate(YearsJaJa.length, (index) =>
      YearsJa(YearsJaJa[index], YearsJaJakr[index], YearsJaJaum[index],YearsJaJaumex[index], YearsJaJahun[index], YearsJaJahunex[index],YearsJaJaex[index]));

  bool changeMenu = false;
  String nData1 = '沿';String nData2 = '';String nData3 = '';String nData4 = '';
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
          IconButton(icon: Icon(Icons.chevron_left ,), onPressed: () {Navigator.pushReplacement(context , MaterialPageRoute(builder: (context) => Y6Number1()));}),
          IconButton(icon: Icon(Icons.chevron_right ,), onPressed: null),
        ],
      ),
    );
  }
}
