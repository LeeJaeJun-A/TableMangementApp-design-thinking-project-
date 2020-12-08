import 'package:flutter/material.dart';
import 'package:table_app/JustCounting.dart';
import 'package:table_app/TableManagement.dart';
import 'JustCounting.dart';
import 'TableManagement.dart';

class Admin extends StatefulWidget {
  static String tag = 'Admin';
  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  int _Index = 0;
  List _pages = [
    JustCounting(),
    TableManagement(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages[_Index]),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        onTap: _Tapped,
        currentIndex: _Index,
          items: <BottomNavigationBarItem> [
        BottomNavigationBarItem(icon: Icon(Icons.supervisor_account), label: '테이블 수 관리'),
        BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: '테이블 상황 관리')
      ]),
    );
  }
  void _Tapped(int index) {
    setState(() {
      _Index = index;
    });
  }
}
