class Item {
  //해당 클래스를 지역변수로 생성할 때
  final String name;
  final String bio; //자기소개
  final int posts; //포스트 개수
  final int followers;
  final int followings;

  Item(this.name, this.bio, this.posts, this.followers,
      this.followings); //생성자 : 해당 클래스를 지역변수로 생성할 때 필요한 변수들을 적어준 것
  //아이템을 생성할때 5개의 파라미터가 필요한데, 이것을 순서대로 적어주면 해당 아이템이 생성된다.
}
