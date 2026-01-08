void main(){
  // while (조건식){}
  while(true){
    print("hello");
    break;
  }

  // do-while
  // 조건의 t/f 관계없이 무조건 1회는 실행
  // do{실행코드}while(조건식)

  do{
    print('hello');
    break;
  }while(true);

  //for -in문
  //for(변수 in list 등)
  //collection type
  // : list, tuple, dict를 포함하는 범주가 collection
  // : list 안에 들어갈 타입을 지정함
  // : <> 안에 타입을 작성 -> generics
  List<String> index = ["hello", "my", "name"];

  for(var i in index){
    //외부에서 들어오는 데이터라 형식을 잘 모르는 경우, var i로 사용하기도 함
    print(i);
  }

  //for문
  //for(기준 변수; 조건식; 가변){}

  for (int i = 0; i<5; i++){
    print(i);
  }

}