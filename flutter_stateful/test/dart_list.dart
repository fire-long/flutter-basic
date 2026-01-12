void main(){
  // 리스트: 컬렉션
  // 리스트: 순서대로 데이터 관리

  //List<작성될 타입> = [];

  //Generics란 클래스, 메소드, 컬렉션의 타입을 체크해주는 기능
  List<int> intList = [1, 2, 3, 4, 5];
  List<String> sList = ['hello', 'world'];
  List<dynamic> dList = [1, 3.14, "hello"];

  var list1 = ['hello', 'nice', 'to', 'meet'];
  //var == List<String>

  print([1, 2, 3]); //타입 선언이 필수는 아님
  //대괄호로 처리되고 있다면 List로 판단

  //리스트의 길이 알기
  print(intList.length);

  //값 가져오기
  // 인덱싱(0번부터 시작)
  print(dList[0]);

  //값 추가
  dList.add("안녕");
  print(dList);

  //값 수정
  //인덱싱 후 대입
  intList[1] = 100;
  print(intList);

  //값 삭제
  //1. 값을 기준으로 삭제
  //리스트명.remove
  dList.remove("hello");
  print(dList);

  //2. 인덱스 기준으로 삭제
  //리스트명.removeAt(인덱스)
  intList.removeAt(1);
  print(intList);
}