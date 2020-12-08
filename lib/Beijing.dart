import 'package:flutter/material.dart';
import 'Chineserestaurant.dart';
import 'JustCounting.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Beijing extends StatefulWidget {
  static String tag = 'beijing-page';
  @override
  BeijingState createState() => BeijingState();
}

class BeijingState extends State<Beijing> {
  String residualtable = ''; //남은 테이블 수
  String maxtable = ''; // 총 테이블 수
  SharedPreferences _prefs;

  @override
  void initState() {
    super.initState();
    _loadTable();
  }

  void _loadTable() async {
    // SharedPreferences의 인스턴스를 필드에 저장
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      // SharedPreferences에 각각 residualtable, maxtable로 저장된 값을 읽어 필드에 저장. 없을 경우 ''으로 대입
      residualtable = (_prefs.getString('residualtable') ?? '');
      maxtable = (_prefs.getString('maxtable') ?? '');
    });
  }

  void _newTable() async {
    setState(() {
      //residualtable의 최신값을 SharedPreferences에 residualtable라는 이름으로 저장
      _prefs.setString('residualtable', residualtable);
      _prefs.setString('maxtable', maxtable);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Chineserestaurant()));
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(108.0)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Stack(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 8.0),
                        SizedBox(height: 8.0),
                        Container(
                          width: 300.0,
                          child: Text(
                            '북경반점',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 32.0),
                          ),
                        ),
                        SizedBox(height: 12.0),
                        Text(
                          '잔여석 현황',
                          style: TextStyle(color: Colors.black45),
                        ),
                        SizedBox(height: 12.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Text('(석)',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(width: 4.0),
                            Text(residualtable,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 52.0)),
                            SizedBox(width: 4.0),
                            Text('/',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 52.0)),
                            SizedBox(width: 2.0),
                            Text(maxtable,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 52.0)),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Spacer(
                          flex: 5,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            FloatingActionButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailsScreen()));
                              },
                              backgroundColor: Colors.white,
                              child: Icon(Icons.more),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height / 2,
                              width: MediaQuery.of(context).size.width / 2.5,
                              // child: Image.asset(
                              //   'assets/pikachu.gif', 이미지 추가가능
                              //   fit: BoxFit.cover,
                            ),
                            // )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0)
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('자세히 보기', style: TextStyle(color: Colors.orange)),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 100.0,
                        width: MediaQuery.of(context).size.width / 2 - 50,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(32.0),
                                topRight: Radius.circular(32.0))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '영업중',
                                  style: TextStyle(
                                      color: Colors.yellow,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 42.0),
                                ),
                                SizedBox(width: 8.0),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100.0,
                        width: MediaQuery.of(context).size.width / 2 - 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(32.0),
                                topRight: Radius.circular(32.0))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '7:00 ~ 20:00',
                                  style: TextStyle(
                                      color: Colors.yellow,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21.0),
                                ),
                                SizedBox(width: 8.0),
                              ],
                            ),
                            Text(
                              '연중무휴',
                              style: TextStyle(color: Colors.yellow),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 32.0),
                Container(
                  width: 200.0,
                  child: Text(
                    '북경반점',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 48.0),
                  ),
                ),
                SizedBox(height: 42.0),
                itemRow(Icons.star, 'A세트', '8,500원'),
                SizedBox(height: 22.0),
                itemRow(Icons.star, 'B세트', '8,000원'),
                SizedBox(height: 22.0),
                itemRow(Icons.star, 'C세트', '9,500원'),
              ],
            ),
          ),
          SizedBox(height: 32.0),
          Padding(
            padding: const EdgeInsets.only(left: 48.0),
            child: Container(
              height: 60.0,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32.0),
                      bottomLeft: Radius.circular(32.0))),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 20.0),
                  Icon(Icons.add, color: Colors.white, size: 24.0),
                  SizedBox(width: 40.0),
                  Text(
                    '테이블 예약 하기',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 32.0),
          Padding(
            padding: const EdgeInsets.only(left: 48.0),
            child: Container(
              height: 60.0,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32.0),
                      bottomLeft: Radius.circular(32.0))),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 20.0),
                  Icon(Icons.add, color: Colors.white, size: 24.0),
                  SizedBox(width: 40.0),
                  Text(
                    '전화 연결',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 80.0,
            child: Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Beijing()));
                    },
                    icon: Icon(Icons.arrow_drop_down),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  itemRow(icon, name, title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
            ),
            SizedBox(width: 6.0),
            Text(
              name,
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            )
          ],
        ),
        Text(title, style: TextStyle(color: Colors.white54, fontSize: 20.0))
      ],
    );
  }
}
