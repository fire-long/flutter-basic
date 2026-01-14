// constructor == 생성자
// 생성자: 객체 생성될 때 초기값 설정
// 객체 생성 예시: Tv lgTv = Tv(); --> new 키워드 생략

class Tv{
  // 필드 1개 구성
  String model;

  // 생성자 문법
  // 클래스 안에 생성되어야 함
  // 클래스명과 동일하게 작성(대소문자 구분)
  // 반환 타입 작성 X: 생성자도 하나의 메소드로 판단(void - X)

  //규칙: 매개변수명은 보통 필드명과 일치
  Tv({required this.model}); //this 키워드를 활용해 매개변수와 필드명 구분(나=class)
  //required 없으면 에러나는 이유
  // (1) this.model의 기본값 없음 (2) 명명적 파라미터라서 필수적인 값 지정이 필요함.
}
void main(){
  // Tv 객체 생성
  Tv lgTv = Tv(model: "lg올레드 Tv");
}