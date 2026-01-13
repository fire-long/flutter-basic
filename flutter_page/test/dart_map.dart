void main() {
  //Map: Pyton의 dict(key:value) in Dart, Java, C
  Map<String, int> m1 = {
    "one":1, "two":2
  };

  //값 출력
  print(m1["one"]); //python과 동일

  //값 추가
  //파이썬과 동일
  m1["three"]=3;
  print(m1);

  //값 삭제
  //.remove(key)
  m1.remove("three");
  print(m1);
}
