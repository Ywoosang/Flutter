import 'package:flutter/material.dart';
import 'package:flutter_app/loginpage.dart';
import 'utility.dart';

class DetailPage extends StatelessWidget {
  final Item item; //아이템이라는 변수를 다른 페이지로 전송 시켜주기 위해서 저장시키는 변수
  DetailPage({Key key, @required this.item})
      : super(key: key); //디테일 페이지를 생성할 때는 무조건아이템이라는 변수를 가지고 생성해주어야 하고.
  // 생성 되었을 때 정보들이 item 에 저장이 되고 item 의 정보들이 컨테이너로 보여지도록 설정

  Widget buildImage() {
    return Center(
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/logo2.png'),
            radius: 70.0,
            backgroundColor: Colors.transparent, //뒷 배경 투명 색
          ),
          SizedBox(height: 20.0),
          Text(item.name,
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold))
        ],
      ),
    );
  }

  Widget buildCard() {
    return Row(
      children: [
        rowCell(item.posts, '컴포넌트 수'),
        rowCell(item.followers, '인스턴스 수'),
        rowCell(item.followings, '메소드 수')
      ],
    );
  }

  Widget rowCell(int count, String type) {
    return Expanded(
        child: Column(
      //각각 row 안의 요소들 col 로 세로 배치
      children: [
        Text(
          type,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10.0),
        Text(
          count.toString(),
          style: TextStyle(color: Colors.white),
        )
      ],
    ));
  }

  Widget buildBio() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'BIO',
          style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold //글자 간격
              ),
        ),
        SizedBox(height: 10.0),
        Text(item.bio,
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 14.0,
                fontStyle: FontStyle.italic))
      ],
    );
  }

  Widget buildContactBtn() {
    return Container(
      height: 45.0,
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Color.fromRGBO(63, 178, 127, 1),
        child: Text(
          '자세한 정보 보기',
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
        appBar: AppBar(
          title: Text("Detail Profile"),
          backgroundColor: Color.fromRGBO(63, 178, 127, 1),
          elevation: 0.0,
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.grey[100], Colors.grey[500]])),
            ),
            Padding(
                //패딩 위젯으로  안 자식 위젯들이 똑같은간격으로 공백을 가질 수 있도록 함
                padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildImage(),
                      SizedBox(height: 20),
                      Divider(
                        height: 60.0,
                        color: Colors.grey[850],
                        thickness: 0.5,
                      ), // 선을 표현
                      buildCard(),
                      Divider(
                        height: 60.0,
                        color: Colors.grey[850],
                        thickness: 0.5,
                      ),
                      buildBio(),
                      SizedBox(height: 60),
                      buildContactBtn()
                    ])) //위젯들을 함수로 만들어 주고 그 안에 만들어 준 위젯을 하나씩 넣어주는 식으로 진행
          ],
        ));
  }
}
