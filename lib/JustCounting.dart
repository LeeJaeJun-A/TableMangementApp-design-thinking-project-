import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:table_app/loginpage.dart'; //shared_preferences를 이용하여 디스크에 변수값 저장

class JustCounting extends StatefulWidget {
  @override
  _JustCountingState createState() => _JustCountingState();
}

class _JustCountingState extends State<JustCounting> {
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text('북경반점',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            centerTitle: true,
            elevation: 0.0),
        body: Center(
          child: _CountingBody(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _newTable,
          tooltip: 'save',
          child: Icon(Icons.save),
        ),
      ),
    );
  }

  Widget _CountingBody() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(residualtable, style: TextStyle(fontSize: 100)),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Text('/', style: TextStyle(fontSize: 150)),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Text(maxtable, style: TextStyle(fontSize: 100))
              ],
            ),
            Padding(padding: EdgeInsets.all(60)),
            TextField(
              maxLength: 2,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              // ignore: deprecated_member_use
              inputFormatters: [
                WhitelistingTextInputFormatter(RegExp('[0-9]')),
              ],
              decoration: InputDecoration(
                  labelText: '잔여 테이블 수',
                  counterText: '',
                  border: InputBorder.none,
                  hintText: '잔여 테이블 수'),
              onChanged: (String str) {
                setState(() => residualtable = str);
              },
            ),
            TextField(
              maxLength: 2,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              // ignore: deprecated_member_use
              inputFormatters: [
                WhitelistingTextInputFormatter(RegExp('[0-9]')),
              ],
              decoration: InputDecoration(
                  labelText: '총 테이블 수',
                  counterText: '',
                  border: InputBorder.none,
                  hintText: '총 테이블 수'),
              onChanged: (String str) {
                setState(() => maxtable = str);
              },
            )
          ],
        ),
      ),
    );
  }
}
