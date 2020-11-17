import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp()); //My app 부분
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First App",
      theme: ThemeData(primarySwatch: Colors.blue), // 테마 색 지정 -> 네모 아이콘 눌러보면 보임
      home: LoginPage(), //MyHomePage 클래스 호출
      routes: routes, //라우트라는 속성에 만들었던 routes 넣어주면 라우트 설정 완료
    );
  }
}
