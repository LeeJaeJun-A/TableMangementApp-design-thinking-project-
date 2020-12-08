import 'package:flutter/material.dart';
import 'Admin.dart';
import 'Beijing.dart';
import 'Chineserestaurant.dart';
import 'Guest.dart';
import 'loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    Guest.tag: (context) => Guest(),
    Chineserestaurant.tag: (context) => Chineserestaurant(),
    Beijing.tag: (context) => Beijing(),
    Admin.tag: (context) => Admin(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RESTAURANT',
      theme: ThemeData(primaryColor: Colors.white, accentColor: Colors.black),
      home: LoginPage(),
      routes: routes,
    );
  }
}
