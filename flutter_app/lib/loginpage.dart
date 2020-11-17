import 'package:flutter/material.dart';
import 'homepage.dart';

class LoginPage extends StatefulWidget {
  static String tag = "login-page";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isRemember = false;

  Widget buildMainLogo() {
    return CircleAvatar(
      backgroundColor: Colors.transparent, //Color.fromRGBO(248, 248, 248, 1),
      radius: 130.0,
      child: Image.asset('assets/logo2.png'),
    );
  }

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, //왼쪽 정렬
      children: [
        Text("Email"), //위젯 이름인 text
        SizedBox(height: 10.0),
        Container(
          height: 50.0, //정렬이 안되어 있는 상태에서 크기만 늘리면 위에 붙음
          alignment: Alignment.centerLeft, //왼쪽 , 위아래 가운데
          decoration: BoxDecoration(
              color: Color.fromRGBO(63, 178, 127, 1),
              borderRadius: BorderRadius.circular(10.0)),
          child: TextField(
            //색깔 바꾸기 위해 컨테이너로 감싸서 색깔 줌
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                hintText: "Enter your Email",
                border: InputBorder.none),
          ),
        ),
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, //왼쪽 정렬
      children: [
        Text("Email"), //위젯 이름인 text
        SizedBox(height: 10.0),
        Container(
          height: 50.0, //정렬이 안되어 있는 상태에서 크기만 늘리면 위에 붙음
          alignment: Alignment.centerLeft, //왼쪽 , 위아래 가운데
          decoration: BoxDecoration(
              color: Color.fromRGBO(63, 178, 127, 1),
              borderRadius: BorderRadius.circular(10.0)),
          child: TextField(
            //색깔 바꾸기 위해 컨테이너로 감싸서 색깔 줌
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                hintText: "Enter your Password ",
                border: InputBorder.none),
          ),
        ),
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
              'Forgot Password ?',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans'), //글씨 체나 글씨 두께, 색상 조장 가능
            )));
  }

  Widget buildRemember() {
    return Row(
      children: [
        Checkbox(
          value: isRemember,
          onChanged: (value) {
            setState(() {
              isRemember = value;
            });
          },
        ),
        Text('Remember me'),
      ],
    );
  }

  Widget buildLoginBtn() {
    return Container(
      height: 45.0,
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          Navigator.of(context).pushNamed(HomePage.tag);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Color.fromRGBO(63, 178, 127, 1),
        child: Text(
          'LOGIN',
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
        backgroundColor: Color.fromRGBO(245, 242, 240, 0.9),
        body: SingleChildScrollView(
          //위젯간 패딩을 주기 위해서
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            children: [
              SizedBox(height: 20.0),
              buildMainLogo(),
              buildEmail(),
              SizedBox(height: 20.0),
              buildPassword(),
              buildForgotPass(),
              buildRemember(),
              buildLoginBtn()
            ],
          ), //빈 박스 넣기
        ));
  }
}
