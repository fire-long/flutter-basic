//model 데이터를 관리하는 객체
class RyanModel {
  String image;
  String name;
  int index;

  //객체 생성됐을 때 초기화 코드 --> 생성자
  //메소드처럼 동작하지만, 반환 타입은 작성하지 않음
  //클래스명과 동일
  RyanModel({required this.image, required this.name, required this.index});
}
