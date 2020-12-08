import 'package:flutter/material.dart';
import 'Beijing.dart';

class Chineserestaurant extends StatefulWidget {
  static String tag = 'chineserestaurant-page';
  @override
  ChineserestaurantState createState() => ChineserestaurantState();
}

class ChineserestaurantState extends State<Chineserestaurant> {
  Widget buildChineseBtn() {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {
          Navigator.of(context).pushNamed(Beijing.tag); // 태그수정
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.amber,
        child: Text(
          '북경반점',
          style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans'),
        ),
      ),
    );
  }

  Widget buildJapaneseBtn() {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {

        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.amber,
        child: Text(
          '미챠이',
          style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans'),
        ),
      ),
    );
  }

  Widget buildKoreanBtn() {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {

        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.amber,
        child: Text(
          '콰이찬',
          style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans'),
        ),
      ),
    );
  }

  Widget buildAmericanBtn() {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {

        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.amber,
        child: Text(
          '이향각',
          style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans'),
        ),
      ),
    );
  }

  Widget buildSnackBtn() {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {

        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.amber,
        child: Text(
          '훠라라마라탕',
          style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans'),
        ),
      ),
    );
  }

  Widget buildCaffeeBtn() {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {

        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.amber,
        child: Text(
          '만지꼬치전문-본점',
          style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 40.0,
        ),
        child: Column(
          children: [
            SizedBox(height: 180.0),
            buildChineseBtn(),
            SizedBox(height: 20.0),
            buildJapaneseBtn(),
            SizedBox(height: 20.0),
            buildKoreanBtn(),
            SizedBox(height: 20.0),
            buildAmericanBtn(),
            SizedBox(height: 20.0),
            buildSnackBtn(),
            SizedBox(height: 20.0),
            buildCaffeeBtn(),
            SizedBox(height: 20.0),
            // buildGuest(),
          ],
        ),
      ),
    );
  }
}