import 'package:flutter/material.dart';
import 'utility.dart';
import 'detailpage.dart';

// 페이지가 다양할 때는 페이지의 이름을 정해줘야 한다.
class HomePage extends StatelessWidget {
  static String tag = 'home-page';
  final items = List<Item>.generate(
      5,
      (index) => Item('Item $index', 'A description of what needs $index', 10,
          3, 18)); //인덱스는 0에서부터 49까지 늘어감. items 리스트 만드는 작업임
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
          backgroundColor: Color.fromRGBO(63, 178, 127, 1),
        ),
        //body 는 리스트 볼 수 있도록
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
                title: Text(items[index].name),
                onTap: () {
                  //클릭시 해당 아이템의 bio 출력
                  // print(items[index].bio);
                  Navigator.push(
                      //임시적인 라우터 페이지를 만들어서 넘겨주는 식으로 진행
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DetailPage(item: items[index])));
                });
          },
        ));
  }
}
