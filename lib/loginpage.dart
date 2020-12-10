import 'package:flutter/material.dart';
import 'Guest.dart';
import 'Admin.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isAdmin = false;
  // bool isGuest = false;

  Widget buildMainLogo() {
    return CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 100.0,
      child: Image.asset('images/Logo.png'),
    );
  }

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('ID'),
        SizedBox(height: 10.0),
        Container(
          height: 60,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10.0)),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.pending,
                color: Colors.white,
              ),
              hintText: '아이디를 입력하세요',
            ),
          ),
        )
      ],
    );
  }

  Widget buildpassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Password'),
        SizedBox(height: 10.0),
        Container(
          height: 60,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10.0)),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.vpn_key,
                color: Colors.white,
              ),
              hintText: '비밀번호를 입력하세요',
            ),
            obscureText: true,
          ),
        )
      ],
    );
  }

  Widget buildForgotPass() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () {
          print("pushed button");
        },
        child: Text(
          '계정을 잃어버리셨나요?',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget buildAdmin() {
    return Row(
      children: [
        Checkbox(
          value: isAdmin,
          onChanged: (value) {
            setState(() {
              isAdmin = value;
            });
          },
        ),
        Text('관리자로 로그인'),
      ],
    );
  }

  Widget buildLoginBtn() {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {
          if (isAdmin == false) {
            Navigator.of(context).pushNamed(Guest.tag);
          } else {
            Navigator.of(context).pushNamed(Admin.tag); //Admin으로 변경
          }
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.amber,
        child: Text(
          '로그인',
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
            SizedBox(height: 100.0),
            buildMainLogo(),
            SizedBox(height: 10.0),
            buildEmail(),
            SizedBox(height: 10.0),
            buildpassword(),
            buildForgotPass(),
            buildLoginBtn(),
            buildAdmin(),
          ],
        ),
      ),
    );
  }
}
