void main(){
  //if문 예시
  //if (조건식){}
  //조건식 -> true/false : 논리, 비교

  int num1 = 10;
  //짝수 출력
  if (num1%2==0){
    print("짝수");
  }else{
    print("홀수");
  }

  String text="hello";
  switch(text){
    case 'hello':
      print("안녕이라는 뜻");
      //break 생략 가능해짐

    case 'world':
      print("세상이라는 뜻");

    default:
      print("알 수 없음");
  }

  int month = 1;
  switch(month){
    case 12:
    case 1:
    case 2:
      print("겨울입니다.");

    case <5:
      print("봄입니다.");
  }

}