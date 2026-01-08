void main(){

  // 호출
  addNum1();
  addNum2(10, 11);

  int a = addNum3();//변수에 안 담으면 허공에 return한 것
  print(a);

  int b = addNum4(10, 11);
  print(b);

  position("hi", 10);
  position("hi", 10, "안녕");
  position("hi", 10, "hello", "세상");
  named('hi',s3: "세상");
}
// 리턴타입 메소드(함수)명 (매개변수=parameter=argument){return }

// 1. 위치적 매개변수(position parameter)
void position(String s1, int i1, [String s2 = "hello", String s3="world"]){
  print("$s1, $i1, $s2, $s3");
}

// 2. 명명적 매개변수(named parameter)
void named(String s1, {String s2 = "hello", String s3="world"}){
  print("$s1, $s2, $s3");
}



// 1. 리턴타입 유무 2. 매개변수 유무 -> 둘 다 없는 걸로 함수 만들기
// 리턴이 없을 경우 void라고 작성
void addNum1(){
  //return 키워드 작성 X
  print(10+11);
}

// 매개변수 있고 리턴은 없는 함수
void addNum2(int num1,int num2){
  // 매개변수 타입 지정 X -> dynamic 타입이 됨
  print(num1+num2);
}

// 매개변수 없고 리턴은 있는 함수
int addNum3(){
  return 10+11;
}

// 매개변수 있고 리턴도 있는 함수
int addNum4(int num1, int num2){
  return num1+num2;
}