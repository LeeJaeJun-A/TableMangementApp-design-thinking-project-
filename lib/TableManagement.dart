import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'loginpage.dart';

class TableManagement extends StatefulWidget {
  @override
  _TableManagementState createState() => _TableManagementState();
}

class _TableManagementState extends State<TableManagement> {
  Color basicColor1 = Color(0xFFDEB887);
  Color basicColor2 = Color(0xFFDEB887);
  Color basicColor3 = Color(0xFFDEB887);
  Color basicColor4 = Color(0xFFDEB887);
  Color basicColor5 = Color(0xFFDEB887);
  Color basicColor6 = Color(0xFFDEB887);
  Color basicColor7 = Color(0xFFDEB887);
  Color basicColor8 = Color(0xFFDEB887);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('북경반점',  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)
          ),
          centerTitle: true,
          elevation: 0.0,
          actions: <Widget> [IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: (){
              Navigator.of(context).pushNamed(LoginPage.tag);
            },
          )],
        ),
        body: _TouchTable(),

      ),
    );
  }
  Widget _TouchTable() {
    return SafeArea(
      child: Column(
        mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
        children: <Widget> [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget> [
              ButtonTheme(
                minWidth: 140.0,
                height: 80.0,
                child: RaisedButton(
                  color: basicColor1,
                  onPressed: (){
                    setState(() {
                      basicColor1 = basicColor1 == Color(0xFFDEB887) ? Color(0xFFDC143C) : Color(0xFFDEB887);
                    });
                  },
                ),
              ),
              ButtonTheme(
                minWidth: 140.0,
                height: 80.0,
                child: RaisedButton(
                  color: basicColor2,
                  onPressed: (){
                    setState(() {
                      basicColor2 = basicColor2 == Color(0xFFDEB887) ? Color(0xFFDC143C) : Color(0xFFDEB887);
                    });
                  },
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget> [
              ButtonTheme(
                minWidth: 140.0,
                height: 80.0,
                child: RaisedButton(
                  color: basicColor3,
                  onPressed: (){
                    setState(() {
                      basicColor3 = basicColor3 == Color(0xFFDEB887) ? Color(0xFFDC143C) : Color(0xFFDEB887);
                    });
                  },
                ),
              ),
              ButtonTheme(
                minWidth: 140.0,
                height: 80.0,
                child: RaisedButton(
                  color: basicColor4,
                  onPressed: (){
                    setState(() {
                      basicColor4 = basicColor4 == Color(0xFFDEB887) ? Color(0xFFDC143C) : Color(0xFFDEB887);
                    });
                  },
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget> [
              ButtonTheme(
                minWidth: 140.0,
                height: 80.0,
                child: RaisedButton(
                  color: basicColor5,
                  onPressed: (){
                    setState(() {
                      basicColor5 = basicColor5 == Color(0xFFDEB887) ? Color(0xFFDC143C) : Color(0xFFDEB887);
                    });
                  },
                ),
              ),
              ButtonTheme(
                minWidth: 140.0,
                height: 80.0,
                child: RaisedButton(
                  color: basicColor6,
                  onPressed: (){
                    setState(() {
                      basicColor6 = basicColor6 == Color(0xFFDEB887) ? Color(0xFFDC143C) : Color(0xFFDEB887);
                    });
                  },
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget> [
              ButtonTheme(
                minWidth: 140.0,
                height: 80.0,
                child: RaisedButton(
                  color: basicColor7,
                  onPressed: (){
                    setState(() {
                      basicColor7 = basicColor7 == Color(0xFFDEB887) ? Color(0xFFDC143C) : Color(0xFFDEB887);
                    });
                  },
                ),
              ),
              ButtonTheme(
                minWidth: 140.0,
                height: 80.0,
                child: RaisedButton(
                  color: basicColor8,
                  onPressed: (){
                    setState(() {
                      basicColor8 = basicColor8 == Color(0xFFDEB887) ? Color(0xFFDC143C) : Color(0xFFDEB887);
                    });
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}


